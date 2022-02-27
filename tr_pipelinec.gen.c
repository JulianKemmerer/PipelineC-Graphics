//AUTOMATICALLY GENERATED CODE. DO NOT EDIT
//DO NOT USE NOR DISTRIBUTE WITHOUT A LICENSE TO THE ORIGINAL CODE

#define sqrt sqrt_fast //avoid library conflict
float sqrt(float x)
{
  return 1. / inversesqrt(x);
}

float float_max(float a, float b)
{
  return a > b ? a : b;
}

float float_min(float a, float b)
{
  return a < b ? a : b;
}

//const uint16_t FRAME_WIDTH = 400;
//const uint16_t FRAME_HEIGHT = 300;
//typedef struct pixel_t { uint8_t a; uint8_t b; uint8_t g; uint8_t r; } pixel_t;
const float BIG_FLOAT = 1.0e23;
//typedef float2 float2;
//typedef float3 float3;
//typedef float4 float4;
//typedef float2 vec2;
//typedef float3 vec3;
//typedef float4 vec4;
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

uint16_t hash16(uint16_t v)
{
  return (uint32_t)(v) * 0x9E37u;
}

uint16_t hashf(float_type f)
{
  uint32_t u = float_to_uint(f);
  return hash16(((u << 9) | (u >> 23)) ^ (u >> 7));
}

vec3 float_select(float x, vec3 a, vec3 b)
{
  return float3_add(b, float3_mul_float((float3_sub(a, b)), x));
}

uint16_t CLOG2(uint16_t v)
{
  uint16_t r;
  uint16_t shift;
  r = 0;
  shift = ((uint16_t)(v > 0xFF)) << 3;
  v >>= shift;
  r |= shift;
  shift = ((uint16_t)(v > 0xF)) << 2;
  v >>= shift;
  r |= shift;
  shift = ((uint16_t)(v > 0x3)) << 1;
  v >>= shift;
  r |= shift;
  r |= (v >> 1);
  return r + 1;
}

//CLASS fixed_t (classes not supported)
//typedef: no support for template types
//CLASS fixed3 (classes not supported)
float3 vec3convert(fixed3 a)
{
  float3 r = {fixed_to_float(a.x), fixed_to_float(a.y), fixed_to_float(a.z)};
  return r;
}

#define lround lround_fixed //avoid library conflict
int32_t lround(fixed a)
{
  return (int32_t)(fixed_to_int(fixed_add(a, fixed_make_from_double(.5))));
}

fixed fixed_shift(fixed a, int32_t shift)
{
  return shift >= 0 ? fixed_shl_int(a, shift) : fixed_shr_int(a, -shift);
}

bool fixed_is_negative(fixed x)
{
  return fixed_lt(x, fixed_make_from_int(0));
}

fixed fixed_abs(fixed x)
{
  return fixed_is_negative(x) ? fixed_sub((fixed_make_from_int(0)), x) : x;
}

fixed fixed_min(fixed a, fixed b)
{
  return fixed_gt(a, b) ? a : b;
}

fixed fixed_max(fixed a, fixed b)
{
  return fixed_lt(a, b) ? a : b;
}
/*
typedef fixed fixed_type;
typedef fixed_type coord_type;
typedef fixed3 object_coord_t;
typedef coord_type screen_coord_t;
typedef float_type color_type;
typedef float3 color;
*/
#define fixed_type     fixed      
#define coord_type     fixed_type 
#define object_coord_t fixed3     
#define screen_coord_t coord_type 
#define color_type     float_type 
#define color          float3     
typedef struct material_t { color diffuse_color; color reflect_color; } material_t;
typedef struct sphere_t { object_coord_t center; material_t material; color_type heat; float_type yvel; } sphere_t;
typedef struct plane_t { object_coord_t center; material_t material; color color1; color color2; } plane_t;
typedef struct scene_t { sphere_t sphere; plane_t plane; object_coord_t camera; uint16_t frame; uint16_t scorebar; color fog; } scene_t;
typedef struct SceneColors { material_t sphere; material_t plane; color plane_color1; color plane_color2; color fog; } SceneColors;
typedef struct hit_in { vec3 orig; vec3 dir; } hit_in;
typedef struct hit_out { float_type dist; float_type borderdist; vec3 N; vec3 hit; material_t material; } hit_out;
typedef struct game_state_in { coord_type plane_y; coord_type sphere_x; coord_type sphere_z; color gold_color; color gold_reflect_color; color lava_color; bool press; } game_state_in;
typedef struct game_state_t { coord_type sphere_y; color_type heat; coord_type camera_y; coord_type camera_z; coord_type plane_x; coord_type sphere_xvel; coord_type sphere_yvel; int32_t score; bool won; } game_state_t;
typedef struct game_state_out { color diffuse_color; color reflect_color; uint16_t scorebar; bool lose; } game_state_out;
typedef struct game_state_out_t { game_state_out stout; game_state_t stinout; } game_state_out_t;
typedef struct full_state_t { scene_t scene; game_state_in stin; game_state_t stinout; } full_state_t;
SceneColors scene_colors(scene_t scene)
{
  SceneColors r;
  r.sphere = scene.sphere.material;
  r.plane = scene.plane.material;
  r.plane_color1 = scene.plane.color1;
  r.plane_color2 = scene.plane.color2;
  r.fog = scene.fog;
  return r;
}

hit_out ray_sphere_intersect(sphere_t s, hit_in hitin)
{
  hit_out hitout;
  vec3 ro = hitin.orig;
  vec3 rd = hitin.dir;
  vec3 sp = vec3convert(s.center);
  hitout.dist = BIG_FLOAT;
  float diff;
  float t;
  vec3 rc = float3_sub(ro, sp);
  float b = dot(rc, rd);
  float c = dot(rc, rc) - 4.5 * 4.5;
  diff = b * b - c;
  if(diff > 0.0)
  {
    t = -b - sqrt(diff);
    if(t > 0.0)
    {
      hitout.dist = t;
      hitout.hit = float3_add(hitin.orig, float3_mul_float(hitin.dir, hitout.dist));
      hitout.N = normalize(float3_sub(hitout.hit, sp));
    }
    else
    diff = -diff;
  }
  hitout.borderdist = diff;
  return hitout;
}

//typedef coord_type hole_t;
#define hole_t coord_type
hole_t plane_has_hole(hole_t x, hole_t z)
{
  hole_t ret = fixed_make_from_double(1.);
  x = fixed_shift(x, -4);
  z = fixed_shift(z, -5);
  int16_t ix = lround(x);
  int16_t iz = lround(z);
  hole_t fracx = fixed_sub((fixed_make_from_short(ix)), x);
  hole_t fracz = fixed_sub((fixed_make_from_short(iz)), z);
  uint16_t hx = hash16(ix) >> 5;
  uint16_t hz = hash16(iz) >> 5;
  if((hx ^ hz) < ix + 600)
  {
    if( ((ix & 0x240) == 0x240) | (((ix & ~(int16_t)0x7FF) != 0)) )
    {
      ret = fixed_make_from_double(0.);
    }
    else
    {
      bool fx = (hx & 1) != 0;
      bool fz = ((hz >> 1) & 1) != 0;
      bool hard = (ix & 0x200) != 0;
      {
        hole_t ax = fixed_abs(fracx);
        hole_t az = fixed_abs(fracz);
        if(hard)
        ret = fixed_sub(fixed_max(ax, az), (fixed_make_from_double(.3)));
        else
        ret = fixed_sub((fixed_add(ax, az)), (fixed_make_from_double(.4)));
      }
    }
  }
  return ret;
}

const color lava_color = {255. / 256. * 2.0, 70. / 256. * 1.5, 32. / 256. * 1.5};
const color floor_difusse = {1., 1., 1.};
const color floor_reflect = {.5, .5, .5};
const color plane_color1 = {.8, .8, .8};
const color plane_color2 = {.1, .0, .0};
const color fog_color = {.01, .01, .1};
//const object_coord_t plane_center_start = fixed3_make(fixed_make_from_double(0.), fixed_make_from_double(0.), fixed_make_from_double(0.));
//const object_coord_t sphere_center_start = fixed3_make(fixed_make_from_double(-20.), fixed_make_from_double(40.), fixed_make_from_double(-32.));
//const object_coord_t camera_pos_start = fixed3_make(fixed_make_from_double(0.), fixed_make_from_double(30.), fixed_make_from_double(30.));
const vec3 NORMAL_UP = {0., 1., 0.};
hit_out ray_plane_intersect(plane_t plane, hit_in hitin)
{
  hit_out hitout;
  hitout.dist = BIG_FLOAT;
  hitout.borderdist = 0.;
  vec3 plane_center = vec3convert(plane.center);
  float_type d;
  vec3 pt;
  vec3 o;
  hole_t hole_margin;
  if(hitin.dir.y != 0.)
  {
    d = -(hitin.orig.y - plane_center.y) / hitin.dir.y;
    pt = float3_add(hitin.orig, float3_mul_float(hitin.dir, d));
    if(d > 1.0e-3)
    {
      o = float3_sub(pt, plane_center);
      hole_margin = plane_has_hole((fixed_make_from_float(o.x)), (fixed_make_from_float(o.z)));
      if(!fixed_is_negative(hole_margin))
      {
        hitout.dist = d;
        hitout.hit = pt;
        hitout.N = NORMAL_UP;
      }
      hitout.borderdist = (fixed_to_float(hole_margin));
    }
  }
    /*
    printf(
"ray_plane_intersect \
plane.center.x.f %d plane.center.y.f %d plane.center.z.f %d \
plane_center.x %f plane_center.y %f plane_center.z %f \
d %f \
pt.x %f pt.y %f pt.z %f \
o.x %f o.y %f o.z %f \
hole_margin.f %d \
hitin.orig.y %f plane_center.y %f hitin.dir.y %f \
\n",
    plane.center.x.f , plane.center.y.f , plane.center.z.f,
    plane_center.x , plane_center.y , plane_center.z,
    d,
    pt.x , pt.y , pt.z,
    o.x , o.y , o.z,
    hole_margin.f,
    hitin.orig.y , plane_center.y , hitin.dir.y
  );*/
  
  return hitout;
}

color sphere_effect(uint16_t frame, SceneColors colors, sphere_t s, hit_out hit)
{
  color rcolor = hit.material.diffuse_color;
  return rcolor;
}

color plane_effect(uint16_t frame, SceneColors colors, plane_t plane, hit_out hit)
{
  color rcolor = colors.plane.diffuse_color;
  vec3 plane_center = vec3convert(plane.center);
  float_type hitx = hit.hit.x - plane_center.x;
  float_type hitz = hit.hit.z - plane_center.z;
  float_type ox = float_shift(hitx, -3);
  float_type oz = float_shift(hitz, -3);
  int16_t ix = lround(fixed_make_from_float(ox));
  int16_t iz = lround(fixed_make_from_float(oz));
  bool cx = (ix & 1) != 0;
  bool cz = (iz & 1) != 0;
  const color_type bk = .3;
  color color2 = {(ix & 0x400) != 0 ? bk : colors.plane_color2.x, (ix & 0x200) != 0 ? bk : colors.plane_color2.y, (ix & 0x100) != 0 ? bk : colors.plane_color2.z};
  rcolor = (cx == cz) ? colors.plane_color1 : color2;
  if(hit.borderdist < .1)
  {
    rcolor = colors.plane.diffuse_color;
  }
  return rcolor;
}

color background_color(float_type dir_y)
{
  color_type y = is_negative(dir_y) ? (0.) : (dir_y * dir_y);
  return float3_make_from_float(y);
}

color_type light_intensity(vec3 hit)
{
  float_type lz = hit.z - (-10.);
  float_type dl = hit.x * hit.x + 16. * 16. + lz * lz;
  return (float_max((0.), inversesqrt(dl) * 16.)) + .1;
}

hit_out hit_sphere(uint32_t frame, SceneColors colors, sphere_t sphere, hit_in hitin)
{
  hit_out hitout;
  hitout = ray_sphere_intersect(sphere, hitin);
  hitout.material = colors.sphere;
  if(!is_negative(hitout.borderdist))
  hitout.material.diffuse_color = sphere_effect(frame, colors, sphere, hitout);
  return hitout;
}

hit_out hit_plane(uint32_t frame, SceneColors colors, plane_t plane, hit_in hitin)
{
  hit_out hitout;
  hitout = ray_plane_intersect(plane, hitin);
  hitout.material = colors.plane;
  if(!is_negative(hitout.borderdist))
  hitout.material.diffuse_color = plane_effect(frame, colors, plane, hitout);
  return hitout;
}

color cast_ray0(scene_t scene, SceneColors colors, hit_in hitin)
{
  hit_out hitsphere = hit_sphere(scene.frame, colors, scene.sphere, hitin);
  hit_out hitplane = hit_plane(scene.frame, colors, scene.plane, hitin);
  hit_out hitout = hitplane.dist < hitsphere.dist ? hitplane : hitsphere;
  color rcolor;
  if(hitout.dist >= float_shift(1., (9)))
  rcolor = background_color(hitin.dir.y);
  else
  rcolor = float3_mul_float(hitout.material.diffuse_color, light_intensity(hitout.hit));
  return rcolor;
}

color shade(scene_t scene, SceneColors colors, color background, vec3 dir, hit_out hit, color_type minfog)
{
  color rcolor = background;
  float_type fogmix = float_shift(hit.dist, -(9));
  if(fogmix < 1.)
  {
    hit_in hitreflect;
    hitreflect.orig = hit.hit;
    hitreflect.dir = reflect(dir, hit.N);
    color reflect_color = cast_ray0(scene, colors, hitreflect);
    color diffuse_color = float3_mul_float(hit.material.diffuse_color, light_intensity(hit.hit));
    color comb_color = float3_add(diffuse_color, float3_mul(reflect_color, hit.material.reflect_color));
    rcolor = float_select(float_max((fogmix), minfog), colors.fog, comb_color);
  }
  return rcolor;
}

color cast_ray(scene_t scene, SceneColors colors, hit_in hitin)
{
  bool has_star = ((hashf(hitin.dir.x) >> 2) & (hashf(hitin.dir.y) >> 2)) > 0x3E00;
  color sky = has_star ? float3_make_from_float(.5) : background_color(hitin.dir.y);
  float_type ys = fabs(float_shift(hitin.dir.y, 1));
  color_type mix = ys < 1. ? ((1.) - (ys)) : (0.);
  color bfog = float_select(mix, colors.fog, sky);
  hit_out hitsphere = hit_sphere(scene.frame, colors, scene.sphere, hitin);
  hit_out hitplane = hit_plane(scene.frame, colors, scene.plane, hitin);
  bool sphit = hitsphere.dist < hitplane.dist;
  hit_out hitout = sphit ? hitsphere : hitplane;

  /*
  printf(
"cast_ray \
hitin.dir.x %f hitin.dir.y %f hitin.dir.z %f \
ys %f mix %f \
hitsphere.dist %f hitplane.dist %f \
plane.center.x.f %d plane.center.y.f %d plane.center.z.f %d \
\n",
    hitin.dir.x, hitin.dir.y, hitin.dir.z,
    ys, mix,
    hitsphere.dist, hitplane.dist,
    scene.plane.center.x.f, scene.plane.center.y.f, scene.plane.center.z.f
  );*/
  
  return shade(scene, colors, bfog, hitin.dir, hitout, sphit ? (0.) : mix);
}

color render_pixel_internal(screen_coord_t x, screen_coord_t y, scene_t scene, SceneColors colors)
{
  hit_in hitin;
  hitin.orig = vec3convert(scene.camera);
  vec3 camera_dir = {(fixed_to_float(x)), (fixed_to_float(y)), (-1.)};
  hitin.dir = normalize(camera_dir);
  color c = cast_ray(scene, colors, hitin);
  return c;
}

pixel_t render_pixel(uint16_t i, uint16_t j, scene_t scene)
{
  /* TEMP DEBUG
  i = 0;
  j = 719;*/
  
  int16_t cx = i << 1;
  cx -= (FRAME_WIDTH + 1);
  int16_t cy = j << 1;
  cy -= (FRAME_HEIGHT + 1);
  cy = -cy;
  screen_coord_t x = (fixed_shift(fixed_make_from_short(cx), -CLOG2(FRAME_HEIGHT)));//(screen_coord_t)
  screen_coord_t y = (fixed_shift(fixed_make_from_short(cy), -CLOG2(FRAME_HEIGHT)));//(screen_coord_t)
  pixel_t pix;
  uint16_t scorebar = scene.scorebar * (FRAME_WIDTH - 2 * 10) / 15000;
  if((i >= 10) & (i < 10 + scorebar) & (j > 10) & (j < 2 * 10))
  {
    pix.r = 0;
    pix.g = 200;
    pix.b = 0;
  }
  else
  {
    color c = render_pixel_internal(x, y, scene, scene_colors(scene));
    uint9_t r = (int32_t)(fixed_to_int(fixed_shift(fixed_make_from_float(c.x), 8)));
    uint9_t g = (int32_t)(fixed_to_int(fixed_shift(fixed_make_from_float(c.y), 8)));
    uint9_t b = (int32_t)(fixed_to_int(fixed_shift(fixed_make_from_float(c.z), 8)));
    pix.r = (r > 255) ? 255 : (uint8_t)r;
    pix.g = (g > 255) ? 255 : (uint8_t)g;
    pix.b = (b > 255) ? 255 : (uint8_t)b;
    
 /*   
    printf(
"render_pixel \
scene.plane.center.x.f %d scene.plane.center.y.f %d scene.plane.center.z.f %d \
cx %d cy %d \
x.f %d y.f %d \
c.x %f c.y %f c.b %f \
r %d g %d b %d \
pix_r %d pix_g %d pix_b %d \
\n",
      scene.plane.center.x.f , scene.plane.center.y.f , scene.plane.center.z.f,
      cx, cy,
      x.f, y.f,
      c.x, c.y, c.z,
      r, g, b,
      pix.r, pix.g, pix.b
    );
    */
  }
  /*
  #ifndef __PIPELINEC__
  exit(0);
  #endif*/
  
  return pix;
}

game_state_out_t next_state_func(game_state_in stin, game_state_t stinout)
{
  game_state_out_t n;
  n.stinout = stinout;
  
  n.stinout.plane_x = fixed_add(n.stinout.plane_x, n.stinout.sphere_xvel);
  n.stinout.sphere_yvel = fixed_add(n.stinout.sphere_yvel, fixed_make_from_double(.1));
  n.stinout.sphere_y = fixed_sub(n.stinout.sphere_y, n.stinout.sphere_yvel);
  coord_type underground = fixed_sub((fixed_sub(n.stinout.sphere_y, fixed_make_from_double(4.5))), stin.plane_y);
  if(fixed_is_negative(underground))
  {
    n.stinout.sphere_xvel = fixed_sub(n.stinout.sphere_xvel, fixed_make_from_double(0.03));
    coord_type coord_x = fixed_sub(stin.sphere_x, n.stinout.plane_x);
    coord_type coord_z = fixed_sub(stin.sphere_z, n.stinout.plane_x);
    bool half_up = fixed_gt(n.stinout.sphere_y, stin.plane_y);
    if(half_up)
    {
      if(fixed_gt(n.stinout.sphere_yvel, fixed_make_from_int(0)))
      n.stinout.heat = -(fixed_to_float(fixed_shift(n.stinout.sphere_xvel, -1)));
      if(fixed_gt(plane_has_hole(coord_x, coord_z), fixed_make_from_double(-.05)))
      {
        n.stinout.score = n.stinout.score + 1;
        if((n.stinout.score >= 15000) & (n.stinout.won==0))
        n.stinout.won = true;
        n.stinout.sphere_yvel = fixed_make_from_double(stin.press ? -2. : -.1 * .3);
        if(stin.press)
        n.stinout.sphere_xvel = fixed_make_from_double(-0.5);
      }
    }
    else
    {
      n.stinout.camera_z = fixed_sub(n.stinout.camera_z, fixed_shift(underground, -4));
    }
  }
  n.stinout.heat = n.stinout.heat - (fixed_to_float(fixed_shift(fixed_make_from_float(n.stinout.heat), -4)));
  n.stinout.camera_y = fixed_add(n.stinout.camera_y, fixed_shift(fixed_sub(n.stinout.sphere_y, n.stinout.camera_y), -5));
  n.stout.lose = fixed_is_negative(underground) && (-(int)(fixed_to_int(underground)) & (0x0000FC00)) != 0;
  if(n.stout.lose)
  n.stinout.score = n.stinout.score - (n.stinout.score >> 4);
  n.stout.diffuse_color = float_select(n.stinout.heat, stin.lava_color, stin.gold_color);
  n.stout.reflect_color = float3_mul_float(stin.gold_reflect_color, ((1.) - (fixed_to_float(fixed_shift(fixed_make_from_float(n.stinout.heat), -2)))));
  n.stout.scorebar = n.stinout.won ? 0 : n.stinout.score;
  return n;
}

// TODO mark function as PipelineC equivalent of constexpr/const
/*
#define GOLD_COLOR_R (1.5 * 243. / 256.)
#define GOLD_COLOR_G (1.5 * 201. / 256.)
#define GOLD_COLOR_B (1.5 * 104. / 256.)
*/
full_state_t reset_state()
{
  int32_t startpos = 110;
  const color gold_color = {1.5 * 243. / 256., 1.5 * 201. / 256., 1.5 * 104. / 256.};
  material_t gold;
  float3_mul_float_macro(gold.diffuse_color, gold_color, .15)
  //float3_mul_float(gold_color, .15);
  float3_mul_float_macro(gold.reflect_color, gold_color, (1. - .15))
  //float3_mul_float(gold_color, (1. - .15));
  material_t floor_material;
  floor_material.diffuse_color = floor_difusse;
  floor_material.reflect_color = floor_reflect;
  scene_t scene;
  const object_coord_t plane_center_start = fixed3_make(fixed_make_from_double(0.), fixed_make_from_double(0.), fixed_make_from_double(0.));
  scene.plane.center = plane_center_start;
  scene.plane.material = floor_material;
  scene.plane.color1 = plane_color1;
  scene.plane.color2 = plane_color2;
  const object_coord_t sphere_center_start = fixed3_make(fixed_make_from_double(-20.), fixed_make_from_double(40.), fixed_make_from_double(-32.));
  scene.sphere.center = sphere_center_start;
  scene.sphere.material = gold;
  scene.sphere.heat = 0.;
  const object_coord_t camera_pos_start = fixed3_make(fixed_make_from_double(0.), fixed_make_from_double(30.), fixed_make_from_double(30.));
  scene.camera = camera_pos_start;
  scene.frame = 0;
  scene.scorebar = 0;
  scene.fog = fog_color;
  game_state_in stin;
  stin.plane_y = (scene.plane.center.y);//(coord_type)
  stin.sphere_x = (scene.sphere.center.x);//(coord_type)
  stin.sphere_z = (scene.sphere.center.z);//(coord_type)
  stin.gold_color = gold.diffuse_color;
  stin.gold_reflect_color = gold.reflect_color;
  stin.lava_color = lava_color;
  stin.press = false;
  game_state_t stinout;
  stinout.sphere_y = (scene.sphere.center.y);//(coord_type)
  stinout.heat = scene.sphere.heat;
  stinout.camera_y = (scene.camera.y);//(coord_type)
  stinout.camera_z = (scene.camera.z);//(coord_type)
  stinout.plane_x = (fixed_make_from_int(-(startpos + 110)));//(coord_type)
  stinout.sphere_xvel = fixed_make_from_double(0.);
  stinout.sphere_yvel = fixed_make_from_double(0.);
  stinout.won = false;
  stinout.score = 0;
  full_state_t f;
  f.scene = scene;
  f.stin = stin;
  f.stinout = stinout;
  return f;
}

scene_t update_scene(scene_t scenein, game_state_out_t outs)
{
  scene_t scene = scenein;
  scene.sphere.center.y = outs.stinout.sphere_y;
  scene.sphere.heat = outs.stinout.heat;
  scene.camera.y = outs.stinout.camera_y;
  scene.camera.z = outs.stinout.camera_z;
  scene.plane.center.z = scene.plane.center.x = outs.stinout.plane_x;;
  scene.sphere.material.diffuse_color = outs.stout.diffuse_color;
  scene.sphere.material.reflect_color = outs.stout.reflect_color;
  scene.sphere.yvel = (fixed_to_float(outs.stinout.sphere_yvel));
  scene.scorebar = outs.stout.scorebar;
  scene.frame = scene.frame + 1;
  return scene;
}


