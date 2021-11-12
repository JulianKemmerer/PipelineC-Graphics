/*
Copyright (C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>
Inspired on tinyraytracer https://github.com/ssloy/tinyraytracer

Build & run:
$ clang++ -O3 -fopenmp=libiomp5 -ffast-math `sdl2-config --cflags --libs` tr.cpp -o tr  && ./tr

HOW TO PLAY:
 Press the left mouse button or the KEUYP to jump.
 Score increases when you're on floor, you win when the bar is full.
*/

#include <SDL2/SDL.h>


#define SCREEN_WIDTH 1366 //if defined goes fullscreen
#define SCREEN_HEIGHT 768

#define FRAME_WIDTH 480
#define FRAME_HEIGHT 360

#ifdef _DEBUG
#define SPHERE_MAXRECURSIVITY 2
#define PLANE_MAXRECURSIVITY 1
#else
#define SPHERE_MAXRECURSIVITY 2
#define PLANE_MAXRECURSIVITY 2
#endif

#include <limits>
#include <cmath>
#include <vector>
#include "geometry.h"


#define MAXSCORE 5000
#define SPHERE_RADIUS 4.

const float_type ambient_intensity = 0.25;
const float_type light_heigth = 16.;


struct Material {
    Material(const vec3 &color, const vec3 &rcolor) : diffuse_color(color), reflect_color(rcolor), has_reflection(false) {}
    Material() : has_reflection(false) {}
    vec3 diffuse_color;
    vec3 reflect_color;
    bool has_reflection;
};

struct Sphere {
    vec3 center;
    Material material;
};

struct Plane {
    vec3 center;
    Material material;
    vec3 color1, color2;
    vec3 border_color;
};

bool ray_sphere_intersect(const vec3 &orig, const vec3 &dir, const Sphere &s, float_type &t0, vec3& hit, vec3& N) {

    vec3 L = s.center - orig;
    float_type tca = L*dir;
    float_type d2 = L*L - tca*tca;
    float_type diff = float_type(SPHERE_RADIUS*SPHERE_RADIUS) - d2;
    if (is_negative(diff))
      return false;
    float_type thc = SQRT(diff);
    t0       = tca - thc;
    float_type t1 = tca + thc;
    if (t0 < 1e-3)
      return false;

    hit = orig + dir*t0;
    N = (hit - s.center).normalize();

    return true;
}


vec3 reflect(const vec3 &I, const vec3 &N) { return I - N*float_shift(I*N,1); }

float_type plane_has_hole(float_type x, float_type z)
{
  float_type ret = 1.; 
  x=float_shift(x, -4);
  z=float_shift(z, -5);
  int ix = fround(x);


  int iz = fround(z);
  float_type fracx = float_type(ix)-x; //FIXME: do function returning both round and fractional part
  float_type fracz = float_type(iz)-z;
  uint16_t hx = knuth_hash(ix) >> 21;
  uint16_t hz = knuth_hash(iz) >> 21;
  if((hx ^ hz) < ix+600)
  {
    if(ix > 0x240) return 0.; //no hole

    bool fx = hx & 1;
    bool fz = (hz>>1) & 1;
    bool hard = (ix & 0x200);
    if((((ix & 0xC0) == 0xC0) && (fx ^ fz)))
      ret = fracx*fracx + fracz*fracz - .3*.3; //circles
    else
    {
      float_type ax = FABS(fracx);
      float_type az = FABS(fracz);
      ret = (hard ? float_type(std::max(az,ax) -.2) :  (ax + az) - .4); //rhombus or squares
    }
  }
  return ret;
}

bool ray_plane_intersect(const vec3 &orig, const vec3 &dir, const Plane& plane, float_type &t0, vec3 &hit, vec3 &N, float_type spheres_dist)
{
    if (float_31_0(dir.y) != 0) // avoid division by zero
    { 
        float_type d = -(orig.y-plane.center.y)/dir.y;
        vec3 pt = orig + dir*d;
        if (d>1e-3 && d<spheres_dist)
        {
            t0 = d;
            hit = pt;
            N = vec3({0.,1.,0.});
            return true;
        }
    }
    return false;
}

bool scene_intersect(const vec3 &orig, const vec3 &dir, const Plane& plane, const Sphere &s, vec3 &hit, vec3 &N, Material &material, int depth) {

    float_type spheres_dist = std::numeric_limits<float>::max();
    if(depth<PLANE_MAXRECURSIVITY)
    {
        float_type dist_i = 0.;
        if (ray_sphere_intersect(orig, dir, s, dist_i, hit, N))
        {
            spheres_dist = dist_i;
            material = s.material;
        }
    }

    float_type checkerboard_dist = std::numeric_limits<float>::max();
    if(depth<SPHERE_MAXRECURSIVITY)
    {
        float_type dist_i = 0.;
        if (ray_plane_intersect(orig, dir, plane, dist_i, hit, N, spheres_dist))
        {
            vec3 o = hit - plane.center;
            float hole_margin = plane_has_hole(o.x, o.z);
            if(!is_negative(hole_margin))
            {
              checkerboard_dist = dist_i;
              material = plane.material;

              int32_t ix = int(o.x)>>3;
              int32_t iz = int(o.z)>>3;

              bool cx = ix & 1;
              bool cz = iz & 1;
              const float_type bk = .3;
              vec3 color2({ix & 0x400 ? bk : plane.color2.x, ix & 0x200 ? bk : plane.color2.y, ix & 0x100 ? bk : plane.color2.z});
              material.diffuse_color = (cx == cz) ? plane.color1 : color2;
              if(hole_margin < .1)
                  material.diffuse_color = plane.border_color;
           }
        }
    }

    return spheres_dist < 400. || checkerboard_dist < 400.0;
}


vec3 cast_ray(const vec3 &orig, const vec3 &dir, const Plane& plane, const Sphere &sphere, int depth = 0)
{
#ifdef _LOG
    std::cout << "depth: " << depth << std::endl;
#endif
    vec3 point, N;
    Material material;

    float_type y = is_negative(dir.y) ? float_type(0.) : float_type(dir.y*dir.y);
    bool has_star = (knuth_hash(float_31_0(dir.x)+1) & knuth_hash(float_31_0(dir.y)+1)) < FRAME_WIDTH;
    vec3 background = depth == 0 && has_star ? vec3({.5,.5,.5}) : vec3({y,y,y});

    vec3 comb_color;
    float_type ys = float_shift(FABS(dir.y), 3);
    float_type mix = ys<1. ? float_type(ys): float_type(1.); //max
    if (depth>1 || !scene_intersect(orig, dir, plane, sphere, point, N, material, depth)) 
    {
        comb_color = background;
    }
    else
    {
        float_type d = point.x*point.x + light_heigth*light_heigth + point.z*point.z;
        float_type diffuse_light_intensity = ambient_intensity + std::max(float_type(0.), light_heigth*RSQRT(d));
        vec3 diffuse_color = material.diffuse_color * diffuse_light_intensity;

        if(!material.has_reflection)
          comb_color = diffuse_color;
        else
        {
          vec3 reflect_color = cast_ray(point, reflect(dir, N), plane, sphere, depth + 1);
          comb_color = diffuse_color + vecmul(reflect_color, material.reflect_color);
        }

        mix = float_type(2000.)/(point.z*point.z+2000.); //fog. FIXME: use formula without division
    }

    vec3 fog = vec3({.02,.02,.12});
    return float_select(mix, comb_color, fog);

}

bool fb_init(unsigned width, unsigned height);
void fb_update();
bool fb_should_quit();
void fb_deinit();
struct pixel_t { uint8_t a, b, g, r; };
pixel_t pixelbuf[FRAME_HEIGHT][FRAME_WIDTH];
inline void fb_setpixel(pixel_t *p, uint8_t r, uint8_t g, uint8_t b) { p->a = 0xFF; p->b = b; p->g = g; p->r = r; }
inline void fb_setpixel(unsigned x, unsigned y, uint8_t r, uint8_t g, uint8_t b) { fb_setpixel(&pixelbuf[y][x], r, g, b); }

#ifdef _DEBUG
perfcount currentperf;
perfcount *fp32::perf = &currentperf;
#endif

#define SCORE_MARGINS 10

void render(const vec3& start, const Plane& plane, const Sphere &sphere, uint32_t score) {
    uint32_t scorebar = score*(FRAME_WIDTH-2*SCORE_MARGINS)/MAXSCORE;

#ifndef _DEBUG
#pragma omp parallel for
#endif
    for (int j = 0; j<FRAME_HEIGHT; j++) {
        for (int i = 0; i<FRAME_WIDTH; i++) {
#ifdef _DEBUG
            static perfcount max;
            if(fp32::perf->mul > max.mul)
            {
              max = *fp32::perf;
              std::cout << "Rendering resources" << std::endl;
              max.dump();
            }
            fp32::perf->clear();
#endif

#ifdef SCREEN_WIDTH
            float_type x = float_type((i<<1)-FRAME_WIDTH-1)*(.5 / FRAME_WIDTH * SCREEN_WIDTH/SCREEN_HEIGHT);
#else
            float_type x = float_type((i<<1)-FRAME_WIDTH-1)*(.5 / FRAME_HEIGHT);
#endif
            float_type y = float_type((j<<1)-FRAME_HEIGHT-1)*(-.5 / FRAME_HEIGHT);

            vec3 dir = vec3({x, y, -1.}).normalize();

            int r;
            int g;
            int b;

            if(i >= SCORE_MARGINS && i < SCORE_MARGINS + scorebar && j > SCORE_MARGINS && j < 2*SCORE_MARGINS)
            {
              r = 0; g = 200; b = 0;
            }
            else
            {
              vec3 pix = cast_ray(start, dir, plane, sphere);
              r = float_shift(pix.x, 8);
              g = float_shift(pix.y, 8);
              b = float_shift(pix.z, 8);
            }
            fb_setpixel(i, j, r & ~0xFF ? 0xFF:r, g & ~0xFF ? 0xFF:g, b & ~0xFF ? 0xFF:b);

        }
    }
}

bool button_pressed();

#define PLANE_OFFSET 100.

int game(int startpos)
{
    vec3 gold_color({1.5*243/256.0,  1.5*201/256.0, 1.5*104/256.0});
    vec3 lava_color({255/256.0*2.0,  100/256.0*1.5, 32/256.0*1.5});

    Plane plane;
    plane.center = vec3({0., 0., 0.});
    plane.material.reflect_color = vec3({.5, .5, .5});
    plane.color1 = vec3({.8, .8, .8});
    plane.color2 = vec3({0.15, 0., 0.});
    plane.border_color = vec3({1.,1.,1.});

    const float gold_albedo = .15;
    Material gold(gold_color*gold_albedo, gold_color*(1.-gold_albedo));

    Sphere sphere({vec3({-20., 20., -32.}), gold});

    sphere.material.has_reflection = SPHERE_MAXRECURSIVITY > 1;
    plane.material.has_reflection = PLANE_MAXRECURSIVITY > 1;

    float_type sphere_yvel = 0., sphere_xvel = -0.5;

    vec3 camera({0.,20.,30.});
    uint32_t score = 0;
    float_type heat = 0., temp = 0.;
    plane.center.x = -(startpos + PLANE_OFFSET);

    uint32_t frame = 0;
    for(;;)
    {
#ifdef _DEBUG
      fp32::perf->clear();
#endif

      if(fb_should_quit())
      {
        std::cout << "score: " << score << std::endl;
        return -1;
      }

      bool won = score >= MAXSCORE;

      plane.center.x = plane.center.x + sphere_xvel;
      plane.center.z = plane.center.x;

      sphere_yvel = sphere_yvel + 0.1;
      sphere.center.y =  (won ? float_type(SPHERE_RADIUS*.55) : float_type(sphere.center.y-sphere_yvel));
   
      float_type underground = (sphere.center.y - SPHERE_RADIUS) - plane.center.y;
      if(is_negative(underground))
      {

        bool half_up = sphere.center.y > plane.center.y;
        if(half_up)
        {
          vec3 coord = sphere.center - plane.center;
          sphere_xvel = sphere_xvel - 0.03;

          if(!is_negative(sphere_yvel))
            heat = heat + .05;

          float_type hole = plane_has_hole(coord.x, coord.z);
          if(!is_negative(hole))
          {
            score = score + !won;

            bool press = button_pressed();
            sphere_yvel = press ? -2. : -.03;
            if(press && !won) sphere_xvel = -0.5; //default speed
          }
        }
        
        if(!half_up || won)
          camera.z = camera.z-float_shift(underground, -4); //lose or won, fadeout
      }


      sphere.material.diffuse_color = float_select(heat, lava_color, gold.diffuse_color);
      sphere.material.reflect_color = gold.reflect_color*(float_type(1.)-heat);
      heat = heat-float_shift(heat, -4);

      camera.y = float_select_byshift(-5, sphere.center.y, camera.y);

      if(exp_gt(underground, -2000.))
        break;

#ifdef _DEBUG
      static perfcount max;
      if(fp32::perf->mul > max.mul)
      {
         max = *fp32::perf;
         std::cout << "Gameplay resources" << std::endl;
         max.dump();
      }
      fp32::perf->clear();
#endif

      render(camera, plane, sphere, won ? 0 : score);
      fb_update();
      ++frame;
    }

    std::cout << "score: " << score << std::endl;
    return -(plane.center.x - PLANE_OFFSET);
}

int main() {
#ifdef SCREEN_WIDTH
    if(!fb_init(SCREEN_WIDTH, SCREEN_HEIGHT))
#else
    if(!fb_init(FRAME_WIDTH, FRAME_HEIGHT))
#endif
        return 1;

    int pos = 0;
    for(;;)
    {
      //printf("start pos %d\n", pos);
      pos = game(pos);
      if(pos < 0)
        break;
      //printf("end pos %d\n", pos);
      pos = uint32_t(pos) & ~1023;
    }

    fb_deinit();
    return 0;
}

SDL_Window* win = NULL;
SDL_Renderer* renderer = NULL;
SDL_Texture* texture = NULL;

bool fb_init(unsigned width, unsigned height)
{
    if(SDL_Init(SDL_INIT_VIDEO) < 0)
        return false;

    win = SDL_CreateWindow("Raytracer", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, width, height, SDL_WINDOW_SHOWN);
    if (!win)
        return false;
#ifdef SCREEN_WIDTH
    SDL_SetWindowFullscreen(win, SDL_WINDOW_FULLSCREEN);
#endif
    SDL_ShowCursor(SDL_DISABLE);
    renderer = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!renderer)
        return false;

    texture = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_RGBA8888, SDL_TEXTUREACCESS_TARGET, FRAME_WIDTH, FRAME_HEIGHT);
    if (!texture)
        return false;

    return true;
}

bool fb_should_quit()
{
    SDL_Event event;
    if (SDL_PollEvent(&event))
    {
        switch(event.type)
        {
          case SDL_KEYDOWN:
            if(event.key.keysym.sym != SDLK_ESCAPE)
             break;
          case SDL_QUIT:
            return true;
        }
    }
    return false;
}

void fb_update()
{
    SDL_UpdateTexture(texture, NULL, pixelbuf, FRAME_WIDTH*sizeof(pixel_t));
    SDL_RenderClear(renderer);
    SDL_RenderCopy(renderer, texture, NULL, NULL);
    SDL_RenderPresent(renderer);
}

void fb_deinit()
{
    SDL_SetWindowFullscreen(win, 0); //SDL_WINDOW_FULLSCREEN
    SDL_DestroyTexture(texture);
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(win);
    SDL_Quit();
}

bool button_pressed()
{
  int x, y;
  return SDL_GetKeyboardState(NULL)[SDL_SCANCODE_UP] || (SDL_GetMouseState(&x, &y) & SDL_BUTTON_LMASK);
}

