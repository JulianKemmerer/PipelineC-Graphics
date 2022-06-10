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


#endif
#endif

#include "custom_float.h" //may redefine float

#ifndef __PIPELINEC__
typedef float float_type;
#else
#define float_type float
#endif

#endif //__FLOAT_TYPE_H__
