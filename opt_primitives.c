//Copyright (C) 2023 Victor Suarez Rovere <suarezvictor@gmail.com>

#ifndef __PIPELINEC__
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef uint32_t uint17_t, uint18_t, uint19_t, uint20_t, uint23_t, uint27_t;
typedef uint16_t uint9_t, uint10_t, uint14_t, uint15_t;
typedef uint8_t uint1_t;
#endif


#define LSHIFT(t, x, s) (((t) x)<<s)

uint18_t LPM_MULT9X9(uint9_t a, uint9_t b)
{
#ifndef __PIPELINEC__
  a &= (1<<9)-1;
  b &= (1<<9)-1;
#endif
  return a * b;
}

uint20_t LPM_MULT10X10(uint10_t a, uint10_t b)
{
#ifndef __PIPELINEC__
  a &= (1<<10)-1;
  b &= (1<<10)-1;
#endif

  uint9_t a_trunc = a;
  uint9_t b_trunc = b;
#ifndef __PIPELINEC__
  a_trunc &= (1<<9)-1;
  b_trunc &= (1<<9)-1;
#endif
  uint1_t ah = a >> 9;
  uint1_t bh = b >> 9;
  uint20_t r = ah && bh ? 0x40000:0;
  if(ah)
    r += LSHIFT(uint18_t, b_trunc, 9);
  if(bh)
    r += LSHIFT(uint18_t, a_trunc, 9);
  r += LPM_MULT9X9(a_trunc, b_trunc);
  
  return r;
}

uint16_t mult15x15_upper16(uint15_t x, uint15_t y)
{
#ifndef __PIPELINEC__
  x &= (1<<15)-1;
  y &= (1<<15)-1;
#endif
  return (x*y)>>14;
}

uint27_t mult18x18_upper27(uint18_t x, uint18_t y)
{
#ifndef __PIPELINEC__
  x &= (1<<18)-1;
  y &= (1<<18)-1;
#endif
  return (x*y)>>9;
}

uint27_t mult18x18_upper27_alt(uint18_t x, uint18_t y)
{
  //extract 9 bit fields
  uint9_t a = x >> 9;
  uint9_t b = x;
  uint9_t d = y >> 9;
  uint9_t e = y;
  

  //mask bits for CPU execution
#ifndef __PIPELINEC__
  a &= (1<<9)-1;
  b &= (1<<9)-1;
  d &= (1<<9)-1;
  e &= (1<<9)-1;
#endif

  uint9_t be = LPM_MULT9X9(b, e) >> 9;
  //be &= (1<<9)-1; //mask bits (not needed)

  uint18_t bd = LPM_MULT9X9(b, d);
  //bd &= (1<<18)-1; //mask bits (not needed)
  uint19_t ae_bd = bd + LPM_MULT9X9(a, e);
  //ae_bd &= (1<<19)-1; //mask bits (not needed)

  uint18_t ad = LPM_MULT9X9(a, d);
  //ad &= (1<<18)-1; //mask bits (not needed)
  uint23_t r = LSHIFT(uint27_t, ad, 9) + (ae_bd + be); //see note below	
#ifndef __PIPELINEC__
  r &= ((1<<23)-1); //NOTE: only 23 upper bits are significative, and only 21 needed for 15x15->16
#endif

  return r;
}

uint27_t mult18x18_upper27_trunc(uint18_t x, uint18_t y)
{
  //extract 9 bit fields
  uint9_t a = x >> 9;
  uint9_t b = x;
  uint9_t d = y >> 9;
  uint9_t e = y;
  

  //mask bits for CPU execution
#ifndef __PIPELINEC__
  a &= (1<<9)-1;
  b &= (1<<9)-1;
  d &= (1<<9)-1;
  e &= (1<<9)-1;
#endif

  uint18_t bd = LPM_MULT9X9(b, d);
  //bd &= (1<<18)-1; //mask bits (not needed)
  uint19_t ae_bd = bd + LPM_MULT9X9(a, e);
  //ae_bd &= (1<<19)-1; //mask bits (not needed)

  uint18_t ad = LPM_MULT9X9(a, d);
  //ad &= (1<<18)-1; //mask bits (not needed)
  uint23_t r = LSHIFT(uint27_t, ad, 9) + ae_bd; //see note below	
#ifndef __PIPELINEC__
  r &= ((1<<23)-1); //NOTE: only 23 upper bits are significative, and only 21 needed for 15x15->16
#endif
  return r;
}

//karatsuba multiplication
//r=LSB l=MSB
//(XlYl << n) + (((Xl+Xr)*(Yl+Yr)-XlYl-XrYr) << (n/2)) + XrYr
uint27_t mult18x18_upper27_k(uint18_t x, uint18_t y)
{
  //extract 9 bit fields
  uint9_t a = x >> 9;
  uint9_t b = x;
  uint9_t d = y >> 9;
  uint9_t e = y;
  
#ifndef __PIPELINEC__
  //mask bits for CPU execution
  a &= (1<<9)-1;
  b &= (1<<9)-1;
  d &= (1<<9)-1;
  e &= (1<<9)-1;
#endif

  uint18_t ad = LPM_MULT9X9(a, d);
  //ad &= (1<<18)-1; //mask bits (not needed)
  uint18_t be = LPM_MULT9X9(b, e);
  //be &= (1<<18)-1; //mask bits (not needed)
  uint19_t ae_bd = LPM_MULT10X10(a+b, d+e); //19 bits are enough. NOTE: implemented with 9x9 multipliers
  //ae_bd &= (1<<19)-1; //mask bits (not needed)
  uint18_t m = ae_bd - ad - be; //16 bits are enough for 15x15
  //m &= (1<<18)-1; //mask bits (not needed)

  return LSHIFT(uint27_t, ad, 9) + ((LSHIFT(uint27_t, m, 9) + be) >> 9);
}

uint16_t mult15x15_upper16_alt(uint15_t x, uint15_t y)
{
#ifndef __PIPELINEC__
  x &= (1<<15)-1;
  y &= (1<<15)-1;
#endif
  //return mult18x18_upper27(x, y)>>(14-9);
  //return mult18x18_upper27_k(x, y)>>(14-9);
  //return mult18x18_upper27_trunc(x, y)>>(14-9);
  uint16_t xx = LSHIFT(uint16_t, x, 1);
  uint16_t yy = LSHIFT(uint16_t, y, 1);
  return mult18x18_upper27_trunc(xx, yy)>>7;
}

uint14_t mult14x14_upper14(uint14_t x, uint14_t y)
{
  return (x*y)>>14;
}

uint16_t mult14x14_upper14_alt(uint14_t x, uint14_t y)
{

#ifndef __PIPELINEC__
  x &= (1<<14)-1;
  y &= (1<<14)-1;
#endif
  uint16_t xx = LSHIFT(uint16_t, x, 2);
  uint16_t yy = LSHIFT(uint16_t, y, 2);
  return mult18x18_upper27_trunc(xx, yy)>>9;
}

#ifndef __PIPELINEC__

int main()
{
  int count = 100*1000*1000;
  int maxerr = 0;
  while(--count)
  {
    uint18_t x = rand() & ((1<<14)-1);
    uint18_t y = rand() & ((1<<14)-1);

    //uint27_t r1 = mult18x18_upper27(x, y);
    //uint27_t r2 = mult18x18_upper27_k(x, y);
    uint16_t r1 = mult14x14_upper14(x, y);
    uint16_t r2 = mult14x14_upper14_alt(x, y);
    
  
    if(r1 != r2)
    {
      int16_t err = abs(r2 - r1);
      if(err > maxerr)
      {
        maxerr = err;
        fprintf(stderr, "x 0x%08X, y 0x%08X, r1 0x%08X, r2 0x%08X, err %d: FAILED\n", x, y, r1, r2, maxerr);
      }
    }
  }

  if(maxerr == 0)
  {
    printf("PASSED\n");
    return 0;
  }
    
  return 1;
}
#endif

