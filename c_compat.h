// (C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>
#ifndef __C_COMPAT_H__
#define __C_COMPAT_H__

#ifndef __cplusplus
#define inline
#define constexpr
typedef unsigned char bool;
#endif
#define true 1
#define false 0
typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned uint32_t;
typedef short int16_t;
typedef int int32_t;

#include "float_type.h"

#ifdef CCOMPILE
#ifndef __PIPELINEC__
#ifndef CUSTOM_FLOAT_MANTISSA
typedef union { struct { float_type x, y, z; }; struct { float_type r, g, b; }; } float3;
#endif //CUSTOM_FLOAT_MANTISSA
#else
typedef struct { float_type x, y; } float2; //like extension vectors
typedef struct float3 { float_type x, y, z; } float3; //like extension vectors
typedef struct { float_type x, y, z, w; } float4;
#endif


inline /*constexpr*/ float3 float3_make_from_float(float_type a) { float3 r = { a, a, a }; return r; }
inline /*constexpr*/ float3 float3_make_from_double(double a) { return float3_make_from_float(a); }
inline /*constexpr*/ float3 float3_make(float_type x, float_type y, float_type z) { float3 r = {x, y, z }; return r; } //constructor

#define float3_op(op) \
inline float3 float3_##op(float3 left, float3 right) { float3 r = { float_##op(left.x, right.x), float_##op(left.y, right.y), float_##op(left.z, right.z) }; return r; }
#define float3_op_float(op) \
inline float3 float3_##op##_float(float3 left, float_type right) { float3 r = { float_##op(left.x, right), float_##op(left.y, right), float_##op(left.z, right) }; return r; }
float3_op(add)
float3_op(sub)
float3_op(mul)
float3_op_float(add)
float3_op_float(sub)
float3_op_float(mul)

#else // CCOMPILE = false

#ifndef CUSTOM_FLOAT_MANTISSA
//typedef float vec2 __attribute__((vector_size(2*4)));
//typedef float vec3 __attribute__((vector_size(3*4)));
//typedef float vec4 __attribute__((vector_size(4*4)));
typedef float_type __attribute__((ext_vector_type(2))) float2;
typedef float_type __attribute__((ext_vector_type(3))) float3;
typedef float_type __attribute__((ext_vector_type(4))) float4;
#endif

#endif //CCOMPILE

#ifdef PARSING
#define IN(t) t
#define INOUT(t) t
#else
#define IN(t) const t&
#define INOUT(t) t&
#endif

#define shift_t int6_t


#endif //__C_COMPAT_H__
