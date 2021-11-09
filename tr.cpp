/*
Original code: Dmitry V. Sokolov  https://github.com/ssloy/tinyraytracer
Original license: WTFPL (http://www.wtfpl.net/)

Copyright (C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>

Build & run:
$ clang++ -O3 -ffast-math tr.cpp -o tr -lSDL2 && ./tr

TO PLAY: press the "UP" button when the ball is sinking
*/

#include <SDL2/SDL.h>

#define FRAME_WIDTH 640
#define FRAME_HEIGHT 480

#include <limits>
#include <cmath>
#include <vector>
#include "geometry.h"


uint32_t knuth_hash(uint32_t v)
{
    return v * uint32_t(2654435761);
}

const float_type ambient_intensity = 0.5;

struct Light {
    Light(const vec3 &p, const float_type &i) : position(p), intensity(i) {}
    vec3 position;
    float_type intensity;
};

struct Material {
    Material(const vec3 &a, const vec3 &color, const float &spec) : albedo(a), diffuse_color(color), specular_exponent(spec) {}
    Material() : albedo({1.,0.}), diffuse_color() {}
    vec3 albedo; //[0]=opacity vs. reflection mix [1]=tinted vs. non tinted reflection [2]=specular reflection
    vec3 diffuse_color;
    float specular_exponent;
};

struct Sphere {
    vec3 center;
    float_type radius;
    Material material;
};

struct Plane {
    vec3 center;
    vec2 size;
    Material material;
    vec3 color1, color2;
};

bool ray_sphere_intersect(const vec3 &orig, const vec3 &dir, const Sphere &s, float_type &t0) {
    vec3 L = s.center - orig;
    float_type tca = L*dir;
    float_type d2 = L*L - tca*tca;
    if (d2 > s.radius*s.radius) return false;
    float_type thc = sqrtf(s.radius*s.radius - d2);
    t0       = tca - thc;
    float_type t1 = tca + thc;
    if (t0 < 1e-3) t0 = t1;  // offset the original point to avoid occlusion by the object itself
    if (t0 < 1e-3) return false;
    return true;
}


vec3 reflect(const vec3 &I, const vec3 &N) {
    return I - N*((I*N)*2.);
}

bool plane_has_hole(float_type x, float_type z)
{
 return ((knuth_hash((int(x)+255) >> 4) ^ knuth_hash(int(z) >> 5)) >> 29) < 2;
}

bool scene_intersect(const vec3 &orig, const vec3 &dir, const Plane& plane, const std::vector<Sphere> &spheres, vec3 &hit, vec3 &N, Material &material) {
    float_type spheres_dist = std::numeric_limits<float_type>::max();
    for (const Sphere &s : spheres) {
        float_type dist_i;
        if (ray_sphere_intersect(orig, dir, s, dist_i) && dist_i < spheres_dist) {
            spheres_dist = dist_i;
            hit = orig + dir*dist_i;
            N = (hit - s.center).normalize();
            material = s.material;
        }
    }

    float_type checkerboard_dist = std::numeric_limits<float_type>::max();
    if (FABS(dir.y)>1e-3) { // avoid division by zero
        float_type d = -(orig.y-plane.center.y)/dir.y; // the checkerboard plane has equation y = -4
        vec3 pt = orig + dir*d;
        vec3 o = pt - plane.center;
        //bool plane_presence = FABS(o.x)<plane.size[0] && FABS(o.z)<plane.size[1];
        bool hole = plane_has_hole(o.x, o.z);
        if (d>1e-3 && !hole && d<spheres_dist) {
            checkerboard_dist = d;
            hit = pt;
            N = vec3{0.,1.,0.};
            bool cx = (int(-o.x) >> 3) & 1;
            bool cz = (int(o.z) >> 3) & 1;
            material = plane.material;
            material.diffuse_color = (cx == cz) ? plane.color1 : plane.color2;
        }
    }
    return std::min(spheres_dist, checkerboard_dist)<1000.0;
}


vec3 cast_ray(const vec3 &orig, const vec3 &dir, const Plane& plane, const std::vector<Sphere> &spheres, const std::vector<Light> &lights, int depth = 0) {
    vec3 point, N;
    Material material;

    float_type y = dir.y > 0. ? dir.y*dir.y*dir.y : float_type(0.);
    //vec3 background = dir.y > 0 ? vec3({y, y, y}) : vec3({float_type(0.0), float_type(0.0), float_type(0.0)});
    vec3 fog = vec3{.3*0.2,.3*0.2,.7*0.2};
    vec3 background = (knuth_hash(float_31_0(dir.x)) & knuth_hash(float_31_0(dir.y))) < 0x40 ? vec3({.3,.3,.3}) : vec3({y,y,y});

    vec3 comb_color;
    float_type ys = FABS(dir.y)*10.;
    float_type mix = (ys<1. ? (ys-1.)*(dir.x*dir.x-1.): float_type(0.));
    if (depth>1 || !scene_intersect(orig, dir, plane, spheres, point, N, material)) { // background color
        comb_color = background;
    }
    else
    {
        vec3 reflect_dir = reflect(dir, N).normalize();
        vec3 reflect_orig = (reflect_dir*N < 0.) ? (point - N*1e-3) : (point + N*1e-3);
        vec3 reflect_color = cast_ray(reflect_orig, reflect_dir, plane, spheres, lights, depth + 1);

        float_type diffuse_light_intensity = 0., specular_light_intensity = 0.;
        for (size_t i=0; i<lights.size(); i++) {
            vec3 light_dir      = (lights[i].position - point).normalize();
            diffuse_light_intensity = diffuse_light_intensity + lights[i].intensity * std::max(float_type(0.), light_dir*N);
            specular_light_intensity = specular_light_intensity + (float_type)std::pow(std::max(float_type(0.), reflect(light_dir, N)*dir), material.specular_exponent)*lights[i].intensity;
       }

        vec3 diffuse_color = material.diffuse_color * (ambient_intensity+diffuse_light_intensity);
        vec3 reflect_color_comb = reflect_color*material.albedo[2] - vecmul(reflect_color, diffuse_color*(material.albedo[2]-1.));
        comb_color = diffuse_color*material.albedo[0] - reflect_color_comb*(material.albedo[0]-1.);
        mix = float_type(10000.)/(point.z*point.z+10000.); //fog
        mix = -(mix-1.);
    }
/*
        vec3 spec_color = vec3{specular_light_intensity, specular_light_intensity, specular_light_intensity} * material.albedo[1];
        return comb_color+spec_color;
*/
    return fog*mix-comb_color*(mix-1.);

}

bool fb_init(unsigned width, unsigned height);
void fb_update();
bool fb_should_quit();
void fb_deinit();
struct pixel_t { uint8_t a, b, g, r; };
pixel_t pixelbuf[FRAME_HEIGHT][FRAME_WIDTH];
inline void fb_setpixel(pixel_t *p, uint8_t r, uint8_t g, uint8_t b) { p->a = 0xFF; p->b = b; p->g = g; p->r = r; }
inline void fb_setpixel(unsigned x, unsigned y, uint8_t r, uint8_t g, uint8_t b) { fb_setpixel(&pixelbuf[y][x], r, g, b); }

perfcount max;
perfcount currentperf;
perfcount *fp32::perf = &currentperf;

void render(const vec3& start, const Plane& plane, const std::vector<Sphere> &spheres, const std::vector<Light> &lights) {
    for (int j = 0; j<FRAME_HEIGHT; j++) {
        for (int i = 0; i<FRAME_WIDTH; i++) {
            fp32::perf->clear();

            float_type x = float_type((i<<1)-FRAME_WIDTH-1)*(.5 / FRAME_HEIGHT);
            float_type y = float_type((j<<1)-FRAME_HEIGHT-1)*(-.5 / FRAME_HEIGHT);

            vec3 dir = vec3({x, y, -1.}).normalize();
            //std::cout << "dir: " << dir << std::endl;

            vec3 pix = cast_ray(start, dir, plane, spheres, lights);
            //std::cout << i << " " << j << " " << pix << std::endl;
            int r = pix.x*255.;
            int g = pix.y*255.;
            int b = pix.z*255.;
            fb_setpixel(i, j, r & ~0xFF ? 0xFF:r, g & ~0xFF ? 0xFF:g, b & ~0xFF ? 0xFF:b);

            if(fp32::perf->mul > max.mul)
            {
              max = *fp32::perf;
              max.dump();
            }

        }
    }
}

#ifdef _DEBUG
void test()
{
   vec3 v0({0.3, 0.1, 0.1});
   vec3 v1({0.4, 0.5, 0.6});
   vec3 v = cross(v0,v1);
   std::cout << v << " " << v0 << " " << v1 << std::endl;
   v = -v0;
   std::cout << v << " " << v0 << " " << v1 << std::endl;
   v.normalize();
   std::cout << v << std::endl;
   v[0] = v[1]+1.;
   std::cout << v << std::endl;
   v[1] = v[2]*2.;
   std::cout << v << std::endl;
   v[2] = v[1]/.1;
   std::cout << v << std::endl;
   v[0] = -v[2];
   std::cout << v << std::endl;
   v[2] = v[1]-v[0];
   std::cout << v << std::endl;
   v[1] = v[1] > 4. ? 1.:2.;
   std::cout << v << std::endl;
   v[0] = 3;
   std::cout << v << std::endl;
   v[2] = SQRT(v[1]);
   std::cout << v << std::endl;
   v[1] = FABS(v[0]);
   std::cout << v << std::endl;
   int x = v[2];
   std::cout << x << std::endl;

   fp32::perf->dump();
}
#endif


bool button_pressed();


int main() {
#ifdef _DEBUG
    test();
    return 1;
#endif

    if(!fb_init(FRAME_WIDTH, FRAME_HEIGHT))
        return 1;

    Material      gold(vec3({0.2, 0.5, 0.}), vec3({243/256.0,  201/256.0, 104/256.0}),   150.);
    Material      rubber(vec3({1., 0., 0.}), vec3({.05, .05, .05}), 1.);

    std::vector<Sphere> spheres;
    spheres.push_back(Sphere{vec3({-20., 8., -50.}), 4., gold});

    std::vector<Light>  lights;
    lights.push_back(Light{vec3({-2., 1.5, -15.}), 1.5});

    Plane plane;
    plane.center = vec3({0., -12., 0.});
    plane.material.albedo[0] = .5;
    plane.material.albedo[1] = 0.;
    plane.material.albedo[2] = .5;
    plane.color1 = vec3({.9, .9, .9});
    plane.color2 = vec3({0.15, 0., 0.});
    plane.size = vec2({12., 12.});

    int frame = 0;
    float_type sphere_yvel = 0., sphere_xvel = -0.5;

    vec3 camera({0.,0.,0.});

    while(!fb_should_quit())
    {
      plane.center.x = plane.center.x + sphere_xvel;
      plane.center.z = plane.center.x;

      sphere_yvel = sphere_yvel + 0.1;
      spheres[0].center.y = spheres[0].center.y - sphere_yvel;
   
      float_type underground = (spheres[0].center.y - spheres[0].radius) - plane.center.y;
      if(underground < 0.)
      {
        sphere_xvel = sphere_xvel - 0.025;
        vec3 coord = spheres[0].center - plane.center;
#if 1
        if(spheres[0].radius + underground > 0.)
        {
          if(!plane_has_hole(coord.x, coord.z))
          {
            bool press = button_pressed();
            sphere_yvel = press ? -2. : 0.;
            if(press) sphere_xvel = -0.5; //default speed
          }
        }
        //else sphere_xvel = sphere_xvel*.85; 
#else
        sphere_yvel = -2.;
#endif
      }


      //float_type balleffect = underground*-0.1;
      //spheres[0].material.albedo[0] = balleffect > 1. ? 1. : (balleffect < 0. ? 0. : balleffect);


      camera.y = camera.y*.98 + spheres[0].center.y*.02;
      render(camera, plane, spheres, lights);
      fb_update();
      //std::cout << "frame: " << frame << std::endl;
      ++frame;
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

    renderer = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!renderer)
        return false;

    texture = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_RGBA8888, SDL_TEXTUREACCESS_TARGET, width, height);
    if (!texture)
        return false;

    return true;
}

bool fb_should_quit()
{
    SDL_Event event;
    if (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
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
    SDL_DestroyTexture(texture);
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(win);
    SDL_Quit();
}

bool button_pressed()
{
  return SDL_GetKeyboardState(NULL)[SDL_SCANCODE_UP];
}

