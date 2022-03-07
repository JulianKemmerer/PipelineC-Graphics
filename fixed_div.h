//optimized fixed point division
// Copyright (C) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>

#ifndef __FIXED_DIV_H__
#define __FIXED_DIV_H__

#ifndef CCOMPILE
#define fixed_div(a,b) ((a)/(b))
#else

inline fixed_basetype fixed_div_u(fixed_basetype N, fixed_basetype D)
{
#if 1
  fixed_basetype Q = 0;
  uint32_t R = 0;
  uint32_t RD = 0;
  uint32_t BIT;

  int6_t i;
  for(i=31; i>=0; i-=1)
  {
    BIT = ((uint32_t)1) << i;
	R = R << 1;
    if((N & (BIT>>FIXED_FRACTIONBITS)) != 0)
      R = R | 1;
    RD = R - D;
	if ((RD >> 31) == 0)
    {
      R = RD;
      Q = Q | BIT;
    }
  }
  return Q;
#else
  return ((uint32_t)N<<FIXED_FRACTIONBITS)/D;
#endif
}

inline fixed_basetype fixed_div_i(fixed_basetype left, fixed_basetype right)
{
  fixed_basetype r = 0; //division by zero makes it undefined

  //comparisons avoids absolute value
  fixed_basetype leftm = -left;
  fixed_basetype rightm = -right;
  if(left > 0 & right > 0)
    r = fixed_div_u(left, right);
  else if(left < 0 & right < 0)
    r = fixed_div_u(leftm, rightm);
  else if(left < 0 & right > 0)
    r = -fixed_div_u(leftm, right);
  else if(left > 0 & right < 0)
    r = -fixed_div_u(left, rightm);
  return r;
}

inline fixed fixed_div(fixed a, fixed b) { fixed r = { fixed_div_i(a.f, b.f) }; return r; }
#endif

#endif //__FIXED_DIV_H__
