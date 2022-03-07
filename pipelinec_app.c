#define CCOMPILE

#ifdef __PIPELINEC__
//#pragma PART "LFE5U-85F-6BG381C" // An ECP5U 85F part
#pragma PART "xc7a35ticsg324-1l" // Arty

#include "pipelinec_app_vgaconfig.h"

#include "compiler.h"
#include "uintN_t.h"
#include "intN_t.h"
#include "float_e_m_t_helper.h" // Variable mantissa sizes
// Access to board buttons and switches
#include "../PipelineC/examples/arty/src/buttons/buttons.c"
//#include "../PipelineC/examples/arty/src/switches/switches.c"
// See top level IO wiring + DVI/VGA resolution timing logic in
#include "vga/vga_pmod.c"
//#include "dvi/dvi_pmod.c"
// Reset state func needs special marker to not be synthesized alone
// ~sorta PipelineC constexpr/const marker
#pragma FUNC_WIRES fixed_make_from_int
#pragma FUNC_WIRES fixed_make_from_float
#pragma FUNC_WIRES fixed_make_from_short
#pragma FUNC_WIRES fixed_to_short
#pragma FUNC_WIRES fixed3_make
#pragma FUNC_WIRES fixed3_make_from_fixed
#pragma FUNC_WIRES fixed3_make_from_float
#pragma FUNC_WIRES fixed3_make_from_const_fixed3
#pragma FUNC_WIRES reset_state 
#pragma FUNC_WIRES reset_state0

// Set app to run at pixel clock
MAIN_MHZ(app, PIXEL_CLK_MHZ)
#endif //__PIPELINEC__

#include "pipelinec_compat.h"
#include "fixed_type.h"
#include "tr_pipelinec.gen.c"

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
  // Read buttons wire/board IO port
  uint4_t btns;
  WIRE_READ(uint4_t, btns, buttons) // btns = buttons
  //uint4_t sws;
  //WIRE_READ(uint4_t, sws, switches)
  // Select which buttons and switches do what?
  i.jump_pressed = btns >> 0;
  i.reset_pressed = btns >> 3;
  #else
  // TODO user IO for running as C code
  i.jump_pressed = 1;
  #endif
  return i;
}

// Helper func with isolated local static var to hold state
// while do_state_update local volatile static state is updating.
full_state_t state_buffer(full_state_t updated_state, uint1_t update_valid)
{
  // State reg
  static full_state_t state;
  full_state_t rv = state;
  // Updated occassionally
  if(update_valid)
  {
    state = updated_state;
  }
  return rv;
}

// Helper func with isolated local static var to hold state
// while do_state_update local volatile static state is updating.
game_state_t stinout_buffer(game_state_t updated_stinout, uint1_t update_valid)
{
  // State reg
  static game_state_t stinout;
  game_state_t rv = stinout;
  // Updated occassionally
  if(update_valid)
  {
    stinout = updated_stinout;
  }
  return rv;
}

// Logic to update the state in a multiple cycle volatile feedback pipeline
inline full_state_t do_state_update(uint1_t reset, uint1_t end_of_frame)
{
  // Volatile state registers
  // Not same as software volatile
  // Could use #ifdef __PIPELINEC__ to remove volatile for software sim 
  volatile static full_state_t state;
  volatile static game_state_t stinout;
  // TODO support non static/register based feedback (WIRE's/FEEDBACK pragmas)

  // Read user input
  user_input_t ui = get_user_input();
  // Combine button reset with power on reset input from reset_ctrl()
  // maybe can remove power on reset since have button now?
  uint1_t either_reset = reset | ui.reset_pressed;
  
  // Use 'slow' end of frame pulse as 'now' valid flag occuring 
  // every N cycles > pipeline depth/latency (or when infrequent reset happens)
  uint1_t update_now = end_of_frame | either_reset;

  // Update state
  if(either_reset)
  {
    // Reset condition?
    state = reset_state();
    stinout = state.stinout;
  }
  else if(end_of_frame)
  {
    // Normal next state update
    // Adaptation of simulator_main.cpp, might be able to restructure in/out stuff
    state.stin.press = ui.jump_pressed;
    game_state_out_t outs = next_state_func(state.stin, stinout);
    stinout = outs.stinout;
    state.scene = update_scene(state.scene, outs);
  }  
  
  // Buffer/save state as it periodically is updated/output from above
  // TODO as mentioned above, could use this registering to replace with WIRE's and/or FEEDBACK
  full_state_t curr_state = state_buffer(state, update_now);
  game_state_t curr_stinout = stinout_buffer(stinout, update_now);

  // Overwrite potententially invalid volatile 'state' circulating in feedback
  // replacing it with always valid buffered curr state. 
  // This way state will be known good when the next frame occurs
  state = curr_state;
  stinout = curr_stinout;
         
  return curr_state;
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

void app()
{
  // VGA timing for fixed resolution
  vga_signals_t vga_signals = vga_timing();

  // Per clock logic:
  
  // Get reset state/status
  uint1_t reset = reset_ctrl(vga_signals.end_of_frame);

  // Do state updating cycle (part of volatile multi cycle pipeline w/ state)
  full_state_t state = do_state_update(reset, vga_signals.end_of_frame);

  // Render the pixel at x,y pos given buffered state
  pixel_t color = render_pixel(vga_signals.pos.x, vga_signals.pos.y, state.scene);
  
  // Drive output signals/registers
  pmod_register_outputs(vga_signals, color);
}
