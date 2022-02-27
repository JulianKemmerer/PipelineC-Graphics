// Configure FP type to use
#ifdef __PIPELINEC__
#include "float_e_m_t.h"

/*
#define float float_8_23_t
#define uint_to_float float_8_23_t_uint32
#define float_to_uint float_8_23_t_31_0
#define fabs(x) float_8_23_t_abs(x)
#define is_negative float_8_23_t_sign
#define RSQRT_MAGIC 0x5f3759df
*/
/*
// Working with worse pixel line errors? (no, prob compile err?)
#define float float_8_22_t
#define uint_to_float float_8_22_t_uint31
#define float_to_uint float_8_22_t_30_0
#define CHECKER_SHIFT 17 // Amount to shift in checker pattern calc
#define FP_ABS_MASK 0x3FFFFFFF
#define RSQRT_MAGIC 0x2F9BACEF
*/
/*
// Looks great
#define float float_8_21_t
#define uint_to_float float_8_21_t_uint30
#define float_to_uint float_8_21_t_29_0
#define CHECKER_SHIFT 16 // Amount to shift in checker pattern calc
#define FP_ABS_MASK 0x1FFFFFFF
#define RSQRT_MAGIC 0x17CDD677
*/
/*
// Completely broken in verilator? (prob not, compile err?)
#define float float_8_20_t
#define uint_to_float float_8_20_t_uint29
#define float_to_uint float_8_20_t_28_0
#define CHECKER_SHIFT 15 // Amount to shift in checker pattern calc
#define FP_ABS_MASK 0xFFFFFFF
#define RSQRT_MAGIC 0xBE6EB3B
*/
/*
// Looks great
#define float float_8_19_t
#define uint_to_float float_8_19_t_uint28
#define float_to_uint float_8_19_t_27_0
#define CHECKER_SHIFT 14 // Amount to shift in checker pattern calc
#define FP_ABS_MASK 0x7FFFFFF
#define RSQRT_MAGIC 0x5F3759D
*/
/*
// Looks great
#define float float_8_18_t
#define uint_to_float float_8_18_t_uint27
#define float_to_uint float_8_18_t_26_0
//#define CHECKER_SHIFT 13 // Amount to shift in checker pattern calc
#define FP_ABS_MASK 0x3FFFFFF
#define RSQRT_MAGIC 0x2F9BACE
*/
/*
// RAN OUT RAM SYNTHESIZING. Confirmed occurs again.
// Looks great in verilator
#define float float_8_17_t
#define uint_to_float float_8_17_t_uint26
#define float_to_uint float_8_17_t_25_0
#define FP_ABS_MASK 0x1FFFFFF
#define RSQRT_MAGIC 0x17CDD67
*/
/*
// Looks fine.
#define float float_8_16_t
#define uint_to_float float_8_16_t_uint25
#define float_to_uint float_8_16_t_24_0
//#define CHECKER_SHIFT 11 // Amount to shift in checker pattern calc
#define FP_ABS_MASK 0xFFFFFF
#define RSQRT_MAGIC 0xBE6EB3
*/
/*
// Completely broken in verilator? Confirmed again.
#define float float_8_15_t
#define uint_to_float float_8_15_t_uint24
#define float_to_uint float_8_15_t_23_0
#define CHECKER_SHIFT 10 // Amount to shift in checker pattern calc
#define FP_ABS_MASK 0x7FFFFF
#define RSQRT_MAGIC 0x5F3759
*/

#define float float_8_14_t
#define uint_to_float float_8_14_t_uint23
#define float_to_uint float_8_14_t_22_0
#define fabs(x) float_8_14_t_abs(x)
#define is_negative float_8_14_t_sign
#define RSQRT_MAGIC 0x2F9BAC

/*
#define float float_8_13_t
#define uint_to_float float_8_13_t_uint22
#define float_to_uint float_8_13_t_21_0
#define fabs(x) float_8_13_t_abs(x)
#define RSQRT_MAGIC 0x17CDD6
*/
/*
#define float float_8_12_t
#define uint_to_float float_8_12_t_uint21
#define float_to_uint float_8_12_t_20_0
#define fabs(x) float_8_12_t_abs(x)
#define RSQRT_MAGIC 0xBE6EB
*/
/*
// RAN OUT OF RAM SYNTHESIZING? 
#define float float_8_11_t
#define uint_to_float float_8_11_t_uint20
#define float_to_uint float_8_11_t_19_0
#define CHECKER_SHIFT 6 // Amount to shift in checker pattern calc
#define FP_ABS_MASK 0x7FFFF
#define RSQRT_MAGIC 0x5F375
*/
/*
// Noticably too jagged
#define float float_8_10_t
#define uint_to_float float_8_10_t_uint19
#define float_to_uint float_8_10_t_18_0
#define CHECKER_SHIFT 5 // Amount to shift in checker pattern calc
#define FP_ABS_MASK 0x3FFFF
#define RSQRT_MAGIC 0x2F9BA
*/

inline float float_rsqrt( float number ) //should one more newton iteration
{
  // https://en.wikipedia.org/wiki/Fast_inverse_square_root
  float x2 = number << -1; // number*.5;
  float conv_f = uint_to_float(RSQRT_MAGIC - (float_to_uint(number) >> 1));
  return conv_f*(1.5 - conv_f*conv_f*x2);
}

#endif
