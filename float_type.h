#ifndef __FLOAT_TYPE_H__
#define __FLOAT_TYPE_H__

#ifdef PARSING
float float_shift(float x, int shift);
unsigned float_to_uint(float a);
float uint_to_float(unsigned a);
#else
#ifndef __PIPELINEC__
union fp_tlayout { float f; unsigned i; struct { unsigned mantissa:23; unsigned exp:8; unsigned sign:1; }; };
inline unsigned float_to_uint(float a) { fp_tlayout conv; conv.f = a; return conv.i; }
inline float uint_to_float(unsigned a) { fp_tlayout conv; conv.i = a; return conv.f; }
inline float float_shift(float x, int shift) { return shift > 0 ? x * (1<<shift) : x / ((1<<-shift)); }
//correct float_shift implementation in hardware just adds the shift to exponent
//inline float float_shift(float x, int shift) { fp_tlayout conv; conv.f = x; conv.exp+=shift; return conv.f; }

//main overloaded float operators
#define float_mul(a,b) ((a)*(b))
#define float_add(a,b) ((a)+(b))
#define float_sub(a,b) ((a)-(b))
#define float_div(a,b) ((a)/(b))

#endif
#endif

//misc overloaded float operators
#define float_lt(a, b) ((a)<(b))
#define float_gt(a, b) ((a)>(b))
#define float_eq(a, b) ((a)==(b))
#define float_neq(a, b) ((a)!=(b))

#define float_mul_double(a, b) float_mul(a, b)
#define float_sub_double(a, b) float_sub(a, b)
#define float_neq_double(a, b) float_neq(a, b)
#define float_lt_double(a, b) float_lt(a, b)
#define float_gt_double(a, b) float_gt(a, b)
#define double_div_float(a, b) float_div(a, b)

#include "custom_float.h" //may redefine float

#ifndef __PIPELINEC__
typedef float float_type;
#else
#define float_type float
#endif

#endif //__FLOAT_TYPE_H__
