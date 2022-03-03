#ifndef __PIPELINEC__
typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned uint32_t;
typedef short int16_t;
typedef int int32_t;
#define short int16_t
#define int int32_t
typedef uint16_t uint9_t;
typedef uint16_t uint12_t;
typedef uint8_t uint6_t;
typedef int8_t int6_t;
typedef bool uint1_t;

#define WIRE_READ(t, lhs, rhs) lhs=rhs;
#define MAIN_MHZ
const uint16_t FRAME_WIDTH = 512;
const uint16_t FRAME_HEIGHT = 384;
#endif

#define IN(t) t



struct pixel_t { uint8_t a, b, g, r; };
typedef unsigned long size_t;
typedef float float_type;
#define assert(x)
inline float is_negative(float x) { return x<0.; }
#warning optimized implementation of is_negative tests the MSB


union fp_tlayout { float f; uint32_t i; struct { uint32_t mantissa:23; uint32_t exp:8; uint32_t sign:1; }; };
inline float float_shift(float x, int32_t shift) { return shift > 0 ? x * (1<<shift) : x / ((1<<-shift)); }
#warning correct float_shift implementation just add the shift to exponent

inline uint32_t float_to_uint(float a) { fp_tlayout conv; conv.f = a; return conv.i; }
inline float uint_to_float(uint32_t a) { fp_tlayout conv; conv.i = a; return conv.f; }

inline float float_abs(float x) { return uint_to_float(float_to_uint(x)&0x7FFFFFFF); }
inline float inversesqrt( float number ) //should one more newton iteration
{
  // https://en.wikipedia.org/wiki/Fast_inverse_square_root
  float_type x2 = float_shift(number, -1);
  float_type conv_f = uint_to_float(0x5f3759df - (float_to_uint(number) >> 1));
  return conv_f*(float_type(1.5) - conv_f*conv_f*x2);
}

inline float sqrt(float x) {return 1./inversesqrt(x); }
inline float float_max(float a, float b) { return a>b?a:b; }
inline float float_min(float a, float b) { return a<b?a:b; }
const float BIG_FLOAT = 1.0e23;

#if 1
//typedef float vec2 __attribute__((vector_size(2*4)));
//typedef float vec3 __attribute__((vector_size(3*4)));
//typedef float vec4 __attribute__((vector_size(4*4)));
typedef float __attribute__((ext_vector_type(2))) float2;
typedef float __attribute__((ext_vector_type(3))) float3;
typedef float __attribute__((ext_vector_type(4))) float4;
#endif

typedef float2 vec2;
typedef float3 vec3;
typedef float4 vec4;

inline float dot(vec3 a, vec3 b) { return a.x*b.x+a.y*b.y+a.z*b.z; }

inline vec3 reflect(vec3 I, vec3 N) { return I - N*float_shift(dot(I,N),1); }
inline vec3 normalize(vec3 v) { return v*inversesqrt(dot(v, v)); }

#define fixed_asinteger(x, s) (int)fixed_shift(x, s)
#define fixed_asshort(x, s) (short)fixed_shift(x, s)
inline uint16_t hash16(uint16_t v) { return v * uint32_t(0x9E37u); } //16x16bits
inline uint16_t hashf(float_type f) { uint32_t u = float_to_uint(f); return hash16(((u<<9)|(u>>23))^(u>>7)); }
//template<class F, class T> T float_select(const F& x, const T& a, const T& b) { return b+(a-b)*x; }
inline vec3 float_select(float x, vec3 a, vec3 b) { return b+(a-b)*x; }


uint16_t CLOG2(uint16_t v)
{
  //https://graphics.stanford.edu/~seander/bithacks.html#IntegerLog
  uint16_t r;
  uint16_t shift;
  r = 0; //r =     (v > 0xFFFF) << 4; v >>= r; /FIXME: this is for 32 bit
#if 0
  shift = (v > 0xFF  ) << 3; v >>= shift; r |= shift;
  shift = (v > 0xF   ) << 2; v >>= shift; r |= shift;
  shift = (v > 0x3   ) << 1; v >>= shift; r |= shift;
#else
  shift = (v > 0xFF) ? 8 : 0; v >>= shift; r |= shift;
  shift = (v > 0x0F) ? 4 : 0; v >>= shift; r |= shift;
  shift = (v > 0x03) ? 2 : 0; v >>= shift; r |= shift;
#endif

  r |= (v >> 1);
  return r+1;
}

#include "fixed_type.h"
typedef fixed fixed_type;
typedef fixed_type coord_type;
typedef fixed3 object_coord_t;
typedef coord_type screen_coord_t;
#if 0
#warning color has too much precision
typedef float_type color_type;
typedef vec3 color;
#else
typedef fixed_type color_type;
typedef fixed3 color;
#endif

inline color color_select(color_type x, color a, color b) { return b+(a-b)*x; }
inline color_type color_max(color_type a, color_type b) { return a>b?a:b; }

/*
//float types
typedef float_type coord_type;
typedef float_type fixed_type;
typedef vec3 object_coord_t;
typedef coord_type screen_coord_t;
typedef float_type color_type;
typedef vec3 color;

#define fixed_abs float_abs
#define fixed_min float_min
#define fixed_max float_max
#define fixed_shift float_shift
#define fixed_is_negative is_negative

#define vec3convert(x) (x)
#define fixed_convert(t, x, s) (t)float_shift(x, s)


inline int16_t lround(fixed_type x) { return x+.5f; }
inline bool is_fixed_negative(fixed_type a) { return a<0; }
*/

#include "tr.cpp"



