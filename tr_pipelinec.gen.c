





#define float2 float2
#define float3 float3
#define float4 float4







//extern int FRAME_WIDTH;
//extern int FRAME_HEIGHT;
typedef struct pixel_t { uint8_t a; uint8_t b; uint8_t g; uint8_t r; } pixel_t;
#define float_type float
//float float_shift(float x, int shift);

//unsigned int float_to_uint(float a);

//float uint_to_float(unsigned int a);

//CLASS fixed_t (classes not supported)
//typedef does not support for template types: fixed_t<10>
//CLASS fixed3 (classes not supported)
int16_t round16(fixed a)
{
  return fixed_to_short(fixed_add(a, fixed_make_from_double((double).5)));
}

fixed fixed_shr(fixed a, int6_t shift)
{
  return fixed_shr_signed_char(a, shift);
}

fixed fixed_shl(fixed a, int6_t shift)
{
  return fixed_shl_signed_char(a, shift);
}

bool fixed_is_negative(fixed x)
{
  return x.f < 0;
}

fixed fixed_abs(fixed x)
{
  return fixed_is_negative(x) ? fixed_sub(fixed_make_from_int(0), x) : x;
}

fixed fixed_min(fixed a, fixed b)
{
  return fixed_gt(a, b) ? a : b;
}

fixed fixed_max(fixed a, fixed b)
{
  return fixed_lt(a, b) ? a : b;
}

#define fixed_type fixed
#define coord_type fixed_type
#define object_coord_t fixed3
#define screen_coord_t coord_type
#define color_type fixed_type
#define color fixed3
float3 object_coord_to_float3(object_coord_t a)
{
  float3 r = {fixed_to_float(a.x), fixed_to_float(a.y), fixed_to_float(a.z)};
  return r;
}

color color_select(color_type x, color a, color b)
{
  return fixed3_add(b, fixed3_mul_fixed((fixed3_sub(a, b)), x));
}

color_type color_max(color_type a, color_type b)
{
  return fixed_gt(a, b) ? a : b;
}

float is_negative(float x)
{
  return float_to_uint(x) & 0x80000000;
}

float float_abs(float x)
{
  return uint_to_float(float_to_uint(x) & 0x7FFFFFFF);
}

float inversesqrt(float number)
{
  float_type x2 = float_shift(number, -1);
  float_type conv_f = uint_to_float(0x5f3759df - (float_to_uint(number) >> 1));
  return conv_f * ((double)1.5 - conv_f * conv_f * x2);
}

float sqrt(float x)
{
  return x * inversesqrt(x);
}

float float_fast_reciprocal_u(float x)
{
  bool neg = is_negative(x);
  float_type y = inversesqrt(neg ? -x : x);
  y = y * y;
  return neg ? -y : y;
}

float_type float_fast_div_u(float_type a, float_type b)
{
  return a * float_fast_reciprocal_u(b);
}

float float_max(float a, float b)
{
  return a > b ? a : b;
}

float float_min(float a, float b)
{
  return a < b ? a : b;
}

#define BIG_FLOAT	((double)1.0e23)
#define vec2 float2
#define vec3 float3
#define vec4 float4
float dot(vec3 a, vec3 b)
{
  return a.x * b.x + a.y * b.y + a.z * b.z;
}

vec3 reflect(vec3 I, vec3 N)
{
  return float3_sub(I, float3_mul_float(N, float_shift(dot(I, N), 1)));
}

vec3 normalize(vec3 v)
{
  return float3_mul_float(v, inversesqrt(dot(v, v)));
}

vec3 float_select(float x, vec3 a, vec3 b)
{
  return float3_add(b, float3_mul_float((float3_sub(a, b)), x));
}

uint16_t hash16(uint16_t v)
{
  return v * 0x9E37u;
}

uint16_t hashf(float_type f)
{
  uint32_t u = float_to_uint(f);
  return hash16(((u << 9) | (u >> 23)) ^ (u >> 7));
}

typedef struct scene_t { uint16_t frame; } scene_t;
typedef struct full_state_t { scene_t scene; } full_state_t;
typedef struct color_t { float r; float g; float b; } color_t;
typedef struct vec_t { float x; float y; float z; } vec_t;
typedef struct plane_t { vec_t origin; vec_t normal; } plane_t;
typedef struct ray_t { vec_t origin; vec_t direction; } ray_t;
typedef struct sphere_t { vec_t center; float radius; } sphere_t;
#include "get_scene.h"
float fmuladd(float a, float b, float c)
{
  return a * b + c;
}

float dot_product(vec_t a, vec_t b)
{
  return fmuladd(a.z, b.z, fmuladd(a.x, b.x, a.y * b.y));
}

vec_t add(vec_t a, vec_t b)
{
  vec_t r;
  r.x = a.x + b.x;
  r.y = a.y + b.y;
  r.z = a.z + b.z;
  return r;
}

vec_t subtract(vec_t a, vec_t b)
{
  vec_t r;
  r.x = a.x - b.x;
  r.y = a.y - b.y;
  r.z = a.z - b.z;
  return r;
}

vec_t scalar_mul(vec_t a, float m)
{
  vec_t r;
  r.x = m * a.x;
  r.y = m * a.y;
  r.z = m * a.z;
  return r;
}

vec_t normalize_vec(vec_t v)
{
  return scalar_mul(v, inversesqrt(dot_product(v, v)));
}

vec_t reflect(vec_t I, vec_t N)
{
  return subtract(I, scalar_mul(N, dot_product(I, N) * (double)2.0));
}

typedef struct plane_intersect_ret_t { vec_t intersection; bool cond; } plane_intersect_ret_t;
plane_intersect_ret_t plane_intersect(plane_t p, ray_t r)
{
  plane_intersect_ret_t ret;
  ret.cond = 0;
  float denom = dot_product(p.normal, r.direction);
  
  if(float_to_uint(denom) != 0) {
    vec_t p0r0 = subtract(p.origin, r.origin);
    float t = dot_product(p0r0, p.normal) / denom;
    ret.intersection = add(r.origin, scalar_mul(r.direction, t));
    ret.cond = (t >= (double)0.0);
  }
  return ret;
}

typedef struct sphere_intersect_ret_t { vec_t intersection; vec_t normal; bool cond; } sphere_intersect_ret_t;
sphere_intersect_ret_t sphere_intersect(sphere_t s, ray_t r)
{
  sphere_intersect_ret_t ret;
  ret.cond = 0;
  vec_t c0r0 = subtract(s.center, r.origin);
  float tca = dot_product(r.direction, c0r0);
  
  if(tca >= (double)0.0) {
    float d2 = dot_product(c0r0, c0r0);
    d2 = d2 - tca * tca;
    float radius2 = s.radius * s.radius;
    
    if(d2 <= radius2) {
      float thc = sqrt(radius2 - d2);
      float t0 = tca - thc;
      float t1 = tca + thc;
      t0 = (t0 >= t1) ? t1 : t0;
      ret.intersection = add(r.origin, scalar_mul(r.direction, t0));
      vec_t normal = subtract(ret.intersection, s.center);
      ret.normal = normalize_vec(normal);
      ret.cond = 1;
    }
  }
  return ret;
}

color_t trace1(ray_t ray, plane_t aplane)
{
  color_t c;
  plane_intersect_ret_t plint = plane_intersect(aplane, ray);
  vec_t plane_intersection = plint.intersection;
  bool plane_intersects = plint.cond;
  
  if((!plane_intersects) != 0 | (float_abs(plane_intersection.z) > (double)20.0) != 0 | (float_abs(plane_intersection.x) > (double)20.0) != 0) {
    c.b = ray.direction.y <= (double)1.0 ? ray.direction.y * ray.direction.y : (double)1.0;
    c.r = c.b;
    c.g = c.r;
  }
  else {
    int6_t plx = float_abs(plane_intersection.x + (double)20.0);
    int6_t plz = float_abs(plane_intersection.z + (double)20.0);
    bool checker = ((plx & 4) ^ (plz & 4)) != 4;
    
    if(checker) {
      c.r = (double)1.0;
      c.g = (double)1.0;
      c.b = (double)1.0;
    }
    else {
      c.r = (double)0.2;
      c.g = (double)0.1;
      c.b = (double)0.1;
    }
    float intensity = (double)1.0 - sqrt(plane_intersection.x * plane_intersection.x + plane_intersection.z * plane_intersection.z) * (double)0.025;
    c.r = c.r * intensity;
    c.g = c.g * intensity;
    c.b = c.b * intensity;
  }
  return c;
}

color_t trace0(ray_t ray, plane_t aplane, sphere_t asphere)
{
  color_t c;
  sphere_intersect_ret_t spint = sphere_intersect(asphere, ray);
  vec_t sphere_intersection = spint.intersection;
  vec_t sphere_normal = spint.normal;
  ray_t ray_to_trace;
  
  if(spint.cond) {
    ray_t ray2;
    float dp = dot_product(ray.direction, sphere_normal);
    ray2.direction = subtract(ray.direction, scalar_mul(sphere_normal, (dp * (double)2.0)));
    ray2.origin = sphere_intersection;
    ray_to_trace = ray2;
  }
  else {
    ray_to_trace = ray;
  }
  c = trace1(ray_to_trace, aplane);
  
  if(spint.cond) {
    c.r = ((c.r) * ((double)0.85) + ((double)1.0 - ((double)0.85))) * ((double)243. / (double)256.);
    c.g = ((c.g) * ((double)0.85) + ((double)1.0 - ((double)0.85))) * ((double)201. / (double)256.);
    c.b = ((c.b) * ((double)0.85) + ((double)1.0 - ((double)0.85))) * ((double)104. / (double)256.);
  }
  return c;
}

color_t traceray(uint16_t i, uint16_t j, uint32_t frame, ray_t acamera, plane_t aplane, sphere_t asphere)
{
  ray_t ray;
  ray.origin = acamera.origin;
  int16_t cx = i << 1;
  cx = cx - (FRAME_WIDTH + 1);
  int16_t cy = j << 1;
  cy = (FRAME_HEIGHT + 1) - cy;
  #define aspect	((FRAME_HEIGHT * 16) / (FRAME_WIDTH * 9))
  #define scale	((double)1. / (float)FRAME_WIDTH)
  float x = (float)cx * (float)scale * (float)aspect;
  float y = (float)cy * scale;
  ray.origin.x = (float)frame * (double)0.01;
  ray.origin.z = (double)-20.0 - (float)frame * (double)0.05;
  ray.direction.x = x;
  ray.direction.y = y;
  ray.direction.z = (double)1.0;
  ray.direction = normalize_vec(ray.direction);
  return trace0(ray, aplane, asphere);
}

typedef struct animation_pos_t { ray_t camera; plane_t plane; sphere_t sphere; uint32_t frame; float sphere_vel; } animation_pos_t;
animation_pos_t animation(uint32_t frame)
{
  animation_pos_t positions;
  positions.camera.origin.x = (double)0.0;
  positions.camera.origin.y = (double)15.0;
  positions.camera.origin.z = (double)0.0;
  positions.camera.direction.x = (double)0.0;
  positions.camera.direction.y = (double)0.0;
  positions.camera.direction.z = (double)10.0;
  positions.plane.origin.x = (double)0.0;
  positions.plane.origin.y = (double)0.0;
  positions.plane.origin.z = (double)0.0;
  positions.plane.normal.x = (double)0.0;
  positions.plane.normal.y = (double)1.0;
  positions.plane.normal.z = (double)0.0;
  positions.sphere.center.x = (double)3.0;
  positions.sphere.center.y = (double)6.0;
  positions.sphere.center.z = (double)-10.0;
  positions.sphere.radius = (double)2.5;
  positions.sphere.center.x = (float)frame * (double)0.05;
  positions.camera.origin.z = (float)frame * (double)0.1 - (double)10.0;
  return positions;
}

full_state_t full_update(full_state_t state, bool reset, bool button_state)
{
  state.scene.frame = (state.scene.frame + 1) & 0xFF;
  
  if(reset) state.scene.frame = 0;
  return state;
}

pixel_t render_pixel(uint16_t x, uint16_t y)
{
  scene_t scene = get_scene();
  animation_pos_t animation_pos = animation(scene.frame);
  color_t c = traceray(x, y, scene.frame, animation_pos.camera, animation_pos.plane, animation_pos.sphere);
  pixel_t p;
  p.r = (int16_t)(c.r * (double)255.0);
  p.g = (int16_t)(c.g * (double)255.0);
  p.b = (int16_t)(c.b * (double)255.0);
  return p;
}


