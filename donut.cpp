//based on a code Copyright (c) 2023 Andy Sloane (MIT license):
// https://github.com/a1k0n/donut-raymarch/blob/main/di2.c
//(C) 2023 Victor Suarez Rovere <suarezvictor@gmail.com>

#ifndef PARSING
template<unsigned BITS>
class truncated_int
{
  typedef truncated_int type;

public:
  typedef int32_t internal_type;
  typedef truncated_int<BITS*2> ext_type;
  typedef truncated_int<BITS/2> small_type;

private:
  internal_type f:BITS;
 
public:
    
    truncated_int(int a = 0) : f(a) { }
    truncated_int(short a) : f(a) {}
    constexpr truncated_int(double a) : f(a)  { }
    template<unsigned T>
    truncated_int(const truncated_int<T>& a) : f(internal_type(a)) {}

    //ext_type operator * (double b) const { ext_type r(f * float(b)); return r; }
    ext_type operator * (type b) const { ext_type r(f * internal_type(b)); return r; }

    //explicit operator float() const { return float_shift(f, -Q); }
    explicit operator int() const { return f; }
    explicit operator short() const { return f; }



    //type operator / (small_type b) const { fixed_t r; r.f = f / b.f; return r; } //fixed_div_impl(f, b.f, Q)


    type operator >> (int s) const { type r; r.f = f >> s; return r; } //NOTE: may have precision issues
    type operator << (int s) const { type r; r.f = f << s; return r; } //NOTE: may have precision issues
    type operator + (type b) const { type r; r.f = f + internal_type(b); return r; }
    type operator - (type b) const { type r; r.f = f - b.f; return r; }
    type operator - () const { type r; r.f = -f; return r; }
    bool operator == (type b) const { return f == b.f; }
    bool operator != (type b) const { return f != b.f; }
    bool operator < (type b) const { return f < b.f; }
    bool operator > (type b) const { return f > b.f; }
};

typedef truncated_int<16> int_t; //this can test needed precision
#define int16_t int_t
#endif

#include "tr.h"
full_state_t state;

struct pair
{
 int16_t a, b;
};

struct pair length_cordic(int16_t x, int16_t y, int16_t x2, int16_t y2)
{
struct pair r;

  if (x < 0) { // start in right half-plane
    x = -x;
    x2 = -x2;
  }
  uint8_t i;
  #define NCORDIC 6
  for (i = 0; i < NCORDIC; i=i+1) {
    int16_t t = x;
    int16_t t2 = x2;
    if (y < 0) {
      x = x - (y >> i);
      y = y + (t >> i);
      x2 = x2 -(y2 >> i);
      y2 = y2 + (t2 >> i);
    } else {
      x = x + (y >> i);
      y = y - (t >> i);
      x2 = x2 + (y2 >> i);
      y2 = y2 - (t2 >> i);
    }
  }
  // divide by 0.625 as a cheap approximation to the 0.607 scaling factor factor
  // introduced by this algorithm (see https://en.wikipedia.org/wiki/CORDIC)
  r.a = (x >> 1) + (x >> 3) - (x>>6); //see https://twitter.com/iquilezles/status/1716330267189883244
  r.b = (x2 >> 1) + (x2 >> 3) - (x>>6);
  return r;
}

#define NITERS 16	

int16_t donut(int16_t i, int16_t j)
{
      int16_t t = 512;


      int16_t vxi14 = i*state.xincX - (state.cB + state.sB);
      int16_t vyi14 = (j*state.yincC + state.sAsB - state.sAcB) - i*state.xincY;
      int16_t vzi14 = (j*state.yincS - state.cAsB + state.cAcB) + i*state.xincZ;

    const int16_t dz = 5, r1 = 1, r2 = 2;
    const int16_t r1i = r1*256;
    const int16_t r2i = r2*256;

        int16_t px;
        int16_t py;
        int16_t pz;
        int16_t lx0;
        int16_t ly0;
        int16_t lz0;
    int16_t p0x;
    int16_t p0y;
    int16_t p0z;

        int16_t lz;
        int16_t d = 0;


    p0x = dz * state.sB >> 6;
    p0y = dz * state.sAcB >> 6;
    p0z = -dz * state.cAcB >> 6;
        px = p0x + (vxi14 >> 5); // assuming t = 512, t*vxi>>8 == vxi<<1
        py = p0y + (vyi14 >> 5);
        pz = p0z + (vzi14 >> 5);

        lx0 = state.sB >> 2;
        ly0 = state.sAcB - state.cA >> 2;
        lz0 = -state.cAcB - state.sA >> 2;

        uint8_t niters; 
        for (niters=0; niters<NITERS; niters=niters+1) {
          int16_t t0, t1, t2;
          int16_t lx = lx0, ly = ly0;
          lz = lz0;

          struct pair lc0 = length_cordic(px, py, lx, ly);
          t0 = lc0.a;
          lx = lc0.b;

          t1 = t0 - r2i;
          struct pair lc1 = length_cordic(pz, t1, lz, lx);
          t2=lc1.a;
          lz=lc1.b;
          d = t2 - r1i;
          t = t + d;

          if(t < 8*256 && !(d<2))
          {
            px = px + (d*vxi14 >> 14);
            py = py + (d*vyi14 >> 14);
            pz = pz + (d*vzi14 >> 14);
          }
        }
          
        return d > 2 ? -1 : lz;
}


full_state_t full_update(INOUT(full_state_t) state, bool reset, bool button_state)
{
  
  state.scene.frame = state.scene.frame + 1;
  if(reset)
  {
    state.scene.frame = 0;

  state.sB = 0;
  state.cB = 16384;
  state.sA = 16384;
  state.cA = 11583;
  state.sAsB = 0;
  state.cAsB = 0;
  state.sAcB = 11583;
  state.cAcB = 11583;
  }
  

    state.yincC = state.cA >> 8;
    state.yincS = state.sA >> 8;
    state.xincX = state.cB >> 8;
    state.xincY = state.sAsB >> 8;
    state.xincZ = state.cAsB >> 8;

// "Magic circle algorithm"? DDA? I've seen this formulation in a few places;
// first in Hal Chamberlain's Musical Applications of Microprocessors, but not
// sure what to call it, or how to justify it theoretically. It seems to
// correctly rotate around a point "near" the origin, without losing magnitude
// over long periods of time, as long as there are enough bits of precision in x
// and y. I use 14 bits here.

    // rotate sines, cosines, and products thereof
    // this animates the torus rotation about two axes
#define R(s,x,y) x=x-(y>>s); y=y+(x>>s)
    R(5, state.cA, state.sA);
    R(5, state.cAsB, state.sAsB);
    R(5, state.cAcB, state.sAcB);
    R(6, state.cB, state.sB);
    R(6, state.cAcB, state.cAsB);
    R(6, state.sAcB, state.sAsB);
#undef R
  
  return state;
}


#undef int16_t //FIXME: use int_t types

inline pixel_t render_pixel(uint16_t i, uint16_t j)
{

#ifndef PIPELINEC_SUGAR
  int16_t cx = (i<<1)-FRAME_WIDTH-1;
  int16_t cy = -((j<<1)-FRAME_HEIGHT-1);
#else
  int16_t cx = i << 1;
  cx = cx - (FRAME_WIDTH + 1);
  int16_t cy = j << 1;
  cy = (FRAME_HEIGHT + 1) - cy;
#endif


    pixel_t pix =  { 0, 0, 0};

    //bounding box
    if(cx > 0 && cx < FRAME_WIDTH/2 + FRAME_HEIGHT/4 + FRAME_HEIGHT/8 && cy < FRAME_HEIGHT/4 + FRAME_HEIGHT/8 && cy > -FRAME_HEIGHT/4 - FRAME_HEIGHT/8)
    {
       int16_t lz = (int16_t) donut(cx, cy);
       if(lz > 0)
       {
         pix.r = lz>>5;
         pix.g = lz>>6;
       }
    }
    return pix;
}

