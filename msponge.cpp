/*
Copyright (C) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>
Copyright (c) 2019 Sylvain Lefebvre and contributors

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
//ported from https://github.com/sylefeb/Silice/blob/draft/projects/vga_demo/msponge.cpp


Performance (192 raymarching steps):
- fast simulation (floating point): 170 FPS @480p, 22 FPS @1080p
- accurate simulation (fixed point): 130 FPS @480p with early exit, 26 FPS otherwise
- verilator: 0.38 FPS @480p

Tested on:
-ECP5-85F device using 21% resources @19 steps, 16% @ 19 steps
-Arty-35T
 50 steps 480p report: 22639 cells OK (64 steps failed: 21660/20800 max)
 8 steps 1080p report: 39713 cells OK

Original resource usage:
190 steps @1080p 324 stages, Terasic DE0 110K LE, validates at 125MHz
128 steps @1020x768 ECPIX5 board 85K LE (LFE5UM5G-85F)

No CPU involved. Inspired by #demoscene raymarchers
*/

#ifdef PARSING
#define SIMULATION
#endif

#ifndef FIXED_FRACTIONBITS
#define FIXED_FRACTIONBITS 10
#endif

#define RAYMARCH_STEPS 64

#include "tr.h"
full_state_t state;

typedef object_coord_t fix3;
typedef coord_type fix_t;
struct rstate_t
{
  int16_t iv_x, iv_y, iv_z;
  fix3 tm, dt;
  bool inside;
  uint8_t clr, dist;
  int2_t sx, sy, sz;
};

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

inline fix_t iabs(fix_t v)
{
  return v < 0 ? fix_t(0)-v : v;
}

inline fix_t reciprocal(fix_t v)
{
  fix_t def(1023); //arbitrary large value
  return v == 0 ? def : (fix_t(1) / iabs(fixed_shl(v, 4))); //FIXME use more precision
}

inline bool has_tile(uint6_t t)
{
   uint32_t mask = 0xF99F9009; //MSB 1111.1001 1001.1111 1001.0000 0000.1001 LSB
   //uint5_t sh = (t & 32) ? t & 0x1F : t ^ 0x1F;
   uint5_t sh = (t > 32) ? t & 0x1F : t ^ 0x1F; //t & 32 doesn't work in verilator for some reason
   return (mask >> sh) & 1;
}

inline bool inside_tile(uint6_t iv_x, uint6_t iv_y, uint6_t iv_z)
{
  uint6_t vnum0 = (((iv_z>>0)&3)<<4) | (((iv_y>>0)&3)<<2) | (((iv_x>>0)&3)<<0);
  uint6_t vnum1 = (((iv_z>>2)&3)<<4) | (((iv_y>>2)&3)<<2) | (((iv_x>>2)&3)<<0);
  uint6_t vnum2 = (((iv_z>>4)&3)<<4) | (((iv_y>>4)&3)<<2) | (((iv_x>>4)&3)<<0);
  return has_tile(vnum0) && has_tile(vnum1) && has_tile(vnum2);
}

rstate_t raymarch_init(int16_t x, int16_t y, int16_t frame)
{
  rstate_t rstate;
  
  int16_t f_1 = frame<<1;
  int16_t f_3 = frame<<3;
  
  fix_t cs0 = icos(frame>>1);
  fix_t ss0 = isin(frame>>1);
  fix_t cs1 = icos((frame+f_1)>>3);
  fix_t ss1 = isin((frame+f_3)>>4);

  //screen coordinates
  int16_t z = 384;
  fix3 scr {fixed_shr(x, FIXED_FRACTIONBITS), fixed_shr(y, FIXED_FRACTIONBITS), fixed_shr(z, FIXED_FRACTIONBITS)};
  
  //rotate
  fix3 view {scr.x * cs1 - scr.y * ss1, scr.x * ss1 + scr.y * cs1, scr.z};

  // compute the ray direction (through rotations)
  fix3 rd {view.x * cs0 - view.z * ss0, view.y, view.x * ss0 + view.z * cs0};
  rstate.sx = rd.x < 0 ? -1 : 1;
  rstate.sy = rd.y < 0 ? -1 : 1;
  rstate.sz = rd.z < 0 ? -1 : 1;

  // initialize voxel traversal
  // -> position
  fix3 p {fix_t(68/2), fix_t(12/2), fixed_shr(frame, 3)};

  // -> start voxel
  rstate.iv_x = int16_t(p.x);
  rstate.iv_y = int16_t(p.y);
  rstate.iv_z = int16_t(p.z);
  fix3 v {fix_t(rstate.iv_x), fix_t(rstate.iv_y), fix_t(rstate.iv_z)};

  // -> inv dot products
  fix3 inv {reciprocal(rd.x), reciprocal(rd.y), reciprocal(rd.z)};

  // -> tmax
  fix3 brd = p - v; // distance to border
  fix3 onev {1,1,1};
  fix3 a = onev - brd;
  if(rd.x < 0) a.x = brd.x;
  if(rd.y < 0) a.y = brd.y;
  if(rd.z < 0) a.z = brd.z;

  // -> delta
  rstate.dt = inv - fixed_shr(1, FIXED_FRACTIONBITS);

  rstate.tm = a * inv;
  rstate.inside = false;
  rstate.clr = 255;
  rstate.dist = 255;
  
  return rstate;
}

//reaches 225.428 MHz on Arty
inline rstate_t raymarch_step(rstate_t r, uint8_t step)
{
    bool inside = inside_tile(r.iv_x, r.iv_y, r.iv_z);
    if (!r.inside && inside)
    {
      r.inside = true;
      r.clr    = (r.iv_x ^ r.iv_y ^ r.iv_z) & 63;
      r.dist   = step;
    }

    if (!(r.tm.x > r.tm.y) && !(r.tm.x > r.tm.z))
    {
      r.iv_x  = r.iv_x + r.sx; // tm_x smallest
      r.tm.x = r.tm.x + r.dt.x;
    }
    else if (r.tm.y < r.tm.x && r.tm.y < r.tm.z)
    {
      r.iv_y  = r.iv_y + r.sy; // tm_y smallest
      r.tm.y = r.tm.y + r.dt.y;
    }
    else
    {
      r.iv_z  = r.iv_z + r.sz; // tm_z smallest
      r.tm.z = r.tm.z + r.dt.z;
    }
    return r;
}

pixel_t raymarch_end(rstate_t r)
{
  uint8_t fog   = r.dist;
  uint8_t light = 255 - r.dist;
  uint16_t shade = light * r.clr;

  pixel_t pix;
  pix.r = (shade >> 7) + fog;
  pix.g = (shade >> 7) + fog;
  pix.b = (shade >> 8) + fog;
  return pix;
}


inline pixel_t render_pixel(uint16_t i, uint16_t j)
{
  rstate_t rstate = raymarch_init(i - FRAME_WIDTH/2, j - FRAME_HEIGHT/2, state.scene.frame);

  uint8_t step = 0;
  for (step = 0; step < RAYMARCH_STEPS; step += 1)
  {
    rstate = raymarch_step(rstate, step);
#ifndef SIMULATION
    if(rstate.inside)
      break;
#endif
  }

  pixel_t pix = raymarch_end(rstate);
  return pix;
}

full_state_t full_update(INOUT(full_state_t) state, bool reset, bool button_state)
{
  state.scene.frame = state.scene.frame + 1;
  return state;
}

