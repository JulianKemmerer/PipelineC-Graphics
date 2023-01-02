// Set the target FPGA part
//#pragma PART "LFE5U-85F-6BG381C" // An ECP5U 85F part
//#pragma PART "xc7a35ticsg324-1l" // Arty 35t
#pragma PART "xc7a100tcsg324-1" // Arty 100t
//#define LITEX_INTEGRATION
//#define POCKET_INTEGRATION
//#pragma PART "5CEBA4F23C8" // Analogue Pocket

// CflexHDL compile setting
#define CCOMPILE

// Common PipelineC includes
#include "compiler.h"
#include "uintN_t.h"
#include "intN_t.h"
#include "float_e_m_t_helper.h" // Variable mantissa sizes

// Temp config work around since no preprocessor command line args
// https://github.com/JulianKemmerer/PipelineC/issues/56
#include "pipelinec_app_config.h"

// Reset state func needs special marker to not be synthesized alone
// ~sorta PipelineC constexpr/const marker
#pragma FUNC_WIRES reset_state 
#pragma FUNC_WIRES reset_state0

// Access to board buttons
#include "buttons/buttons.c"

// Litex provides its own external VGA timing
// and uses generic external VGA output
#ifdef LITEX_INTEGRATION
#include "vga/external_vga_timing.c"
#include "vga/external_vga_output.c"
#elif defined(POCKET_INTEGRATION)
// Pocket build generates timing internally
// But has non-pmod generic external vga output
#include "vga/external_vga_output.c"
#else
// Otherwise default to Arty video output w/ pmod
//#include "vga/vga_pmod.c"
#include "dvi/dvi_pmod.c"
#endif

// Include the code for ray tracer
#include "pipelinec_compat.h"
#include "fixed_type.h"
#define get_scene() state.scene
#include "tr_pipelinec.gen.c"

// Define the user created frame clock
#define FRAME_CLK_MHZ 6e-5 // 60Hz
uint1_t frame_clock;
DECL_OUTPUT(uint1_t, frame_clock)
uint1_t frame_clock_rising_edge;
uint1_t frame_clock_falling_edge;
// Helper func to drive frame clock from isolated static frame_clock_reg
// Running on pixel clock, maybe include inside vga_timing?
void frame_clock_logic(uint16_t x, uint16_t y, bool active)
{
  // Need to make ~50% duty cycle frame clock
  static uint1_t frame_clock_reg;
  // Drive clock from register
  frame_clock = frame_clock_reg;
  frame_clock_rising_edge = 0;
  frame_clock_falling_edge = 0;

  // Falling edge mid frame (does not update state)
  if( active & 
     (x==(FRAME_WIDTH/2)) &
     (y==(FRAME_HEIGHT/2))
  ){
    frame_clock_reg = 0;
    frame_clock_falling_edge = 1;
  }
  // Rising edge at end of frame (state updated during back porch)
  else if(active & 
         (x==(FRAME_WIDTH-1)) &
         (y==(FRAME_HEIGHT-1))
  ){
    frame_clock_reg = 1;
    frame_clock_rising_edge = 1;
  }
}

// Pocket flow cannot use CLK_MHZ to declare user clocks
// Since Quartus not able to constrain user generated clocks see issues:
// https://github.com/JulianKemmerer/PipelineC/issues/138
// https://github.com/JulianKemmerer/PipelineC/issues/137
#ifndef POCKET_INTEGRATION
CLK_MHZ(frame_clock, FRAME_CLK_MHZ)

// Make pixel clock look like its user generated internally
// so that, regardless of frequency, the name is always the same
// This does not seem to work with 
uint1_t pixel_clock;
CLK_MHZ(pixel_clock, PIXEL_CLK_MHZ)
// Connect constant name top level port to internal pixel_clock
MAIN_MHZ(pixel, PIXEL_CLK_MHZ) 
#pragma FUNC_WIRES pixel
void pixel(uint1_t clock) // top level port is "pixel_clock"
{
  pixel_clock = clock;
}
#endif //ifndef POCKET_INTEGRATION

// UART modules that augment buttons behavior
// Run uart at pixel clock to avoid multiple clocks
#define UART_CLK_MHZ PIXEL_CLK_MHZ
#include "uart/uart_mac.c"
// Receive bytes over uart 
// continuosuly updating rx buffer
uint4_t uart_buttons;
MAIN_MHZ(uart_buttons_rx, UART_CLK_MHZ)
void uart_buttons_rx()
{
  static uint4_t uart_buttons_reg;
  uart_buttons = uart_buttons_reg;
  // Always ready for incoming uart bytes
  uart_rx_mac_out_ready = 1;
  // Overwrite buffer as they arrive
  if(uart_rx_mac_word_out.valid)
  {
    uart_buttons_reg = uart_rx_mac_word_out.data;
  }
}
// Capture stable button value in time for frame clock rising edge
// Game logic uses OR of buttons or uart data
uint4_t buttons_or_uart;
#pragma ASYNC_WIRE buttons_or_uart // Read by slow frame clock domain
// Transmit out the button value used to update the state
MAIN_MHZ(uart_buttons_tx, UART_CLK_MHZ)
void uart_buttons_tx()
{
  static uint4_t buttons_or_uart_reg;
  buttons_or_uart = buttons_or_uart_reg;
  // Upon rising edge of frame clock, 
  // transmit the buttons_or_uart state that was stable and used by full_update
  uart_tx_mac_word_in.valid = frame_clock_rising_edge;
  uart_tx_mac_word_in.data = buttons_or_uart_reg;
  // TODO if !uart_tx_mac_in_ready then overflow/error
  
  // Upon falling edge of frame clock sample the button state
  // the game will use to update next state at the rising edge
  if(frame_clock_falling_edge)
  {
    // OR of current buttons or current and uart state
    // is what game logic samples for use
    buttons_or_uart_reg = buttons | uart_buttons;
  }  
}

// User input
typedef struct user_input_t
{
  uint1_t jump_pressed;
  uint1_t reset_pressed;
}user_input_t;
inline user_input_t get_user_input()
{
  user_input_t i;
  // For now only exists in hardware
  #ifdef __PIPELINEC__
  // Select which buttons and switches do what?
  i.jump_pressed = buttons_or_uart >> 0;
  i.reset_pressed = buttons_or_uart >> 3;
  #else
  // TODO user IO for running as C code
  i.jump_pressed = 1;
  i.reset_pressed = 0;
  #endif
  return i;
}

// Per frame next state comb. logic runnning on frame clock
volatile full_state_t state; // The state wire, shared global wire
#pragma ASYNC_WIRE state // Async to pixel clock domain where read
MAIN_MHZ(frame_logic, FRAME_CLK_MHZ)
void frame_logic()
{
  static uint1_t power_on_reset = 1;
  static full_state_t state_reg; // The state register
  state = state_reg; // Drives state wire directly

  // Read user input
  user_input_t ui = get_user_input();

  // Normal next state update
  state_reg = full_update(state_reg, ui.reset_pressed | power_on_reset, ui.jump_pressed);
  power_on_reset = 0;
}

// Logic running on pixel clock, mostly render_pixel pipeline
MAIN_MHZ(pixel_logic, PIXEL_CLK_MHZ)
void pixel_logic()
{
  // VGA timing for fixed resolution
  vga_signals_t vga_signals = vga_timing();

  // Use VGA timing to derive frame clock
  frame_clock_logic(vga_signals.pos.x, vga_signals.pos.y, vga_signals.active);

  // Render the pixel at x,y pos 
  // Scene is wired in from frame logic domain
  pixel_t color = render_pixel(vga_signals.pos.x, vga_signals.pos.y);

  // Drive output signals/registers
  pmod_register_outputs(vga_signals, color);
}