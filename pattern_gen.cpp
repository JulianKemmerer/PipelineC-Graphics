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

inline pixel_t render_pixel(uint16_t i, uint16_t j)
{
  uint16_t frame = state.scene.frame;
  bool button = state.won;
  
  pixel_t pix;
  pix.r = button ? i + j : i - j;
  pix.g = i ^ (j + frame);
  pix.b = frame;
  return pix;
}



