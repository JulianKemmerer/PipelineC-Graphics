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
, uint8_t current_color_channel
#endif
)
{
  uint16_t frame = state.scene.frame;
  bool button = state.won;
  
  pixel_t pix;
  uint8_t r, g, b;

  // TODO:
  // like https://github.com/JulianKemmerer/PipelineC/issues/77
  //  Instead of calculating R,G, AND B then selecting one of them
  //  select inputs to operate on with fewer resources.
  r = button ? i + j : i - j;
  g = i ^ (j + frame);
  b = frame;

#ifndef COLOR_DECOMP
  pix.r = r;
  pix.g = g;
  pix.b = b;
#else
  #if COLOR_DECOMP == 1
  r = (r + (g<<1) + b)>>2;
  g = r;
  b = r;
  #endif
  #if COLOR_DECOMP == 3
  if(current_color_channel == 0)
    pix.r = r;
  else if(current_color_channel == 1)
    pix.r = g;
  else
    pix.r = b;
  #endif
#endif

  return pix;
}



