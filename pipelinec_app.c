#define CCOMPILE

#ifdef __PIPELINEC__
#pragma PART "LFE5U-85F-6BG381C" // An ECP5U 85F part
#include "compiler.h"
#include "uintN_t.h"
#include "intN_t.h"
//#include "float_e_m_t_helper.h" // Variable mantissa sizes
// See top level IO wiring + DVI/VGA resolution timing logic in
//#include "vga/vga_pmod.c"
#include "dvi/dvi_pmod.c"
// Set app to run at pixel clock
MAIN_MHZ(app, PIXEL_CLK_MHZ)
#endif //__PIPELINEC__

#include "pipelinec_compat.h"
#include "fixed_type.h"
#include "tr_pipelinec.gen.c"

void app()
{
  //static vga_signals_t vga_signals;
  
  ///*volatile*/ static full_state_t state;
  //static bool reset = 1;
  ///*volatile*/ static game_state_t stinout;
  
  /*if(reset)
  {
    state = reset_state();
    //WIRE_WRITE(game_state_t, state.stinout, stinout);
    reset = 0;
  }*/
  
  vga_signals_t vga_signals = vga_timing();
  /*if(vga_signals.start_of_frame)
  {

    state.stin.press = buttons_pressed() & 1;
    game_state_out_t outs = next_state_func(state.stin, stinout);
    WIRE_WRITE(game_state_t, outs.stinout, stinout);
    state.scene = update_scene(state.scene, outs);

  }*/
  //vga_signals = vga_timing();
  full_state_t state = reset_state();
  pixel_t color = render_pixel(vga_signals.pos.x, vga_signals.pos.y, state.scene);
  pmod_register_outputs(vga_signals, color);
}
