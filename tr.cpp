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

//#define ALTERNATE_UI 3 //level of graphics detail
//#define RT_SMALL_UI //enable to reduce raytracing complexity (without RT, 31619(comb only) / 20800 max, with RT ~23702)
//#define DITHER


#include "tr.h"
#warning: fixed_shift may be not used, and have a preference for shift right or left by constants depending on the case


#if ALTERNATE_UI < 2
#undef HEAT_CONSTANT
#endif


typedef coord_type hole_t;

hole_t plane_has_hole(hole_t x, hole_t z)
{
  hole_t ret = 1.; 
  x=fixed_shift(x, -4);
  z=fixed_shift(z, -5);

  int16_t ix = round16(x);
  int16_t iz = round16(z);
  hole_t fracx = hole_t(ix)-x;
  hole_t fracz = hole_t(iz)-z;
  uint16_t hx = hash16(ix) >> 5;
  uint16_t hz = hash16(iz) >> 5;
  if((hx ^ hz) < ix+600)
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
inline scene_colors_t scene_colors(IN(scene_t) scene, uint2_t channel)
{
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
float_type calc_accdist(IN(point_and_dir) hitin, IN(hit_out) hitout)
{
  float_type din = hitin.dist + hitout.dist;
  float_type d = float_shift(din, -(ANTIALIAS+6));
  return d;
}
#endif

//raytracer math inspired on tinyraytracer https://github.com/ssloy/tinyraytracer

struct point_and_dir
{
  vec3 orig, dir;
#ifdef ANTIALIAS
  float_type dist; //FIXME: move appropiately
#endif
};

struct hit_out
{
  float_type dist, borderdist;
  point_and_dir hit;
  render_material_t material;
#ifdef ANTIALIAS
  float_type accdist;
#endif
};

hit_out ray_sphere_intersect(IN(sphere_t) s, IN(point_and_dir) hitin)
{

 hit_out hitout;
 vec3 ro = hitin.orig;
 vec3 rd = hitin.dir;
 vec3 sp = object_coord_to_float3(s.center);

 hitout.dist = RAY_NOINT;
 float diff;
 float t;
	
	vec3  rc = ro - sp;
#ifndef SPHERE_MOTIONBLUR
	float b =  dot(rc,rd);
	float c =  dot(rc,rc) - SPHERE_RADIUS*SPHERE_RADIUS;
	diff = b*b - c; //aab = A*A - B;
	if(diff > 0.)
	{
          t = -b - sqrt(diff);
          if (t > 0.)
          {
            hitout.dist = t;
#ifdef ANTIALIAS
            hitout.accdist = calc_accdist(hitin, hitout);
#endif
            hitout.hit.orig = hitin.orig + hitin.dir*hitout.dist;
	    hitout.hit.dir = normalize(hitout.hit.orig - sp);
          }
         else
          diff = -diff;
        }

#else
        float_type ve_y(s.yvel*4);
        //vec3 ve(0., float_type(s.yvel), 0); //velocity vector

        //motion blur formula from https://www.shadertoy.com/view/MdB3Dw
	float_type A = dot(rc,rd);
	float_type B = dot(rc,rc) - SPHERE_RADIUS*SPHERE_RADIUS;
	float_type C = ve_y*ve_y;
	float_type D = rc.y*ve_y;
	float_type E = rd.y*ve_y;
	//float_type C = dot(ve,ve);
	//float_type D = dot(rc,ve);
	//float_type E = dot(rd,ve);
	float_type aab = A*A - B;
	float_type eec = E*E - C;
	float_type aed = A*E - D;
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


  hitout.borderdist = diff;
  return hitout;
}

hit_out ray_plane_intersect(IN(plane_t) plane, IN(point_and_dir) hitin)
{
  hit_out hitout;
  hitout.dist = RAY_NOINT;
  hitout.borderdist = /*-EPS*/0.;
  vec3 plane_center = object_coord_to_float3(plane.center);
  float_type d;
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
       hole_margin = plane_has_hole(hole_t(o.x), hole_t(o.z));
       if(!fixed_is_negative(hole_margin))
       {
          hitout.dist = d;
#ifdef ANTIALIAS
          hitout.accdist = calc_accdist(hitin, hitout);
#endif
          hitout.hit.orig = pt;
          vec3 N = VECTOR_NURMAL_UPWARDS;
          hitout.hit.dir = N; //points upwards
      }
      hitout.borderdist = float_type(hole_margin);
    }
  }
  return hitout;
}

//#define BLINKY
color_basic_t sphere_effect(uint16_t frame, IN(scene_colors_t) colors, IN(sphere_t) s, IN(hit_out) hit)
{
  color_basic_t rcolor = hit.material.diffuse_color;
#ifdef BLINKY
  uint6_t tick  = frame>>2;
  if((tick & 0x3F) != 0 || ((hash16(tick)>>13) & 1) != 0)
  {
    //eyeballs
    float_type dy = (hit.N.y-float_shift(float_type(s.center.y),-6)*1.5); //FIXME: optimize constants 1.5, 1.25
    float_type dx = float_shift(float_abs(hit.N.z-hit.N.x)-.6, -1)*1.25;
    float_type d = dx*dx+dy*dy;
    coord_type mindist = fixed_shift(s.heat, -4) + .25*.25;
    if(coord_type(d) < mindist)
      rcolor = d < .15*.15 ? color_basic_t(0.) : color_basic_t(1.2);

  }
#endif
  return rcolor;
}

#ifdef ANTIALIAS
inline color_type plane_alpha(float_type borderdist, float_type dist_z)
{
  return color_type(borderdist/dist_z); //float_shift(borderdist/dist_z, -1);
}

float_type triang(float_type x )
{
  float_type h = x-float_type(int(x));
  return float_abs(h-.5);
}
#endif

color_basic_t plane_effect(uint16_t frame, IN(scene_colors_t) colors, IN(plane_t) plane, IN(hit_out) hit)
{
  color_basic_t rcolor = colors.plane.diffuse_color;
  vec3 plane_center = object_coord_to_float3(plane.center);

  float_type hitx = hit.hit.orig.x - plane_center.x;
  float_type hitz = hit.hit.orig.z - plane_center.z;
  float_type ox = float_shift(hitx, FLOOR_SHIFT); //FIXME: same coordinates in this game
  float_type oz = float_shift(hitz, FLOOR_SHIFT);
  
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


  float_type hitdist = hit.accdist;
  float_type opax = float_shift(triang(ox), -1)/hitdist;
  float_type opaz = float_shift(triang(oz), -2)/hitdist;


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
    float_type dh = HOLE_BORDER-hit.borderdist;
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

color_basic_t background_color(float_type dir_y)
{
  color_type y = is_negative(dir_y) ? color_type(0.) : color_type(dir_y*dir_y);
  return color_basic_t(y);
}

color_type light_intensity(IN(vec3) hit)
{
#if 0
  //this float version takes 2148 FPGA cells
  float_type lz = hit.z-LIGHT_Z;
  float_type dl = hit.x*hit.x + LIGHT_Y*LIGHT_Y + lz*lz;
  return color_type(inversesqrt(dl)*LIGHT_Y) + AMBIENT_INTENSITY;
#else
  //light_intensity optimized for fixe points
  coord_type lz = (coord_type(hit.z)-LIGHT_Z)*coord_type(1./LIGHT_Y);
  coord_type lx = coord_type(hit.x)*coord_type(1./LIGHT_Y);
  coord_type dl = lx*lx + 1. + lz*lz;
  return color_type(inversesqrt(float_type(dl))) + AMBIENT_INTENSITY; //FIXME: implement RSQRT for fixed points
#endif
}

hit_out hit_sphere(uint32_t frame, IN(scene_colors_t) colors, IN(sphere_t) sphere, IN(point_and_dir) hitin)
{
  hit_out hitout;
  hitout = ray_sphere_intersect(sphere, hitin);
  hitout.material = colors.sphere;

  if (!is_negative(hitout.borderdist))
    hitout.material.diffuse_color = sphere_effect(frame, colors, sphere, hitout);
  return hitout;
}

hit_out hit_plane(uint32_t frame, IN(scene_colors_t) colors, IN(plane_t) plane, IN(point_and_dir) hitin)
{
  hit_out hitout;
  hitout = ray_plane_intersect(plane, hitin);
  hitout.material = colors.plane;

  if (!is_negative(hitout.borderdist))
    hitout.material.diffuse_color = plane_effect(frame, colors, plane, hitout);

  return hitout;
}

color_basic_t cast_ray_nested(IN(scene_t) scene, IN(scene_colors_t) colors, IN(point_and_dir) hitin)
{

#ifdef RT_SMALL_UI
  return background_color(hitin.dir.y);
#else

#if 1<PLANE_MAXRECURSIVITY
  hit_out hitsphere = hit_sphere(scene.frame, colors, scene.sphere, hitin);
#else
  hit_out hitsphere;
  hitsphere.dist = RAY_NOINT;
#endif

#if 1<SPHERE_MAXRECURSIVITY
  hit_out hitplane = hit_plane(scene.frame, colors, scene.plane, hitin);
  hit_out hitout = hitplane.dist < hitsphere.dist ? hitplane : hitsphere;
#else
  hit_out hitout = hitsphere;
#endif

  color_basic_t rcolor(0.);
#warning solve need to initialize
  if (hitout.dist >= float_shift(1., DIST_SHIFT))
    rcolor = background_color(hitin.dir.y); //has other direction
  else
    rcolor = hitout.material.diffuse_color*light_intensity(hitout.hit.orig);
  return rcolor;
#endif
}

color_basic_t shade(IN(scene_t) scene, IN(scene_colors_t) colors, IN(color_basic_t) background, vec3 dir, IN(hit_out) hit, color_type minfog)
{
  color_basic_t rcolor = background;

  float_type fogmix = float_shift(hit.dist, -DIST_SHIFT); //no need to accumulated dist
  if (fogmix < 1.)
  {
    point_and_dir hitreflect;
    hitreflect.orig = hit.hit.orig;
    hitreflect.dir = reflect(dir, hit.hit.dir);
#ifdef ANTIALIAS
    hitreflect.dist = hit.dist; //to accumulate distance
#endif
    color_basic_t reflect_color = cast_ray_nested(scene, colors, hitreflect);
    color_basic_t diffuse_color = hit.material.diffuse_color * light_intensity(hit.hit.orig);
    color_basic_t comb_color = diffuse_color + reflect_color*hit.material.reflect_color;
    rcolor = color_select(color_max(color_type(fogmix), minfog), colors.fog, comb_color);
  }

  return rcolor;
}

bool is_star(float_type x, float_type y)
{
  return ((hashf(x)>>2) & (hashf(y)>>2)) > 0x3E00;
}

color_basic_t cast_ray(IN(scene_t) scene, IN(scene_colors_t) colors, IN(point_and_dir) hitin)
{
   bool has_star = is_star(hitin.dir.x, hitin.dir.y);
   color_basic_t sky = has_star ? color_basic_t(STAR_INTENSITY) : background_color(hitin.dir.y);

   float_type ys = float_abs(float_shift(hitin.dir.y, 1));
   color_type mix = ys<1. ? color_type(1)-color_type(ys): color_type(0);
   color_basic_t bfog = color_select(mix, colors.fog, sky);

   hit_out hitsphere = hit_sphere(scene.frame, colors, scene.sphere, hitin);
#ifndef RT_SMALL_UI
   hit_out hitplane = hit_plane(scene.frame, colors, scene.plane, hitin);
#else
   hit_out hitplane; hitplane.dist = BIG_FLOAT;
#endif

#ifdef MOTION_BLUR
  {
     //FIXME: this is duplicated 
     register_dist(hitsphere.borderdist*.1*.5); //FIXME: blur sphere
  }
#warning MOTION_BLUR
#endif

#ifndef ANTIALIAS
   bool sphit =  hitsphere.dist < hitplane.dist;
   hit_out hitout = sphit ? hitsphere : hitplane;
   return shade(scene, colors, bfog, hitin.dir, hitout, sphit ? color_type(0.) : mix); //no fog for sphere
#else
   color_basic_t rcolor;

#ifndef RT_SMALL_UI
   color_basic_t planecolor = shade(scene, colors, bfog, hitin.dir, hitplane, mix); //FIXME: bfog

   float_type sphere_plane_dist = hitplane.dist - hitsphere.dist;
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
     float_type aaradius = float_shift(hitsphere.dist, ANTIALIAS-13);
     float_type opacity = hitsphere.borderdist*aaradius;

     float_type da = sphere_plane_dist*aaradius; //FIXME: this shouldn't compresses in y axis when plane is near to the horizontal
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

color_basic_t render_pixel_internal(screen_coord_t x, screen_coord_t y, IN(scene_t) scene, IN(scene_colors_t) colors)
{

  point_and_dir hitin;
  hitin.orig = object_coord_to_float3(scene.camera);
  vec3 camera_dir = {float_type(x), float_type(y), float_type(-1.)};
  hitin.dir = normalize(camera_dir);
#ifdef ANTIALIAS
  hitin.dist = 0.; //start dist
#endif
  color_basic_t c = cast_ray(scene, colors, hitin);


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
    int16_t cy = (int16_t) fixed_shift(y*z, -SCR_CSHIFT-1);
    int16_t cx = (int16_t) fixed_shift(x*z, -SCR_CSHIFT-1) + star_vel(off, cy & 7); //add some movement
    uint16_t pix_hash = hash16(cx ^ hash16(cy)); //FIXME: pixel hash shold be part of the scene
    if((pix_hash & 0xFFC0) == 0) //add star
      c = color_basic_t(fixed_shift(((pix_hash<<2) + frame) & 0x7F, -9) + STAR_INTENSITY);
  }
  return c;
}

color_basic_t render_floor_alt(screen_coord_t x, screen_coord_t y, coord_type px, coord_type py, coord_type pz, color_basic_t c)
{

#warning check why fixed types can't be left uninitialized
  coord_type inv_y = 0.;
  
  uint16_t u;
  uint16_t v;
  bool drawfog = false;

  if (y != 0. && fixed_sign(y) == fixed_sign(py))
  {
    inv_y = fixed_shift(py, -FLOOR_SHIFT)/y;

    coord_type ix = inv_y*x-px;
    coord_type iz = inv_y + pz;

    u = fixed_asshort(ix, FLOOR_SHIFT); //TODO: this is just for testing an internal bit, can access it directly
    v = fixed_asshort(iz, FLOOR_SHIFT);

    hole_t hole_d = plane_has_hole(ix, coord_type(0)-iz);

	if(!(hole_d < 0)) //internal area
    {
      if((((int16_t)inv_y) >> 9) == 0)
      {
        c = ((u ^ v) & 1) ? K_plane_color2 : K_plane_color1;
        if(hole_d < HOLE_BORDER)
          c = K_floor_difusse;
      }
      drawfog = true;
    }
  }
  else
    drawfog = true;

  if(drawfog)
      c = color_select(fixed_abs(y), c, K_fog_color);
  return c;
}

color_basic_t render_pixel_internal_alt(screen_coord_t x, screen_coord_t y, IN(scene_t) scene, IN(scene_colors_t) colors)
{
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
	float FRAME_HEIGHT_FLOAT = FRAME_HEIGHT;
	float CAMERA_FACTOR = -2.*CAMERA_Z/FRAME_HEIGHT_FLOAT;
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
inline pixel_t render_pixel(uint16_t i, uint16_t j, IN(scene_t) scene
#ifdef COLOR_DECOMP
, uint2_t channel, pixel_t pix_in
#endif
)
{
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
  screen_coord_t x = fixed_convert(screen_coord_t, cx, SCR_CSHIFT);
  screen_coord_t y = fixed_convert(screen_coord_t, cy, SCR_CSHIFT);

  pixel_t pix; //ignores alpha

  //TODO: GPU score
  static const uint16_t score_factor = (1<<11)*(FRAME_WIDTH-2*SCORE_MARGINS)/MAXSCORE;
  uint16_t scorebar = score_factor*scene.scorebar >> 11;
  if(i >= SCORE_MARGINS && i < SCORE_MARGINS + scorebar && j > SCORE_MARGINS && j < 2*SCORE_MARGINS)
  {
    pix.r = 0; pix.g = 200; pix.b = 0; //    pix = color(0., 200./255., 0.);
  }
  else
  {
#ifndef COLOR_DECOMP
#ifdef ALTERNATE_UI
	color c = render_pixel_internal_alt(x, y, scene, scene_colors(scene));
	///*if((i ^ j) & (1<<7))*/ if(cx>0) c = render_pixel_internal(x, y, scene, scene_colors(scene)); //uncomment for checkerboard
#else
	color c = render_pixel_internal(x, y, scene, scene_colors(scene));
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
    state.sphere_yvel = fixed_shift(underground, -4);

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
        state.heat = fixed_type(0)-fixed_convert(color_type, state.sphere_xvel, -HEAT_CONSTANT);
#warning implement unary -
#endif

      //TODO: if the plane has a hole can be calculated at rendering time and reused!
      if(plane_has_hole(coord_x, coord_z) > -HOLE_GUARD_MARGIN) // > about -.1 gives margin for the ball size
      {
        state.score = state.score+1;
        if(state.score >= MAXSCORE && state.won!=true)
           state.won = true;
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
      state.camera_z = state.camera_z-fixed_shift(underground, ZOOMOUT_CONSTANT); //lose => fadeout
    }
  }

#ifdef HEAT_CONSTANT
  state.heat = state.heat - (color_type)fixed_shift(state.heat, -4);
#endif
  state.camera_y = state.camera_y + fixed_shift(state.sphere_y - state.camera_y, -5);

  //write all outputs
  state.lose = fixed_is_negative(underground) && (-int16_t(underground) >> 10); //underground < -2048.

#if defined(GAME_MODE) && ALTERNATE_UI > 1
  state.diffuse_color = color_select(state.heat, state.lava_color, state.gold_color);
  state.reflect_color = state.gold_reflect_color*(color_type(1.) - fixed_shift(state.heat,-2));
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
  float_type x = gl_FragCoord.x/u_resolution.x-.5;
  float_type y = (gl_FragCoord.y-u_resolution.y/2.)/u_resolution.x;
  outColor = vec4(render_pixel_internal(x, y, state.scene, colors), 1.);
}
#endif

