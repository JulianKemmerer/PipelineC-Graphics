//(C) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>
//Inspired in https://fabiensanglard.net/rayTracing_back_of_business_card/

#include "tr.h"

int16_t T(vec3 o,vec3 d,float& t,vec3& n){ 
 t=BIG_FLOAT;
 int16_t m=0;
 float p=-o.z/d.z;
  if(.01<p)
  {
   t=p;
   static const vec3 N = {0.,0.,1.};
   n=N;
   m=1;
   }

  
 { 
    
    // There is a sphere but does the ray hits it ?
    static const vec3 spos = {0.,-10.,-2*SPHERE_RADIUS};
    vec3 p=o+spos;
    float b=dot(p,d);
    float c=dot(p,p)-SPHERE_RADIUS*SPHERE_RADIUS;
    float q=b*b-c;
 
    //Does the ray hit the sphere ?
    
    if(!is_negative(q)){
       //It does, compute the distance camera-sphere
       float s=-b-sqrt(q);
         
       if(s<t && s>.01)
       {
         // So far this is the minimum distance, save it. And also
         // compute the bouncing ray vector into 'n'  
         t=s;
         n=normalize(p+d*t);
         m=2;
        }
     }
 }
 return m;
}

// (S)ample the world and return the pixel color for
// a ray passing by point o (Origin) and d (Direction)
color_basic_t S(vec3 o,vec3 d){
  float t;
  vec3 n;

  //Search for an intersection ray Vs World.
  int16_t m=T(o,d,t,n);

  if(!m) // m==0
  {
  //No sphere found and the ray goes upward: Generate a sky color  
  fixed_type u = fixed_type(1.)-fixed_type(d.z);
  u = u*u;
  color_basic_t cb = {.7,.6,1.};
  return cb*u*u;
  }

  //A sphere was maybe hit.

  vec3 h=o+d*t;                    // h = intersection coordinate
  static const vec3 ld = {9.,9.,16.};
  vec3 l=normalize(ld+h*-1.);  // 'l' = direction to light (random delta for shadows).
  vec3 r=d+n*(dot(n,d)*-2.);               // r = The half-vector

  //Calculated the lambertian factor
  float b=dot(l,n);

  //Calculate illumination factor (lambertian coefficient > 0 or in shadow)?
  if(is_negative(b)||T(h,l,t,n))
     b=0.;

  // Calculate the color 'p' with diffuse and specular component 
  color_type p=0.;
  if(b>0.)
  {
    p=(color_type)dot(l,r);
    p=p*p;
    p=p*p;
  }

  if(m&1){   //m == 1
     h=h*.2; //No sphere was hit and the ray was going downward: Generate a floor color
     static const color_basic_t c1 = {1.,.3,.3};
     static const color_basic_t c2 = {1.,1.,1.};
     color_basic_t fcolor = (round16(h.x)^round16(h.y))&1?c1:c2;
     fixed_type bc = (b*.2+.1);
     return fcolor*bc;
  }

  //m == 2 A sphere was hit. Cast an ray bouncing from the sphere surface.
  color_basic_t cp = {p,p,p};
  return cp+S(h,r)*fixed_type(.5); //Attenuate color by 50% since it is bouncing (* .5)
}


color_basic_t render_pixel_internal(screen_coord_t x, screen_coord_t y)
{
  vec3 orig{10., -20., 10.};
  vec3 camera_dir{float_type(x), 1., float_type(y)};
  return S(orig, normalize(camera_dir));
}

inline pixel_t render_pixel(uint16_t i, uint16_t j)
{

#ifndef PIPELINEC_SUGAR
  int16_t cx = (i<<1)-FRAME_WIDTH-1;
  int16_t cy = -((j<<1)-FRAME_HEIGHT-1);
#else
  int16_t cx = i << 1;
  cx = cx - (FRAME_WIDTH + 1);
  int16_t cy = j << 1;
  cy = (FRAME_HEIGHT + 1) - cy;
#endif
  const float W = (float)FRAME_WIDTH;
  const float H = (float)FRAME_HEIGHT;
  static const screen_coord_t ax = 1024.*(16./9.)/W;
  static const screen_coord_t ay = 1024./H;
  screen_coord_t x = fixed_shr(cx, 10+1) * ax;
  screen_coord_t y = fixed_shr(cy, 10+1) * ay;

  pixel_t pix; //ignores alpha
  {
	color c = render_pixel_internal(x, y);
    uint9_t r = fixed_asshort(c.r, 8);
    uint9_t g = fixed_asshort(c.g, 8);
    uint9_t b = fixed_asshort(c.b, 8);
    pix.r = (r >= 256) ? uint8_t(255):uint8_t(r);
    pix.g = (g >= 256) ? uint8_t(255):uint8_t(g);
    pix.b = (b >= 256) ? uint8_t(255):uint8_t(b);
  }

  return pix;
}

full_state_t reset_state(uint16_t score)
{
    full_state_t state;
    return state;
}

full_state_t full_update(INOUT(full_state_t) state, bool reset, bool button_state)
{
  return state;
}



