/*
"SPHERY VS. SHAPES" by Victor Suarez Rovere and Manuel Suarez Impellizzeri

Copyright (C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>

HOW TO PLAY:
 Press the left mouse button or the UP KEY to jump.
 Score increases when you're on floor, you win when the bar is full.

Build & run:
$ clang++ -O3 -fopenmp=libiomp5 -ffast-math `sdl2-config --cflags --libs` simulator_main.cpp -o tr && ./tr

For GPU (software renderer):
$ LIBGL_ALWAYS_SOFTWARE=1 ./glslViewer -I../../../include/ rt.frag

*/
#define ALTERNATE_UI

#define GAME_MODE

#ifdef GAME_MODE
#define HEAT_CONSTANT 1
#define STAR_INTENSITY .5
#define HOLE_BORDER .1
#else
#define STAR_INTENSITY 1.5
#endif

#ifdef _DEBUG
#define SPHERE_MAXRECURSIVITY 2
#define PLANE_MAXRECURSIVITY 1
#else
#define SPHERE_MAXRECURSIVITY 2
#define PLANE_MAXRECURSIVITY 2
#endif


#ifdef _DEBUG
#undef ANTIALIAS
#else
//#define ANTIALIAS (6) //6 ok, more is sharper
#endif

#ifdef ANTIALIAS
#define SPHERE_MOTIONBLUR
#endif

#define MAXSCORE 15000

#define RAY_NOINT BIG_FLOAT //arbitraty value, maybe MAXFLOAT

//constants
#define ambient_intensity  .1
#define light_heigth 16.
#define light_z (-10.)
#define DIST_SHIFT (9) //for fog calculations
#define SPHERE_RADIUS 4.5
#define SPHERE_Z (-32.)
#define SPHERE_X (-20.)
#define CAMERA_Z 30. //start pos
#define SCORE_MARGINS 10
#define FLOOR_SHIFT (-3)
#define FLOOR_X (-110.)
#define FLOOR_Y 0.
#define FLOOR_Z 0.

#ifdef GAME_MODE
//#define CIRCLE_SIZE .3
#define RHOMBUS_SIZE .4
#define SQUARE_SIZE .3
#define GRAVITY_CONSTANT .1//.1
#define JUMP_CONSTANT 2.
#define ZOOMOUT_CONSTANT -4 //.075
#define XVEL_CONSTANT 0.03
#define XVEL_DEFAULT 0.5
#define HOLE_GUARD_MARGIN .05
#else
#define SQUARE_SIZE .4
#define GRAVITY_CONSTANT .05
#define JUMP_CONSTANT 1.6
#define ZOOMOUT_CONSTANT -5//.045	
#define XVEL_CONSTANT 0.015
#define XVEL_DEFAULT 0.23
#define HOLE_GUARD_MARGIN .05
#endif

#define GRAVITY_CONSTANT_LIGHT .03

#define EPS 1.e-3

#define PIPELINEC_SUGAR
#warning PIPELINEC_SUGAR shouldn't be a need

struct material_t {
    color diffuse_color;
    color reflect_color;
};

#ifndef SHADER
//#define COLOR_DECOMP
#endif

#ifdef COLOR_DECOMP
#define color_basic_t color_type
struct render_material_t {
    color_basic_t diffuse_color;
    color_basic_t reflect_color;
};
#else
#define color_basic_t color
#define render_material_t material_t
#endif

struct sphere_t {
    object_coord_t center;
    material_t material;
    color_type heat;
    float_type yvel;
};

struct plane_t {
    object_coord_t center;
    material_t material;
    color color1, color2;
};

struct scene_t
{
  sphere_t sphere;
  plane_t plane;
  object_coord_t camera;
  uint16_t frame;
  uint16_t scorebar;
  color fog;
};

struct scene_colors_t
{
  render_material_t sphere, plane;
  color_basic_t plane_color1, plane_color2;
  color_basic_t fog; //FIXME: maybe background
};

struct hit_in
{
  vec3 orig, dir;
#ifdef ANTIALIAS
  float_type dist;
#endif
};

struct hit_out
{
  float_type dist, borderdist;
  vec3 N, hit;
  render_material_t material;
#ifdef ANTIALIAS
  float_type accdist;
#endif
};


struct game_state_in
{
    coord_type plane_y;
    coord_type sphere_x;
    coord_type sphere_z;
    color gold_color, gold_reflect_color, lava_color;
    bool press;
};

struct game_state_t
{
    coord_type sphere_y;
    color_type heat;
    coord_type camera_y;
    coord_type camera_z;
    coord_type plane_x;
    coord_type sphere_xvel;
    coord_type sphere_yvel;
    uint16_t score;
    bool won;
};

struct game_state_out
{
    color diffuse_color, reflect_color;
    uint16_t scorebar;
    bool lose;
};

struct game_state_out_t
{
  game_state_out stout;
  game_state_t stinout;
};

struct full_state_t
{
  scene_t scene;
  game_state_in stin;
  game_state_t stinout;
};

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

static const color K_gold_color = {243./256., 201./256., 104./256.};
static const color K_lava_color = {255./256.*2.0, 70./256.*1.5, 32./256.*1.5};
static const color K_plane_color1 = {.8, .8, .8};
static const color K_plane_color2 = {.1, .0, .0};
static const color K_floor_difusse = {1.,1.,1.};
static const color K_floor_reflect = {.5, .5, .5};
#ifdef GAME_MODE
static const color K_fog_color = {.01,.01,.1};
#else
static const color K_fog_color = {.02,.02,.12};
#endif
static const object_coord_t K_plane_center_start = {FLOOR_X, FLOOR_Y, FLOOR_Z}; //FIXME: test if works when != 0
static const object_coord_t K_sphere_center_start = {-20., 40., SPHERE_Z};
static const object_coord_t K_camera_pos_start = {0.,30.,CAMERA_Z};
static const vec3 VECTOR_NURMAL_UPWARDS = {0.,1.,0.};



#ifndef ALTERNATE_UI

#ifdef ANTIALIAS
float_type calc_accdist(IN(hit_in) hitin, IN(hit_out) hitout)
{
  float_type din = hitin.dist + hitout.dist;
  float_type d = float_shift(din, -(ANTIALIAS+6));
  return d;
}
#endif

//raytracer math inspired on tinyraytracer https://github.com/ssloy/tinyraytracer


hit_out ray_sphere_intersect(IN(sphere_t) s, IN(hit_in) hitin)
{

 hit_out hitout;
 vec3 ro = hitin.orig;
 vec3 rd = hitin.dir;
 vec3 sp = vec3convert(s.center);

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
            hitout.hit = hitin.orig + hitin.dir*hitout.dist;
	    hitout.N = normalize(hitout.hit - sp);
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

/*
//sphere intersection without motion blur
hit_out ray_sphere_intersect_(IN(sphere_t) s, IN(hit_in) hitin)
{
  hit_out hitout;
  hitout.dist = RAY_NOINT;
  vec3 s_center = vec3convert(s.center);

  vec3 L = s_center - hitin.orig;

  float_type tca = dot(L, hitin.dir);

  float_type d2 = dot(L, L) - tca*tca;
  float_type diff = float_type(SPHERE_RADIUS*SPHERE_RADIUS) - d2;
  if (!is_negative(diff))
  {
    float_type thc = sqrt(diff);
    float_type t0 = tca - thc;
    //float_type t1 = tca + thc;

    if (is_negative(t0))
      diff = -diff;
    else
    {
      hitout.dist = t0;
#ifdef ANTIALIAS
      hitout.accdist = calc_accdist(hitin, hitout);
#endif
      hitout.hit = hitin.orig + hitin.dir*hitout.dist;
      hitout.N = normalize(hitout.hit - s_center);

      //diff *= inversesqrt(1+float_abs(hitout.N.y)*sy); //antialias dependent on y
    }
  }


  hitout.borderdist = diff;
  return hitout;
}
*/


hit_out ray_plane_intersect(IN(plane_t) plane, IN(hit_in) hitin)
{
  hit_out hitout;
  hitout.dist = RAY_NOINT;
  hitout.borderdist = /*-EPS*/0.;
  vec3 plane_center = vec3convert(plane.center);
  float_type d;
  vec3 pt;
  hole_t hole_margin = 0; //FIXME: parser needs initialization
  vec3 o;
  if (hitin.dir.y != 0.) // avoid division by zero
  //if (float_abs(hitin.dir.y) > EPS) // avoid division by zero
  {
    d = -(hitin.orig.y-plane_center.y)/hitin.dir.y;
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
          hitout.hit = pt;
          vec3 N = VECTOR_NURMAL_UPWARDS;
          hitout.N = N; //points upwards
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
  vec3 plane_center = vec3convert(plane.center);

  float_type hitx = hit.hit.x - plane_center.x;
  float_type hitz = hit.hit.z - plane_center.z;
  float_type ox = float_shift(hitx, FLOOR_SHIFT); //FIXME: same coordinates in this game
  float_type oz = float_shift(hitz, FLOOR_SHIFT);
  
  int16_t ix = round16(ox);
  int16_t iz = round16(oz);

  bool cx = (ix & 1) != 0;
  bool cz = (iz & 1) != 0;
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

  rcolor = (cx == cz) ? colors.plane_color1 : color2;
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
  float_type lz = hit.z-light_z;
  float_type dl = hit.x*hit.x + light_heigth*light_heigth + lz*lz;
  return color_type(float_max(float_type(0.), inversesqrt(dl)*light_heigth)) + ambient_intensity;
}

hit_out hit_sphere(uint32_t frame, IN(scene_colors_t) colors, IN(sphere_t) sphere, IN(hit_in) hitin)
{
  hit_out hitout;
  hitout = ray_sphere_intersect(sphere, hitin);
  hitout.material = colors.sphere;

  if (!is_negative(hitout.borderdist))
    hitout.material.diffuse_color = sphere_effect(frame, colors, sphere, hitout);
  return hitout;
}



hit_out hit_plane(uint32_t frame, IN(scene_colors_t) colors, IN(plane_t) plane, IN(hit_in) hitin)
{
  hit_out hitout;
  hitout = ray_plane_intersect(plane, hitin);
  hitout.material = colors.plane;

  if (!is_negative(hitout.borderdist))
    hitout.material.diffuse_color = plane_effect(frame, colors, plane, hitout);

  return hitout;
}

color_basic_t cast_ray0(IN(scene_t) scene, IN(scene_colors_t) colors, IN(hit_in) hitin)
{
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
    rcolor = hitout.material.diffuse_color*light_intensity(hitout.hit);

  return rcolor;
}

color_basic_t shade(IN(scene_t) scene, IN(scene_colors_t) colors, IN(color_basic_t) background, vec3 dir, IN(hit_out) hit, color_type minfog)
{
  color_basic_t rcolor = background;

  float_type fogmix = float_shift(hit.dist, -DIST_SHIFT); //no need to accumulated dist
  if (fogmix < 1.)
  {
    hit_in hitreflect;
    hitreflect.orig = hit.hit;
    hitreflect.dir = reflect(dir, hit.N);
#ifdef ANTIALIAS
    hitreflect.dist = hit.dist; //to accumulate distance
#endif
    color_basic_t reflect_color = cast_ray0(scene, colors, hitreflect);
    color_basic_t diffuse_color = hit.material.diffuse_color * light_intensity(hit.hit);
    color_basic_t comb_color = diffuse_color + reflect_color*hit.material.reflect_color;
    rcolor = color_select(color_max(color_type(fogmix), minfog), colors.fog, comb_color);
  }

  return rcolor;
}

bool is_star(float_type x, float_type y)
{
  return ((hashf(x)>>2) & (hashf(y)>>2)) > 0x3E00;
}

color_basic_t cast_ray(IN(scene_t) scene, IN(scene_colors_t) colors, IN(hit_in) hitin)
{
   bool has_star = is_star(hitin.dir.x, hitin.dir.y);
   color_basic_t sky = has_star ? color_basic_t(STAR_INTENSITY) : background_color(hitin.dir.y);
   float_type ys = float_abs(float_shift(hitin.dir.y, 1));
   color_type mix = ys<1. ? color_type(color_type(1.)-color_type(ys)): color_type(0.);
   color_basic_t bfog = color_select(mix, colors.fog, sky);

   hit_out hitsphere = hit_sphere(scene.frame, colors, scene.sphere, hitin);
   hit_out hitplane = hit_plane(scene.frame, colors, scene.plane, hitin);
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

   color_basic_t planecolor = shade(scene, colors, bfog, hitin.dir, hitplane, mix); //FIXME: bfog

   float_type sphere_plane_dist = hitplane.dist - hitsphere.dist;
   if(is_negative(sphere_plane_dist) /*&& hitplane.dist < hitsphere.dist*/)
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
     rcolor = is_negative(hitplane.borderdist) ? background : planecolor; /*hitplane.dist == RAY_NOINT*/
#endif
   }
   else
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

  hit_in hitin;
  hitin.orig = vec3convert(scene.camera);
  vec3 camera_dir = {float_type(x), float_type(y), float_type(-1.)};
  hitin.dir = normalize(camera_dir);
#ifdef ANTIALIAS
  hitin.dist = 0.; //start dist
#endif
  color_basic_t c = cast_ray(scene, colors, hitin);


  return c;
}

#endif

#ifdef ALTERNATE_UI

color_basic_t background_color2(fixed_type dir_y)
{
  return color_basic_t(dir_y < 0 ? color_type(0.) : color_type(dir_y*dir_y));
}

color_basic_t render_floor_alt(screen_coord_t x, screen_coord_t y, coord_type px, coord_type py, coord_type pz, color_basic_t c)
{

#warning check why fixed types can't be left uninitialized
  coord_type inv_y = 0.;
  
  uint16_t u;
  uint16_t v;
  bool drawfog = false;

#warning implement equal operator
  if ((y < 0. && py < 0.) || !(y < 0. || py < 0.))
  {
    inv_y = fixed_shift(py, -FLOOR_SHIFT)/y;

    coord_type ix = inv_y*x-px;
    coord_type iz = inv_y + pz;

    u = fixed_asshort(ix, FLOOR_SHIFT); //TODO: this is just for testing an internal bit, can access it directly
    v = fixed_asshort(iz, FLOOR_SHIFT);

    hole_t hole_d = plane_has_hole(ix, coord_type(0)-iz);

	if(!(hole_d < 0)) //internal area
    {
      c = ((u ^ v) & 1) ? K_plane_color2 : K_plane_color1;
      if(hole_d < HOLE_BORDER)
      {
		c = K_floor_difusse;
      }
      drawfog = true;
    }
  }
  else
    drawfog = true;

  if(drawfog)
  {
      c = color_select(fixed_abs(y), c, K_fog_color);
  }
  return c;
}

color_basic_t render_pixel_internal_alt(screen_coord_t x, screen_coord_t y, IN(scene_t) scene, IN(scene_colors_t) colors)
{
color_basic_t c = background_color2((y-.5)*fixed_abs(x*x-1.));
  //if(is_star(float_type(x), float_type(y)))
  // c = color_basic_t(STAR_INTENSITY);

    bool drawfloor = true;
	//draw sphere
	static const float SPHERE_R = (-.707)*SPHERE_Z/SPHERE_RADIUS; //FIXME: check if code generator parenthesizes it
    coord_type dz = coord_type(scene.camera.z-SPHERE_Z);
	coord_type dx = coord_type(x*dz - (scene.sphere.center.x/*-scene.camera.x*/));
	coord_type dy = coord_type(y*dz - (scene.sphere.center.y-scene.camera.y));
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
  return c;
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
  static const shift_t cshift = -CLOG2(FRAME_HEIGHT);
  screen_coord_t x = fixed_convert(screen_coord_t, cx, cshift);
  screen_coord_t y = fixed_convert(screen_coord_t, cy, cshift);

  pixel_t pix; //ignores alpha

  //TODO: GPU score
  uint16_t scorebar = scene.scorebar*(FRAME_WIDTH-2*SCORE_MARGINS)/MAXSCORE;
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

#warning parameter needed just to avoid errors on code generator
full_state_t reset_state0(bool x)
{

    material_t gold;
    gold.diffuse_color = K_gold_color*(1.5*.15);
    gold.reflect_color = K_gold_color*(1.5*(1.-.15));
    material_t floor_material;
    floor_material.diffuse_color = K_floor_difusse;
    floor_material.reflect_color = K_floor_reflect;

    scene_t scene;
    scene.plane.center = K_plane_center_start;
    scene.plane.material = floor_material;
    scene.plane.color1 = K_plane_color1;
    scene.plane.color2 = K_plane_color2;

    scene.sphere.center = K_sphere_center_start;
    scene.sphere.material = gold;
    scene.sphere.heat = 0.;
    scene.camera = K_camera_pos_start;
    scene.frame = 0;
    scene.scorebar = 0;
    scene.fog = K_fog_color;

    game_state_in stin;
    stin.plane_y    = (coord_type) scene.plane.center.y;
    stin.sphere_x   = (coord_type) scene.sphere.center.x;
    stin.sphere_z   = (coord_type) scene.sphere.center.z;
    stin.gold_color = gold.diffuse_color;
    stin.gold_reflect_color = gold.reflect_color;
    stin.lava_color = K_lava_color;
    stin.press = false;

    game_state_t stinout;
    stinout.sphere_y = (coord_type) scene.sphere.center.y;
    stinout.heat     = scene.sphere.heat;
    stinout.camera_y = (coord_type) scene.camera.y;
    stinout.camera_z = (coord_type) scene.camera.z;
    stinout.plane_x  = coord_type(FLOOR_X);
    stinout.sphere_xvel = 0.;
    stinout.sphere_yvel = 0.;
    stinout.won = false;
    stinout.score = 0;


    full_state_t f; //FIXME do not copy variables, use full scene variables
    f.scene = scene;
    f.stin = stin;
    f.stinout = stinout;

    return f;
}

full_state_t reset_state() { return reset_state0(true); }

game_state_t restart_state(game_state_t st)
{
  game_state_t n;
  full_state_t r = reset_state0(false); //FIXME: don't go to zero but to the start of level 
  n = r.stinout;
  n.score = st.score - (st.score >> 4); //% lose
  return n;
}

game_state_out_t next_state_func(IN(game_state_in) stin, IN(game_state_t) stinout)
{
#ifdef _DEBUG
  perf_clear();
#endif
  game_state_out_t n;
  //WIRE_READ(game_state_t, n.stinout, stinout);
  n.stinout = stinout;

  n.stinout.plane_x = n.stinout.plane_x + n.stinout.sphere_xvel;

  n.stinout.sphere_yvel = n.stinout.sphere_yvel + GRAVITY_CONSTANT;
  n.stinout.sphere_y = n.stinout.sphere_y - n.stinout.sphere_yvel;
   
  coord_type underground = (n.stinout.sphere_y - SPHERE_RADIUS) - stin.plane_y;
  if(fixed_is_negative(underground))
  {
    n.stinout.sphere_xvel = n.stinout.sphere_xvel - XVEL_CONSTANT;
    coord_type coord_x = stin.sphere_x - n.stinout.plane_x;
    coord_type coord_z = stin.sphere_z - n.stinout.plane_x; //z=x

    bool half_up = n.stinout.sphere_y > stin.plane_y;
    if(half_up)
    {
#ifdef HEAT_CONSTANT
      if(n.stinout.sphere_yvel>0.)
        n.stinout.heat = fixed_type(0)-fixed_convert(color_type, n.stinout.sphere_xvel, -HEAT_CONSTANT);
#warning implement unary -
#endif

      if(plane_has_hole(coord_x, coord_z) > -HOLE_GUARD_MARGIN) // > about -.1 gives margin for the ball size
      {
        n.stinout.score = n.stinout.score+1;
        if(n.stinout.score >= MAXSCORE && !n.stinout.won)
           n.stinout.won = true;
        if(stin.press)
        {
          n.stinout.sphere_yvel = -JUMP_CONSTANT;
          n.stinout.sphere_xvel = -XVEL_DEFAULT;
        }
        else
          n.stinout.sphere_yvel = -GRAVITY_CONSTANT_LIGHT;
      }
    }
    else
    {
      n.stinout.camera_z = n.stinout.camera_z-fixed_shift(underground, ZOOMOUT_CONSTANT); //lose => fadeout
    }
  }

#ifdef HEAT_CONSTANT
  n.stinout.heat = n.stinout.heat - (color_type)fixed_shift(n.stinout.heat, -4);
#endif
  n.stinout.camera_y = n.stinout.camera_y + fixed_shift(n.stinout.sphere_y - n.stinout.camera_y, -5);

  //write all outputs
  n.stout.lose = fixed_is_negative(underground) && (-int16_t(underground) & (0x0000FC00))!=0; //underground < -2000.

#ifdef GAME_MODE
  n.stout.diffuse_color = color_select(n.stinout.heat, stin.lava_color, stin.gold_color);
  n.stout.reflect_color = stin.gold_reflect_color*(color_type(1.) - fixed_shift(n.stinout.heat,-2));
#else
  n.stout.diffuse_color = stin.gold_color;
  n.stout.reflect_color = stin.gold_reflect_color;
#endif

  n.stout.scorebar = n.stinout.won ? 0 : n.stinout.score;

#ifdef _DEBUG
  perf_gameplay_dump();
#endif

  if(n.stout.lose)
     n.stinout = restart_state(stinout); //restart logic, FIXME: add the partial restart!

  return n;
}


scene_t update_scene(IN(scene_t) scenein, IN(game_state_out_t) outs)
{
  scene_t scene = scenein;
  //update results
  scene.sphere.center.y = outs.stinout.sphere_y;
  scene.sphere.heat = outs.stinout.heat;
  scene.camera.y = outs.stinout.camera_y;
  scene.camera.z = outs.stinout.camera_z;
  scene.plane.center.x = outs.stinout.plane_x;
  scene.plane.center.z = outs.stinout.plane_x;
  scene.sphere.material.diffuse_color = outs.stout.diffuse_color;
  scene.sphere.material.reflect_color = outs.stout.reflect_color;
  scene.sphere.yvel = (float_type) outs.stinout.sphere_yvel;
  scene.scorebar = outs.stout.scorebar;
  scene.frame = scene.frame + 1;
  return scene;
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

/*
#ifdef __PIPELINEC__
#ifndef COLOR_DECOMP
MAIN_MHZ(app, PIXEL_CLK_MHZ)
#else
MAIN_MHZ(app, PIXEL_CLK_MHZ*3)
#endif

#warning check correct implementation
void app()
{
  static vga_signals_t vga_signals;
  
  static full_state_t state;
  static bool reset = 1;
  volatile static game_state_t stinout;

  if(reset)
  {
    state = reset_state();
    WIRE_WRITE(game_state_t, state.stinout, stinout);
    reset = 0;
  }

  if(vga_signals.start_of_frame)
  {
    state.stin.press = buttons_pressed() & 1;
    game_state_out_t outs = next_state_func(state.stin, stinout);
    WIRE_WRITE(game_state_t, outs.stinout, stinout);
    state.scene = update_scene(state.scene, outs);
  }  

#ifndef COLOR_DECOMP
  vga_signals = vga_timing();
  pixel_t color = render_pixel(vga_signals.pos.x, vga_signals.pos.y, state.scene);
  vga_register_outputs(vga_signals, color);
#else
  static uint2_t ch = 0;
  static pixel_t color;
  if(ch == 0)
    vga_signals = vga_timing();

  color = render_pixel(vga_signals.pos.x, vga_signals.pos.y, state.scene, ch, color);
  ++ch;
  if(ch == 3)
  {
    ch = 0;
    vga_register_outputs(vga_signals, color);
  }
#endif
}
#endif
*/

