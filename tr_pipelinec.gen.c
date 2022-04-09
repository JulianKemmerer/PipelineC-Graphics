





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

typedef struct material_t { color diffuse_color; color reflect_color; } material_t;
typedef struct sphere_t { object_coord_t center; material_t material; color_type heat; object_coord_t yvel; } sphere_t;
typedef struct plane_t { object_coord_t center; material_t material; color color1; color color2; } plane_t;
typedef struct scene_t { sphere_t sphere; plane_t plane; object_coord_t camera; color fog; uint16_t frame; uint16_t scorebar; } scene_t;
typedef struct scene_colors_t { material_t sphere; material_t plane; color plane_color1; color plane_color2; color fog; } scene_colors_t;
typedef struct full_state_t { scene_t scene; color gold_color; color gold_reflect_color; color lava_color; coord_type plane_y; coord_type sphere_x; coord_type sphere_z; coord_type sphere_y; color_type heat; coord_type camera_y; coord_type camera_z; coord_type plane_x; coord_type sphere_xvel; coord_type sphere_yvel; color diffuse_color; color reflect_color; uint16_t scorebar; uint16_t score; bool won; bool lose; } full_state_t;
// Scene helper func declared before use in funcs below but after the scene_t struct definition
#include "get_scene.h"
#define K_gold_color	(fixed3_make(fixed_make_from_double(((double)1.2 * (double).15) * (double)243. / (double)256.), fixed_make_from_double(((double)1.2 * (double).15) * (double)201. / (double)256.), fixed_make_from_double(((double)1.2 * (double).15) * (double)104. / (double)256.)))
#define K_gold_reflect_color	(fixed3_make(fixed_make_from_double((double)1.5 * ((double)1. - (double).15) * (double)243. / (double)256.), fixed_make_from_double((double)1.5 * ((double)1. - (double).15) * (double)201. / (double)256.), fixed_make_from_double((double)1.5 * ((double)1. - (double).15) * (double)104. / (double)256.)))
#define K_lava_color	(fixed3_make(fixed_make_from_double((double)255. / (double)256. * (double)2.0), fixed_make_from_double((double)70. / (double)256. * (double)1.5), fixed_make_from_double((double)32. / (double)256. * (double)1.5)))
#define K_plane_color1	(fixed3_make(fixed_make_from_double((double).8), fixed_make_from_double((double).8), fixed_make_from_double((double).8)))
#define K_plane_color2	(fixed3_make(fixed_make_from_double((double).1), fixed_make_from_double((double).0), fixed_make_from_double((double).0)))
#define K_floor_difusse	(fixed3_make(fixed_make_from_double((double)1.), fixed_make_from_double((double)1.), fixed_make_from_double((double)1.)))
#define K_floor_reflect	(fixed3_make(fixed_make_from_double((double).25), fixed_make_from_double((double).25), fixed_make_from_double((double).25)))
#define K_fog_color	(fixed3_make(fixed_make_from_double((double).01), fixed_make_from_double((double).01), fixed_make_from_double((double).1)))
#define K_plane_center_start	(fixed3_make(fixed_make_from_double(((double)-110.)), fixed_make_from_double((double)0.), fixed_make_from_double((double)0.)))
#define K_sphere_center_start	(fixed3_make(fixed_make_from_double((double)-20.), fixed_make_from_double((double)40.), fixed_make_from_double(((double)-32.))))
#define K_camera_pos_start	(fixed3_make(fixed_make_from_double((double)0.), fixed_make_from_double((double)30.), fixed_make_from_double((double)30.)))
#define VECTOR_NURMAL_UPWARDS	{(double)0., (double)1., (double)0.}
#define hole_t coord_type
hole_t plane_has_hole(hole_t x, hole_t z)
{
  hole_t ret = fixed_make_from_double((double)1.);
  x = fixed_shr(x, 4);
  z = fixed_shr(z, 5);
  int16_t ix = round16(x);
  int16_t iz = round16(z);
  hole_t fracx = fixed_sub(fixed_make_from_short(ix), x);
  hole_t fracz = fixed_sub(fixed_make_from_short(iz), z);
  uint16_t hx = hash16(ix) >> 5;
  uint16_t hz = hash16(iz) >> 5;
  
  if((hx ^ hz) < ix + 600) {
    
    if((((ix & 0x240) == 0x240)!=0) | ((((ix & ~0x7FF) != 0))!=0)) ret = fixed_make_from_double((double)0.);
    else {
      bool fx = (hx & 1) != 0;
      bool fz = ((hz >> 1) & 1) != 0;
      bool hard = (ix & 0x200) != 0;
      {
        hole_t ax = fixed_abs(fracx);
        hole_t az = fixed_abs(fracz);
        
        if(hard) ret = fixed_sub(fixed_max(ax, az), fixed_make_from_double((double).3));
        else ret = fixed_sub((fixed_add(ax, az)), fixed_make_from_double((double).4));
      }
    }
  }
  return ret;
}

scene_colors_t scene_colors(scene_t scene)
{
  scene_colors_t r;
  r.sphere = scene.sphere.material;
  r.plane = scene.plane.material;
  r.plane_color1 = scene.plane.color1;
  r.plane_color2 = scene.plane.color2;
  r.fog = scene.fog;
  return r;
}

typedef struct point_and_dir { vec3 orig; vec3 dir; } point_and_dir;
typedef struct hit_out { float_type dist; float_type borderdist; point_and_dir hit; } hit_out;
hit_out sphere_hit(bool hit, vec3 center, point_and_dir hitin, float t, float diff)
{
  hit_out hitout;
  hitout.dist = hit ? t : BIG_FLOAT;
  {
    hitout.hit.orig = float3_add(hitin.orig, float3_mul_float(hitin.dir, hitout.dist));
    hitout.hit.dir = normalize(float3_sub(hitout.hit.orig, center));
  }
  hitout.borderdist = diff;
  return hitout;
}

hit_out ray_sphere_intersect(vec3 center, point_and_dir hitin)
{
  float diff;
  float t = BIG_FLOAT;
  bool nothit;
  vec3 rc = float3_sub(hitin.orig, center);
  float b = dot(rc, hitin.dir);
  float c = dot(rc, rc) - (double)4.5 * (double)4.5;
  diff = b * b - c;
  nothit = is_negative(diff);
  
  if(nothit == 0) {
    t = -(b + sqrt(diff));
    nothit = is_negative(t);
    
    if(nothit) diff = -diff;
  }
  return sphere_hit(nothit == 0, center, hitin, t, diff);
}

hit_out ray_plane_intersect(plane_t plane, point_and_dir hitin)
{
  hit_out hitout;
  hitout.dist = BIG_FLOAT;
  hitout.borderdist = (double)0.;
  vec3 plane_center = object_coord_to_float3(plane.center);
  float_type d;
  vec3 pt;
  hole_t hole_margin = fixed_make_from_int(0);
  vec3 o;
  
  if(hitin.dir.y != (double)0.) {
    d = float_fast_div_u(hitin.orig.y - plane_center.y, -hitin.dir.y);
    pt = float3_add(hitin.orig, float3_mul_float(hitin.dir, d));
    
    if(d > (double)1.e-3) {
      o = float3_sub(pt, plane_center);
      hole_margin = plane_has_hole(fixed_make_from_float(o.x), fixed_make_from_float(o.z));
      
      if(!fixed_is_negative(hole_margin)) {
        hitout.dist = d;
        hitout.hit.orig = pt;
        vec3 N = VECTOR_NURMAL_UPWARDS;
        hitout.hit.dir = N;
      }
      hitout.borderdist = fixed_to_float(hole_margin);
    }
  }
  return hitout;
}

color sphere_effect(hit_out hit, material_t hit_material)
{
  color rcolor = hit_material.diffuse_color;
  scene_t scene = get_scene();
  scene_colors_t colors = scene_colors(scene);
  sphere_t s = scene.sphere;
  uint16_t frame = scene.frame;
  uint8_t tick = frame >> 2;
  
  if((((tick & 0x3F) != 0)!=0) | ((((hash16(tick) >> 13) & 1) != 0)!=0)) {
    float_type dy = (hit.hit.dir.y - float_shift(fixed_to_float(s.center.y), -6) * (double)1.5);
    float_type dx = float_shift(float_abs(hit.hit.dir.z - hit.hit.dir.x) - (double).6, -1) * (double)1.25;
    float_type d = dx * dx + dy * dy;
    coord_type mindist = fixed_add(fixed_shr(s.heat, 4), fixed_make_from_double((double).25 * (double).25));
    
    if(fixed_lt(fixed_make_from_float(d), mindist)) rcolor = d < (double).15 * (double).15 ? fixed3_make_from_fixed(fixed_make_from_double((double)0.)) : fixed3_make_from_fixed(fixed_make_from_double((double)1.2));
  }
  return rcolor;
}

color plane_effect(hit_out hit)
{
  scene_t scene = get_scene();
  scene_colors_t colors = scene_colors(scene);
  plane_t plane = scene.plane;
  color rcolor = colors.plane.diffuse_color;
  vec3 plane_center = object_coord_to_float3(plane.center);
  float_type hitx = hit.hit.orig.x - plane_center.x;
  float_type hitz = hit.hit.orig.z - plane_center.z;
  float_type ox = float_shift(hitx, (-3));
  float_type oz = float_shift(hitz, (-3));
  int16_t ix = round16(fixed_make_from_float(ox));
  int16_t iz = round16(fixed_make_from_float(oz));
  #define bk	(fixed_make_from_double((double).3))
  color color2 = fixed3_make((ix & 0x400) != 0 ? bk : colors.plane_color2.x, (ix & 0x200) != 0 ? bk : colors.plane_color2.y, (ix & 0x100) != 0 ? bk : colors.plane_color2.z);
  rcolor = ((ix ^ iz) & 1) ? colors.plane_color1 : color2;
  
  if(hit.borderdist < (double).1) {
    rcolor = colors.plane.diffuse_color;
  }
  return rcolor;
}

color background_color(float_type dir_y)
{
  color_type y = is_negative(dir_y) ? fixed_make_from_double((double)0.) : fixed_make_from_float(dir_y * dir_y);
  return fixed3_make_from_fixed(y);
}

color_type light_intensity(vec3 hit)
{
  coord_type lz = fixed_mul((fixed_sub(fixed_make_from_float(hit.z), fixed_make_from_double(((double)-10.)))), fixed_make_from_double((double)1. / (double)16.));
  coord_type lx = fixed_mul(fixed_make_from_float(hit.x), fixed_make_from_double((double)1. / (double)16.));
  coord_type dl = fixed_add(fixed_add(fixed_mul(lx, lx), fixed_make_from_double((double)1.)), fixed_mul(lz, lz));
  return fixed_add(fixed_make_from_float(inversesqrt(fixed_to_float(dl))), fixed_make_from_double((double).2));
}

color cast_ray_nested(point_and_dir hitin)
{
  scene_t scene = get_scene();
  scene_colors_t colors = scene_colors(scene);
  material_t hit_material;
  hit_material = colors.sphere;
  hit_out hitout = ray_sphere_intersect(object_coord_to_float3(scene.sphere.center), hitin);
  hit_out hitplane = ray_plane_intersect(scene.plane, hitin);
  
  if(hitplane.dist < hitout.dist) {
    hitout = hitplane;
    hit_material = colors.plane;
    hit_material.diffuse_color = plane_effect(hitplane);
  }
  color rcolor = fixed3_make_from_fixed(fixed_make_from_double((double)0.));
  
  if(hitout.dist >= float_shift((double)1., (9))) rcolor = background_color(hitin.dir.y);
  else rcolor = fixed3_mul_fixed(hit_material.diffuse_color, light_intensity(hitout.hit.orig));
  return rcolor;
}

color shade(color background, vec3 dir, hit_out hit, material_t hit_material, color_type minfog)
{
  scene_t scene = get_scene();
  scene_colors_t colors = scene_colors(scene);
  color rcolor = background;
  float_type fogmix = float_shift(hit.dist, -(9));
  
  if(fogmix < (double)1.) {
    point_and_dir hitreflect;
    hitreflect.orig = hit.hit.orig;
    hitreflect.dir = reflect(dir, hit.hit.dir);
    color reflect_color = cast_ray_nested(hitreflect);
    color diffuse_color = fixed3_mul_fixed(hit_material.diffuse_color, light_intensity(hit.hit.orig));
    color comb_color = fixed3_add(diffuse_color, fixed3_mul(reflect_color, hit_material.reflect_color));
    rcolor = color_select(color_max(fixed_make_from_float(fogmix), minfog), colors.fog, comb_color);
  }
  return rcolor;
}

bool is_star(float_type x, float_type y)
{
  return ((hashf(x) >> 2) & (hashf(y) >> 2)) > 0x3E00;
}

color cast_ray(point_and_dir hitin)
{
  scene_t scene = get_scene();
  scene_colors_t colors = scene_colors(scene);
  bool has_star = is_star(hitin.dir.x, hitin.dir.y);
  color sky = has_star ? fixed3_make_from_fixed(fixed_make_from_double((double).35)) : background_color(hitin.dir.y);
  float_type ys = float_abs(float_shift(hitin.dir.y, 1));
  color_type mix = ys < (double)1. ? fixed_sub(fixed_make_from_int(1), fixed_make_from_float(ys)) : fixed_make_from_int(0);
  color bfog = color_select(mix, colors.fog, sky);
  material_t hit_material;
  hit_out hitsphere = ray_sphere_intersect(object_coord_to_float3(scene.sphere.center), hitin);
  hit_material = colors.sphere;
  
  if(!is_negative(hitsphere.borderdist)) {
    hit_material.diffuse_color = sphere_effect(hitsphere, hit_material);
  }
  hit_out hitplane = ray_plane_intersect(scene.plane, hitin);
  bool planehit = hitplane.dist < hitsphere.dist;
  
  if(planehit) {
    hit_material = colors.plane;
    hit_material.diffuse_color = plane_effect(hitplane);
  }
  hit_out hitout = planehit ? hitplane : hitsphere;
  return shade(bfog, hitin.dir, hitout, hit_material, planehit ? mix : fixed_make_from_double((double)0.));
}

color render_pixel_internal(screen_coord_t x, screen_coord_t y)
{
  scene_t scene = get_scene();
  scene_colors_t colors = scene_colors(scene);
  point_and_dir hitin;
  hitin.orig = object_coord_to_float3(scene.camera);
  vec3 camera_dir = {fixed_to_float(x), fixed_to_float(y), (double)-1.};
  hitin.dir = normalize(camera_dir);
  color c = cast_ray(hitin);
  return c;
}

pixel_t render_pixel(uint16_t i, uint16_t j)
{
  scene_t scene = get_scene();
  int16_t cx = i << 1;
  cx = cx - (FRAME_WIDTH + 1);
  int16_t cy = j << 1;
  cy = (FRAME_HEIGHT + 1) - cy;
  screen_coord_t x = fixed_shr(fixed_make_from_short(cx), 10);
  screen_coord_t y = fixed_shr(fixed_make_from_short(cy), 10);
  const float aspect = (FRAME_HEIGHT * 16) / (FRAME_WIDTH * 9);
  x = fixed_mul(x, fixed_make_from_float(aspect));
  pixel_t pix;
  #define score_factor	((1 << 11) * (FRAME_WIDTH - 2 * 10) / 15000)
  uint16_t scorebar = score_factor * scene.scorebar >> 11;
  
  if(((((((i >= 10)!=0) & ((i < 10 + scorebar)!=0))!=0) & ((j > 10)!=0))!=0) & ((j < 2 * 10)!=0)) {
    pix.r = 0;
    pix.g = 200;
    pix.b = 0;
  }
  else {
    color c = render_pixel_internal(x, y);
    uint9_t r = fixed_to_short(fixed_shl((c.x), (8)));
    uint9_t g = fixed_to_short(fixed_shl((c.y), (8)));
    uint9_t b = fixed_to_short(fixed_shl((c.z), (8)));
    pix.r = (r >= 256) ? 255 : r;
    pix.g = (g >= 256) ? 255 : g;
    pix.b = (b >= 256) ? 255 : b;
  }
  return pix;
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
  state.scene.sphere.heat = fixed_make_from_double((double)0.);
  state.scene.camera = K_camera_pos_start;
  state.scene.frame = 0;
  state.scene.scorebar = 0;
  state.scene.fog = K_fog_color;
  state.plane_y = state.scene.plane.center.y;
  state.sphere_x = state.scene.sphere.center.x;
  state.sphere_z = state.scene.sphere.center.z;
  state.gold_color = gold.diffuse_color;
  state.gold_reflect_color = gold.reflect_color;
  state.lava_color = K_lava_color;
  state.sphere_y = state.scene.sphere.center.y;
  state.heat = state.scene.sphere.heat;
  state.camera_y = state.scene.camera.y;
  state.camera_z = state.scene.camera.z;
  state.plane_x = fixed_make_from_double(((double)-110.));
  state.sphere_xvel = fixed_make_from_double((double)0.);
  state.sphere_yvel = fixed_make_from_double((double)0.);
  state.won = 0;
  state.score = score;
  return state;
}

full_state_t full_update(full_state_t state, bool reset, bool button_state)
{
  uint16_t score = state.score;
  
  if(reset) score = 0;
  state.plane_x = fixed_add(state.plane_x, state.sphere_xvel);
  state.sphere_yvel = fixed_add(state.sphere_yvel, fixed_make_from_double((double).1));
  state.sphere_y = fixed_sub(state.sphere_y, state.sphere_yvel);
  coord_type underground = fixed_sub((fixed_sub(state.sphere_y, fixed_make_from_double((double)4.5))), fixed_make_from_double((double)0.));
  
  if(state.won) state.sphere_yvel = fixed_shr(underground, 4);
  
  if(fixed_is_negative(underground)) {
    state.sphere_xvel = fixed_sub(state.sphere_xvel, fixed_make_from_double((double)0.03));
    coord_type coord_x = fixed_sub(state.sphere_x, state.plane_x);
    coord_type coord_z = fixed_sub(state.sphere_z, state.plane_x);
    bool half_up = fixed_gt(state.sphere_y, state.plane_y);
    
    if(((half_up)!=0) & ((state.won == 0)!=0)) {
      
      if(fixed_gt(state.sphere_yvel, fixed_make_from_double((double)0.))) state.heat = fixed_sub(fixed_make_from_int(0), fixed_shr(state.sphere_xvel, 1));
      
      if(fixed_gt(plane_has_hole(coord_x, coord_z), fixed_make_from_double((double)-.05))) {
        state.score = state.score + 1;
        
        if(((state.score >= 15000)!=0) & ((state.won != 1)!=0)) state.won = 1;
        
        if(button_state) {
          state.sphere_yvel = fixed_make_from_double((double)-2.);
          state.sphere_xvel = fixed_make_from_double((double)-0.5);
        }
        else state.sphere_yvel = fixed_make_from_double((double)-.03);
      }
    }
    else {
      state.camera_z = fixed_sub(state.camera_z, fixed_shr(underground, 4));
    }
  }
  state.heat = fixed_sub(state.heat, fixed_shr(state.heat, 4));
  state.camera_y = fixed_add(state.camera_y, fixed_shr(fixed_sub(state.sphere_y, state.camera_y), 5));
  state.lose = ((fixed_is_negative(underground))!=0) & (((-fixed_to_short(underground) >> 10))!=0);
  state.diffuse_color = color_select(state.heat, state.lava_color, state.gold_color);
  state.reflect_color = fixed3_mul_fixed(state.gold_reflect_color, (fixed_sub(fixed_make_from_double((double)1.), fixed_shr(state.heat, 2))));
  state.scorebar = state.won ? 0 : state.score;
  
  if(state.lose) reset = 1;
  
  if(reset) state = reset_state(score);
  state.scene.sphere.center.y = state.sphere_y;
  state.scene.sphere.heat = state.heat;
  state.scene.camera.y = state.camera_y;
  state.scene.camera.z = state.camera_z;
  state.scene.plane.center.x = state.plane_x;
  state.scene.plane.center.z = state.plane_x;
  state.scene.sphere.material.diffuse_color = state.diffuse_color;
  state.scene.sphere.material.reflect_color = state.reflect_color;
  state.scene.sphere.yvel = fixed3_make_from_fixed(state.sphere_yvel);
  state.scene.scorebar = state.scorebar;
  state.scene.frame = state.scene.frame + 1;
  return state;
}


