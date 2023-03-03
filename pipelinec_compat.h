#ifndef __PIPELINEC_COMPAT_H_
#define __PIPELINEC_COMPAT_H_

#include "c_compat.h"

#ifdef __PIPELINEC__

#define float_type float
// Float is variable size
#include "float_e_m_t_helper.h"
#define inversesqrt float_rsqrt
// Shift is built in
#define float_shift(x,shift) ((x)<<(shift))

#define double float
#else
typedef uint16_t uint12_t;
typedef uint16_t uint9_t, uint10_t;
typedef uint8_t uint1_t, uint2_t;
typedef uint8_t uint3_t, uint5_t, uint6_t;
typedef int32_t int20_t, int21_t, int22_t, int26_t;
typedef int16_t int9_t, int12_t;
typedef int8_t int2_t, int6_t;


#endif
#endif //__PIPELINEC_COMPAT_H_
