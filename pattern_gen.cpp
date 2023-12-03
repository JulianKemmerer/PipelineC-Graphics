/*
Pattern generator
Copyright (C) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>
*/

#include "tr.h"
full_state_t state;


full_state_t full_update(INOUT(full_state_t) state, bool reset, bool button_state)
{
  state.scene.frame = state.scene.frame + 1;
  state.won = button_state;
  return state;
}

inline pixel_t render_pixel(uint16_t i, uint16_t j
#ifdef COLOR_DECOMP
, pixel_t pix_in
#endif
)
{
  uint16_t frame = state.scene.frame;
  bool button = state.won;
  
  pixel_t pix;
  uint8_t r, g, b;

  r = button ? i + j : i - j;
  g = i ^ (j + frame);
  b = frame;

#ifndef COLOR_DECOMP
  pix.r = r;
  pix.g = g;
  pix.b = b;
#else
  pix = pix_in;
  if(state.scene.current_color_channel == 0)
    pix.r = r;
  else if(state.scene.current_color_channel == 1)
    pix.g = g;
  else
    pix.b = b;
#endif

  return pix;
}



