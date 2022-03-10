//optimized fixed point division
// Copyright (C) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>

#ifndef __FIXED_DIV_H__
#define __FIXED_DIV_H__

#ifdef __PIPELINEC__
inline fixed_basetype fixed_div_u(fixed_basetype N, fixed_basetype D)
{
  fixed_basetype Q = 0;
  fixed_basetype R = 0;
  fixed_basetype RD = 0;
  uint32_t BIT;

  int6_t i;
  for(i=31; i>=0; i-=1)
  {
    BIT = ((uint32_t)1) << i;
	R = R << 1;
    if((N & (BIT>>FIXED_FRACTIONBITS)) != 0)
      R = R | 1;
    RD = R - D;
    if (((int32_t)RD >> 31) == 0) //checks sign bit
    {
      R = RD;
      Q = Q | BIT;
    }
  }
  return Q;
}

inline fixed_basetype fixed_div_i(fixed_basetype left, fixed_basetype right)
{
  fixed_basetype r = 0; //division by zero makes it undefined

  bool left_sign = left < 0; //FIXME: test sign bit
  bool right_sign = right < 0;
  fixed_basetype leftx = left_sign ? -left : left;
  fixed_basetype rightx = right_sign ? -right : right;
  r = fixed_div_u(leftx, rightx);
  return left_sign == right_sign ? r : -r;
}

inline fixed fixed_div(fixed a, fixed b) { fixed r; r.f = fixed_div_i(a.f, b.f); return r; }
#else
inline fixed fixed_div(fixed a, fixed b) { fixed r; r.f = { (a.f<<FIXED_FRACTIONBITS)/b.f }; return r; }
#endif

#endif //__FIXED_DIV_H__
