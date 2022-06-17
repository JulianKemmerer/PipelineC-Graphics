//(C) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>
//Inspired in https://fabiensanglard.net/rayTracing_back_of_business_card/


#ifndef SHADER
#include "tr.h"
#else
#define int16_t int
#define BIG_FLOAT 1.e23
#define SPHERE_RADIUS 4.5
#define is_negative(v) ((v)<0.)
#define color_basic_t vec3
#define fixed_type float
#define color_type float
#define screen_coord_t float
#define static
#define round16(v) int16_t(round(v))
#endif

struct hitout
{
 float t;
 vec3 n;
 int16_t m;
};

hitout T(vec3 o,vec3 d){ 
hitout r;
 r.t=BIG_FLOAT;
 r.m=0;
 float p=-o.z/d.z;
  if(.01<p)
  {
   r.t=p;
   /*static const*/ vec3 N = {0.,0.,1.};
   r.n=N;
   r.m=1;
   }

  
 { 
    
    // There is a sphere but does the ray hits it ?
    /*static const*/ vec3 spos = {0.,-10.,-2.*SPHERE_RADIUS};
    vec3 pv=o+spos;
    float b=dot(pv,d);
    float c=dot(pv,pv)-SPHERE_RADIUS*SPHERE_RADIUS;
    float q=b*b-c;
 
    //Does the ray hit the sphere ?
    
    if(!is_negative(q)){
       //It does, compute the distance camera-sphere
       float s=-b-sqrt(q);
         
       if(s<r.t && s>.01)
       {
         // So far this is the minimum distance, save it. And also
         // compute the bouncing ray vector into 'n'  
         r.t=s;
         r.n=normalize(pv+d*r.t);
         r.m=2;
        }
     }
 }
 return r;
}


// (S)ample the world and return the pixel color for
// a ray passing by point o (Origin) and d (Direction)
color_basic_t S0(vec3 o,vec3 d){
  float t;
  vec3 n;
  color_basic_t col = {.7,.6,1.}; //sky color

  //Search for an intersection ray Vs World.
  hitout r1 = T(o,d);
  int16_t m=r1.m;
  t = r1.t;
  n = r1.n;

  if(m==0)
  {
  //No sphere found and the ray goes upward: Generate a sky color  
  fixed_type u = fixed_type(1.)-fixed_type(d.z);
  u = u*u;
  col = col*u*u;
  }
  else
  {
  //A sphere was maybe hit.

  vec3 h=o+d*t;                    // h = intersection coordinate
  /*static const*/ vec3 ld = {9.,9.,16.};
  vec3 l=normalize(ld+h*-1.);  // 'l' = direction to light (random delta for shadows).
  vec3 r=d+n*(dot(n,d)*-2.);               // r = The half-vector

  //Calculated the lambertian factor
  float b=dot(l,n);

  //Calculate illumination factor (lambertian coefficient > 0 or in shadow)?
  hitout r2 = T(h,l);
  if(is_negative(b) || (r2.m != 0))
  {
     b=0.;
  }
  // Calculate the color 'p' with diffuse and specular component 
  color_type p=0.;
  if(b>0.)
  {
    p=color_type(dot(l,r));
    p=p*p;
    p=p*p;
  }

  if(m==1){
     h=h*.2; //No sphere was hit and the ray was going downward: Generate a floor color
     static const color_basic_t c1 = {1.,.3,.3};
     static const color_basic_t c2 = {1.,1.,1.};
     bool ct = bool((round16(h.x)^round16(h.y)) & 1);
     color_basic_t fcolor = ct?c1:c2;
     fixed_type bc = (b*.5+.1);
     col = fcolor*bc;
  }
  else
  {
    //m == 2 A sphere was hit. Cast an ray bouncing from the sphere surface.
    color_basic_t pcol = {p,p,p};
    col = pcol;
   }
  }
  return col;
}

// (S)ample the world and return the pixel color for
// a ray passing by point o (Origin) and d (Direction)
color_basic_t S(vec3 o,vec3 d){
  float t;
  vec3 n;
  color_basic_t col = {.7,.6,1.}; //sky color

  //Search for an intersection ray Vs World.
  hitout r1 = T(o,d);
  int16_t m=r1.m;
  t = r1.t;
  n = r1.n;

  if(m==0)
  {
  //No sphere found and the ray goes upward: Generate a sky color  
  fixed_type u = fixed_type(1.)-fixed_type(d.z);
  u = u*u;
  col = col*u*u;
  }
  else
  {
  //A sphere was maybe hit.

  vec3 h=o+d*t;                    // h = intersection coordinate
  /*static const*/ vec3 ld = {9.,9.,16.};
  vec3 l=normalize(ld+h*-1.);  // 'l' = direction to light (random delta for shadows).
  vec3 r=d+n*(dot(n,d)*-2.);               // r = The half-vector

  //Calculated the lambertian factor
  float b=dot(l,n);

  //Calculate illumination factor (lambertian coefficient > 0 or in shadow)?
  hitout r2 = T(h,l);
  if(is_negative(b)|| (r2.m != 0))
  {
     b=0.;
  }
  // Calculate the color 'p' with diffuse and specular component 
  color_type p=0.;
  if(b>0.)
  {
    p=color_type(dot(l,r));
    p=p*p;
    p=p*p;
  }

  if(m==1){
     h=h*.2; //No sphere was hit and the ray was going downward: Generate a floor color
     static const color_basic_t c1 = {1.,.3,.3};
     static const color_basic_t c2 = {1.,1.,1.};
     bool ct = bool((round16(h.x)^round16(h.y)) & 1);
     color_basic_t fcolor = ct?c1:c2;
     fixed_type bc = (b*.5+.1);
     col = fcolor*bc;
  }
  else
  {
    //m == 2 A sphere was hit. Cast an ray bouncing from the sphere surface.
    color_basic_t pcol = {p,p,p};
    col = pcol+S0(h,r)*fixed_type(.5);
   }
  }
  return col;
}

color_basic_t render_pixel_internal(screen_coord_t x, screen_coord_t y, float t)
{
  vec3 orig = {10., -20., 10.};
  float camera_pos = 1.;

#if 0
  vec3 camera_dir = {float(x), camera_pos, float(y)};
  return S(orig, normalize(camera_dir));
#else
 vec3 c = vec3(0.);
 int i;
 for(i=0; i</*123*5*/17; ++i)
 {
   camera_pos += .01;
    vec3 camera_dir = {float(x), camera_pos, float(y+float(int(t)&1)*.1)};
   c += S(orig, normalize(camera_dir));
 }
 return c/float(i);
#endif
}

#ifndef SHADER
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
    IN(scene_t) scene = get_scene();
    float t = scene.frame;
    color c = render_pixel_internal(x, y, t);
    uint9_t r = fixed_asshort(c.r, 8);
    uint9_t g = fixed_asshort(c.g, 8);
    uint9_t b = fixed_asshort(c.b, 8);
    pix.r = (r >= 256) ? uint8_t(255):uint8_t(r);
    pix.g = (g >= 256) ? uint8_t(255):uint8_t(g);
    pix.b = (b >= 256) ? uint8_t(255):uint8_t(b);
  }

  return pix;
}

full_state_t full_update(INOUT(full_state_t) state, bool reset, bool button_state)
{
  state.scene.frame = state.scene.frame + 1;
  if(reset)
    state.scene.frame = 0;
  return state;
}

#else //not shader
vec3 frag_render(float t, float x, float y, float mx, float my)
{
#if 0
  float a = x+y;
  for(int n=0; n<10000; ++n) a+=.0001;
  int i = int(a*8.);
  a = float(i&5)/8.;
  vec3 color = vec3(a, my, fract(t));
  return color;
#else
 return render_pixel_internal(x-.5, y-.5, t);
#endif
}
#endif //SHADER


