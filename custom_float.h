// Copyright (C) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>
// this is part of the CflexHDL project

#ifndef __CUSTOM_FLOAT_H
#define __CUSTOM_FLOAT_H

#include "typesperf.h"

#if !defined(PARSING) && !defined(__PIPELINEC__) && defined(CCOMPILE)
#define CUSTOM_FLOAT_MANTISSA 14 //uncomment to use less precision floats
#define CUSTOM_FLOAT_EXP 8 //min viable 6, but 8 provides faster simulation
#endif
#ifdef CUSTOM_FLOAT_MANTISSA

template <unsigned T> float float_exp_adjust(uint32_t a)
{
 const int BIAS = 127;
 fp_tlayout normal;
 normal.i = a;
 int exp = normal.exp - BIAS;
 if(exp > (1<<T)/2-1) { exp = (1<<T)/2-1; normal.mantissa = -1; }
 if(exp < -(1<<T)/2) { exp = -(1<<T)/2; normal.mantissa = 0; }
 normal.exp = exp + BIAS;
 return normal.f;
}
template <> float float_exp_adjust<8>(uint32_t a) { return uint_to_float(a); }


template<unsigned MANTISSA, unsigned EXP>
class fp_t
{
  static const uint32_t mulmask = ~((1 << (23-MANTISSA))-1);
  static const uint32_t divmask = ~((1 << (23-MANTISSA))-1);
  static const uint32_t addmask = ~((1 << (23-MANTISSA))-1);
  static const uint32_t assignmask = addmask | mulmask | divmask;

  float f;

public:
#ifdef FP_DEBUG
  static perfcount *perf;
#endif

  explicit fp_t(float a=0) : f(float_exp_adjust<EXP>(float_to_uint(a) & assignmask)) { }
  constexpr fp_t(double a): f(/*uint_to_float(float_to_uint(float(a)) & assignmask)*/a) { } //FIXME: no truncation
  explicit fp_t(int a) : f(float_exp_adjust<EXP>(float_to_uint(float(a)) & assignmask)) { LOG_PERF(inttofp); }
  explicit fp_t(unsigned a) : f(float_exp_adjust<EXP>(float_to_uint(float(a)) & assignmask)) { LOG_PERF(inttofp); }
/*
  template<unsigned FR, unsigned INT, class U>
  explicit fp_t(const fixed_t<FR, INT, U>& a) : f(a.asfloat()) { ++perf->fixtofp; }
*/
  fp_t operator * (float a) const { LOG_PERF(mul); return float_exp_adjust<EXP>(float_to_uint(f) & mulmask)*float_exp_adjust<EXP>(float_to_uint(a) & mulmask); }
  constexpr fp_t operator * (double a) const { return (*this)*float(a); }
  fp_t operator + (float a) const { LOG_PERF(add); return float_exp_adjust<EXP>(float_to_uint(f) & addmask)+float_exp_adjust<EXP>(float_to_uint(a) & addmask); }
  constexpr fp_t operator + (double a) const { return (*this)+float(a); }
  fp_t operator - (float a) const { LOG_PERF(sub); return float_exp_adjust<EXP>(float_to_uint(f) & addmask)-float_exp_adjust<EXP>(float_to_uint(a) & addmask); }
  constexpr fp_t operator - (double a) const { return (*this)-float(a); }
  fp_t operator / (float a) const { LOG_PERF(div); return f/float_exp_adjust<EXP>(float_to_uint(a) & divmask); }
  fp_t operator - () const { LOG_PERF(unary_minus); return -f; }
  bool operator >= (float a) const { LOG_PERF(cmp); return f >= a; }
  constexpr bool operator >= (double a) const { return (*this) >= float(a); }
  bool operator <= (float a) const { LOG_PERF(cmp); return f <= a; }
  constexpr bool operator <= (double a) const { return (*this) <= float(a); }
  constexpr bool operator < (double a) const { return !((*this) >= a); }
  constexpr bool operator > (double a) const { return !((*this) <= a); }
  bool operator < (float a) const { return !((*this) >= a); }
  bool operator > (float a) const { return !((*this) <= a); }
  fp_t fmuladd(float b, float c) const { LOG_PERF(fmuladd); return f*b+c; } 
  explicit operator int () const { LOG_PERF(fptoint); return f; }

  fp_t operator << (unsigned a) const { return float_shift(f, a); }
  fp_t operator >> (unsigned a) const { return float_shift(f, -a); }

  /*explicit*/ operator float () const { return f; }

#warning this is used just for adjusting exponent
  fp_t operator / (int a) const { return (*this) / float(a); } //FIXME: this is used just for adjusting exponent
  fp_t operator * (int a) const { return (*this) * float(a); } //FIXME: this is used just for adjusting exponent

};

typedef fp_t<CUSTOM_FLOAT_MANTISSA, CUSTOM_FLOAT_EXP> float_narrow;
#define float float_narrow

//FIXME: too similar to fixed3 type
class float3
{
public:
    typedef float_narrow type;
    typedef float3 vec;

    float3(type a=0) : x(a),y(a),z(a) {}
    float3(type a1, type a2, type a3) : x(a1),y(a2),z(a3) {}
    float3(const vec& o) : x(o.x),y(o.y),z(o.z) {}

    union {
      struct {type x, y, z; };
      struct {type r, g, b; };
    };

    vec operator * (double v) const { vec r = { x*v, y*v, z*v }; return r;  }
    vec operator * (type v) const { vec r = { x*v, y*v, z*v }; return r;  }
    vec operator * (vec v) const { vec r = { x*v.x, y*v.y, z*v.z }; return r;  }

    vec operator + (vec v) const { vec r = { x+v.x, y+v.y, z+v.z }; return r;  }
    vec operator - (vec v) const { vec r = { x-v.x, y-v.y, z-v.z }; return r;  }
};

struct float2;
struct float3;

#else //not CUSTOM_FLOAT_MANTISSA
//#define float double //change float type



#endif

#endif // __CUSTOM_FLOAT_H

