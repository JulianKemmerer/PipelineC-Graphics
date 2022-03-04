





#define float2 float2
#define float3 float3
#define float4 float4





//extern int FRAME_WIDTH;
//extern int FRAME_HEIGHT;
typedef struct pixel_t { uint8_t a; uint8_t b; uint8_t g; uint8_t r; } pixel_t;
//float float_shift(float x, int shift);

//unsigned int float_to_uint(float a);

//float uint_to_float(unsigned int a);

//CLASS fixed_t (classes not supported)
//typedef does not support for template types: fixed_t<10>
//CLASS fixed3 (classes not supported)
float3 vec3convert(fixed3 a)
{
  float3 r = {fixed_to_float(a.x), fixed_to_float(a.y), fixed_to_float(a.z)};
  return r;
}

int16_t round16(fixed a)
{
  return fixed_to_short(fixed_add(a, fixed_make_from_float(.5f)));
}

fixed fixed_shift(fixed a, int6_t shift)
{
  return shift >= 0 ? (fixed_shl_signed_char(a, shift)) : (fixed_shr_signed_char(a, -shift));
}

bool fixed_is_negative(fixed x)
{
  return fixed_lt(x, fixed_make_from_float(0.f));
}

fixed fixed_abs(fixed x)
{
  return fixed_is_negative(x) ? fixed_sub(fixed_make_from_float(0.f), x) : x;
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
color color_select(color_type x, color a, color b)
{
  return fixed3_add(b, fixed3_mul_fixed((fixed3_sub(a, b)), x));
}

color_type color_max(color_type a, color_type b)
{
  return fixed_gt(a, b) ? a : b;
}

#define float_type float
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
  return conv_f * (1.5 - conv_f * conv_f * x2);
}

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

#define BIG_FLOAT	(1.0e23)
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

uint16_t CLOG2(uint16_t v)
{
  uint16_t r;
  uint16_t shift;
  r = 0;
  shift = (v > 0xFF) ? 8 : 0;
  v >>= shift;
  r |= shift;
  shift = (v > 0x0F) ? 4 : 0;
  v >>= shift;
  r |= shift;
  shift = (v > 0x03) ? 2 : 0;
  v >>= shift;
  r |= shift;
  r |= (v >> 1);
  return r + 1;
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
typedef struct sphere_t { object_coord_t center; material_t material; color_type heat; float_type yvel; } sphere_t;
typedef struct plane_t { object_coord_t center; material_t material; color color1; color color2; } plane_t;
typedef struct scene_t { sphere_t sphere; plane_t plane; object_coord_t camera; uint16_t frame; uint16_t scorebar; color fog; } scene_t;
typedef struct scene_colors_t { material_t sphere; material_t plane; color plane_color1; color plane_color2; color fog; } scene_colors_t;
typedef struct hit_in { vec3 orig; vec3 dir; } hit_in;
typedef struct hit_out { float_type dist; float_type borderdist; vec3 N; vec3 hit; material_t material; } hit_out;
typedef struct game_state_in { coord_type plane_y; coord_type sphere_x; coord_type sphere_z; color gold_color; color gold_reflect_color; color lava_color; bool press; } game_state_in;
typedef struct game_state_t { coord_type sphere_y; color_type heat; coord_type camera_y; coord_type camera_z; coord_type plane_x; coord_type sphere_xvel; coord_type sphere_yvel; uint16_t score; bool won; } game_state_t;
typedef struct game_state_out { color diffuse_color; color reflect_color; uint16_t scorebar; bool lose; } game_state_out;
typedef struct game_state_out_t { game_state_out stout; game_state_t stinout; } game_state_out_t;
typedef struct full_state_t { scene_t scene; game_state_in stin; game_state_t stinout; } full_state_t;
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
  
  if(diff > 0.) {
    t = -b - sqrt(diff);
    
    if(t > 0.) {
      hitout.dist = t;
      hitout.hit = float3_add(hitin.orig, float3_mul_float(hitin.dir, hitout.dist));
      hitout.N = normalize(float3_sub(hitout.hit, sp));
    }
    else diff = -diff;
  }
  hitout.borderdist = diff;
  return hitout;
}

#define hole_t coord_type
hole_t plane_has_hole(hole_t x, hole_t z)
{
  hole_t ret = fixed_make_from_double(1.);
  x = fixed_shift(x, -4);
  z = fixed_shift(z, -5);
  int16_t ix = round16(x);
  int16_t iz = round16(z);
  hole_t fracx = fixed_sub(fixed_make_from_short(ix), x);
  hole_t fracz = fixed_sub(fixed_make_from_short(iz), z);
  uint16_t hx = hash16(ix) >> 5;
  uint16_t hz = hash16(iz) >> 5;
  
  if((hx ^ hz) < ix + 600) {
    
    if((((ix & 0x240) == 0x240)!=0) | ((((ix & ~0x7FF) != 0))!=0)) ret = fixed_make_from_double(0.);
    else {
      bool fx = (hx & 1) != 0;
      bool fz = ((hz >> 1) & 1) != 0;
      bool hard = (ix & 0x200) != 0;
      {
        hole_t ax = fixed_abs(fracx);
        hole_t az = fixed_abs(fracz);
        
        if(hard) ret = fixed_sub(fixed_max(ax, az), fixed_make_from_double(.3));
        else ret = fixed_sub((fixed_add(ax, az)), fixed_make_from_double(.4));
      }
    }
  }
  return ret;
}

#define K_gold_color	(fixed3_make(fixed_make_from_double(243. / 256.), fixed_make_from_double(201. / 256.), fixed_make_from_double(104. / 256.)))
#define K_lava_color	(fixed3_make(fixed_make_from_double(255. / 256. * 2.0), fixed_make_from_double(70. / 256. * 1.5), fixed_make_from_double(32. / 256. * 1.5)))
#define K_plane_color1	(fixed3_make(fixed_make_from_double(.8), fixed_make_from_double(.8), fixed_make_from_double(.8)))
#define K_plane_color2	(fixed3_make(fixed_make_from_double(.1), fixed_make_from_double(.0), fixed_make_from_double(.0)))
#define K_floor_difusse	(fixed3_make(fixed_make_from_double(1.), fixed_make_from_double(1.), fixed_make_from_double(1.)))
#define K_floor_reflect	(fixed3_make(fixed_make_from_double(.5), fixed_make_from_double(.5), fixed_make_from_double(.5)))
#define K_fog_color	(fixed3_make(fixed_make_from_double(.01), fixed_make_from_double(.01), fixed_make_from_double(.1)))
#define K_plane_center_start	(fixed3_make(fixed_make_from_double(0.), fixed_make_from_double(0.), fixed_make_from_double(0.)))
#define K_sphere_center_start	(fixed3_make(fixed_make_from_double(-20.), fixed_make_from_double(40.), fixed_make_from_double((-32.))))
#define K_camera_pos_start	(fixed3_make(fixed_make_from_double(0.), fixed_make_from_double(30.), fixed_make_from_double(30.)))
#define VECTOR_NURMAL_UPWARDS	{0., 1., 0.}
hit_out ray_plane_intersect(plane_t plane, hit_in hitin)
{
  hit_out hitout;
  hitout.dist = BIG_FLOAT;
  hitout.borderdist = 0.;
  vec3 plane_center = vec3convert(plane.center);
  float_type d;
  vec3 pt;
  hole_t hole_margin = fixed_make_from_int(0);
  vec3 o;
  
  if(hitin.dir.y != 0.) {
    d = -(hitin.orig.y - plane_center.y) / hitin.dir.y;
    pt = float3_add(hitin.orig, float3_mul_float(hitin.dir, d));
    
    if(d > 1.e-3) {
      o = float3_sub(pt, plane_center);
      hole_margin = plane_has_hole(fixed_make_from_float(o.x), fixed_make_from_float(o.z));
      
      if(!fixed_is_negative(hole_margin)) {
        hitout.dist = d;
        hitout.hit = pt;
        vec3 N = VECTOR_NURMAL_UPWARDS;
        hitout.N = N;
      }
      hitout.borderdist = fixed_to_float(hole_margin);
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
  vec3 plane_center = vec3convert(plane.center);
  float_type hitx = hit.hit.x - plane_center.x;
  float_type hitz = hit.hit.z - plane_center.z;
  float_type ox = float_shift(hitx, (-3));
  float_type oz = float_shift(hitz, (-3));
  int16_t ix = round16(fixed_make_from_float(ox));
  int16_t iz = round16(fixed_make_from_float(oz));
  bool cx = (ix & 1) != 0;
  bool cz = (iz & 1) != 0;
  #define bk	(fixed_make_from_double(.3))
  color color2 = fixed3_make((ix & 0x400) != 0 ? bk : colors.plane_color2.x, (ix & 0x200) != 0 ? bk : colors.plane_color2.y, (ix & 0x100) != 0 ? bk : colors.plane_color2.z);
  rcolor = (cx == cz) ? colors.plane_color1 : color2;
  
  if(hit.borderdist < .1) {
    rcolor = colors.plane.diffuse_color;
  }
  return rcolor;
}

color background_color(float_type dir_y)
{
  color_type y = is_negative(dir_y) ? fixed_make_from_double(0.) : fixed_make_from_float(dir_y * dir_y);
  return fixed3_make_from_fixed(y);
}

color_type light_intensity(vec3 hit)
{
  float_type lz = hit.z - (-10.);
  float_type dl = hit.x * hit.x + 16. * 16. + lz * lz;
  return fixed_add(fixed_make_from_float(float_max(0., inversesqrt(dl) * 16.)), fixed_make_from_double(.1));
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

color cast_ray0(scene_t scene, scene_colors_t colors, hit_in hitin)
{
  hit_out hitsphere = hit_sphere(scene.frame, colors, scene.sphere, hitin);
  hit_out hitplane = hit_plane(scene.frame, colors, scene.plane, hitin);
  hit_out hitout = hitplane.dist < hitsphere.dist ? hitplane : hitsphere;
  color rcolor = fixed3_make_from_fixed(fixed_make_from_double(0.));
  
  if(hitout.dist >= float_shift(1., (9))) rcolor = background_color(hitin.dir.y);
  else rcolor = fixed3_mul_fixed(hitout.material.diffuse_color, light_intensity(hitout.hit));
  return rcolor;
}

color shade(scene_t scene, scene_colors_t colors, color background, vec3 dir, hit_out hit, color_type minfog)
{
  color rcolor = background;
  float_type fogmix = float_shift(hit.dist, -(9));
  
  if(fogmix < 1.) {
    hit_in hitreflect;
    hitreflect.orig = hit.hit;
    hitreflect.dir = reflect(dir, hit.N);
    color reflect_color = cast_ray0(scene, colors, hitreflect);
    color diffuse_color = fixed3_mul_fixed(hit.material.diffuse_color, light_intensity(hit.hit));
    color comb_color = fixed3_add(diffuse_color, fixed3_mul(reflect_color, hit.material.reflect_color));
    rcolor = color_select(color_max(fixed_make_from_float(fogmix), minfog), colors.fog, comb_color);
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
  color sky = has_star ? fixed3_make_from_fixed(fixed_make_from_double(.5)) : background_color(hitin.dir.y);
  float_type ys = float_abs(float_shift(hitin.dir.y, 1));
  color_type mix = ys < 1. ? fixed_sub(fixed_make_from_double(1.), fixed_make_from_float(ys)) : fixed_make_from_double(0.);
  color bfog = color_select(mix, colors.fog, sky);
  hit_out hitsphere = hit_sphere(scene.frame, colors, scene.sphere, hitin);
  hit_out hitplane = hit_plane(scene.frame, colors, scene.plane, hitin);
  bool sphit = hitsphere.dist < hitplane.dist;
  hit_out hitout = sphit ? hitsphere : hitplane;
  return shade(scene, colors, bfog, hitin.dir, hitout, sphit ? fixed_make_from_double(0.) : mix);
}

color render_pixel_internal(screen_coord_t x, screen_coord_t y, scene_t scene, scene_colors_t colors)
{
  hit_in hitin;
  hitin.orig = vec3convert(scene.camera);
  vec3 camera_dir = {fixed_to_float(x), fixed_to_float(y), -1.};
  hitin.dir = normalize(camera_dir);
  color c = cast_ray(scene, colors, hitin);
  return c;
}

color background_color2(fixed_type dir_y)
{
  return fixed3_make_from_fixed(fixed_lt(dir_y, fixed_make_from_int(0)) ? fixed_make_from_double(0.) : fixed_mul(dir_y, dir_y));
}

color render_floor_alt(screen_coord_t x, screen_coord_t y, coord_type px, coord_type py, coord_type pz)
{
  color c = background_color2(fixed_mul((fixed_sub(y, fixed_make_from_double(.5))), fixed_abs(fixed_sub(fixed_mul(x, x), fixed_make_from_double(1.)))));
  
  if(is_star(fixed_to_float(x), fixed_to_float(y))) c = fixed3_make_from_fixed(fixed_make_from_double(.5));
  coord_type ox = fixed_shift(px, (-3));
  coord_type oz = fixed_shift(pz, (-3));
  coord_type inv_y = fixed_make_from_double(0.);
  uint16_t u;
  uint16_t v;
  
  if((((((fixed_lt(y, fixed_make_from_double(0.)))!=0) & ((fixed_lt(py, fixed_make_from_double(0.)))!=0)))!=0) | ((!(((fixed_lt(y, fixed_make_from_double(0.)))!=0) | ((fixed_lt(py, fixed_make_from_double(0.)))!=0)))!=0)) {
    inv_y = fixed_make_from_float(fixed_to_float(py) / fixed_to_float(y));
    u = round16(fixed_sub(fixed_mul(inv_y, x), ox));
    v = round16(fixed_add(inv_y, oz));
    c = ((u ^ v) & 1) ? K_plane_color2 : K_plane_color1;
  }
  return c;
}

color render_pixel_internal_alt(screen_coord_t x, screen_coord_t y, scene_t scene, scene_colors_t colors)
{
  float FRAME_HEIGHT_FLOAT = FRAME_HEIGHT;
  #define CAMERA_FACTOR	(-2. * 30. / FRAME_HEIGHT_FLOAT)
  color c = render_floor_alt(x, y, scene.plane.center.x, fixed_mul(scene.camera.y, fixed_make_from_float(CAMERA_FACTOR)), fixed_sub(scene.plane.center.z, scene.camera.z));
  #define SPHERE_R	((-.707) * (-32.) / 4.5)
  coord_type dz = fixed_sub(scene.camera.z, fixed_make_from_double((-32.)));
  coord_type dx = fixed_sub(fixed_mul(x, dz), (fixed_sub(scene.sphere.center.x, scene.camera.x)));
  coord_type dy = fixed_sub(fixed_mul(y, dz), (fixed_sub(scene.sphere.center.y, scene.camera.y)));
  
  if((((((((fixed_gt(dx, fixed_make_from_float(-SPHERE_R))))!=0) & (((fixed_lt(dx, fixed_make_from_float(SPHERE_R))))!=0))!=0) & (((fixed_gt(dy, fixed_make_from_float(-SPHERE_R))))!=0))!=0) & (((fixed_lt(dy, fixed_make_from_float(SPHERE_R))))!=0)) {
    
    if(fixed_lt(fixed_add(fixed_mul(dx, dx), fixed_mul(dy, dy)), fixed_make_from_float(SPHERE_R * SPHERE_R))) c = scene.sphere.material.diffuse_color;
  }
  return c;
}

pixel_t render_pixel(uint16_t i, uint16_t j, scene_t scene)
{
  int16_t cx = i << 1;
  cx = cx - (FRAME_WIDTH + 1);
  int16_t cy = j << 1;
  cy = (FRAME_HEIGHT + 1) - cy;
  #define cshift	(-CLOG2(FRAME_HEIGHT))
  screen_coord_t x = fixed_shift(fixed_make_from_short(cx), cshift);
  screen_coord_t y = fixed_shift(fixed_make_from_short(cy), cshift);
  pixel_t pix;
  uint16_t scorebar = scene.scorebar * (FRAME_WIDTH - 2 * 10) / 15000;
  
  if(((((((i >= 10)!=0) & ((i < 10 + scorebar)!=0))!=0) & ((j > 10)!=0))!=0) & ((j < 2 * 10)!=0)) {
    pix.r = 0;
    pix.g = 200;
    pix.b = 0;
  }
  else {
    color c = render_pixel_internal_alt(x, y, scene, scene_colors(scene));
    uint9_t r = fixed_to_short(fixed_shift(c.x, 8));
    uint9_t g = fixed_to_short(fixed_shift(c.y, 8));
    uint9_t b = fixed_to_short(fixed_shift(c.z, 8));
    pix.r = (r >= 256) ? 255 : r;
    pix.g = (g >= 256) ? 255 : g;
    pix.b = (b >= 256) ? 255 : b;
  }
  return pix;
}

game_state_out_t next_state_func(game_state_in stin, game_state_t stinout)
{
  game_state_out_t n;
  n.stinout = stinout;
  ;
  n.stinout.plane_x = fixed_add(n.stinout.plane_x, n.stinout.sphere_xvel);
  n.stinout.sphere_yvel = fixed_add(n.stinout.sphere_yvel, fixed_make_from_double(.1));
  n.stinout.sphere_y = fixed_sub(n.stinout.sphere_y, n.stinout.sphere_yvel);
  coord_type underground = fixed_sub((fixed_sub(n.stinout.sphere_y, fixed_make_from_double(4.5))), stin.plane_y);
  
  if(fixed_is_negative(underground)) {
    n.stinout.sphere_xvel = fixed_sub(n.stinout.sphere_xvel, fixed_make_from_double(0.03));
    coord_type coord_x = fixed_sub(stin.sphere_x, n.stinout.plane_x);
    coord_type coord_z = fixed_sub(stin.sphere_z, n.stinout.plane_x);
    bool half_up = fixed_gt(n.stinout.sphere_y, stin.plane_y);
    
    if(half_up) {
      
      if(fixed_gt(n.stinout.sphere_yvel, fixed_make_from_double(0.))) n.stinout.heat = fixed_sub(fixed_make_from_int(0), fixed_shift(n.stinout.sphere_xvel, -1));
      {
        n.stinout.score = n.stinout.score + 1;
        
        if(((n.stinout.score >= 15000)!=0) & ((!n.stinout.won)!=0)) n.stinout.won = true;
        n.stinout.sphere_yvel = fixed_make_from_double(stin.press ? -2. : -.1 * .3);
        
        if(stin.press) n.stinout.sphere_xvel = fixed_make_from_double(-0.5);
      }
    }
    else {
      n.stinout.camera_z = fixed_sub(n.stinout.camera_z, fixed_shift(underground, -4));
    }
  }
  n.stinout.heat = fixed_sub(n.stinout.heat, fixed_shift(n.stinout.heat, -4));
  n.stinout.camera_y = fixed_add(n.stinout.camera_y, fixed_shift(fixed_sub(n.stinout.sphere_y, n.stinout.camera_y), -5));
  n.stout.lose = ((fixed_is_negative(underground))!=0) & (((-fixed_to_short(underground) & (0x0000FC00)) != 0)!=0);
  
  if(n.stout.lose) n.stinout.score = n.stinout.score - (n.stinout.score >> 4);
  n.stout.diffuse_color = color_select(n.stinout.heat, stin.lava_color, stin.gold_color);
  n.stout.reflect_color = fixed3_mul_fixed(stin.gold_reflect_color, (fixed_sub(fixed_make_from_double(1.), fixed_shift(n.stinout.heat, -2))));
  n.stout.scorebar = n.stinout.won ? 0 : n.stinout.score;
  return n;
}

full_state_t reset_state()
{
  uint16_t startpos = 110;
  material_t gold;
  gold.diffuse_color = const_fixed3_mul_double(K_gold_color, (1.5 * .15));
  gold.reflect_color = const_fixed3_mul_double(K_gold_color, (1.5 * (1. - .15)));
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
  scene.sphere.heat = fixed_make_from_double(0.);
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
  stin.press = false;
  game_state_t stinout;
  stinout.sphere_y = scene.sphere.center.y;
  stinout.heat = scene.sphere.heat;
  stinout.camera_y = scene.camera.y;
  stinout.camera_z = scene.camera.z;
  stinout.plane_x = fixed_make_from_int(-(startpos + 110));
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
  scene.sphere.yvel = fixed_to_float(outs.stinout.sphere_yvel);
  scene.scorebar = outs.stout.scorebar;
  scene.frame = scene.frame + 1;
  return scene;
}


