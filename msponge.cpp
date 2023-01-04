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


Performance (192 raymarching steps):
- fast simulation FPS: 170 @480p, 22 @1080p
- accurate simulation FPS: 26 @480p
- verilator FPS: 0.38 @480p
*/

#ifdef PARSING
#define SIMULATION
#endif

#ifndef FIXED_FRACTIONBITS
#define FIXED_FRACTIONBITS 10
#endif

#include "tr.h"
full_state_t state;

//ported from https://github.com/sylefeb/Silice/blob/draft/projects/vga_demo/msponge.cpp
typedef object_coord_t fix3;
typedef coord_type fix_t;

inline fix_t icos(uint9_t v)
{
  uint32_t a = (v & 511)<<3;
  int32_t b = -a;
  if(a & 2048)
    b = a - 4096;
  return fixed_shr(b + 1024, 10);
}

inline fix_t isin(uint9_t v)
{
  return icos(v-(512>>2));
}

fix_t iabs(fix_t v)
{
  fix_t zero(0);
  fix_t one(1);
  return v == 0 ? one : (fixed_is_negative(v) ? zero-v : v);
}

inline fix_t reciprocal(fix_t v)
{
  return fix_t(1) / iabs(fixed_shl(v, 4));
}

inline bool has_tile(uint6_t t)
{
   uint32_t tile = 0xF99F9009;
   uint5_t sh = (t & 32) ? t & 0x1F : t ^ 0x1F;
   return (0xF99F9009 >> sh) & 1;  //MSB 1111.1001 1001.1111 1001.0000 0000.1001 LSB
}

inline bool inside_tile(uint6_t v_x, uint6_t v_y, uint6_t v_z)
{
  uint6_t vnum0 = (((v_z>>0)&3)<<4) | (((v_y>>0)&3)<<2) | (((v_x>>0)&3)<<0);
  uint6_t vnum1 = (((v_z>>2)&3)<<4) | (((v_y>>2)&3)<<2) | (((v_x>>2)&3)<<0);
  uint6_t vnum2 = (((v_z>>4)&3)<<4) | (((v_y>>4)&3)<<2) | (((v_x>>4)&3)<<0);
  return has_tile(vnum0) && has_tile(vnum1) && has_tile(vnum2);
}
 
inline pixel_t render_pixel(uint16_t i, uint16_t j)
{
  int16_t frame = state.scene.frame;
  uint16_t f_1 = frame<<1;
  uint16_t f_3 = frame<<3;
  
  fix_t cs0 = icos(frame>>1);
  fix_t ss0 = isin(frame>>1);
  fix_t cs1 = icos((frame+f_1)>>3);
  fix_t ss1 = isin((frame+f_3)>>4);

  //screen coordinates
  int16_t x = i - FRAME_WIDTH/2;
  int16_t y = j - FRAME_HEIGHT/2;
  int16_t z = 384;
  fix3 scr {fixed_shr(x, FIXED_FRACTIONBITS), fixed_shr(y, FIXED_FRACTIONBITS), fixed_shr(z, FIXED_FRACTIONBITS)};
  
  //rotate
  fix3 view {scr.x * cs1 - scr.y * ss1, scr.x * ss1 + scr.y * cs1, scr.z};

  // compute the ray direction (through rotations)
  fix3 rd {view.x * cs0 - view.z * ss0, view.y, view.x * ss0 + view.z * cs0};

  // initialize voxel traversal
  // -> position
  fix3 p {fix_t(68/2), fix_t(12/2), fixed_shr(frame, 3)};

  // -> start voxel
  int16_t v_x = int16_t(p.x);
  int16_t v_y = int16_t(p.y);
  int16_t v_z = int16_t(p.z);
  fix3 v {fix_t(v_x), fix_t(v_y), fix_t(v_z) };

  // -> inv dot products
  fix3 inv {reciprocal(rd.x), reciprocal(rd.y), reciprocal(rd.z)};

  // -> tmax
  fix3 brd = p - v; // distance to border

  fix3 a = brd;
  if(!(rd.x < 0)) a.x = fix_t(1) - brd.x;
  if(!(rd.y < 0)) a.y = fix_t(1) - brd.y;
  if(!(rd.z < 0)) a.z = fix_t(1) - brd.z;
  fix3 tm = a * inv;

  // -> delta
  fix3 dt = inv - fixed_shr(1, FIXED_FRACTIONBITS);

  bool inside = false;
  uint8_t clr = 255;
  uint8_t dist = 255;

  uint8_t step = 0;
#ifndef SIMULATION
#define N_steps 192
  for (step=0 ; step<N_steps ; step+=1)
#endif
  {
    if (!inside && inside_tile(v_x, v_y, v_z))
    {
      clr    = (v_x ^ v_y ^ v_z) & 63;
      dist   = step;
#ifndef SIMULATION
      break;
#endif
      inside = true;
    }

    if (!(tm.x > tm.y) && !(tm.x > tm.z))
    {
      v_x  = v_x + (rd.x < 0 ? -1 : 1); // tm_x smallest
      tm.x = tm.x + dt.x;
    }
    else if (tm.y < tm.x && tm.y < tm.z)
    {
      v_y  = v_y + (rd.y < 0 ? -1 : 1); // tm_y smallest
      tm.y = tm.y + dt.y;
    }
    else
    {
      v_z  = v_z + (rd.z < 0 ? -1 : 1); // tm_z smallest
      tm.z = tm.z + dt.z;
    }
  }

  uint8_t fog   = dist;
  uint8_t light = 255 - dist;
  uint16_t shade = light * clr;

  pixel_t pix;
  pix.r = (shade >> 7) + fog;
  pix.g = (shade >> 7) + fog;
  pix.b = (shade >> 8) + fog;

  return pix;
}

full_state_t full_update(INOUT(full_state_t) state, bool reset, bool button_state)
{
  state.scene.frame = state.scene.frame + 1;
  return state;
}

