// Copyright (C) 2021-2022 Victor Suarez Rovere <suarezvictor@gmail.com>

#ifndef __FIXED_TYPE__
#define __FIXED_TYPE__

#define FIXED_FRACTIONBITS 10
#ifdef LEVELS
#define FIXED_TOTALBITS 26 //uncommed for more precise simulation
#define fixed_basetype int26_t
#else
#define FIXED_TOTALBITS 22 //uncommed for more precise simulation
#define fixed_basetype int22_t
#endif

#ifndef __PIPELINEC__
#warning: precision of fixed should be correctly defined
#endif

//#define FIXED_EMULATE_WITH_FLOAT

#ifndef __cplusplus
#define CCOMPILE
#endif


#ifndef CCOMPILE

//inline fixed_basetype fixed_div_impl(fixed_basetype a, fixed_basetype b, unsigned Q);


template<unsigned Q/*, unsigned INT=32-Q-1, class U=int*/>
class fixed_t
{
#ifdef FIXED_EMULATE_WITH_FLOAT
    float f;
public:
    fixed_t(int a = 0) : f(a) {}
    fixed_t(short a) : f(a) {}
    fixed_t(float a) : f(a) { }
    constexpr fixed_t(double a) : f(a)  { }
    explicit operator float() const { return f; }
    fixed_t operator << (int a) const { return float_shift(f, a); }
    fixed_t operator >> (int a) const { return float_shift(f, -a); }
#else //not FIXED_EMULATE_WITH_FLOAT
public:

#ifndef FIXED_TOTALBITS//def NO_BIT_EXACT
  //U f;
  fixed_basetype f;
#else
  //U f:Q+INT+1; //+1 for sign
  fixed_basetype f:FIXED_TOTALBITS;
#endif

public:
    fixed_t(int a = 0) : f(a << Q) { }
    fixed_t(short a) : f(a << Q) {}
    constexpr fixed_t(double a) : f(float_shift(a, Q))  { }
    fixed_t(const fixed_t& a) : f(a.f) {}

    fixed_t operator * (double b) const { fixed_t r; r.f = f * float(b); return r; }
    fixed_t operator * (fixed_t b) const { fixed_t r; r.f = (f * b.f) >> Q; return r; }
    fixed_t operator + (fixed_t b) const { fixed_t r; r.f = f + b.f; return r; }

    fixed_t operator - (fixed_t b) const { fixed_t r; r.f = f - b.f; return r; }
    fixed_t operator - () const { fixed_t r; r.f = -f; return r; }
    explicit operator float() const { return float_shift(f, -Q); }
    explicit operator int() const { return f>>Q; }
    explicit operator short() const { return f>>Q; }

    bool operator < (fixed_t b) const { return f < b.f; }
    bool operator > (fixed_t b) const { return f > b.f; }

    fixed_t operator >> (int s) const { fixed_t r; r.f = f >> s; return r; } //NOTE: may have precision issues
    fixed_t operator << (int s) const { fixed_t r; r.f = f << s; return r; } //NOTE: may have precision issues

    fixed_t operator / (fixed_t b) const { fixed_t r; r.f = (f << Q) / b.f/*fixed_div_impl(f, b.f, Q)*/; return r; }

    bool operator == (fixed_t b) const { return f == b.f; }
    bool operator != (fixed_t b) const { return f != b.f; }

#endif //FIXED_EMULATE_WITH_FLOAT
};

typedef fixed_t<FIXED_FRACTIONBITS> fixed; //main fixed type name

class fixed3
{
public:
    typedef fixed type;

    fixed3(type a=0) : x(a),y(a),z(a) {}
    fixed3(type a1, type a2, type a3) : x(a1),y(a2),z(a3) {}
    fixed3(const fixed3& o) : x(o.x),y(o.y),z(o.z) {}

#if 1
    union {
      struct {type x, y, z; };
      struct {type r, g, b; };
    };
#else
	type x, y, z;
#endif
    //FIXME: maybe implicit
    explicit operator float3() const { float3 r = { (float) x, (float) y, (float) z }; return r; }
    fixed3 operator * (double v) const { fixed3 r = { x*v, y*v, z*v }; return r;  }
    fixed3 operator * (type v) const { fixed3 r = { x*v, y*v, z*v }; return r;  }
    fixed3 operator * (fixed3 v) const { fixed3 r = { x*v.x, y*v.y, z*v.z }; return r;  }

    fixed3 operator + (fixed3 v) const { fixed3 r = { x+v.x, y+v.y, z+v.z }; return r;  }
    fixed3 operator - (fixed3 v) const { fixed3 r = { x-v.x, y-v.y, z-v.z }; return r;  }
};

fixed fixed_shr(fixed a, shift_t shift) { return a >> shift; }
fixed fixed_shl(fixed a, shift_t shift) { return a << shift; }


inline bool fixed_is_negative(fixed x) { return x.f < 0; }
//inline fixed fixed_abs(fixed x) { return fixed_is_negative(x) ? fixed(-x) : x; }
#warning implement unary -
inline fixed fixed_abs(fixed x) { return fixed_is_negative(x) ? fixed(0)-x : x; }

inline fixed fixed_min(fixed a, fixed b) { return a<b?a:b; }
inline fixed fixed_max(fixed a, fixed b) { return a>b?a:b; }


#else //CCOMPILE = true


#ifndef FIXED_EMULATE_WITH_FLOAT
#ifndef __PIPELINEC__
#warning merge pipelineC implementation

#ifdef FIXED_TOTALBITS
typedef struct { fixed_basetype f:FIXED_TOTALBITS; } fixed;
#else
typedef struct { fixed_basetype f; } fixed;
#endif

inline constexpr fixed fixed_make_from_int(int a) { const fixed r = {fixed_basetype(a << FIXED_FRACTIONBITS)}; return r; }
inline constexpr fixed fixed_make_from_short(short a) { const fixed r = {fixed_basetype(a << FIXED_FRACTIONBITS)}; return r; }
inline constexpr fixed fixed_make_from_float(float a) { fixed r = {(fixed_basetype) (float(a)*(1<<FIXED_FRACTIONBITS))}; return r; }
inline constexpr fixed fixed_make_from_double(double a) { return fixed_make_from_float(a); }

inline float fixed_to_float(fixed a) { return (float) a.f / (1<<FIXED_FRACTIONBITS); }
inline short fixed_to_short(fixed a) { return a.f >> FIXED_FRACTIONBITS; }
#else // __PIPELINEC__ = true

// No logic functions
#pragma FUNC_WIRES fixed_make_from_int
#pragma FUNC_WIRES fixed_make_from_short
#pragma FUNC_WIRES fixed_to_short
#pragma FUNC_WIRES fixed3_make
#pragma FUNC_WIRES fixed3_make_from_fixed
#pragma FUNC_WIRES fixed3_make_from_const_fixed3
#pragma FUNC_WIRES fixed_make_from_double
#pragma FUNC_WIRES fixed_shl_signed_char
#pragma FUNC_WIRES fixed_shr_signed_char

//#warning: base type of fixed should be correctly defined
typedef struct fixed { fixed_basetype f; } fixed;

fixed fixed_make_from_int(int32_t a) { const fixed r = {a << FIXED_FRACTIONBITS}; return r; }
fixed fixed_make_from_short(int16_t a) { const fixed r = {a << FIXED_FRACTIONBITS}; return r; }
fixed fixed_make_from_float(float a) { fixed r = {(fixed_basetype)float_shift(a, FIXED_FRACTIONBITS)}; return r; }
fixed fixed_make_from_double(double a) { fixed r = {(fixed_basetype) float_shift(a, FIXED_FRACTIONBITS)}; return r; } //a gets a cast prior to call

float_type fixed_to_float(fixed a) { return float_shift((float)a.f, -FIXED_FRACTIONBITS); }
int16_t fixed_to_short(fixed a) { return (int16_t)(a.f >> FIXED_FRACTIONBITS); }
//int fixed_asinteger(fixed a, int n) { return FIXED_FRACTIONBITS > n ? (a.f >> (FIXED_FRACTIONBITS-n)) : (a.f << (n-FIXED_FRACTIONBITS)) }

#endif

inline fixed fixed_mul(fixed left, fixed right) { fixed r = { (fixed_basetype)((left.f * right.f)>>FIXED_FRACTIONBITS) }; return r; }
inline fixed fixed_mul_short(fixed left, short right) { fixed r = { left.f * (fixed_basetype)right}; return r; }
inline fixed fixed_shl_signed_char(fixed left, shift_t right) { fixed r; r.f = (fixed_basetype)left.f<<right; return r; }
inline fixed fixed_shr_signed_char(fixed left, shift_t right) { fixed r; r.f = (fixed_basetype)left.f>>right; return r; }

#else //FIXED_EMULATE_WITH_FLOAT = true
typedef float fixed_basetype;
typedef struct fixed { fixed_basetype f; } fixed;

inline constexpr fixed fixed_make_from_int(int a) { const fixed r = {(fixed_basetype)a}; return r; }
inline constexpr fixed fixed_make_from_short(short a) { const fixed r = {(fixed_basetype)a}; return r; }
inline constexpr fixed fixed_make_from_float(float a) { const fixed r = {(fixed_basetype)a}; return r; };
inline constexpr fixed fixed_make_from_double(double a) { const fixed r = {(fixed_basetype)a}; return r; };

inline float fixed_to_float(fixed a) { return a.f; }
inline int fixed_to_int(fixed a) { return (int) a.f; }

inline fixed fixed_mul(fixed left, fixed right) { fixed r = { left.f * right.f}; return r; }
//FIXME: shl/shr doesn't need type of 2nd operand in name (always integer)
//#define fixed_shl_int fixed_shl_signed_char
//#define fixed_shr_int fixed_shr_signed_char

#endif //FIXED_EMULATE_WITH_FLOAT

//this is equivalent with ints or floats
inline fixed fixed_add(fixed left, fixed right) { fixed r = { left.f + right.f}; return r; }
inline fixed fixed_sub(fixed left, fixed right) { fixed r = { left.f - right.f}; return r; }
inline bool fixed_lt(fixed left, fixed right) { return left.f < right.f; }
inline bool fixed_gt(fixed left, fixed right) { return left.f > right.f; }
inline bool fixed_lte(fixed left, fixed right) { return left.f <= right.f; }
inline bool fixed_gte(fixed left, fixed right) { return left.f >= right.f; }
inline bool fixed_eq(fixed left, fixed right) { return left.f == right.f; }
inline bool fixed_neq(fixed left, fixed right) { return left.f != right.f; }

typedef struct fixed3 { fixed x, y, z; } fixed3;
inline fixed3 fixed3_make(fixed x, fixed y, fixed z) { fixed3 r = {x, y, z}; return r; } //constructor

inline fixed3 fixed3_make_from_fixed(fixed left) { fixed3 r = { left, left, left }; return r; }

inline fixed3 fixed3_add(fixed3 left, fixed3 right)
  { fixed3 r = { fixed_add(left.x, right.x), fixed_add(left.y, right.y), fixed_add(left.z, right.z) }; return r; }

inline fixed3 fixed3_sub(fixed3 left, fixed3 right)
  { fixed3 r = { fixed_sub(left.x, right.x), fixed_sub(left.y, right.y), fixed_sub(left.z, right.z) }; return r; }

inline fixed3 fixed3_mul(fixed3 left, fixed3 right)
  { fixed3 r = { fixed_mul(left.x, right.x), fixed_mul(left.y, right.y), fixed_mul(left.z, right.z) }; return r; }

inline fixed3 fixed3_mul_fixed(fixed3 left, fixed right)
  { fixed3 r = { fixed_mul(left.x, right), fixed_mul(left.y, right), fixed_mul(left.z, right) }; return r; }

#ifndef __PIPELINEC__
inline fixed3 const_fixed3_mul_double(fixed3 left, double right)
  { fixed3 r = { fixed_mul(left.x, fixed_make_from_double(right)), fixed_mul(left.y, fixed_make_from_double(right)), fixed_mul(left.z, fixed_make_from_double(right)) }; return r; }
#else
fixed3 const_fixed3_mul_float(fixed3 left, float right)
  { fixed3 r = { fixed_mul(left.x, fixed_make_from_float(right)), fixed_mul(left.y, fixed_make_from_float(right)), fixed_mul(left.z, fixed_make_from_float(right)) }; return r; }
#define const_fixed3_mul_double(left, right) const_fixed3_mul_float(left, (float)right)
#endif

inline fixed3 fixed3_make_from_const_fixed3(fixed3 a) { return a; }

#if 0
#include "fixed_div.h"
#else
#ifndef __PIPELINEC__
inline fixed fixed_div(fixed a, fixed b) { fixed r; r.f = { (a.f<<FIXED_FRACTIONBITS)/b.f }; return r; }
#else
inline fixed fixed_div(fixed a, fixed b) { fixed r = { (a.f<<FIXED_FRACTIONBITS)/b.f }; return r; }
#endif

#endif

#endif //CCOMPILE

#endif //__FIXED_TYPE__
