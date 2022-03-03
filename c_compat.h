// (C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>

#ifdef CCOMPILE

#ifndef __cplusplus
typedef unsigned char bool;
#define inline
#endif

typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned uint32_t;
typedef short int16_t;
typedef int int32_t;

#ifdef __PIPELINEC__
#include "pipelinec_compat.h"
#endif

#define constexpr
#define true 1
#define false 0

typedef struct { float x, y; } float2; //like extension vectors
#ifndef __PIPELINEC__
typedef union { struct { float x, y, z; }; struct { float r, g, b; }; } float3;
#define sqrt _sqrt //avoid library conflict
#define lround _lround //avoid library conflict
#else
typedef struct float3 { float x, y, z; } float3; //like extension vectors
#endif
typedef struct { float x, y, z, w; } float4;

inline constexpr float3 float3_make_from_float(float a) { float3 r = { a, a, a }; return r; }
inline constexpr float3 float3_make_from_double(double a) { return float3_make_from_float(a); }
inline constexpr float3 float3_make(float x, float y, float z) { float3 r = {x, y, z }; return r; } //constructor

inline float3 float3_add(float3 left, float3 right) { float3 r = { left.x + right.x, left.y + right.y, left.z + right.z }; return r; }
inline float3 float3_sub(float3 left, float3 right) { float3 r = { left.x - right.x, left.y - right.y, left.z - right.z }; return r; }
inline float3 float3_mul(float3 left, float3 right) { float3 r = { left.x * right.x, left.y * right.y, left.z * right.z }; return r; }
inline float3 float3_mul_float(float3 left, float right) { float3 r = { left.x * right, left.y * right, left.z * right }; return r; }

typedef int8_t int6_t;
#include "fixed_type.h"

#endif //CCOMPILE


