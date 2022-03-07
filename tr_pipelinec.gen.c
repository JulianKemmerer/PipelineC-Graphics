





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
  return fixed_to_short(fixed_add(a, fixed_make_from_float((float).5)));
}

fixed fixed_shift(fixed a, int6_t shift)
{
  return shift >= 0 ? (fixed_shl_signed_char(a, shift)) : (fixed_shr_signed_char(a, -shift));
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

#define BIG_FLOAT	((float)100000000000000000.)
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
#define K_gold_color	(fixed3_make(fixed_make_from_double(((double)1.5 * (double).15) * (double)243. / (double)256.), fixed_make_from_double(((double)1.5 * (double).15) * (double)201. / (double)256.), fixed_make_from_double(((double)1.5 * (double).15) * (double)104. / (double)256.)))
#define K_gold_reflect_color	(fixed3_make(fixed_make_from_double((double)1.5 * ((double)1. - (double).15) * (double)243. / (double)256.), fixed_make_from_double((double)1.5 * ((double)1. - (double).15) * (double)201. / (double)256.), fixed_make_from_double((double)1.5 * ((double)1. - (double).15) * (double)104. / (double)256.)))
#define K_lava_color	(fixed3_make(fixed_make_from_double((double)255. / (double)256. * (double)2.0), fixed_make_from_double((double)70. / (double)256. * (double)1.5), fixed_make_from_double((double)32. / (double)256. * (double)1.5)))
#define K_plane_color1	(fixed3_make(fixed_make_from_double((double).8), fixed_make_from_double((double).8), fixed_make_from_double((double).8)))
#define K_plane_color2	(fixed3_make(fixed_make_from_double((double).1), fixed_make_from_double((double).0), fixed_make_from_double((double).0)))
#define K_floor_difusse	(fixed3_make(fixed_make_from_double((double)1.), fixed_make_from_double((double)1.), fixed_make_from_double((double)1.)))
#define K_floor_reflect	(fixed3_make(fixed_make_from_double((double).5), fixed_make_from_double((double).5), fixed_make_from_double((double).5)))
#define K_fog_color	(fixed3_make(fixed_make_from_double((double).01), fixed_make_from_double((double).01), fixed_make_from_double((double).1)))
#define K_plane_center_start	(fixed3_make(fixed_make_from_double(((double)-110.)), fixed_make_from_double((double)0.), fixed_make_from_double((double)0.)))
#define K_sphere_center_start	(fixed3_make(fixed_make_from_double((double)-20.), fixed_make_from_double((double)40.), fixed_make_from_double(((double)-32.))))
#define K_camera_pos_start	(fixed3_make(fixed_make_from_double((double)0.), fixed_make_from_double((double)30.), fixed_make_from_double((double)30.)))
#define VECTOR_NURMAL_UPWARDS	{(double)0., (double)1., (double)0.}
#define hole_t coord_type
hole_t plane_has_hole(hole_t x, hole_t z)
{
  hole_t ret = fixed_make_from_double((double)1.);
  x = fixed_shift(x, -4);
  z = fixed_shift(z, -5);
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

uint12_t star_vel(uint12_t a, uint8_t b)
{
  uint12_t r = a;
  
  if(b & 1) r = r + a;
  
  if(b & 2) r = r + (a << 1);
  
  if(b & 4) r = r + (a << 2);
  return r >> 4;
}

color background_color_alt(screen_coord_t x, screen_coord_t y, uint16_t frame, uint16_t off)
{
  fixed_type dir_y = fixed_mul((fixed_sub(y, fixed_make_from_double((double).5))), fixed_abs(fixed_sub(fixed_mul(x, x), fixed_make_from_double((double)1.))));
  color c = fixed3_make_from_fixed((fixed_lt(dir_y, fixed_make_from_int(0)) ? fixed_make_from_double((double)0.) : fixed_mul(dir_y, dir_y)));
  int16_t cy = fixed_to_short(fixed_shift(y, -(FRAME_WIDTH < 1024 ? -9 : -11) - 1));
  int16_t cx = fixed_to_short(fixed_shift(x, -(FRAME_WIDTH < 1024 ? -9 : -11) - 1)) + star_vel(off, cy & 7);
  uint16_t pix_hash = hash16(cx ^ hash16(cy));
  
  if((pix_hash & 0xFFC0) == 0) c = fixed3_make_from_fixed(fixed_add(fixed_shift(fixed_make_from_int(((pix_hash << 2) + frame) & 0x7F), -9), fixed_make_from_double((double).35)));
  return c;
}

color render_floor_alt(screen_coord_t x, screen_coord_t y, coord_type px, coord_type py, coord_type pz, color c)
{
  coord_type inv_y = fixed_make_from_double((double)0.);
  uint16_t u;
  uint16_t v;
  bool drawfog = 0;
  
  if(((fixed_neq(y, fixed_make_from_double((double)0.)))!=0) & (((fixed_is_negative(y) == fixed_is_negative(py)))!=0)) {
    inv_y = fixed_div(fixed_shift(py, -(-3)), y);
    coord_type ix = fixed_sub(fixed_mul(inv_y, x), px);
    coord_type iz = fixed_add(inv_y, pz);
    u = fixed_to_short(fixed_shift((ix), ((-3))));
    v = fixed_to_short(fixed_shift((iz), ((-3))));
    hole_t hole_d = plane_has_hole(ix, fixed_sub(fixed_make_from_int(0), iz));
    
    if(!(fixed_lt(hole_d, fixed_make_from_int(0)))) {
      c = ((u ^ v) & 1) ? K_plane_color2 : K_plane_color1;
      
      if(fixed_lt(hole_d, fixed_make_from_double((double).1))) {
        c = K_floor_difusse;
      }
      drawfog = 1;
    }
  }
  else drawfog = 1;
  
  if(drawfog) {
    c = color_select(fixed_abs(y), c, fixed3_make_from_const_fixed3(K_fog_color));
  }
  return c;
}

color render_pixel_internal_alt(screen_coord_t x, screen_coord_t y, scene_t scene, scene_colors_t colors)
{
  color c = background_color_alt(x, y, scene.frame, -fixed_to_short(scene.plane.center.x));
  bool drawfloor = 1;
  #define SPHERE_R	(((double)-.707) * ((double)-32.) / (double)4.5)
  coord_type dz = fixed_sub(scene.camera.z, fixed_make_from_double(((double)-32.)));
  coord_type dx = fixed_sub(fixed_mul(x, dz), (scene.sphere.center.x));
  coord_type dy = fixed_sub(fixed_mul(y, dz), (fixed_sub(scene.sphere.center.y, scene.camera.y)));
  
  if((((((((fixed_gt(dx, fixed_make_from_float(-SPHERE_R))))!=0) & (((fixed_lt(dx, fixed_make_from_float(SPHERE_R))))!=0))!=0) & (((fixed_gt(dy, fixed_make_from_float(-SPHERE_R))))!=0))!=0) & (((fixed_lt(dy, fixed_make_from_float(SPHERE_R))))!=0)) {
    
    if(fixed_lt(fixed_add(fixed_mul(dx, dx), fixed_mul(dy, dy)), fixed_make_from_float(SPHERE_R * SPHERE_R))) {
      c = scene.sphere.material.diffuse_color;
      drawfloor = fixed_lt(fixed_add(scene.sphere.center.y, dy), fixed_make_from_double((double)0.));
    }
  }
  
  if(drawfloor) {
    float FRAME_HEIGHT_FLOAT = FRAME_HEIGHT;
    float CAMERA_FACTOR = (double)-2. * (double)30. / FRAME_HEIGHT_FLOAT;
    c = render_floor_alt(x, y, scene.plane.center.x, fixed_mul(scene.camera.y, fixed_make_from_float(CAMERA_FACTOR)), fixed_sub(scene.plane.center.z, scene.camera.z), c);
  }
  return c;
}

uint9_t dither(uint16_t x, uint16_t y, uint9_t c)
{
  return (c + (hash16((x & 0x7) ^ hash16(y & 0x7)) & 0xF)) & 0x1F0;
}

pixel_t render_pixel(uint16_t i, uint16_t j, scene_t scene)
{
  int16_t cx = i << 1;
  cx = cx - (FRAME_WIDTH + 1);
  int16_t cy = j << 1;
  cy = (FRAME_HEIGHT + 1) - cy;
  screen_coord_t x = fixed_shift(fixed_make_from_short(cx), (FRAME_WIDTH < 1024 ? -9 : -11));
  screen_coord_t y = fixed_shift(fixed_make_from_short(cy), (FRAME_WIDTH < 1024 ? -9 : -11));
  pixel_t pix;
  #define score_factor	((1 << 11) * (FRAME_WIDTH - 2 * 10) / 15000)
  uint16_t scorebar = score_factor * scene.scorebar >> 11;
  
  if(((((((i >= 10)!=0) & ((i < 10 + scorebar)!=0))!=0) & ((j > 10)!=0))!=0) & ((j < 2 * 10)!=0)) {
    pix.r = 0;
    pix.g = 200;
    pix.b = 0;
  }
  else {
    color c = render_pixel_internal_alt(x, y, scene, scene_colors(scene));
    uint9_t r = fixed_to_short(fixed_shift((c.x), (8)));
    uint9_t g = fixed_to_short(fixed_shift((c.y), (8)));
    uint9_t b = fixed_to_short(fixed_shift((c.z), (8)));
    r = dither(i, j, r);
    g = dither(i, j, g);
    b = dither(i, j, b);
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
  scene.sphere.heat = fixed_make_from_double((double)0.);
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
  stinout.plane_x = fixed_make_from_double(((double)-110.));
  stinout.sphere_xvel = fixed_make_from_double((double)0.);
  stinout.sphere_yvel = fixed_make_from_double((double)0.);
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
  n.stinout.plane_x = fixed_add(n.stinout.plane_x, n.stinout.sphere_xvel);
  n.stinout.sphere_yvel = fixed_add(n.stinout.sphere_yvel, fixed_make_from_double((double).1));
  n.stinout.sphere_y = fixed_sub(n.stinout.sphere_y, n.stinout.sphere_yvel);
  coord_type underground = fixed_sub((fixed_sub(n.stinout.sphere_y, fixed_make_from_double((double)4.5))), stin.plane_y);
  
  if(fixed_is_negative(underground)) {
    n.stinout.sphere_xvel = fixed_sub(n.stinout.sphere_xvel, fixed_make_from_double((double)0.03));
    coord_type coord_x = fixed_sub(stin.sphere_x, n.stinout.plane_x);
    coord_type coord_z = fixed_sub(stin.sphere_z, n.stinout.plane_x);
    bool half_up = fixed_gt(n.stinout.sphere_y, stin.plane_y);
    
    if(half_up) {
      
      if(fixed_gt(n.stinout.sphere_yvel, fixed_make_from_double((double)0.))) n.stinout.heat = fixed_sub(fixed_make_from_int(0), fixed_shift(n.stinout.sphere_xvel, -1));
      
      if(fixed_gt(plane_has_hole(coord_x, coord_z), fixed_make_from_double((double)-.05))) {
        n.stinout.score = n.stinout.score + 1;
        
        if(((n.stinout.score >= 15000)!=0) & ((!n.stinout.won)!=0)) n.stinout.won = 1;
        
        if(stin.press) {
          n.stinout.sphere_yvel = fixed_make_from_double((double)-2.);
          n.stinout.sphere_xvel = fixed_make_from_double((double)-0.5);
        }
        else n.stinout.sphere_yvel = fixed_make_from_double((double)-.03);
      }
    }
    else {
      n.stinout.camera_z = fixed_sub(n.stinout.camera_z, fixed_shift(underground, -4));
    }
  }
  n.stinout.heat = fixed_sub(n.stinout.heat, fixed_shift(n.stinout.heat, -4));
  n.stinout.camera_y = fixed_add(n.stinout.camera_y, fixed_shift(fixed_sub(n.stinout.sphere_y, n.stinout.camera_y), -5));
  n.stout.lose = ((fixed_is_negative(underground))!=0) & (((-fixed_to_short(underground) & (0x0000FC00)) != 0)!=0);
  n.stout.diffuse_color = color_select(n.stinout.heat, stin.lava_color, stin.gold_color);
  n.stout.reflect_color = fixed3_mul_fixed(stin.gold_reflect_color, (fixed_sub(fixed_make_from_double((double)1.), fixed_shift(n.stinout.heat, -2))));
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
  scene.sphere.yvel = fixed3_make_from_fixed(outs.stinout.sphere_yvel);
  scene.scorebar = outs.stout.scorebar;
  scene.frame = scene.frame + 1;
  return scene;
}


