// Bit manip stuff
// Normal float for software
struct scene_t { uint16_t frame; };
struct full_state_t { scene_t scene; };

#define INLINE inline
#ifdef __PIPELINEC__
#include "get_scene.h"
#endif
/*
#ifndef __PIPELINEC__
#define FP_ABS_MASK 0x7FFFFFFF
#define RSQRT_MAGIC 0x5f3759df
#endif

// Config

// From https://github.com/tomverbeure/rt/blob/ab0af1f9dfa09f676546dfc3bb8bb202aa4a0c36/src/main.c

// https://en.wikipedia.org/wiki/Fast_inverse_square_root
INLINE float float_rsqrt( float number ) //reports 16.56753756689143 MHz
{
  //FIXME: should use more precision (another newton iteration?)
  float x2 = number * 0.5;
  float conv_f = uint_to_float(RSQRT_MAGIC - (float_to_uint(number) >> 1));
  return conv_f*((float)1.5 - x2*conv_f*conv_f);
}
*/
#define float_rsqrt inversesqrt
#define FABS(x) float_abs(x)//uint_to_float(float_to_uint(x) & FP_ABS_MASK)
#define RSQRT(x) float_rsqrt(x)
#define SQRT(x) ((float)1.0/RSQRT(x))

struct color_t {
    float   r;
    float   g;
    float   b;
};

struct vec_t {
    float   x;
    float   y;
    float   z;
};

struct plane_t {
    vec_t   origin;
    vec_t   normal;
};

struct ray_t {
    vec_t   origin;
    vec_t   direction;
};

struct sphere_t {
    vec_t   center;
    float   radius;
};



INLINE float fmuladd(float a, float b, float c)
{
//#ifndef __PIPELINEC__
//  return a.fmuladd(b, c);
//#else
  return a*b+c;
//#endif
}

INLINE float dot_product(vec_t a, vec_t b) //reports 19.423132951345053 MHz
{
    return fmuladd(a.z, b.z, fmuladd(a.x, b.x, a.y * b.y));
}

INLINE vec_t add(vec_t a, vec_t b) //reports 50.921682452388225 MHz
{
    vec_t r;

    r.x = a.x + b.x;
    r.y = a.y + b.y;
    r.z = a.z + b.z;

    return r;
}

INLINE vec_t subtract(vec_t a, vec_t b)
{
    vec_t r;

    r.x = a.x - b.x;
    r.y = a.y - b.y;
    r.z = a.z - b.z;

    return r;
}

INLINE vec_t scalar_mul(vec_t a, float m) //reports 90.84302325581396 MHz
{
    vec_t r;

    r.x = m * a.x;
    r.y = m * a.y;
    r.z = m * a.z;

    return r;
}

INLINE vec_t normalize_vec(vec_t v) //reports 8.40180806909647 MHz
{
    return scalar_mul(v, RSQRT(dot_product(v, v)));
}

INLINE vec_t reflect(vec_t I, vec_t N) {
    //return I - N*2.f*(I*N);
    return subtract(I, scalar_mul(N, dot_product(I, N)*2.0));
}



struct plane_intersect_ret_t { /*float t;*/ vec_t intersection; bool cond; };

INLINE plane_intersect_ret_t plane_intersect(plane_t p, ray_t r)
{
    plane_intersect_ret_t ret;
    ret.cond = false;
    float denom = dot_product(p.normal, r.direction);

    //if (FABS(denom) > 0.000001) //1e-6 not liked by VHDL
    if (float_to_uint(denom) != 0)
    {
	    vec_t p0r0 = subtract(p.origin, r.origin);

	    float t = dot_product(p0r0, p.normal) / denom;

	    ret.intersection = add(r.origin, scalar_mul(r.direction, t));
	    //ret.t = t;
	    ret.cond = (t >= 0.0);
    }
    return ret;
}

struct sphere_intersect_ret_t { /*float t;*/ vec_t intersection; vec_t normal; bool cond; };

INLINE sphere_intersect_ret_t sphere_intersect(sphere_t s, ray_t r) //reports 1.9302038295243977 MHz
{
    sphere_intersect_ret_t ret;
    ret.cond = false;
    vec_t c0r0 = subtract(s.center, r.origin);

    float tca = dot_product(r.direction, c0r0);

    if (tca >= 0.0)
    {
	    float d2 = dot_product(c0r0, c0r0);
	    d2 = d2 - tca * tca;

	    float radius2 = s.radius * s.radius;
	    if (d2 <= radius2)
            {
		    float thc = SQRT(radius2 - d2);
		    float t0 = tca - thc;
		    float t1 = tca + thc;

		    // The smallest one is the closest one. Only works in this particular scene.
                    t0 = (t0 >= t1) ? t1 : t0;

		    //ret.t = t0;

		    ret.intersection = add(r.origin, scalar_mul(r.direction, t0));

		    vec_t normal = subtract(ret.intersection, s.center);
		    ret.normal = normalize_vec(normal);
		    ret.cond = true;
            }
    }
    return ret;
}

INLINE color_t trace1(ray_t ray, plane_t aplane) //reports 4.44389142684466 MHz
{
    color_t c;

    plane_intersect_ret_t plint = plane_intersect(aplane, ray);
    vec_t plane_intersection = plint.intersection;
    bool plane_intersects = plint.cond;

    if ((!plane_intersects) != 0 | (FABS(plane_intersection.z) > 20.0) != 0 | (FABS(plane_intersection.x) > 20.0) != 0){
        c.r = 0.0;
        c.g = 0.0;
        c.b = ray.direction.y <= 1.0 ? ray.direction.y*ray.direction.y : (float)1.0;
    }
    else
    {
      uint3_t plx = (int32_t)FABS(plane_intersection.x+20.0); //it's unclear how to cast float to integer (not bitwise)
      uint3_t plz = (int32_t)FABS(plane_intersection.z+20.0); //
	    bool checker = (( plx & 4 ) ^ (plz & 4)) != 4;

	    if(checker){
        c.r = 1.0;
        c.g = 1.0;
        c.b = 0.6;
	    }
	    else {
        c.r = 0.2;
        c.g = 0.1;
        c.b = 0.1;
	    }


      /*
      Materials:
       N = vec3{0,1,0} //for PLANE
       N = (hit - s.center).normalize(); for SPHERE

      dir = original ray direction

        vec3 light_dir      = (light.position - hit).normalize();

       specular_light_intensity += std::pow(std::max(0.f, -reflect(-light_dir, N)*dir), material.specular_exponent)*light.intensity;

      */
      float intensity = (float)1.0-SQRT(plane_intersection.x*plane_intersection.x + plane_intersection.z*plane_intersection.z)*0.025;
      c.r = c.r * intensity; 
      c.g = c.g * intensity; 
      c.b = c.b * intensity; 
    }

    return c;
}

#define ALPHA_K ((float)0.3)
#define ALPHA_COLOR(c) ((c) * ALPHA_K + (1.0-ALPHA_K))

INLINE color_t trace0(ray_t ray, plane_t aplane, sphere_t asphere) 
{
    color_t c;

    sphere_intersect_ret_t spint = sphere_intersect(asphere, ray);
    //float sphere_t = spint.t;
    vec_t sphere_intersection = spint.intersection;
    vec_t sphere_normal = spint.normal;
    ray_t ray_to_trace;
    
    if (spint.cond){
        ray_t ray2;
        float dp = dot_product(ray.direction, sphere_normal);
        ray2.direction = subtract(ray.direction, scalar_mul(sphere_normal, (dp*2.0)));
        ray2.origin = sphere_intersection;
        ray_to_trace = ray2;
    }
    else
    {
        ray_to_trace = ray;
    }
        
    c = trace1(ray_to_trace, aplane);
        
    if(spint.cond)
    {
      c.r = ALPHA_COLOR(c.r)*0.5;
      c.g = 0.0; //ALPHA_COLOR(c.g)*0.0;
      c.b = ALPHA_COLOR(c.b);
    }

    return c;
}

/*INLINE*/ color_t traceray(uint16_t pix_x, uint16_t pix_y, uint32_t frame, ray_t acamera, plane_t aplane, sphere_t asphere)
{
  ray_t ray;
  ray.origin = acamera.origin;
  float x = (float)pix_x;
  float y = (float)pix_y;


  //movement
  ray.origin.x = (float)frame*0.01;
  ray.origin.z = (float)-20.0-(float)frame*0.05;

  ray.direction.x = (x - (float)FRAME_WIDTH/2.0)*(5.0 / (float)FRAME_HEIGHT);
  ray.direction.y = (y - (float)FRAME_HEIGHT/2.0)*(-5.0 / (float)FRAME_HEIGHT) - 2.0;

  ray.direction.z = 5.0;
  ray.direction = normalize_vec(ray.direction);

  return trace0(ray, aplane, asphere);
}

struct animation_pos_t
{
  ray_t camera;
  plane_t plane; 
  sphere_t sphere;
  uint32_t frame;
  float sphere_vel;
};


INLINE animation_pos_t animation(uint32_t frame)
{
  animation_pos_t positions;
  // Start position
  positions.camera.origin.x = 0.0; positions.camera.origin.y = 15.0; positions.camera.origin.z = 0.0;
  positions.camera.direction.x = 0.0; positions.camera.direction.y = 0.0; positions.camera.direction.z = 10.0;
  positions.plane.origin.x = 0.0; positions.plane.origin.y = 0.0; positions.plane.origin.z = 0.0;
  positions.plane.normal.x = 0.0; positions.plane.normal.y = 1.0; positions.plane.normal.z = 0.0; //should be normalized!
  positions.sphere.center.x = 3.0; positions.sphere.center.y = 6.0; positions.sphere.center.z = -10.0; positions.sphere.radius = 2.5;
  
  // Movement
  //positions.sphere.center.x = 0.5*(float)frame;
  //positions.camera.origin.z = 0.1*(float)frame - 10.0;
  positions.sphere.center.x = (float)frame*0.05;
  positions.camera.origin.z = (float)frame*0.1 - 10.0;
  
  // Needs to be func of state=f(frame)
  /*
  state.sphere_vel = state.sphere_vel + 0.1;
  state.sphere.center.y = state.sphere.center.y - state.sphere_vel;
  if(state.sphere.center.y <= 1.0) state.sphere_vel = -1.5;
  */  
  
  return positions;
}


#ifndef __PIPELINEC__
full_state_t full_update(full_state_t state, bool reset, bool button_state)
{
  state.scene.frame = state.scene.frame+1;
  if(reset) state.scene.frame = 0;
  return state;
}

pixel_t render_pixel(uint16_t x, uint16_t y)
{
  scene_t scene = get_scene();
  animation_pos_t animation_pos = animation(scene.frame);
  color_t c = traceray(x, y, scene.frame, animation_pos.camera, animation_pos.plane, animation_pos.sphere);
  pixel_t p;
  p.r = (int9_t)(c.r*255.0);
  p.g = (int9_t)(c.g*255.0);
  p.b = (int9_t)(c.b*255.0);
  return p;
}

#else
// Animation logic for this demo
INLINE uint32_t frame_counter(vga_signals_t vga)
{
  static uint1_t reset = 1;
  static uint32_t frame;
  uint32_t rv = frame;
  if(vga.active & (vga.pos.x == 0) & (vga.pos.y == 0))
  {
    frame += 1; //starts at 1
  }
  
  if(reset)
  {
    frame = 1;
  }
  reset = 0;
  
  return rv;
}

#include "../arty/src/vga/color_12b.h"
void app()
{
  // VGA timing for fixed resolution
  vga_signals_t vga_signals = vga_timing();
  uint32_t frame = frame_counter(vga_signals);
 
  // Logic to do animation/movement
  animation_pos_t animation_pos = animation(frame);

  // Color pixel at x,y
  color_t c = traceray(vga_signals.pos.x, vga_signals.pos.y, 
                      frame, animation_pos.camera, 
                      animation_pos.plane, animation_pos.sphere);
  
  /*color_t c = traceray_trace1_only(vga_signals.pos.x, vga_signals.pos.y, 
                animation_state.frame, animation_state.camera,animation_state.plane);
  */
  
  // Convert 0.0->1.0 color to 8b,0-255 int
  pixel_t p;
  p.r = (int9_t)floor(c.r*255.0);
  p.g = (int9_t)floor(c.g*255.0);
  p.b = (int9_t)floor(c.b*255.0);
  
  // Drive output signals/registers
  vga_pmod_register_outputs(vga_signals, p);
}
#endif
