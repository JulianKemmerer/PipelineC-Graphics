// Copyright (C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>

#ifndef __GEOMETRY_H__
#define __GEOMETRY_H__

#include <cmath>
#include <cassert>
#include <iostream>


union fp32layout { float f; uint32_t i; struct { uint32_t mantissa:23; uint32_t exp:8; uint32_t sign:1; }; };

inline uint32_t float_31_0(float a) { fp32layout conv; conv.f = a; return conv.i; }
inline float float_uint32(uint32_t a) { fp32layout conv; conv.i = a; return conv.f; }



inline bool is_negative(float a)
{
#ifdef _DEBUG
  fp32layout conv; conv.f = a; return conv.sign;
#else
  return a < 0;
#endif
}

inline bool exp_gt(float a, float b)
{
  fp32layout conva; conva.f = a;
  fp32layout convb; convb.f = b;
  return conva.exp > convb.exp;
}

inline float float_shift(float a, int8_t shift)
{
#ifdef _DEBUG
  fp32layout conv; conv.f = a;
  if(conv.exp <= -shift) return a; //no underflow
  conv.exp += shift;
  return conv.f;
#else
  return a * (shift >= 0 ? (1<<shift) : 1./(1<<-shift));
#endif
}


uint32_t knuth_hash(uint32_t v) { return v * uint32_t(2654435761); }


struct perfcount
{
    unsigned mul, add, div, sub, cmp, unary_minus, inttofp, fptoint, fmuladd;
    perfcount() { clear(); }

    void clear() { memset(this, 0, sizeof(*this)); }

  void dump()
  {
    if(add) printf("ADD: %d\n", add);
    if(mul) printf("MUL: %d\n", mul);
    if(fmuladd) printf("FMULADD: %d\n", fmuladd);
    if(sub) printf("SUB: %d\n", sub);
    if(div) printf("DIV: %d\n", div);
    if(unary_minus) printf("UNARY MINUS: %d\n", unary_minus);
    if(cmp) printf("CMP: %d\n", cmp);
    if(inttofp) printf("INT TO FP: %d\n", inttofp);
    if(fptoint) printf("FP TO INT: %d\n", fptoint);
    printf("\n");
  }
};


class fp32
{
  //static const uint32_t mulmask = ~((1 << (23-17))-1); //use just 17 bit of the 23 bit mantissa
  static const uint32_t mulmask = ~((1 << (23-14))-1); //use just 17 bit of the 23 bit mantissa
  static const uint32_t divmask = ~((1 << (23-14))-1);
  static const uint32_t addmask = ~((1 << (23-14))-1); //min 12
  static const uint32_t assignmask = addmask | mulmask | divmask;

  float f;

public:
  static perfcount *perf;

#if 1
  fp32(float a=0) : f(float_uint32(float_31_0(a) & assignmask)) { }
  constexpr fp32(double a): f(a) { } //FIXME: no truncation
  fp32(int a) : f(float_uint32(float_31_0(float(a)) & assignmask)) { ++perf->inttofp; }
  fp32(unsigned a) : f(float_uint32(float_31_0(float(a)) & (addmask | mulmask))) { ++perf->inttofp; }
  fp32 operator * (float a) const { ++perf->mul; return float_uint32(float_31_0(f) & mulmask)*float_uint32(float_31_0(a) & mulmask); }
  constexpr fp32 operator * (double a) const { return (*this)*float(a); }
  fp32 operator + (float a) const { ++perf->add; return float_uint32(float_31_0(f) & addmask)+float_uint32(float_31_0(a) & addmask); }
  constexpr fp32 operator + (double a) const { return (*this)+float(a); }
  fp32 operator - (float a) const { ++perf->sub; return float_uint32(float_31_0(f) & addmask)-float_uint32(float_31_0(a) & addmask); }
  constexpr fp32 operator - (double a) const { return (*this)-float(a); }
  fp32 operator / (float a) const { ++perf->div; return f/float_uint32(float_31_0(a) & divmask); }
  fp32 operator - () const { ++perf->unary_minus; return -f; }
  bool operator >= (float a) const { ++perf->cmp; return f >= a; }
  constexpr bool operator >= (double a) const { return (*this) >= float(a); }
  bool operator <= (float a) const { ++perf->cmp; return f <= a; }
  constexpr bool operator <= (double a) const { return (*this) <= float(a); }
  constexpr bool operator < (double a) const { return !((*this) >= a); }
  constexpr bool operator > (double a) const { return !((*this) <= a); }
  bool operator < (float a) const { return !((*this) >= a); }
  bool operator > (float a) const { return !((*this) <= a); }
  fp32 fmuladd(float b, float c) const { ++perf->fmuladd; return f*b+c; } 
  operator int () const { ++perf->fptoint; return f; }
#else
  fp32(float a = 0) : f(a) { }
#ifdef _DEBUG
  constexpr fp32(double a): f(a) { }
  fp32(int a) : f(a) { ++perf->inttofp; }
  fp32(unsigned a) : f(a) { ++perf->inttofp; }
  fp32 operator * (float a) const { ++perf->mul; return f*a; }
  constexpr fp32 operator * (double a) const { return (*this)*float(a); }
  fp32 operator + (float a) const { ++perf->add; return f+a; }
  constexpr fp32 operator + (double a) const { return (*this)+float(a); }
  fp32 operator - (float a) const { ++perf->sub; return f-a; }
  constexpr fp32 operator - (double a) const { return (*this)-float(a); }
  fp32 operator / (float a) const { ++perf->div; return f/a; }
  constexpr fp32 operator / (double a) const { return (*this)/float(a); }
  fp32 operator - () const { ++perf->unary_minus; return -f; }
  bool operator >= (float a) const { ++perf->cmp; return f >= a; }
  constexpr bool operator >= (double a) const { return (*this) >= float(a); }
  bool operator <= (float a) const { ++perf->cmp; return f <= a; }
  constexpr bool operator <= (double a) const { return (*this) <= float(a); }
  bool operator < (float a) const { return !((*this) >= a); }
  constexpr bool operator < (double a) const { return f < float(a); }
  bool operator > (float a) const { return !((*this) <= a); }
  constexpr bool operator > (double a) const { return f > float(a); }
  operator int () const { ++perf->fptoint; return f; }
#endif

#endif
  operator float () const { return f; }

  friend std::ostream& operator << (std::ostream& s, const fp32& f);
};

inline std::ostream& operator << (std::ostream& s, const fp32& f) { return s << f.f; }

#ifdef _DEBUG
typedef fp32 float_type;
#else
typedef float float_type;
#endif

template <size_t DIM, typename float_type = float_type > struct vec {
    typedef float_type type;
          type& operator[](const size_t i)       { assert(i<DIM); return data[i]; }
    const type& operator[](const size_t i) const { assert(i<DIM); return data[i]; }
    type data[DIM] = {};
};

template<size_t DIM> vec<DIM> operator*(const vec<DIM> &lhs, const typename vec<DIM>::type rhs) {
    vec<DIM> ret;
    for (size_t i=DIM; i--; ret[i]=lhs[i]*rhs);
    return ret;
}

template<size_t DIM> typename vec<DIM>::type operator*(const vec<DIM>& lhs, const vec<DIM>& rhs) {
    typename vec<DIM>::type ret = 0;
    for (size_t i=DIM; i--; ret=ret+lhs[i]*rhs[i]);
    return ret;
}

template<size_t DIM> vec<DIM> vecmul(const vec<DIM>& lhs, const vec<DIM>& rhs) {
    vec<DIM> ret;
    for (size_t i=DIM; i--; ret[i]=lhs[i]*rhs[i]);
    return ret;
}


template<size_t DIM> vec<DIM> operator+(const vec<DIM>& lhs, const vec<DIM>& rhs) {
    vec<DIM> ret;
    for (size_t i=DIM; i--; ret[i]=lhs[i]+rhs[i]);
    return ret;
}

template<size_t DIM> vec<DIM> operator-(const vec<DIM>& lhs, const vec<DIM>& rhs) {
    vec<DIM> ret;
    for (size_t i=DIM; i--; ret[i]=lhs[i]-rhs[i]);
    return ret;
}

template<size_t DIM> vec<DIM> operator-(const vec<DIM> &lhs) {
    return lhs*(-1.); //FIXME: not optimized
}


template <size_t DIM> std::ostream& operator<<(std::ostream& out, const vec<DIM>& v) {
    for (size_t i=0; i<DIM; i++)
        out << v[i] << " " ;
    return out ;
}


int32_t fround(float_type a) { return a+.5; }
template<class T> T float_select(float_type x, const T a, const T b) { return b+(a-b)*x; }
template<class T> T float_select_byshift(int shift, const T a, const T b) { return b+float_shift(a-b, shift); }


// https://en.wikipedia.org/wiki/Fast_inverse_square_root
float float_rsqrt( float number ) //reports 16.56753756689143 MHz
{
  //FIXME: should use more precision (another newton iteration?)
  float_type x2 = float_shift(number, -1);
  float_type conv_f = float_uint32(0x5f3759df - (float_31_0(number) >> 1));
  return conv_f*(float_type(1.5) - conv_f*conv_f*x2);
}

#if 0
#define RSQRT(x) float_type(1.f/sqrtf(float(x)))
#define SQRT(x) float_type(sqrtf(float(x)))
#define FABS(x) float_type(std::fabs(float(x)))
#else
#define RSQRT(x) float_type(float_rsqrt(float(x)))
#define SQRT(x) float_type(1./float(RSQRT(x)))
#define FABS(x) float_uint32(float_31_0(x) & 0x7FFFFFFF)
#endif


template <> struct vec<3> {
    typedef vec<1>::type type;
          type& operator[](const size_t i)       { assert(i<3); return i==0 ? x : (1==i ? y : z); }
    const type& operator[](const size_t i) const { assert(i<3); return i==0 ? x : (1==i ? y : z); }
    type norm() const { return SQRT(x*x+y*y+z*z); }
    const vec& normalize(type l=1.) { *this = (*this)*(l/norm()); return *this; }
    type x = 0., y = 0., z = 0.;
};


typedef vec<3> vec2;
typedef vec<3> vec3;
typedef vec<4> vec4;


vec3 cross(vec3 v1, vec3 v2) {
    return { v1.y*v2.z - v1.z*v2.y, v1.z*v2.x - v1.x*v2.z, v1.x*v2.y - v1.y*v2.x };
}

#endif //__GEOMETRY_H__

