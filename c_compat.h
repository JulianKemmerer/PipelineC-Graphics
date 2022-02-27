// (C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>

#ifndef __cplusplus
#define CCOMPILE
#endif

#ifdef CCOMPILE

//typedef unsigned char bool;
//#define inline
//typedef float float_type;
#define float_type float

#ifdef __PIPELINEC__
// Float is variable size
#include "float_e_m_t_helper.h"
#define inversesqrt float_rsqrt
// Shift is built in
#define float_shift(x,shift) ((x)<<(shift))

#else // Not PipelineC
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
#endif //PIPELINEC

typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef short int16_t;
typedef int int32_t;
//typedef bool uint1_t;
typedef uint16_t uint9_t;
typedef uint8_t uint6_t;
typedef uint16_t uint12_t;
typedef unsigned long size_t;

#define constexpr
#define true 1
#define false 0

typedef struct float2 { float x, y; } float2; //like extension vectors
//typedef union { struct { float x, y, z; }; struct { float r, g, b; }; } float3;
typedef struct float3 { float x, y, z; } float3; //like extension vectors
typedef struct float4 { float x, y, z, w; } float4;

inline constexpr float3 float3_make_from_float(float a) { float3 r = { a, a, a }; return r; }
//inline constexpr float3 float3_make_from_double(double a) { return float3_make_from_float((float)a); }
inline constexpr float3 float3_make(float x, float y, float z) { float3 r = {x, y, z }; return r; } //constructor

inline float3 float3_add(float3 left, float3 right) { float3 r = { left.x + right.x, left.y + right.y, left.z + right.z }; return r; }
inline float3 float3_sub(float3 left, float3 right) { float3 r = { left.x - right.x, left.y - right.y, left.z - right.z }; return r; }
inline float3 float3_mul(float3 left, float3 right) { float3 r = { left.x * right.x, left.y * right.y, left.z * right.z }; return r; }
inline float3 float3_mul_float(float3 left, float right) { float3 r = { left.x * right, left.y * right, left.z * right }; return r; }

#define float3_mul_float_macro(out, left, right)\
out.x = left.x * right; out.y = left.y * right; out.z = left.z * right;

#endif //CCOMPILE

