/*
Pattern generator
Copyright (C) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>
*/

#include "tr.h"
full_state_t state;


full_state_t full_update(INOUT(full_state_t) state, bool reset, bool button_state)
{
  return state;
}

inline pixel_t render_pixel(uint16_t i, uint16_t j)
{
  pixel_t pix;
  pix.r = i + j;
  pix.g = i ^ j;
  pix.b = 128;
  return pix;
}



