





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

#define fixed_type float_type
#define coord_type float_type
#define object_coord_t float3
#define screen_coord_t float_type
#define color_type float_type
#define color float3
int16_t round16(float_type x)
{
  return x + (double)0.5;
}

float3 object_coord_to_float3(object_coord_t a)
{
  float3 r = {a.x, a.y, a.z};
  return r;
}

color color_select(color_type x, color a, color b)
{
  return float3_add(b, float3_mul_float((float3_sub(a, b)), x));
}

color_type color_max(color_type a, color_type b)
{
  return a > b ? a : b;
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
  return (double)1. / inversesqrt(x);
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
typedef struct scene_t { sphere_t sphere; plane_t plane; object_coord_t camera; uint16_t frame; uint16_t scorebar; color fog; } scene_t;
typedef struct scene_colors_t { material_t sphere; material_t plane; color plane_color1; color plane_color2; color fog; } scene_colors_t;
typedef struct game_state_in { coord_type plane_y; coord_type sphere_x; coord_type sphere_z; color gold_color; color gold_reflect_color; color lava_color; bool press; } game_state_in;
typedef struct game_state_t { coord_type sphere_y; color_type heat; coord_type camera_y; coord_type camera_z; coord_type plane_x; coord_type sphere_xvel; coord_type sphere_yvel; uint16_t score; bool won; } game_state_t;
typedef struct game_state_out { color diffuse_color; color reflect_color; uint16_t scorebar; bool lose; } game_state_out;
typedef struct game_state_out_t { game_state_out stout; game_state_t stinout; } game_state_out_t;
typedef struct full_state_t { scene_t scene; game_state_in stin; game_state_t stinout; } full_state_t;
#define K_gold_color	{((double)1.5 * (double).15) * (double)243. / (double)256., ((double)1.5 * (double).15) * (double)201. / (double)256., ((double)1.5 * (double).15) * (double)104. / (double)256.}
#define K_gold_reflect_color	{(double)1.5 * ((double)1. - (double).15) * (double)243. / (double)256., (double)1.5 * ((double)1. - (double).15) * (double)201. / (double)256., (double)1.5 * ((double)1. - (double).15) * (double)104. / (double)256.}
#define K_lava_color	{(double)255. / (double)256. * (double)2.0, (double)70. / (double)256. * (double)1.5, (double)32. / (double)256. * (double)1.5}
#define K_plane_color1	{(double).8, (double).8, (double).8}
#define K_plane_color2	{(double).1, (double).0, (double).0}
#define K_floor_difusse	{(double)1., (double)1., (double)1.}
#define K_floor_reflect	{(double).5, (double).5, (double).5}
#define K_fog_color	{(double).01, (double).01, (double).1}
#define K_plane_center_start	{((double)-110.), (double)0., (double)0.}
#define K_sphere_center_start	{(double)-20., (double)40., ((double)-32.)}
#define K_camera_pos_start	{(double)0., (double)30., (double)30.}
#define VECTOR_NURMAL_UPWARDS	{(double)0., (double)1., (double)0.}
#define hole_t coord_type
hole_t plane_has_hole(hole_t x, hole_t z)
{
  hole_t ret = (double)1.;
  x = float_shift(x, -4);
  z = float_shift(z, -5);
  int16_t ix = round16(x);
  int16_t iz = round16(z);
  hole_t fracx = ix - x;
  hole_t fracz = iz - z;
  uint16_t hx = hash16(ix) >> 5;
  uint16_t hz = hash16(iz) >> 5;
  
  if((hx ^ hz) < ix + 600) {
    
    if((((ix & 0x240) == 0x240)!=0) | ((((ix & ~0x7FF) != 0))!=0)) ret = (double)0.;
    else {
      bool fx = (hx & 1) != 0;
      bool fz = ((hz >> 1) & 1) != 0;
      bool hard = (ix & 0x200) != 0;
      {
        hole_t ax = float_abs(fracx);
        hole_t az = float_abs(fracz);
        
        if(hard) ret = float_max(ax, az) - (double).3;
        else ret = (ax + az) - (double).4;
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

typedef struct hit_in { vec3 orig; vec3 dir; } hit_in;
typedef struct hit_out { float_type dist; float_type borderdist; vec3 N; vec3 hit; material_t material; } hit_out;
hit_out ray_sphere_intersect(sphere_t s, hit_in hitin)
{
  hit_out hitout;
  vec3 ro = hitin.orig;
  vec3 rd = hitin.dir;
  vec3 sp = object_coord_to_float3(s.center);
  hitout.dist = BIG_FLOAT;
  float diff;
  float t;
  vec3 rc = float3_sub(ro, sp);
  float b = dot(rc, rd);
  float c = dot(rc, rc) - (double)4.5 * (double)4.5;
  diff = b * b - c;
  
  if(diff > (double)0.) {
    t = -b - sqrt(diff);
    
    if(t > (double)0.) {
      hitout.dist = t;
      hitout.hit = float3_add(hitin.orig, float3_mul_float(hitin.dir, hitout.dist));
      hitout.N = normalize(float3_sub(hitout.hit, sp));
    }
    else diff = -diff;
  }
  hitout.borderdist = diff;
  return hitout;
}

hit_out ray_plane_intersect(plane_t plane, hit_in hitin)
{
  hit_out hitout;
  hitout.dist = BIG_FLOAT;
  hitout.borderdist = (double)0.;
  vec3 plane_center = object_coord_to_float3(plane.center);
  float_type d;
  vec3 pt;
  hole_t hole_margin = 0;
  vec3 o;
  
  if(hitin.dir.y != (double)0.) {
    d = -(hitin.orig.y - plane_center.y) / hitin.dir.y;
    pt = float3_add(hitin.orig, float3_mul_float(hitin.dir, d));
    
    if(d > (double)1.e-3) {
      o = float3_sub(pt, plane_center);
      hole_margin = plane_has_hole(o.x, o.z);
      
      if(!((hole_margin) < 0)) {
        hitout.dist = d;
        hitout.hit = pt;
        vec3 N = VECTOR_NURMAL_UPWARDS;
        hitout.N = N;
      }
      hitout.borderdist = hole_margin;
    }
  }
  return hitout;
}

color sphere_effect(uint16_t frame, scene_colors_t colors, sphere_t s, hit_out hit)
{
  color rcolor = hit.material.diffuse_color;
  return rcolor;
}

color plane_effect(uint16_t frame, scene_colors_t colors, plane_t plane, hit_out hit)
{
  color rcolor = colors.plane.diffuse_color;
  vec3 plane_center = object_coord_to_float3(plane.center);
  float_type hitx = hit.hit.x - plane_center.x;
  float_type hitz = hit.hit.z - plane_center.z;
  float_type ox = float_shift(hitx, (-3));
  float_type oz = float_shift(hitz, (-3));
  int16_t ix = round16(ox);
  int16_t iz = round16(oz);
  bool cx = (ix & 1) != 0;
  bool cz = (iz & 1) != 0;
  #define bk	((double).3)
  color color2 = {(ix & 0x400) != 0 ? bk : colors.plane_color2.r, (ix & 0x200) != 0 ? bk : colors.plane_color2.g, (ix & 0x100) != 0 ? bk : colors.plane_color2.b};
  rcolor = (cx == cz) ? colors.plane_color1 : color2;
  
  if(hit.borderdist < (double).1) {
    rcolor = colors.plane.diffuse_color;
  }
  return rcolor;
}

color background_color(float_type dir_y)
{
  color_type y = is_negative(dir_y) ? (double)0. : dir_y * dir_y;
  return float3_make_from_float(y);
}

color_type light_intensity(vec3 hit)
{
  coord_type lz = (hit.z - ((double)-10.)) * (double)1. / (double)16.;
  coord_type lx = hit.x * (double)1. / (double)16.;
  coord_type dl = lx * lx + (double)1. + lz * lz;
  return inversesqrt(dl) + (double).1;
}

hit_out hit_sphere(uint32_t frame, scene_colors_t colors, sphere_t sphere, hit_in hitin)
{
  hit_out hitout;
  hitout = ray_sphere_intersect(sphere, hitin);
  hitout.material = colors.sphere;
  
  if(!is_negative(hitout.borderdist)) hitout.material.diffuse_color = sphere_effect(frame, colors, sphere, hitout);
  return hitout;
}

hit_out hit_plane(uint32_t frame, scene_colors_t colors, plane_t plane, hit_in hitin)
{
  hit_out hitout;
  hitout = ray_plane_intersect(plane, hitin);
  hitout.material = colors.plane;
  
  if(!is_negative(hitout.borderdist)) hitout.material.diffuse_color = plane_effect(frame, colors, plane, hitout);
  return hitout;
}

color cast_ray_nested(scene_t scene, scene_colors_t colors, hit_in hitin)
{
  hit_out hitsphere = hit_sphere(scene.frame, colors, scene.sphere, hitin);
  hit_out hitplane = hit_plane(scene.frame, colors, scene.plane, hitin);
  hit_out hitout = hitplane.dist < hitsphere.dist ? hitplane : hitsphere;
  color rcolor = (double)0.;
  
  if(hitout.dist >= float_shift((double)1., (9))) rcolor = background_color(hitin.dir.y);
  else rcolor = float3_mul_float(hitout.material.diffuse_color, light_intensity(hitout.hit));
  return rcolor;
}

color shade(scene_t scene, scene_colors_t colors, color background, vec3 dir, hit_out hit, color_type minfog)
{
  color rcolor = background;
  float_type fogmix = float_shift(hit.dist, -(9));
  
  if(fogmix < (double)1.) {
    hit_in hitreflect;
    hitreflect.orig = hit.hit;
    hitreflect.dir = reflect(dir, hit.N);
    color reflect_color = cast_ray_nested(scene, colors, hitreflect);
    color diffuse_color = float3_mul_float(hit.material.diffuse_color, light_intensity(hit.hit));
    color comb_color = float3_add(diffuse_color, float3_mul(reflect_color, hit.material.reflect_color));
    rcolor = color_select(color_max(fogmix, minfog), colors.fog, comb_color);
  }
  return rcolor;
}

bool is_star(float_type x, float_type y)
{
  return ((hashf(x) >> 2) & (hashf(y) >> 2)) > 0x3E00;
}

color cast_ray(scene_t scene, scene_colors_t colors, hit_in hitin)
{
  bool has_star = is_star(hitin.dir.x, hitin.dir.y);
  color sky = has_star ? float3_make_from_double((double).35) : background_color(hitin.dir.y);
  float_type ys = float_abs(float_shift(hitin.dir.y, 1));
  color_type mix = ys < (double)1. ? 1 - ys : 0;
  color bfog = color_select(mix, colors.fog, sky);
  hit_out hitsphere = hit_sphere(scene.frame, colors, scene.sphere, hitin);
  hit_out hitplane = hit_plane(scene.frame, colors, scene.plane, hitin);
  bool sphit = hitsphere.dist < hitplane.dist;
  hit_out hitout = sphit ? hitsphere : hitplane;
  return shade(scene, colors, bfog, hitin.dir, hitout, sphit ? (double)0. : mix);
}

color render_pixel_internal(screen_coord_t x, screen_coord_t y, scene_t scene, scene_colors_t colors)
{
  hit_in hitin;
  hitin.orig = object_coord_to_float3(scene.camera);
  vec3 camera_dir = {x, y, (double)-1.};
  hitin.dir = normalize(camera_dir);
  color c = cast_ray(scene, colors, hitin);
  return c;
}

pixel_t render_pixel(uint16_t i, uint16_t j, scene_t scene)
{
  int16_t cx = i << 1;
  cx = cx - (FRAME_WIDTH + 1);
  int16_t cy = j << 1;
  cy = (FRAME_HEIGHT + 1) - cy;
  screen_coord_t x = float_shift(cx, (FRAME_WIDTH < 1024 ? -10 : -11));
  screen_coord_t y = float_shift(cy, (FRAME_WIDTH < 1024 ? -10 : -11));
  pixel_t pix;
  #define score_factor	((1 << 11) * (FRAME_WIDTH - 2 * 10) / 15000)
  uint16_t scorebar = score_factor * scene.scorebar >> 11;
  
  if(((((((i >= 10)!=0) & ((i < 10 + scorebar)!=0))!=0) & ((j > 10)!=0))!=0) & ((j < 2 * 10)!=0)) {
    pix.r = 0;
    pix.g = 200;
    pix.b = 0;
  }
  else {
    color c = render_pixel_internal(x, y, scene, scene_colors(scene));
    uint9_t r = float_shift((c.r), (8));
    uint9_t g = float_shift((c.g), (8));
    uint9_t b = float_shift((c.b), (8));
    pix.r = (r >= 256) ? 255 : r;
    pix.g = (g >= 256) ? 255 : g;
    pix.b = (b >= 256) ? 255 : b;
  }
  return pix;
}

full_state_t reset_state0(bool x)
{
  material_t gold;
  gold.diffuse_color = K_gold_color;
  gold.reflect_color = K_gold_reflect_color;
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
  scene.sphere.heat = (double)0.;
  scene.camera = K_camera_pos_start;
  scene.frame = 0;
  scene.scorebar = 0;
  scene.fog = K_fog_color;
  game_state_in stin;
  stin.plane_y = scene.plane.center.y;
  stin.sphere_x = scene.sphere.center.x;
  stin.sphere_z = scene.sphere.center.z;
  stin.gold_color = gold.diffuse_color;
  stin.gold_reflect_color = gold.reflect_color;
  stin.lava_color = K_lava_color;
  stin.press = 0;
  game_state_t stinout;
  stinout.sphere_y = scene.sphere.center.y;
  stinout.heat = scene.sphere.heat;
  stinout.camera_y = scene.camera.y;
  stinout.camera_z = scene.camera.z;
  stinout.plane_x = ((double)-110.);
  stinout.sphere_xvel = (double)0.;
  stinout.sphere_yvel = (double)0.;
  stinout.won = 0;
  stinout.score = 0;
  full_state_t f;
  f.scene = scene;
  f.stin = stin;
  f.stinout = stinout;
  return f;
}

full_state_t reset_state()
{
  return reset_state0(1);
}

game_state_t restart_state(game_state_t st)
{
  game_state_t n;
  full_state_t r = reset_state0(0);
  n = r.stinout;
  n.score = st.score - (st.score >> 4);
  return n;
}

game_state_out_t next_state_func(game_state_in stin, game_state_t stinout)
{
  game_state_out_t n;
  n.stinout = stinout;
  n.stinout.plane_x = n.stinout.plane_x + n.stinout.sphere_xvel;
  n.stinout.sphere_yvel = n.stinout.sphere_yvel + (double).1;
  n.stinout.sphere_y = n.stinout.sphere_y - n.stinout.sphere_yvel;
  coord_type underground = (n.stinout.sphere_y - (double)4.5) - (double)0.;
  
  if(stinout.won) n.stinout.sphere_yvel = float_shift(underground, -4);
  
  if(((underground) < 0)) {
    n.stinout.sphere_xvel = n.stinout.sphere_xvel - (double)0.03;
    coord_type coord_x = stin.sphere_x - n.stinout.plane_x;
    coord_type coord_z = stin.sphere_z - n.stinout.plane_x;
    bool half_up = n.stinout.sphere_y > stin.plane_y;
    
    if(((half_up)!=0) & ((stinout.won != 1)!=0)) {
      
      if(plane_has_hole(coord_x, coord_z) > (double)-.05) {
        n.stinout.score = n.stinout.score + 1;
        
        if(((n.stinout.score >= 15000)!=0) & ((n.stinout.won != 1)!=0)) n.stinout.won = 1;
        
        if(stin.press) {
          n.stinout.sphere_yvel = (double)-2.;
          n.stinout.sphere_xvel = (double)-0.5;
        }
        else n.stinout.sphere_yvel = (double)-.03;
      }
    }
    else {
      n.stinout.camera_z = n.stinout.camera_z - float_shift(underground, -4);
    }
  }
  n.stinout.camera_y = n.stinout.camera_y + float_shift(n.stinout.sphere_y - n.stinout.camera_y, -5);
  n.stout.lose = ((((underground) < 0))!=0) & (((-underground >> 10))!=0);
  n.stout.diffuse_color = stin.gold_color;
  n.stout.reflect_color = stin.gold_reflect_color;
  n.stout.scorebar = n.stinout.won ? 0 : n.stinout.score;
  
  if(n.stout.lose) n.stinout = restart_state(stinout);
  return n;
}

scene_t update_scene(scene_t scenein, game_state_out_t outs)
{
  scene_t scene = scenein;
  scene.sphere.center.y = outs.stinout.sphere_y;
  scene.sphere.heat = outs.stinout.heat;
  scene.camera.y = outs.stinout.camera_y;
  scene.camera.z = outs.stinout.camera_z;
  scene.plane.center.x = outs.stinout.plane_x;
  scene.plane.center.z = outs.stinout.plane_x;
  scene.sphere.material.diffuse_color = outs.stout.diffuse_color;
  scene.sphere.material.reflect_color = outs.stout.reflect_color;
  scene.sphere.yvel = outs.stinout.sphere_yvel;
  scene.scorebar = outs.stout.scorebar;
  scene.frame = scene.frame + 1;
  return scene;
}


