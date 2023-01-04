/*
Copyright (c) 2019 Sylvain Lefebvre and contributors
Copyright (C) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>

// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

List of other contributors at Silice's repo (i.e. git shortlog -n -s -- <filename>)
*/

#include "tr.h"
full_state_t state;


full_state_t full_update(INOUT(full_state_t) state, bool reset, bool button_state)
{
  state.scene.frame = state.scene.frame + 1;
  state.won = button_state;
  return state;
}

//ported from https://github.com/sylefeb/Silice/blob/draft/projects/vga_demo/msponge.cpp
typedef color f3;
typedef color_type f_t;

inline f_t icos(uint9_t v)
{
  uint32_t a = (v & 511)<<3;
  int32_t b = -a;
  if(a & 2048)
    b = a - 4096;
  return fixed_shr(b + 1024, 10);
}

inline f_t isin(uint9_t v)
{
  return icos(v-(512>>2));
}

f_t iabs(f_t v)
{
  f_t zero(0);
  f_t one(1);
  return v == 0 ? one : (fixed_is_negative(v) ? zero-v : v);
}

inline f_t recip(f_t v)
{
  return f_t(1.) / iabs(v);
}

inline bool has_tile(uint6_t t)
{
   uint32_t tile = 0xF99F9009;
   uint5_t sh = (t & 32) ? t & 0x1F : t ^ 0x1F;
   return (0xF99F9009 >> sh) & 1;  //MSB 1111.1001 1001.1111 1001.0000 0000.1001 LSB
}

 
inline pixel_t render_pixel(uint16_t i, uint16_t j)
{
  int16_t frame = state.scene.frame;
  bool button = state.won;
  
  pixel_t pix;
#if 0
  pix.r = button ? i + j : i - j;
  pix.g = i ^ (j + frame);
  pix.b = frame;
#else


      f_t rot_x(0);
      f_t rot_y(0);
      uint1_t  inside = 0;
      uint32_t  clr;
      uint16_t  dist=255;
      f_t  cs0(0);
      f_t  ss0(0);
      f_t  cs1(0);
      f_t  ss1(0);
      f_t  r_x_delta(0);
      f_t  r_z_delta(0);

    f3 view(0);
    view.x    = fixed_shr(f_t(i - FRAME_WIDTH/2), 10);
    view.y    = fixed_shr(f_t(j - FRAME_HEIGHT/2), 10);
    view.z    = fixed_shr(384, 10);


    cs0     = icos(frame>>1);
    ss0     = isin(frame>>1);
    uint16_t f_1 = frame<<1;
    uint16_t f_3 = frame<<3;
    cs1     = icos((frame+f_1)>>3);
    ss1     = isin((frame+f_3)>>4);

    rot_x   = (view.x * cs1);
    rot_y   = (view.x * ss1);

    view.x  = rot_x - (view.y * ss1);
    view.y  = rot_y + (view.y * cs1);

    // compute the ray direction (through rotations)
    f_t xcs = view.x * cs0;
    f_t xss = view.x * ss0;
    f_t zcs = view.z * cs0;
    f_t zss = view.z * ss0;
    r_x_delta = xcs - zss;
    r_z_delta = xss + zcs;

    // ray dir is (r_x_delta, view_y, r_z_delta)
    f3 rd(0);
    rd.x  = r_x_delta;
    rd.y  = view.y;
    rd.z  = r_z_delta;

    // initialize voxel traversal
    // -> position
    f3 p(0);
    p.x = f_t(68/2);
    p.y = f_t(12/2);
    p.z = fixed_shr(f_t(frame), 3);

    // -> start voxel
    int16_t v_x   = int16_t(p.x);
    int16_t v_y   = int16_t(p.y);
    int16_t v_z   = int16_t(p.z);
    f3 v(0);
    v.x = v_x;
    v.y = v_y;
    v.z = v_z;

    // -> inv dot products
    f3 inv(0);
    inv.x = recip(fixed_shl(rd.x, 4));
    inv.y = recip(fixed_shl(rd.y, 4));
    inv.z = recip(fixed_shl(rd.z, 4));

    // -> tmax
    f3 brd = p - v; // distance to border

    f3 a = brd;
    if(!fixed_is_negative(rd.x)) a.x = f_t(1) - brd.x;
    if(!fixed_is_negative(rd.y)) a.y = f_t(1) - brd.y;
    if(!fixed_is_negative(rd.z)) a.z = f_t(1) - brd.z;

    f3 tm  = a * inv;

    // -> delta
    f3 dt  = inv - fixed_shr(f_t(1.), 10);

    uint8_t step = 0;
#ifndef PARSING
#define N_steps 192
    for (step=0 ; step<N_steps ; step+=1)
#endif
    {

      uint6_t  tex     = ((v_x)&63) ^ ((v_y)&63) ^ ((v_z)&63);
      uint6_t  vnum0   = (((v_z>>0)&3)<<4) | (((v_y>>0)&3)<<2) | (((v_x>>0)&3)<<0);
      uint6_t  vnum1   = (((v_z>>2)&3)<<4) | (((v_y>>2)&3)<<2) | (((v_x>>2)&3)<<0);
      uint6_t  vnum2   = (((v_z>>4)&3)<<4) | (((v_y>>4)&3)<<2) | (((v_x>>4)&3)<<0);
      if (has_tile(vnum0) && has_tile(vnum1) && has_tile(vnum2)) {
        if (!inside) {
          clr    = tex;
          dist   = step;
          inside = 1;
#ifndef PARSING
          break;
#endif
        }
      }

      if (!(tm.x > tm.y) && !(tm.x > tm.z)) {
        // tm_x smallest
        if(fixed_is_negative(rd.x))
          v_x  = v_x - 1;
        else
          v_x  = v_x + 1;
        tm.x = tm.x + dt.x;
      } else if (tm.y < tm.x && tm.y < tm.z) {
        // tm_y smallest
        if(fixed_is_negative(rd.y))
          v_y  = v_y - 1;
        else
          v_y  = v_y + 1;
        tm.y = tm.y + dt.y;
      } else {
        // tm_z smallest
        if(fixed_is_negative(rd.z))
          v_z  = v_z - 1;
        else
          v_z  = v_z + 1;
        tm.z = tm.z + dt.z;
      }

    }

    uint8_t fog   = dist;
    uint8_t light = 256 - dist;
    uint16_t shade = light * clr;

    pix.r = (shade >> 7) + fog;
    pix.g = (shade >> 7) + fog;
    pix.b = (shade >> 8) + fog;

#endif
  return pix;
}

