#define CCOMPILE
#ifdef __PIPELINEC__
//#pragma PART "LFE5U-85F-6BG381C" // An ECP5U 85F part
#pragma PART "xc7a35ticsg324-1l" // Arty

#include "pipelinec_app_vgaconfig.h"

#include "compiler.h"
#include "uintN_t.h"
#include "intN_t.h"
#include "float_e_m_t_helper.h" // Variable mantissa sizes
// Reset state func needs special marker to not be synthesized alone
// ~sorta PipelineC constexpr/const marker
#pragma FUNC_WIRES reset_state 
#pragma FUNC_WIRES reset_state0

// Set app to run at pixel clock
#ifndef LITEX_INTEGRATION
// See top level IO wiring + DVI/VGA resolution timing logic in
#include "vga/vga_pmod.c"
//#include "dvi/dvi_pmod.c"
// Access to board buttons and switches
#include "../PipelineC/examples/arty/src/buttons/buttons.c"
#else
//FIXME: MHz depends on resolution, but using vga module here bring issues
MAIN_MHZ(render_pixel_interactive, 25.0) 
#endif // LITEX_INTEGRATION

#endif //__PIPELINEC__

#include "pipelinec_compat.h"
#include "fixed_type.h"
#include "tr_pipelinec.gen.c"

/* Add to tr_pipelinec.gen.c after generating code
// Scene helper func declared before use in funcs below but after the scene_t struct definition
#include "get_scene.h" */

/* Old code from when state updates and pixel rendering were combined
// Logic to update the state in a multiple cycle volatile feedback pipeline
inline full_state_t do_state_update(uint1_t reset, uint1_t end_of_frame, uint1_t button)
{
  // Volatile state registers
  // Not same as software volatile
  // Could use #ifdef __PIPELINEC__ to remove volatile for software sim 
  volatile static full_state_t state;
  // TODO support non static/register based feedback (WIRE's/FEEDBACK pragmas)

  // Use 'slow' end of frame pulse as 'now' valid flag occuring 
  // every N cycles > pipeline depth/latency (or when infrequent reset happens)
  if(end_of_frame | reset) // Normal next state update
    state = full_update(state, reset, button);
           
  return state;
}

// Logic to start in reset and exit reset after first frame
// TODO maybe change to be faster out of reset?
uint1_t reset_ctrl(uint1_t end_of_frame)
{
  // Reset register
  static uint1_t reset = 1; // Start in reset
  uint1_t rv = reset;
  if(end_of_frame)
  {
    reset = 0; // Out of reset after first frame
  }
  return rv;
}


pixel_t render_pixel_interactive(uint16_t x, uint16_t y, uint1_t reset, uint1_t vsync, uint1_t button)
{
///////////////////////////////////////////////////////////
vsync = ((x == FRAME_WIDTH-1) & (y == FRAME_HEIGHT-1)); //FIXME: pass correct argument!
///////////////////////////////////////////////////////////

   // Combine button reset with power on reset input from reset_ctrl()
  // maybe can remove power on reset since have button now?
  uint1_t either_reset = reset | reset_ctrl(vsync);

  // Do state updating cycle (part of volatile multi cycle pipeline w/ state)
  full_state_t state = do_state_update(either_reset, vsync, button);

  // Render the pixel at x,y pos given buffered state
  return render_pixel(x, y, state.scene);
}
*/


// Define the user created frame clock
#define FRAME_CLK_MHZ 6e-5 // 60Hz
uint1_t frame_clock;
#include "clock_crossing/frame_clock.h"
#pragma ASYNC_WIRE frame_clock
CLK_MHZ(frame_clock, FRAME_CLK_MHZ)

// Helper func make toggling clock with isolated static frame_clock_reg
// Maybe include inside vga_timing?
void frame_clock_logic(uint16_t x, uint16_t y, bool active)
{
  // Need to make ~50% duty cycle frame clock
  static uint1_t frame_clock_reg;
  // Drive clock from register
  WIRE_WRITE(uint1_t, frame_clock, frame_clock_reg)

  // Falling edge mid frame (does not update state)
  if( active & 
     (x==(FRAME_WIDTH/2)) &
     (y==(FRAME_HEIGHT/2))
  ){
    frame_clock_reg = 0;
  }
  // Rising edge at end of frame (state updated during back porch)
  else if(active & 
         (x==(FRAME_WIDTH-1)) &
         (y==(FRAME_HEIGHT-1))
  ){
    frame_clock_reg = 1;
  }
}

#ifdef LITEX_INTEGRATION
pixel_t render_pixel_interactive(uint16_t x, uint16_t y, uint1_t reset, uint1_t vsync, uint1_t button)
{
///////////////////////////////////////////////////////////
vsync = ((x == FRAME_WIDTH-1) & (y == FRAME_HEIGHT-1)); //FIXME: pass correct argument!
///////////////////////////////////////////////////////////

  // Use VGA timing to derive frame clock
  frame_clock_logic(x, y, !vsync);

  // Render the pixel at x,y pos given buffered state
  return render_pixel(x, y);
}

#else
/////////////////////////////
// Hardware access
/////////////////////////////

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
  #ifndef LITEX_INTEGRATION
  // Read buttons wire/board IO port
  uint4_t btns;
  WIRE_READ(uint4_t, btns, buttons) // btns = buttons
  //uint4_t sws;
  //WIRE_READ(uint4_t, sws, switches)
  // Select which buttons and switches do what?
  i.jump_pressed = btns >> 0;
  i.reset_pressed = btns >> 3;
  #endif
  #else
  // TODO user IO for running as C code
  i.jump_pressed = 1;
  i.reset_pressed = 0;
  #endif
  return i;
}

// Pixel pipeline logic
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
#endif //LITEX_INTEGRATION

// Per next state frame comb. logic
MAIN_MHZ(frame_logic, FRAME_CLK_MHZ)
void frame_logic()
{
  static full_state_t state; // The state registers
  static uint1_t power_on_reset = 1;
  static uint1_t reset_pressed;
  static uint1_t jump_pressed;

  // Drive scene from register
  WIRE_WRITE(full_state_t, state_wire, state)

#ifndef LITEX_INTEGRATION
  // Read user input
  user_input_t ui = get_user_input();
  reset_pressed = ui.reset_pressed; 
  jump_pressed = ui.jump_pressed; 
#else
  reset_pressed = 0;
  jump_pressed = 0;
#endif
  // Normal next state update
  state = full_update(state, ui.reset_pressed | power_on_reset, ui.jump_pressed);
  power_on_reset = 0;
}

