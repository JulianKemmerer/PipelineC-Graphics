/*
"SPHERY VS. SHAPES" by Victor Suarez Rovere and Manuel Suarez

Copyright (C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>

HOW TO PLAY:
 Press the left mouse button or the UP KEY to jump.
 Score increases when you're on floor, you win when the bar is full.

Build & run:
$ clang++ -O3 -fopenmp=libiomp5 -ffast-math `sdl2-config --cflags --libs` simulator_main.cpp -o tr && ./tr

For GPU (software renderer):
$ LIBGL_ALWAYS_SOFTWARE=1 ./glslViewer -I../../../include/ rt.frag

*/

//#define NON_INTERACTIVE
#define GOD_MODE
#define BLINKY
#define SOFT_SHADOW 1 //2 for smoother border transition
//#define ALTERNATE_UI 3 //level of graphics detail
//#define RT_SMALL_UI //enable to reduce raytracing complexity (without RT, 31619(comb only) / 20800 max, with RT ~23702)
//#define DITHER


#include "tr.h"

#if defined(ALTERNATE_UI) and ALTERNATE_UI < 2
#undef HEAT_CONSTANT
#endif

#ifdef GOD_MODE
#define SCORE_STEP 3
#elif defined(NON_INTERACTIVE)
#define SCORE_STEP 0
#else
#define SCORE_STEP 1
#endif

#ifdef NON_INTERACTIVE
#undef HOLE_BORDER
#undef BLINKY
#undef HEAT_CONSTANT
#define GOD_MODE
#endif


typedef coord_type hole_t;

hole_t plane_has_hole(hole_t x, hole_t z)
{
  hole_t ret = 1.; 
  x=fixed_shr(x, 4);
  z=fixed_shr(z, 5);

  int16_t ix = round16(x);
  int16_t iz = round16(z);
  hole_t fracx = hole_t(ix)-x;
  hole_t fracz = hole_t(iz)-z;
  uint16_t hx = hash16(ix) >> 5;
  uint16_t hz = hash16(iz) >> 5;
  if((hx ^ hz) < int16_t(ix+600))
  {
#ifndef SHADER //this simplifies automatic conversion to C
    if((ix & 0x240)==0x240 || ((ix & ~0x7FF) != 0) )
     ret = 0.; //no hole
    else
#endif
    {
      bool fx = (hx & 1) != 0;
      bool fz = ((hz>>1) & 1) != 0;
      bool hard = (ix & 0x200) != 0;
#ifdef CIRCLE_SIZE
      if((((ix & 0xC0) == 0xC0) && (fx ^ fz)))
        ret = fracx*fracx + fracz*fracz - CIRCLE_SIZE*CIRCLE_SIZE; //circles
      else
#endif
      {
        hole_t ax = fixed_abs(fracx);
        hole_t az = fixed_abs(fracz);
#ifdef RHOMBUS_SIZE
        if(hard) //rhombus or squares
          ret = fixed_max(ax, az) - hole_t(SQUARE_SIZE);
        else
          ret = (ax + az) - hole_t(RHOMBUS_SIZE); 
#else
        ret = fixed_max(ax, az) - SQUARE_SIZE;
#endif
      }
    }
  }
  return ret;
}


#ifndef COLOR_DECOMP
#warning integrate this in scene struct
inline scene_colors_t scene_colors(IN(scene_t) scene)
{
  scene_colors_t r;
  r.sphere = scene.sphere.material;
  r.plane = scene.plane.material;
  r.plane_color1 = scene.plane.color1;
  r.plane_color2 = scene.plane.color2;
  r.fog = scene.fog;
  return r;
}

#else
#warning integrate this in scene struct
inline scene_colors_t scene_colors(uint2_t channel)
{
  IN(scene_t) scene = get_scene();

  scene_colors_t r;
  if(channel == 0)
  {
    r.sphere.diffuse_color = scene.sphere.material.diffuse_color.r;
    r.sphere.reflect_color = scene.sphere.material.reflect_color.r;
    r.plane.diffuse_color = scene.plane.material.diffuse_color.r;
    r.plane.reflect_color = scene.plane.material.reflect_color.r;
    r.plane_color1 = scene.plane.color1.r;
    r.plane_color2 = scene.plane.color2.r;
    r.fog = scene.fog.r;
  }
  else if(channel == 1)
  {
    r.sphere.diffuse_color = scene.sphere.material.diffuse_color.g;
    r.sphere.reflect_color = scene.sphere.material.reflect_color.g;
    r.plane.diffuse_color = scene.plane.material.diffuse_color.g;
    r.plane.reflect_color = scene.plane.material.reflect_color.g;
    r.plane_color1 = scene.plane.color1.g;
    r.plane_color2 = scene.plane.color2.g;
    r.fog = scene.fog.g;
  }
  else
  {
    r.sphere.diffuse_color = scene.sphere.material.diffuse_color.b;
    r.sphere.reflect_color = scene.sphere.material.reflect_color.b;
    r.plane.diffuse_color = scene.plane.material.diffuse_color.b;
    r.plane.reflect_color = scene.plane.material.reflect_color.b;
    r.plane_color1 = scene.plane.color1.b;
    r.plane_color2 = scene.plane.color2.b;
    r.fog = scene.fog.b;
  }
  return r;
}
#endif


#ifndef ALTERNATE_UI

#ifdef ANTIALIAS
float calc_accdist(IN(point_and_dir) hitin, IN(hit_out) hitout)
{
  float din = hitin.dist + hitout.dist;
  float d = float_shift(din, -(ANTIALIAS+6));
  return d;
}
#endif

//raytracer math inspired on tinyraytracer https://github.com/ssloy/tinyraytracer

struct point_and_dir
{
  vec3 orig, dir;
#ifdef ANTIALIAS
  float dist; //FIXME: move appropiately
#endif
};

struct hit_out
{
  float dist, borderdist;
  point_and_dir hit;
#ifdef ANTIALIAS
  float accdist;
#endif
};

#warning: this seems to add cells to synth, FIXME: inline and define 'hit_out hitout;' at top
hit_out sphere_hit(bool hit, IN(vec3) center, IN(point_and_dir) hitin, float t, float diff)
{
  hit_out hitout;
  hitout.dist = hit ? t : RAY_NOINT;
  //if(hit) //always calculated to save hardware muxes
  {
    hitout.hit.orig = hitin.orig + hitin.dir*hitout.dist;
    hitout.hit.dir = normalize(hitout.hit.orig - center);
#ifdef ANTIALIAS
    hitout.accdist = calc_accdist(hitin, hitout);
#endif
  }
  hitout.borderdist = diff;
  return hitout;
}

hit_out ray_sphere_intersect(IN(vec3) center, IN(point_and_dir) hitin)
{
#ifndef SPHERE_MOTIONBLUR
  vec3 rc = hitin.orig - center;
  float b =  dot(rc, hitin.dir);
  float c =  dot(rc, rc) - SPHERE_RADIUS*SPHERE_RADIUS;
  float diff = b*b - c;
  bool nothit = is_negative(diff);
  
  float t = RAY_NOINT;
  if(!nothit)
  {
    t = -(b + sqrt(diff));
    nothit = is_negative(t);
    if (nothit)
      diff = -diff;
  }

#else
	vec3  rc = hitin.orig - center;
	vec3 ro = hitin.orig;
	vec3 rd = hitin.dir;
        float ve_y(s.yvel*4);
        //vec3 ve(0., float(s.yvel), 0); //velocity vector

        //motion blur formula from https://www.shadertoy.com/view/MdB3Dw
	float A = dot(rc,rd);
	float B = dot(rc,rc) - SPHERE_RADIUS*SPHERE_RADIUS;
	float C = ve_y*ve_y;
	float D = rc.y*ve_y;
	float E = rd.y*ve_y;
	//float C = dot(ve,ve);
	//float D = dot(rc,ve);
	//float E = dot(rd,ve);
	float aab = A*A - B;
	float eec = E*E - C;
	float aed = A*E - D;
	diff = aed*aed - eec*aab;
		
	if(diff > 0.)
	{
		float tk = sqrt(diff);
		float ta = float_max( 0.0, (aed+tk)/eec );
		float tb = float_min( 1.0, (aed-tk)/eec );
                float s_ = (tb-ta); //time coverage (factor 2.0 removed)
                //diff = s_*SPHERE_RADIUS*SPHERE_RADIUS;
diff = B;
		if( ta < tb )
		{
			ta = (ta+tb)*0.5;
            float sqarg = (A-E*ta)*(A-E*ta) - (B+C*ta*ta-2.0*D*ta);
            float sq = sqrt( sqarg);
			t = -(A-E*ta) - sq;
                        if(t > 0.)
                        {
                          hitout.dist = t;
                          hitout.accdist = calc_accdist(hitin, hitout);
                          hitout.hit = hitin.orig + hitin.dir*hitout.dist;
              vec3 spveta = {sp.x, sp.y+ve_y*ta, sp.z};
			  hitout.N = normalize(hitout.hit - spveta);
			  //hitout.N = normalize(hitout.hit - (sp+ve*ta));
                        }
		}
	}
#endif

  return sphere_hit(!nothit, center, hitin, t, diff);
}

hit_out ray_plane_intersect(IN(plane_t) plane, IN(point_and_dir) hitin)
{
  hit_out hitout;
  hitout.dist = RAY_NOINT;
  hitout.borderdist = /*-EPS*/0.;
  vec3 plane_center = object_coord_to_float3(plane.center);
  float d;
  vec3 pt;
  hole_t hole_margin = 0; //FIXME: parser needs initialization
  vec3 o;
  if (hitin.dir.y != 0.) // avoids division by zero
  //if (is_negative(hitin.dir.y)) // avoids division by zero
  //if (float_abs(hitin.dir.y) > EPS) // avoid division by zero
  {
    //d = -(hitin.orig.y-plane_center.y)/hitin.dir.y; 
    d = float_fast_div_u(hitin.orig.y-plane_center.y, -hitin.dir.y); 
    pt = hitin.orig + hitin.dir*d;
    if (d>EPS) //strict gt
    {
       o = pt - plane_center;
#ifndef NON_INTERACTIVE       
       hole_margin = plane_has_hole(hole_t(o.x), hole_t(o.z));
       if(!fixed_is_negative(hole_margin))
#endif       
       {
          hitout.dist = d;
#ifdef ANTIALIAS
          hitout.accdist = calc_accdist(hitin, hitout);
#endif
          hitout.hit.orig = pt;
          vec3 N = VECTOR_NURMAL_UPWARDS;
          hitout.hit.dir = N; //points upwards
      }
      hitout.borderdist = float(hole_margin);
    }
  }
  return hitout;
}

color_basic_t sphere_effect(IN(hit_out) hit, IN(material_t) hit_material)
{
  color_basic_t rcolor = hit_material.diffuse_color;
#ifdef BLINKY
  IN(scene_t) scene = get_scene();
  IN(scene_colors_t) colors = scene_colors(scene);
  IN(sphere_t) s = scene.sphere;
  uint16_t frame = scene.frame;

  uint8_t tick  = frame>>1;
  if((tick & 0x3F) != 0 || ((hash16(tick)>>13) & 1) != 0)
  {
    //eyeballs
    float dy = (hit.hit.dir.y-float_shift(float(s.center.y),-6)*1.5); //FIXME: optimize constants 1.5, 1.25
    float dx = float_shift(float_abs(hit.hit.dir.z-hit.hit.dir.x)-.6, -1)*1.25;
    float d = dx*dx+dy*dy;
    coord_type mindist = fixed_shr(s.heat, 4) + .25*.25;
    if(coord_type(d) < mindist)
      rcolor = d < .15*.15 ? color_basic_t(0.) : color_basic_t(1.2);

  }
#endif
  return rcolor;
}

#ifdef ANTIALIAS
inline color_type plane_alpha(float borderdist, float dist_z)
{
  return color_type(borderdist/dist_z); //float_shift(borderdist/dist_z, -1);
}

float triang(float x )
{
  float h = x-float(int(x));
  return float_abs(h-.5);
}
#endif

#ifdef SOFT_SHADOW
color_type sphere_shadow(float x, float y, float z)
{
  color_type r = 1.;
#if ALTERTNATE_UI > 4
  y = y * .25;
  float d = x*x+z*z - (y*y+SPHERE_RADIUS*SPHERE_RADIUS);
  if(is_negative(d))
    r = .5;
#else
  if(!is_negative(y))
  {
    const float SHADOW_K = .6;
    float c = x*x+z*z - SPHERE_RADIUS*SPHERE_RADIUS;
    float v = c*float_fast_reciprocal_u(y)*SHADOW_K;

    r = color_type(v)+.5;
    if(fixed_is_negative(r)) r = 0.;
    if(r > 1.) r = 1.;
#if SOFT_SHADOW > 1
    r=r*r*(color_type(3.)-(r+r)); //smooths it
#endif
  }
#endif     
  return r;
}
#endif

color_basic_t plane_effect(IN(hit_out) hit)
{
  IN(scene_t) scene = get_scene();
  IN(scene_colors_t) colors = scene_colors(scene);
  IN(plane_t) plane = scene.plane; 

  color_basic_t rcolor = colors.plane.diffuse_color;
  vec3 plane_center = object_coord_to_float3(plane.center);

  float hitx = hit.hit.orig.x - plane_center.x;
  float hitz = hit.hit.orig.z - plane_center.z;
  float ox = float_shift(hitx, -FLOOR_SHIFT); //FIXME: same coordinates in this game
  float oz = float_shift(hitz, -FLOOR_SHIFT);
  
  int16_t ix = round16(ox);
  int16_t iz = round16(oz);

  static const color_type bk = .3; 
#ifndef COLOR_DECOMP
  color_basic_t color2 = {
    (ix & 0x400)!=0 ? bk : colors.plane_color2.r,
    (ix & 0x200)!=0 ? bk : colors.plane_color2.g,
    (ix & 0x100)!=0 ? bk : colors.plane_color2.b
  }; //FIXME: move logic to levels
#else
 color_basic_t color2 = colors.plane_color2;
#endif

  rcolor = ((ix ^ iz) & 1) ? colors.plane_color1 : color2;
#ifdef ANTIALIAS
  color_basic_t rcolor2 = !(cx == cz) ? colors.plane_color1 : color2;

  float hitdist = hit.accdist;
  float opax = float_shift(triang(ox), -1)/hitdist;
  float opaz = float_shift(triang(oz), -2)/hitdist;


  if(opax > 1.) opax = 1.; if(opax < -1.) opax = -1.;
  if(opaz > 1.) opaz = 1.; if(opaz < -1.) opaz = -1.;

  fixed_type opa = fixed_type(opaz*opax+.5);

  if(is_negative(opa))
    rcolor = rcolor2;
  else if(opa > 1.)
    rcolor = rcolor;
  else
    rcolor = float_select(color_type(opa), rcolor, rcolor2);
#endif

#ifdef HOLE_BORDER
  if(hit.borderdist < HOLE_BORDER)
  {
#ifndef ANTIALIAS
    rcolor = colors.plane.diffuse_color;
#else
    float dh = HOLE_BORDER-hit.borderdist;
    if(dh < hit.accdist)
    {
      color_type opacity = plane_alpha(dh, hit.accdist);
      rcolor = float_select(opacity, colors.plane.diffuse_color, rcolor); //border inside floor
    }
    else
      rcolor = colors.plane.diffuse_color;
#endif
  }
#endif

  return rcolor;
}

color_basic_t background_color(float dir_y)
{
  color_type y = is_negative(dir_y) ? color_type(0.) : color_type(dir_y*dir_y);
  return color_basic_t(y);
}

color_type light_intensity(IN(vec3) hit)
{
#if 0
  //this float version takes 2148 FPGA cells
  float lz = hit.z-LIGHT_Z;
  float dl = hit.x*hit.x + LIGHT_Y*LIGHT_Y + lz*lz;
  return color_type(inversesqrt(dl)*LIGHT_Y) + AMBIENT_INTENSITY;
#else
  //light_intensity optimized for fixe points
  coord_type lz = (coord_type(hit.z)-LIGHT_Z)*coord_type(1./LIGHT_Y);
  coord_type lx = coord_type(hit.x)*coord_type(1./LIGHT_Y);
  coord_type dl = lx*lx + 1. + lz*lz;
  return color_type(inversesqrt(float(dl))); //FIXME: implement RSQRT for fixed points
#endif
}

color_basic_t cast_ray_nested(IN(point_and_dir) hitin)
{
  IN(scene_t) scene = get_scene();
  IN(scene_colors_t) colors = scene_colors(scene);

#ifdef RT_SMALL_UI
  return background_color(hitin.dir.y);
#else
  material_t hit_material;
  hit_material = colors.sphere;//this is what's reflected on the floor
#if 1<PLANE_MAXRECURSIVITY
  hit_out hitout = ray_sphere_intersect(object_coord_to_float3(scene.sphere.center), hitin);
#else
#error not tested
  hit_out hitout;
  hitout.dist = RAY_NOINT;
#endif

#if 1<SPHERE_MAXRECURSIVITY
  hit_out hitplane = ray_plane_intersect(scene.plane, hitin);

  if (hitplane.dist < hitout.dist)
  {
    //this controls what's reflected on the sphere
    hitout = hitplane;
    hit_material = colors.plane;
    hit_material.diffuse_color = plane_effect(hitplane);
  }
#endif
  

  color_basic_t rcolor(0.);
#warning solve need to initialize
  if (hitout.dist >= float_shift(1., DIST_SHIFT))
    rcolor = background_color(hitin.dir.y); //has other direction
  else
    rcolor = hit_material.diffuse_color*light_intensity(hitout.hit.orig);
  return rcolor;
#endif
}

color_basic_t shade(IN(color_basic_t) background, IN(vec3) dir, IN(hit_out) hit, IN(material_t) hit_material, color_type minfog)
{
  IN(scene_t) scene = get_scene();
  IN(scene_colors_t) colors = scene_colors(scene);
  color_basic_t rcolor = background;

  float fogmix = float_shift(hit.dist, -DIST_SHIFT); //no need to accumulated dist
  if (fogmix < 1.)
  {
    point_and_dir hitreflect;
    hitreflect.orig = hit.hit.orig;
    hitreflect.dir = reflect(dir, hit.hit.dir);
#ifdef ANTIALIAS
    hitreflect.dist = hit.dist; //to accumulate distance
#endif
    color_basic_t reflect_color = cast_ray_nested(hitreflect);
    color_type li = light_intensity(hit.hit.orig);
#ifdef SOFT_SHADOW
    float sx = hit.hit.orig.x - SPHERE_X;
    float sy = (float)scene.sphere.center.y;
    float sz = hit.hit.orig.z - SPHERE_Z;
    li = li*sphere_shadow(sx, sy, sz);
#endif
    color_basic_t diffuse_color = hit_material.diffuse_color * (li + AMBIENT_INTENSITY);
    color_basic_t comb_color = diffuse_color + reflect_color*hit_material.reflect_color;
    rcolor = color_select(color_max(color_type(fogmix), minfog), colors.fog, comb_color);
  }

  return rcolor;
}

bool is_star(float x, float y)
{
  return ((hashf(x)>>2) & (hashf(y)>>2)) > 0x3E00;
}

color_basic_t cast_ray(IN(point_and_dir) hitin)
{
  IN(scene_t) scene = get_scene();
  IN(scene_colors_t) colors = scene_colors(scene);
  
  bool has_star = is_star(hitin.dir.x, hitin.dir.y);
  color_basic_t sky = has_star ? color_basic_t(STAR_INTENSITY) : background_color(hitin.dir.y);

  float ys = float_abs(float_shift(hitin.dir.y, 1));
  color_type mix = ys<1. ? color_type(1)-color_type(ys): color_type(0);
  color_basic_t bfog = color_select(mix, colors.fog, sky);

  material_t hit_material;
  hit_out hitsphere = ray_sphere_intersect(object_coord_to_float3(scene.sphere.center), hitin);
  hit_material = colors.sphere; //FIXME: needed?
  if (!is_negative(hitsphere.borderdist))
  {
    hit_material.diffuse_color = sphere_effect(hitsphere, hit_material);
  }
#ifndef RT_SMALL_UI
  hit_out hitplane = ray_plane_intersect(scene.plane, hitin);
#else
  hit_out hitplane; hitplane.dist = BIG_FLOAT;
#endif
  bool planehit =  hitplane.dist < hitsphere.dist;
  if (planehit)
  {
    hit_material = colors.plane;  //FIXME: needed?
    hit_material.diffuse_color = plane_effect(hitplane);
  }

#ifdef MOTION_BLUR
  {
     //FIXME: this is duplicated 
     register_dist(hitsphere.borderdist*.1*.5); //FIXME: blur sphere
  }
#warning MOTION_BLUR
#endif

#ifndef ANTIALIAS
   hit_out hitout = planehit ? hitplane : hitsphere;
   return shade(bfog, hitin.dir, hitout, hit_material, planehit ? mix : color_type(0.)); //no fog for sphere
#else
   color_basic_t rcolor;

#ifndef RT_SMALL_UI
   color_basic_t planecolor = shade(bfog, hitin.dir, hitplane, mix); //FIXME: bfog

   float sphere_plane_dist = hitplane.dist - hitsphere.dist;
   if(is_negative(sphere_plane_dist)) //&& hitplane.dist < hitsphere.dist
   {
#ifdef ANTIALIAS
     if(hitplane.borderdist < hitplane.accdist)
     {
       color_type planeopacity = plane_alpha(hitplane.borderdist, hitplane.accdist);
       rcolor = float_select(planeopacity, planecolor, bfog); //border next to hole
     }
     else
       rcolor = planecolor;
#else
     rcolor = is_negative(hitplane.borderdist) ? background : planecolor; //hitplane.dist == RAY_NOINT
#endif
   }
   else
#endif //RT_SMALL_UI
   {
     color_basic_t spherecolor = shade(scene, colors, bfog, hitin.dir, hitsphere, 0.);
     float aaradius = float_shift(hitsphere.dist, ANTIALIAS-13);
     float opacity = hitsphere.borderdist*aaradius;

     float da = sphere_plane_dist*aaradius; //FIXME: this shouldn't compresses in y axis when plane is near to the horizontal
     if(da < 1.) //sphere & floor intersection
       opacity = opacity*da;

     if(opacity > 1.) opacity = 1.;
     if(is_negative(opacity)) opacity = 0.; //FIXME: define clamp function

     rcolor = float_select(color_type(opacity), spherecolor, planecolor);
   }

   return rcolor;
#endif
}


#ifdef _DEBUG
void perf_clear();
void perf_render_dump();
void perf_gameplay_dump();
#endif

color_basic_t render_pixel_internal(screen_coord_t x, screen_coord_t y)
{
  IN(scene_t) scene = get_scene();
  IN(scene_colors_t) colors = scene_colors(scene);

  point_and_dir hitin;
  hitin.orig = object_coord_to_float3(scene.camera);
  vec3 camera_dir = {float(x), float(y), float(-1.)};
  hitin.dir = normalize(camera_dir);
#ifdef ANTIALIAS
  hitin.dist = 0.; //start dist
#endif
  color_basic_t c = cast_ray(hitin);


  return c;
}

#else // ALTERNATE_UI = true

uint12_t star_vel(uint12_t a, uint8_t b)
{
  uint12_t r = a;
  if(b & 1) r = r + a;
  if(b & 2) r = r + (a<<1);
  if(b & 4) r = r + (a<<2);
  return r >> 4;
}

color_basic_t background_color_alt(screen_coord_t x, screen_coord_t y, uint16_t frame, uint16_t off, coord_type z)
{
  fixed_type dir_y = (y-.5)*fixed_abs(x*x-1.);
  color_basic_t c = (dir_y < 0 ? color_type(0.) : color_type(dir_y*dir_y));

  if(z < 4)
  {
    int16_t cy = (int16_t) fixed_shl(y*z, 9);
    int16_t cx = (int16_t) fixed_shl(x*z, 9) + star_vel(off, cy & 7); //add some movement
    uint16_t pix_hash = hash16(cx ^ hash16(cy)); //FIXME: pixel hash shold be part of the scene
    if((pix_hash & 0xFFC0) == 0) //add star
      c = color_basic_t(fixed_shr(((pix_hash<<2) + frame) & 0x7F, 9) + STAR_INTENSITY);
  }
  return c;
}

color_basic_t render_floor_alt(screen_coord_t x, screen_coord_t y, coord_type px, coord_type py, coord_type pz, color_basic_t c)
{

#warning check why fixed types can't be left uninitialized
  coord_type inv_y = 0.;
  
  uint8_t ux;
  uint8_t uz;
  bool drawfog = false;

  if (y != 0. && fixed_is_negative(y) == fixed_is_negative(py)) //FIXME: floor is not drawn correctly
  {
    inv_y = fixed_shl(py, FLOOR_SHIFT)/y;

    coord_type ix = inv_y*x-px;
    coord_type iz = inv_y + pz;

#ifndef NON_INTERACTIVE
    hole_t hole_d = plane_has_hole(ix, coord_type(0)-iz);
	if(!fixed_is_negative(hole_d)) //internal area
#else	
    {
      //if((short(inv_y) >> 10) == 0)
      if(inv_y < 512)
      {
        ux = (short)ix;
        uz = (short)iz;
        c = ((ux ^ uz)>>FLOOR_SHIFT) & 1 ? K_plane_color2 : K_plane_color1;
#ifdef HOLE_BORDER
        if(hole_d < HOLE_BORDER)
          c = K_floor_difusse;
#endif          
      }
      drawfog = true;
    }
#endif
  }
  else
    drawfog = true;

  if(drawfog)
      c = color_select(fixed_abs(y), c, K_fog_color);
  return c;
}

color_basic_t render_pixel_internal_alt(screen_coord_t x, screen_coord_t y)
{
  IN(scene_t) scene = get_scene();
  IN(scene_colors_t) colors = scene_colors(scene);

    coord_type dz = coord_type(scene.camera.z-SPHERE_Z);
	coord_type dx = coord_type(x*dz - (scene.sphere.center.x/*-scene.camera.x*/));
	coord_type dy = coord_type(y*dz - (scene.sphere.center.y-scene.camera.y));
#if ALTERNATE_UI > 1
  color_basic_t c = background_color_alt(x, y, scene.frame, -(int16_t)scene.plane.center.x, dz*coord_type(.5/CAMERA_Z));
#else
   color_basic_t c = K_fog_color;
#endif

    bool drawfloor = true;
	//draw sphere
	static const float SPHERE_R = (-.707)*SPHERE_Z/SPHERE_RADIUS; //FIXME: check if code generator parenthesizes it
	if((dx > -SPHERE_R) && (dx < SPHERE_R) && (dy > -SPHERE_R) && (dy < SPHERE_R)) //FIXME: use >=, <=
    {
		//inside bounding box
		if(dx*dx + dy*dy < SPHERE_R*SPHERE_R)
        {
          c = /*K_gold_color*/scene.sphere.material.diffuse_color;
          //else c.b = 1.; //uncomment to display bounding box
          drawfloor = scene.sphere.center.y + dy < FLOOR_Y;
        }
    }
#if ALTERNATE_UI > 2

  if(drawfloor)
  {
#ifdef PIPELINEC_SUGAR
	const float FRAME_HEIGHT_FLOAT = FRAME_HEIGHT;
	const float CAMERA_FACTOR = -2.*CAMERA_Z/FRAME_HEIGHT_FLOAT;
#else
	static const float CAMERA_FACTOR = -2.*CAMERA_Z/FRAME_HEIGHT;
#endif
	c = render_floor_alt(x, y,
		scene.plane.center.x/*-scene.camera.x*/,
		scene.camera.y*coord_type(CAMERA_FACTOR),
		scene.plane.center.z-scene.camera.z, c);

  }
#endif

  return c;
}
#endif

#ifdef DITHER
inline uint8_t mask_code(uint8_t v) {
  v = ((v&1)<<3) | ((v&2)<<1) | ((v&4)>>1) | ((v&8)>>3); //bit reverse
  return v ^ (v>>1); //gray
}

inline uint9_t dither(uint8_t x, uint8_t y, uint9_t v)
{
 return ((mask_code(y^mask_code(x/*^mask_code(frame)*/))) + v ) & 0x1F0;
 //return v & 0x1F0; //simple threshold
}
#endif

#ifndef SHADER
inline pixel_t render_pixel(uint16_t i, uint16_t j
#ifdef COLOR_DECOMP
, uint2_t channel, pixel_t pix_in
#endif
)
{
  IN(scene_t) scene = get_scene();
#ifdef _DEBUG
  perf_clear();
#endif

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

  static const uint16_t score_factor = 2048*(FRAME_WIDTH-2*SCORE_MARGINS)/MAXSCORE;
  uint16_t scorebar = score_factor*scene.scorebar >> 11;
  if(i >= SCORE_MARGINS && i < SCORE_MARGINS + scorebar && j > SCORE_MARGINS && j < 2*SCORE_MARGINS)
  {
    pix.r = 0; pix.g = 200; pix.b = 0; //    pix = color(0., 200./255., 0.);
  }
  else
  {
#ifndef COLOR_DECOMP
#ifdef ALTERNATE_UI
	color c = render_pixel_internal_alt(x, y);
	///*if((i ^ j) & (1<<7))*/ if(cx>0) c = render_pixel_internal(x, y, scene, scene_colors(scene)); //uncomment for checkerboard
#else
	color c = render_pixel_internal(x, y);
#endif
    uint9_t r = fixed_asshort(c.r, 8);
    uint9_t g = fixed_asshort(c.g, 8);
    uint9_t b = fixed_asshort(c.b, 8);
#ifdef DITHER
    r = dither(i^j, i, r);
    g = dither(i+j, j, g);
    b = dither(i, j, b); //i+j, i or i, j or j, i
#endif
    pix.r = (r >= 256) ? uint8_t(255):uint8_t(r);
    pix.g = (g >= 256) ? uint8_t(255):uint8_t(g);
    pix.b = (b >= 256) ? uint8_t(255):uint8_t(b);
#else
    pix = pix_in;
    color_type c = render_pixel_internal(x, y, scene, scene_colors(scene, channel));
    uint9_t c9 = fixed_asshort(c, 8);
    uint8_t c8 = (uint8_t) ((c9 & ~0xFF) ? (uint8_t)0xFF:(uint8_t)c9);
    if(channel == 0)
      pix.r = c8;
    else if(channel == 1)
      pix.g = c8;
    else
      pix.b = c8;
#endif
  }

#ifdef _DEBUG
  perf_render_dump();
#endif
  return pix;
}
#endif

full_state_t reset_state(uint16_t score)
{
    full_state_t state;
    
    material_t gold;
    gold.diffuse_color = K_gold_color;
    gold.reflect_color = K_gold_reflect_color;

    material_t floor_material;
    floor_material.diffuse_color = K_floor_difusse;
    floor_material.reflect_color = K_floor_reflect;

    state.scene.plane.center = K_plane_center_start;
    state.scene.plane.material = floor_material;
    state.scene.plane.color1 = K_plane_color1;
    state.scene.plane.color2 = K_plane_color2;

    state.scene.sphere.center = K_sphere_center_start;
    state.scene.sphere.material = gold;
    state.scene.sphere.heat = 0.;
    state.scene.camera = K_camera_pos_start;
    state.scene.frame = 0;
    state.scene.scorebar = 0;
    state.scene.fog = K_fog_color;

    state.plane_y    = (coord_type) state.scene.plane.center.y;
    state.sphere_x   = (coord_type) state.scene.sphere.center.x;
    state.sphere_z   = (coord_type) state.scene.sphere.center.z;
    state.gold_color = gold.diffuse_color;
    state.gold_reflect_color = gold.reflect_color;
    state.lava_color = K_lava_color;

    state.sphere_y = (coord_type) state.scene.sphere.center.y;
    state.heat     = state.scene.sphere.heat;
    state.camera_y = (coord_type) state.scene.camera.y;
    state.camera_z = (coord_type) state.scene.camera.z;
    state.plane_x  = coord_type(FLOOR_X);
    state.sphere_xvel = 0.;
    state.sphere_yvel = 0.;
    state.won = false;
    state.score = score;

    return state;
}

full_state_t full_update(INOUT(full_state_t) state, bool reset, bool button_state)
{
  uint16_t score = state.score;
  if(reset) score = 0;

  state.plane_x = state.plane_x + state.sphere_xvel;

  state.sphere_yvel = state.sphere_yvel + GRAVITY_CONSTANT;
  state.sphere_y = state.sphere_y - state.sphere_yvel;

  coord_type underground = (state.sphere_y - SPHERE_RADIUS) - FLOOR_Y; //PLANE_Y is always 0

  if(state.won)
    state.sphere_yvel = fixed_shr(underground, 4);

  if(fixed_is_negative(underground))
  {
    state.sphere_xvel = state.sphere_xvel - XVEL_CONSTANT;
    coord_type coord_x = state.sphere_x - state.plane_x;
    coord_type coord_z = state.sphere_z - state.plane_x; //z=x

    bool half_up = state.sphere_y > state.plane_y;
    if(half_up && state.won == false)
    {
#ifdef HEAT_CONSTANT
      if(state.sphere_yvel>0.)
        state.heat = fixed_type(0)-fixed_shr(state.sphere_xvel, HEAT_CONSTANT);
#warning implement unary -
#endif

#ifndef GOD_MODE
      //TODO: if the plane has a hole can be calculated at rendering time and reused!
      if(plane_has_hole(coord_x, coord_z) > -HOLE_GUARD_MARGIN) // > about -.1 gives margin for the ball size
#endif
      {
        state.score = state.score+SCORE_STEP;
        if(state.score >= MAXSCORE && state.won!=true)
           state.won = true;
#ifdef GOD_MODE
        button_state = state.sphere_xvel < -XVEL_CONSTANT*20. || fixed_is_negative(state.sphere_yvel);
#elif defined(NON_INTERACTIVE)
        button_state = true;
#endif
        if(button_state)
        {
          state.sphere_yvel = -JUMP_CONSTANT;
          state.sphere_xvel = -XVEL_DEFAULT;
        }
        else
          state.sphere_yvel = -GRAVITY_CONSTANT_LIGHT;
      }
    }
    else
    {
      state.camera_z = state.camera_z-fixed_shr(underground, ZOOMOUT_CONSTANT); //lose => fadeout
    }
  }

#ifdef HEAT_CONSTANT
  state.heat = state.heat - (color_type)fixed_shr(state.heat, 4);
#endif
  state.camera_y = state.camera_y + fixed_shr(state.sphere_y - state.camera_y, 5);

  //write all outputs
  state.lose = fixed_is_negative(underground) && (-int16_t(underground) >> 10); //underground < -2048.

#if HEAT_CONSTANT // && ALTERNATE_UI > 1
  state.diffuse_color = color_select(state.heat, state.lava_color, state.gold_color);
  state.reflect_color = state.gold_reflect_color*(color_type(1.) - fixed_shr(state.heat, 2));
#else
  state.diffuse_color = state.gold_color;
  state.reflect_color = state.gold_reflect_color;
#endif

  state.scorebar = state.won ? 0 : state.score;

#ifdef _DEBUG
  perf_gameplay_dump();
#endif

  if(state.lose)
     reset = true;

  if(reset)
    state = reset_state(score);

  state.scene.sphere.center.y = state.sphere_y;
  state.scene.sphere.heat = state.heat;
  state.scene.camera.y = state.camera_y;
  state.scene.camera.z = state.camera_z;
  state.scene.plane.center.x = state.plane_x;
  state.scene.plane.center.z = state.plane_x;
  state.scene.sphere.material.diffuse_color = state.diffuse_color;
  state.scene.sphere.material.reflect_color = state.reflect_color;
  state.scene.sphere.yvel = coord_type(state.sphere_yvel); //FIXME: is the cast needed?
  state.scene.scorebar = state.scorebar; //FIXME: move to state update function to make this function wires-only
  state.scene.frame = state.scene.frame + 1;
  
  return state;
}



#ifdef SHADER
void main()
{
  full_state_t state = reset_state();
  state.scene.sphere.center.y /= (u_time+1.);
  state.scene.plane.center.z = state.scene.plane.center.x = -u_time*60.; //TEST MOVEMENT

  state.scene.frame = int(u_time*60.);
  scene_colors_t colors = scene_colors(state.scene);
  float x = gl_FragCoord.x/u_resolution.x-.5;
  float y = (gl_FragCoord.y-u_resolution.y/2.)/u_resolution.x;
  outColor = vec4(render_pixel_internal(x, y, state.scene, colors), 1.);
}
#endif

