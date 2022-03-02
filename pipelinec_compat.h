#define float_type float


// Float is variable size
#include "float_e_m_t_helper.h"
#define inversesqrt float_rsqrt
// Shift is built in
#define float_shift(x,shift) ((x)<<(shift))

#if 0 // Not PipelineC
// Float is software FP32

bool is_negative(float x)
{
  return x < 0.;
}
typedef union fp_tlayout { float f; uint32_t i; struct  { uint32_t mantissa; uint32_t exp; uint32_t sign; } ;} fp_tlayout;
uint32_t float_to_uint(float a)
{
  fp_tlayout conv;
  conv.f = a;
  return conv.i;
}
float uint_to_float(uint32_t a)
{
  fp_tlayout conv;
  conv.i = a;
  return conv.f;
}
/*float float_abs(float x)
{
  return uint_to_float(float_to_uint(x) & 0x7FFFFFFF);
}*/
float float_shift(float x, int32_t shift)
{
  return shift > 0 ? x * (1 << shift) : x / (1 << -shift);
}
float inversesqrt(float number)
{
  float_type x2 = float_shift(number, -1);
  float_type conv_f = uint_to_float(0x5f3759df - (float_to_uint(number) >> 1));
  return conv_f * ((1.5) - conv_f * conv_f * x2);
}

typedef uint16_t uint9_t;
typedef uint8_t uint6_t;
typedef int8_t int6_t;
typedef uint16_t uint12_t;
typedef unsigned long size_t;
//#define float3_mul_float_macro(out, left, right) {out.x = left.x * right; out.y = left.y * right; out.z = left.z * right;}

#endif
