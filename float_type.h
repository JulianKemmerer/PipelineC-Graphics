#ifndef __FLOAT_TYPE_H__
#define __FLOAT_TYPE_H__

#ifdef PARSING
float float_shift(float x, int shift);
unsigned float_to_uint(float a);
float uint_to_float(unsigned a);
#else
#ifndef __PIPELINEC__
#warning correct float_shift implementation just add the shift to exponent
inline float float_shift(float x, int shift) { return shift > 0 ? x * (1<<shift) : x / ((1<<-shift)); }
union fp_tlayout { float f; unsigned i; struct { unsigned mantissa:23; unsigned exp:8; unsigned sign:1; }; };
inline unsigned float_to_uint(float a) { fp_tlayout conv; conv.f = a; return conv.i; }
inline float uint_to_float(unsigned a) { fp_tlayout conv; conv.i = a; return conv.f; }
#endif
#endif

#endif //__FLOAT_TYPE_H__
