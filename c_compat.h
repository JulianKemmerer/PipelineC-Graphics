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

#ifdef CCOMPILE
typedef struct { float x, y; } float2; //like extension vectors
#ifndef __PIPELINEC__
typedef union { struct { float x, y, z; }; struct { float r, g, b; }; } float3;
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

#else

//typedef float vec2 __attribute__((vector_size(2*4)));
//typedef float vec3 __attribute__((vector_size(3*4)));
//typedef float vec4 __attribute__((vector_size(4*4)));
typedef float __attribute__((ext_vector_type(2))) float2;
typedef float __attribute__((ext_vector_type(3))) float3;
typedef float __attribute__((ext_vector_type(4))) float4;

#endif //CCOMPILE

#define shift_t int6_t

#define IN(t) t

#endif //__C_COMPAT_H__
