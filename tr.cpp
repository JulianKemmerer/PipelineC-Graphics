/*
"SPHERY VS. SHAPES" by Victor Suarez Rovere and Manuel Suarez

Copyright (C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>

HOW TO PLAY:
 Press the left mouse button or the UP KEY to jump.
 Score increases when you're on floor, you win when the bar is full.

*/

//#define GOD_MODE
//#define NON_INTERACTIVE
//#define SOFT_SHADOW 1 //2 for smoother border transition
//#define LEVELS
//#define ALTERNATE_UI 3 //level of graphics detail
//#define RT_SMALL_UI //enable to reduce raytracing complexity (without RT, 31619(comb only) / 20800 max, with RT ~23702)
//#define DITHER
//#define ANTIALIAS

#include "tr.h"

typedef coord_type hole_t; //TODO: move
#define get_scene() state.scene


#define BLINKY
#define SCORE_STEP 1


full_state_t state;

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
  hole_t ax = fixed_abs(fracx);
  hole_t az = fixed_abs(fracz);
  ret = (ax + az) - hole_t(RHOMBUS_SIZE); 

  }
  return ret;
}


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





//raytracer math inspired on tinyraytracer https://github.com/ssloy/tinyraytracer

struct point_and_dir
{
  vec3 orig, dir;
};

struct hit_out
{
  float dist, borderdist;
  point_and_dir hit;
};

//#warning: this seems to add cells to synth, FIXME: inline and define 'hit_out hitout;' at top
hit_out sphere_hit(bool hit, IN(vec3) center, IN(point_and_dir) hitin, float t, float diff)
{
  hit_out hitout;
  hitout.dist = hit ? t : RAY_NOINT;
  //if(hit) //always calculated to save hardware muxes
  {
    hitout.hit.orig = hitin.orig + hitin.dir*hitout.dist;
    hitout.hit.dir = normalize(hitout.hit.orig - center);
  }
  hitout.borderdist = diff;
  return hitout;
}

hit_out ray_sphere_intersect(IN(vec3) center, IN(point_and_dir) hitin)
{
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


  return sphere_hit(!nothit, center, hitin, t, diff);
}

hit_out ray_plane_intersect(IN(plane_t) plane, IN(point_and_dir) hitin)
{
  hit_out hitout;
  hitout.dist = RAY_NOINT;
  hitout.borderdist = 0.;
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
       hole_margin = plane_has_hole(hole_t(o.x), hole_t(o.z));
       if(!fixed_is_negative(hole_margin))
       {
          hitout.dist = d;
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
  IN(scene_t) scene = get_scene();
  IN(scene_colors_t) colors = scene_colors(scene);
  IN(sphere_t) s = scene.sphere;
  uint16_t frame = scene.frame;

  uint8_t tick  = frame>>1;
  if((tick & 0x3F) != 1 || ((hash16(tick)>>13) & 1) != 0)
  {
    //eyeballs
    float dy = (hit.hit.dir.y-float_shift(float(s.center.y),-6)*1.5); //FIXME: optimize constants 1.5, 1.25
    float dx = float_shift(float_abs(hit.hit.dir.z-hit.hit.dir.x)-.6, -1)*1.25;
    float d = dx*dx+dy*dy;
    coord_type mindist = fixed_shr(s.heat, 4) + .25*.25;
    if(coord_type(d) < mindist)
      rcolor = d < .15*.15 ? color_basic_t(0.) : color_basic_t(1.2);

  }
  return rcolor;
}



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
 color_basic_t color2 = colors.plane_color2;

  rcolor = ((ix ^ iz) & 1) != 0 ? colors.plane_color1 : color2;

  if(hit.borderdist < HOLE_BORDER)
  {
    rcolor = colors.plane.diffuse_color;
  }

  return rcolor;
}

color_basic_t background_color(float dir_y)
{
  color_type y = is_negative(dir_y) ? color_type(0.) : color_type(dir_y*dir_y);
  return color_basic_t(y);
}

color_type light_intensity(IN(vec3) hit)
{
  //light_intensity optimized for fixe points
  coord_type lz = (coord_type(hit.z)-LIGHT_Z)*coord_type(1./LIGHT_Y);
  coord_type lx = coord_type(hit.x)*coord_type(1./LIGHT_Y);
  coord_type dl = lx*lx + 1. + lz*lz;
  return color_type(inversesqrt(float(dl))); //FIXME: implement RSQRT for fixed points
}

color_basic_t cast_ray_nested(IN(point_and_dir) hitin)
{
  IN(scene_t) scene = get_scene();
  IN(scene_colors_t) colors = scene_colors(scene);

  material_t hit_material;
  hit_material = colors.sphere;//this is what's reflected on the floor
  hit_out hitout = ray_sphere_intersect(object_coord_to_float3(scene.sphere.center), hitin);

  hit_out hitplane = ray_plane_intersect(scene.plane, hitin);

  if (hitplane.dist < hitout.dist)
  {
    //this controls what's reflected on the sphere
    hitout = hitplane;
    hit_material = colors.plane;
    hit_material.diffuse_color = plane_effect(hitplane);
  }
  

  color_basic_t rcolor = color_basic_t(0.);
//#warning solve need to initialize
  if (hitout.dist >= float_shift(1., DIST_SHIFT))
    rcolor = background_color(hitin.dir.y); //has other direction
  else
    rcolor = hit_material.diffuse_color*light_intensity(hitout.hit.orig);
  return rcolor;
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
    color_basic_t reflect_color = cast_ray_nested(hitreflect);
    color_type li = light_intensity(hit.hit.orig);
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
  
  float ys = float_abs(float_shift(hitin.dir.y, 1));
  bool has_star = is_star(hitin.dir.x, hitin.dir.y);
  color_basic_t sky = has_star ? color_basic_t(STAR_INTENSITY) : background_color(hitin.dir.y);
  color_type mix = ys<1. ? color_type(1)-color_type(ys): color_type(0);
  color_basic_t bfog = color_select(mix, colors.fog, sky);

  material_t hit_material;
  hit_out hitsphere = ray_sphere_intersect(object_coord_to_float3(scene.sphere.center), hitin);
  hit_material = colors.sphere; //FIXME: needed?
  if (!is_negative(hitsphere.borderdist))
  {
    hit_material.diffuse_color = sphere_effect(hitsphere, hit_material);
  }
  hit_out hitplane = ray_plane_intersect(scene.plane, hitin);
  bool planehit =  hitplane.dist < hitsphere.dist;
  if (planehit)
  {
    hit_material = colors.plane;  //FIXME: needed?
    hit_material.diffuse_color = plane_effect(hitplane);
  }


   hit_out hitout = planehit ? hitplane : hitsphere;
   color_basic_t rcolor = shade(bfog, hitin.dir, hitout, hit_material, planehit ? mix : color_type(0.)); //no fog for sphere
   return rcolor;
}


color_basic_t render_pixel_internal(screen_coord_t x, screen_coord_t y)
{
  IN(scene_t) scene = get_scene();
  IN(scene_colors_t) colors = scene_colors(scene);

  point_and_dir hitin;
  hitin.orig = object_coord_to_float3(scene.camera);
  vec3 camera_dir = {float(x), float(y), float(-1.)};
  hitin.dir = normalize(camera_dir);
  return cast_ray(hitin);
}




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

    state.plane_y    = coord_type(state.scene.plane.center.y);
    state.sphere_x   = coord_type(state.scene.sphere.center.x);
    state.sphere_z   = coord_type(state.scene.sphere.center.z);
    state.gold_color = gold.diffuse_color;
    state.gold_reflect_color = gold.reflect_color;
    state.lava_color = K_lava_color;

    state.sphere_y = coord_type(state.scene.sphere.center.y);
    state.heat     = state.scene.sphere.heat;
    state.camera_y = coord_type(state.scene.camera.y);
    state.camera_z = coord_type(state.scene.camera.z);
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
      state.heat = state.heat + HEAT_CONSTANT;

      //TODO: if the plane has a hole can be calculated at rendering time and reused!
      if(plane_has_hole(coord_x, coord_z) > -HOLE_GUARD_MARGIN) // > about -.1 gives margin for the ball size
      {
        state.score = state.score+SCORE_STEP;
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
      state.camera_z = state.camera_z-fixed_shr(underground, ZOOMOUT_CONSTANT); //lose => fadeout
    }
  }
  state.camera_y = state.camera_y + fixed_shr(state.sphere_y - state.camera_y, 5);

  state.heat = state.heat - color_type(fixed_shr(state.heat, 4)); //cools down

  //write all outputs
  state.lose = fixed_is_negative(underground) && ((-int16_t(underground) >> 10) != 0); //underground < -2048.

  state.diffuse_color = color_select(state.heat, state.lava_color, state.gold_color);
  state.reflect_color = state.gold_reflect_color*(color_type(1.) - fixed_shr(state.heat, 2));

  state.scorebar = state.won ? 0 : state.score;


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
  state.scene.sphere.yvel = state.sphere_yvel;
  state.scene.scorebar = state.scorebar; //FIXME: move to state update function to make this function wires-only
  state.scene.frame = state.scene.frame + 1;
  
  return state;
}

inline pixel_t render_pixel(uint16_t i, uint16_t j
)
{
  IN(scene_t) scene = get_scene();

  int16_t cx = i << 1;
  cx = cx - (FRAME_WIDTH + 1);
  int16_t cy = j << 1;
  cy = (FRAME_HEIGHT + 1) - cy;
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
	color c = render_pixel_internal(x, y);
    uint16_t r = (uint16_t)fixed_asshort(c.r, 8);
    uint16_t g = (uint16_t)fixed_asshort(c.g, 8);
    uint16_t b = (uint16_t)fixed_asshort(c.b, 8);
    pix.r = (r >= 256) ? uint8_t(255):uint8_t(r);
    pix.g = (g >= 256) ? uint8_t(255):uint8_t(g);
    pix.b = (b >= 256) ? uint8_t(255):uint8_t(b);
  }

  return pix;
}


