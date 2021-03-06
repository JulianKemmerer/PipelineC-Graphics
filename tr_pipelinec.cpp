#include "pipelinec_compat.h"
extern int FRAME_WIDTH;
extern int FRAME_HEIGHT;

struct pixel_t { uint8_t b, g, r, a; }; //this matches linux framebuffer

#include "float_type.h"
#ifndef PARSING //only on faster simulation
typedef float_type fixed_type;
typedef float_type coord_type;
typedef float3 object_coord_t;
typedef float_type screen_coord_t;

#define fixed_shl float_shift
#define fixed_shr(x,s) float_shift(x,-(s))
#define fixed_abs float_abs
#define fixed_max float_max
#define fixed_sign(x) ((x)<0)

#if 1
#warning simulation using all floats!
typedef float_type color_type;
typedef float3 color;
#define fixed_is_negative(x) ((x)<fixed_type(0))
#define fixed_convert(t, x, shift) (t)float_shift(x, shift)

#define fixed_asinteger(x, s) fixed_convert(int, x, s)
#define fixed_asshort(x, s) fixed_convert(short, x, s)

#else
//color in fixed types (slower)
#include "fixed_type.h"
typedef fixed_type color_type;
typedef fixed3 color;
#endif


#else
#include "fixed_type.h"
typedef fixed fixed_type;
typedef fixed_type coord_type;
typedef fixed3 object_coord_t;
typedef coord_type screen_coord_t;
typedef fixed_type color_type;
typedef fixed3 color;
#endif

float3 object_coord_to_float3(object_coord_t a) { float3 r = { (float) a.x, (float) a.y, (float) a.z }; return r; } //TODO: rename to

inline color color_select(color_type x, color a, color b) { return b+(a-b)*x; }
inline color_type color_max(color_type a, color_type b) { return a>b?a:b; }

#define assert(x)

inline float_type is_negative(float_type x) { return float_to_uint(x)&0x80000000; }
inline float_type float_abs(float_type x) { return uint_to_float(float_to_uint(x)&0x7FFFFFFF); }
inline float_type inversesqrt( float_type number ) //should one more newton iteration
{
#if 1
  // https://en.wikipedia.org/wiki/Fast_inverse_square_root
  float_type x2 = float_shift(number, -1);
  float_type conv_f = uint_to_float(0x5f3759df - (float_to_uint(number) >> 1));
  return conv_f*(float_type(1.5) - conv_f*conv_f*x2);
#else
  return 1.f/sqrtf(number);
#endif
}

inline float_type sqrt(float_type x) { return x*inversesqrt(x); }

inline float_type float_fast_reciprocal_u(float_type x)
{
#ifdef PARSING
#warning use below implementation with shifted constant for hardware
  bool neg = is_negative(x);
  float_type y = inversesqrt(neg ? -x:x);
  y = y*y;
  return neg?-y:y;
#else
  //https://stackoverflow.com/questions/9939322/fast-1-x-division-reciprocal
  const uint32_t K = 0x7EF127EA;
  float_type f = uint_to_float(K - float_to_uint(x));
  // Efficient Iterative Approximation Improvement in horner polynomial form.
  return f * (2. - x*f);     // Single iteration, Err = -3.36e-3 * 2^(-flr(log2(x)))
#endif
}

inline float_type float_fast_div_u(float_type a, float_type b)
{
  //return a/b;
  return a*float_fast_reciprocal_u(b); //actually faster!
}

inline float float_max(float_type a, float_type b) { return a>b?a:b; }
inline float float_min(float_type a, float_type b) { return a<b?a:b; }
static const float_type BIG_FLOAT = 1.0e23f;

typedef float2 vec2;
typedef float3 vec3;
typedef float4 vec4;

inline float_type dot(vec3 a, vec3 b) { return a.x*b.x+a.y*b.y+a.z*b.z; }

inline vec3 reflect(vec3 I, vec3 N) { return I - N*float_shift(dot(I,N),1); }
inline vec3 normalize(vec3 v) { return v*inversesqrt(dot(v, v)); }

//template<class F, class T> T float_select(const F& x, const T& a, const T& b) { return b+(a-b)*x; }
inline vec3 float_select(float_type x, vec3 a, vec3 b) { return b+(a-b)*x; }

/*
uint16_t CLOG2(uint16_t v)
{
  //https://graphics.stanford.edu/~seander/bithacks.html#IntegerLog
  uint16_t r;
  uint16_t shift;
  r = 0; //r =     (v > 0xFFFF) << 4; v >>= r; /FIXME: this is for 32 bit
  shift = (v > 0xFF) ? 8 : 0; v >>= shift; r |= shift;
  shift = (v > 0x0F) ? 4 : 0; v >>= shift; r |= shift;
  shift = (v > 0x03) ? 2 : 0; v >>= shift; r |= shift;
  r |= (v >> 1);
  return r+1;
}
*/
#ifndef PARSING
inline int16_t round16(float_type x) { return lround(x); } //FIXME: unify implementations
#else
inline int16_t round16(fixed_type x) { return int16_t(x+.5); }
#endif
inline uint16_t hash16(uint16_t v) { return v * uint32_t(0x9E37u); } //16x16bits
inline uint16_t hashf(float_type f) { uint32_t u = float_to_uint(f); return hash16(((u<<9)|(u>>23))^(u>>7)); }

#include RTCODE

