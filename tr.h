#ifndef __TR_H__
#define __TR_H__

#define GAME_MODE

#ifdef GAME_MODE
#define HEAT_CONSTANT .1
#define STAR_INTENSITY .35
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
//#define SPHERE_MOTIONBLUR
#endif

#define MAXSCORE 15000

#define RAY_NOINT BIG_FLOAT //arbitraty value, maybe MAXFLOAT

//constants
#define AMBIENT_INTENSITY  .2
#define LIGHT_Y 16.
#define LIGHT_Z (-10.)
#define DIST_SHIFT (9) //for fog calculations
#define SPHERE_RADIUS 4.5
#define SPHERE_Z (-32.)
#define SPHERE_X (-20.)
#define CAMERA_Z 30. //start pos
#define SCORE_MARGINS 10
#define FLOOR_SHIFT 3
#define FLOOR_X (-110.)
#define FLOOR_Y 0.
#define FLOOR_Z 0.

#ifdef GAME_MODE
#define CIRCLE_SIZE .3
#define RHOMBUS_SIZE .4
#define SQUARE_SIZE .3
#define GRAVITY_CONSTANT .1//.1
#define JUMP_CONSTANT 2.
#define ZOOMOUT_CONSTANT 4 //.075
#define XVEL_CONSTANT 0.03
#define XVEL_DEFAULT 0.5
#define HOLE_GUARD_MARGIN .05
#else
#define SQUARE_SIZE .4
#define GRAVITY_CONSTANT .05
#define JUMP_CONSTANT 1.6
#define ZOOMOUT_CONSTANT 5//.045	
#define XVEL_CONSTANT 0.015
#define XVEL_DEFAULT 0.23
#define HOLE_GUARD_MARGIN .05
#endif

#define GRAVITY_CONSTANT_LIGHT .03

#define EPS 1.e-3

#define PIPELINEC_SUGAR
//#warning PIPELINEC_SUGAR shouldn't be a need

struct material_t {
    color diffuse_color;
    color reflect_color;
};

#ifndef SHADER
#define COLOR_DECOMP 1 //1 for grayscale, 3 for colors, (leave not defined for no decomposition)
#endif

#ifdef COLOR_DECOMP
#define color_basic_t color_type
inline color_type colorbasic_select(color_type x, color_type a, color_type b) { return b+(a-b)*x; }
#define color_select colorbasic_select //FIXME: too hacky
#undef HEAT_CONSTANT //it uses color_select at frame frequency, but it's now defined as single channel
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
    coord_type yvel;
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
  color fog;
  uint16_t frame;
  uint16_t scorebar;
#ifdef COLOR_DECOMP
  uint2_t current_color_channel;
#endif
};

struct scene_colors_t
{
  render_material_t sphere, plane;
  color_basic_t plane_color1, plane_color2;
  color_basic_t fog; //FIXME: maybe background
};


struct full_state_t
{
  scene_t scene;
  color gold_color, gold_reflect_color, lava_color;
  coord_type plane_y;
  coord_type sphere_x;
  coord_type sphere_z;
  coord_type sphere_y;
  color_type heat;
  coord_type camera_y;
  coord_type camera_z;
  coord_type plane_x;
  coord_type sphere_xvel;
  coord_type sphere_yvel;
  color diffuse_color, reflect_color;
  uint16_t scorebar;
  uint16_t score;
  bool won;
  bool lose;
};


static const color K_gold_color = {(1.2*.15)*243./256., (1.2*.15)*201./256., (1.2*.15)*104./256.};
static const color K_gold_reflect_color = {1.5*(1.-.15)*243./256., 1.5*(1.-.15)*201./256., 1.5*(1.-.15)*104./256.};
static const color K_lava_color = {255./256.*2.0, 70./256.*1.5, 32./256.*1.5};
static const color K_plane_color1 = {.8, .8, .8};
static const color K_plane_color2 = {.1, .0, .0};
static const color K_floor_difusse = {1., 1., 1.};
static const color K_floor_reflect = {.25, .25, .25};
#ifdef GAME_MODE
static const color K_fog_color = {.01,.01,.1};
#else
static const color K_fog_color = {.02,.02,.12};
#endif
static const object_coord_t K_plane_center_start = {FLOOR_X, FLOOR_Y, FLOOR_Z}; //FIXME: test if works when != 0
static const object_coord_t K_sphere_center_start = {-20., 40., SPHERE_Z};
static const object_coord_t K_camera_pos_start = {0.,30.,CAMERA_Z};
static const vec3 VECTOR_NURMAL_UPWARDS = {0.,1.,0.};

#endif //__TR_H__
