/*
(C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>
LICENSE: GPL 3.0

This is a cflextypes demo for running unmodified PipelineC code in a CPU using a regular compiler.

To play: use UP key or the left mouse button

Compile & run:
$ clang++ -fopenmp=libiomp5 -I../../../include -O3 -ffast-math `sdl2-config --cflags --libs` simulator_main.cpp -o tr && ./tr

Currently doing 60FPS at 400x300 resolution. Faster speed is sometimes achieved by using native width registers that are not exact in regards to width as compared to the defined ones. For example, if a uint4_t is used, a uint8_t is allocated. To enable this, add -DNO_BIT_EXACT to the compiler parameters.

With parameter -DGATEWARE_VGA the video timing signals are generated by the HDL code instead of an optimized equivalent code, at the cost of about half the performance (and 4-bit color per channel).

There's no game nor render logic in this source, all that is defined by the HDL sources. Thus, they can be changed to implement any other interactive system with video output.

*/

//#define GATEWARE_VGA
#include <SDL2/SDL.h>

#define sqrt _sqrt //avoid library conflict

int FRAME_WIDTH = 512;
int FRAME_HEIGHT = 384;

#include "pipelinec_compat.h"
#include "float_type.h"

#ifndef CCOMPILE
#include "tr_pipelinec.cpp" //original source
#else
#include "fixed_type.h"
#include "tr_pipelinec.gen.c" //generated source
#endif



#define WIRE_WRITE(a,b,c) memcpy((a*)&c, &b, sizeof(c));

#define FRAME_PITCH 2048
//struct pixel_t { uint8_t a, b, g, r; };
pixel_t pixelbuf[FRAME_PITCH*FRAME_PITCH];


//#include "pipelinec_compat.h"
#ifndef FRAME_WIDTH
#define FRAME_WIDTH FRAME_WIDTH
#define FRAME_HEIGHT FRAME_HEIGHT
#endif
#include "vga/vga_timing.h"

unsigned buttons_pressed();
bool fb_init(unsigned hres, unsigned vres);
void fb_update();
bool fb_should_quit();
void fb_deinit();
inline void fb_setpixel_raw(pixel_t *p, uint8_t r, uint8_t g, uint8_t b) { p->a = 0xFF; p->b = b; p->g = g; p->r = r; }
inline void fb_setpixel(unsigned x, unsigned y, uint8_t r, uint8_t g, uint8_t b) { fb_setpixel_raw(&pixelbuf[y*FRAME_PITCH+x], r, g, b); }
inline uint64_t higres_ticks() { return SDL_GetPerformanceCounter(); }
inline uint64_t higres_ticks_freq() { return SDL_GetPerformanceFrequency(); }

unsigned frame = 0;
uint64_t t0;

void dump_stats()
{
    float elapsed = (float)(higres_ticks()-t0)/higres_ticks_freq();
    printf("Resolution: %dx%d, FPS: %f\n", FRAME_WIDTH, FRAME_HEIGHT, frame/elapsed);
}

#ifndef _DEBUG
//#define MOTION_BLUR // EXPERIMENTAL
#endif

#ifdef MOTION_BLUR
int current_blur_x, current_blur_y;
float blur_dist_a[FRAME_PITCH*FRAME_PITCH];
float blur_dist_curr[FRAME_PITCH*FRAME_PITCH];
void register_dist(float d)
{
  int x = current_blur_x, y = current_blur_y;
  blur_dist_a[y*FRAME_PITCH+x] = blur_dist_curr[y*FRAME_PITCH+x];
  blur_dist_curr[y*FRAME_PITCH+x] = d;
}
#endif
inline void vga_register_outputs(vga_signals_t vga, pixel_t c)
{
#ifdef GATEWARE_VGA
    if(vga.active)
      fb_setpixel(vga.pos.x, vga.pos.y, c.r, c.g, c.b);

    if(vga.start_of_frame)
    {
       if(fb_should_quit())
       {
           dump_stats();
           exit(0);
       }

      fb_update();
      ++frame;
    }
#endif
}

#ifdef _DEBUG
perfcount currentperf, fixedperf, fixed32perf, colorperf, screen_coord_perf;
template<> perfcount *float_type::perf = &currentperf;
template<> perfcount *coord_type::perf = &fixedperf;
template<> perfcount *fixed32_t::perf = &fixed32perf;
template<> perfcount *color_type::perf = &colorperf;
template<> perfcount *screen_coord_t::perf = &screen_coord_perf;
#endif

/*
#ifndef SPIRV
#include "tr.c" //raytraced game or any other drawing program
#else
#include "spirv_compat.h"
#define main shader_main
#include "tr.gen.c" //code generated from SPIR-V
#undef main
#undef GATEWARE_VGA
*/

/*
inline pixel_t render_pixel(uint16_t i, uint16_t j, IN(Scene) scene)
{
  float x = ((i<<1)-FRAME_WIDTH-1)/(float)(FRAME_HEIGHT<<1);
  float y = -((j<<1)-FRAME_HEIGHT-1)/(float)(FRAME_HEIGHT<<1);

  pixel_t pix; //ignores alpha

  {
    vec3 c = render_pixel_internal(x, y, scene, scene_colors(scene));
    uint9_t r = float_shift(c.x, 8);
    uint9_t g = float_shift(c.y, 8);
    uint9_t b = float_shift(c.z, 8);
    pix.r = (uint8_t) ((r & ~0xFF) ? (uint8_t)0xFF:(uint8_t)r);
    pix.g = (uint8_t) ((g & ~0xFF) ? (uint8_t)0xFF:(uint8_t)g);
    pix.b = (uint8_t) ((b & ~0xFF) ? (uint8_t)0xFF:(uint8_t)b);
  }
  return pix;
}
*/


#ifdef MOTION_BLUR
#include <unistd.h>
#endif

int main()
{
    if(!fb_init(FRAME_WIDTH, FRAME_HEIGHT))
        return 1;

#ifndef GATEWARE_VGA
    full_state_t state = reset_state();
    /*volatile*/ game_state_t stinout;
    WIRE_WRITE(game_state_t, state.stinout, stinout);
#endif
    t0 = higres_ticks();
    for(;;)
    {
#ifdef GATEWARE_VGA
      app(); 
#else
      if(fb_should_quit())
        break;
#ifndef SPIRV
      state.stin.press = buttons_pressed() & 1;
      game_state_out_t outs = next_state_func(state.stin, stinout);
      WIRE_WRITE(game_state_t, outs.stinout, stinout);
#endif



      #pragma omp parallel for
      for(int y = 0; y < FRAME_HEIGHT; ++y)
      {
        for(int x = 0; x < FRAME_WIDTH; ++x)
        {
#ifdef MOTION_BLUR
         current_blur_x=x; current_blur_y=y;
#endif

#ifndef COLOR_DECOMP
          pixel_t c = render_pixel(x, y, state.scene);
#else
          pixel_t c;
          c = render_pixel(x, y, state.scene, 0, c);
          c = render_pixel(x, y, state.scene, 1, c);
          c = render_pixel(x, y, state.scene, 2, c);
#endif

        //while(frame == 26) { if(fb_should_quit()) exit(0); }

#ifdef MOTION_BLUR
        static pixel_t pixelbuftmp[FRAME_PITCH*FRAME_PITCH];
      {


        pixel_t ct = pixelbuftmp[y*FRAME_PITCH+x];
        //pixelbuftmp[y*FRAME_PITCH+x] = c; //no IIR
        float distb = blur_dist_curr[y*FRAME_PITCH+x];
        float dista = blur_dist_a[y*FRAME_PITCH+x];
        float mm = distb;//FMAX(distb, dista);
        if(mm >= /*0*/-1 &&  mm< 1)
        {
          float m = mm;///FMAX(distb,dista);//FABS(distb-dista);
#if 0
          //float mix = .5;          
          c = pixel_t({ 0xFF,
            uint8_t(float_select(m, c.b, ct.b)),
            uint8_t(float_select(m, c.g, ct.g)),
            uint8_t(float_select(m, c.r, ct.r)),
          });
#else
          c = pixel_t({ 0xFF,
            uint8_t(m>0? m*255:0),//uint8_t(is_negative(m) ? 0 : m),
            uint8_t(m<0 ? -m*255 : 0)	,//uint8_t(is_negative(m) ? -m : 0),
            0,//c.r,
          });
#endif
        }
      }
          pixelbuftmp[y*FRAME_PITCH+x] = c; //IIR, FIXME avoid buffer
#endif
          fb_setpixel(x, y, c.r, c.g, c.b);
        }
      }


#ifndef SPIRV
      state.scene = update_scene(state.scene, outs);
#endif
      fb_update();
      ++frame;
#endif


    }
    dump_stats();

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

    SDL_DisplayMode dm;
    if (SDL_GetDesktopDisplayMode(0, &dm) != 0)
      return false;

    if(width == 0 || height == 0)
    {
      width = dm.w;
      height = dm.h;
    }

    win = SDL_CreateWindow("Framebuffer", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, width, height, SDL_WINDOW_SHOWN);
    if (!win)
      return false;

    if(dm.w == width && dm.h == height)
      SDL_SetWindowFullscreen(win, SDL_WINDOW_FULLSCREEN);

    SDL_ShowCursor(SDL_DISABLE);
    renderer = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_TARGETTEXTURE | SDL_RENDERER_PRESENTVSYNC);
    if (!renderer)
      return false;

    SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, "1");
    texture = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_RGBA8888, SDL_TEXTUREACCESS_TARGET, width, height);
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
    SDL_UpdateTexture(texture, NULL, pixelbuf, FRAME_PITCH*sizeof(pixel_t));
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

unsigned buttons_pressed()
{
  unsigned mpress = 0;
  { int x, y; mpress = SDL_GetMouseState(&x, &y); }

  const uint8_t *st = SDL_GetKeyboardState(NULL);
  return
     (st[SDL_SCANCODE_UP] || (mpress & SDL_BUTTON_LMASK) ? 1 : 0) |
     (st[SDL_SCANCODE_DOWN] || (mpress & SDL_BUTTON_RMASK) ? 2 : 0) |
     (st[SDL_SCANCODE_W] ? 4 : 0) |
     (st[SDL_SCANCODE_S] ? 8 : 0);
}

void perf_clear()
{
#ifdef _DEBUG
  float_type::perf->clear();
  coord_type::perf->clear();
  fixed32_t::perf->clear();
  screen_coord_t::perf->clear();
  color_type::perf->clear();
#endif
}

void perf_render_dump()
{
#ifdef _DEBUG
  static perfcount max;
  if(float_type::perf->mul > max.mul)
  {
    max = *float_type::perf;
    std::cout << "Rendering fp32 resources" << std::endl;
    max.dump();
  }
  static perfcount fixedmax;
  if(coord_type::perf->mul > fixedmax.mul)
  {
    fixedmax = *coord_type::perf;
    std::cout << "Rendering fixed point resources" << std::endl;
    fixedmax.dump();
  }
  static perfcount fixed32max;
  if(fixed32_t::perf->mul > fixed32max.mul)
  {
    fixed32max = *fixed32_t::perf;
    std::cout << "Rendering fixed32 resources" << std::endl;
    fixed32max.dump();
  }
  static perfcount screencoordmax;
  if(screen_coord_t::perf->mul > screencoordmax.mul)
  {
    screencoordmax = *screen_coord_t::perf;
    std::cout << "Rendering screencoord fixpoint resources" << std::endl;
    screencoordmax.dump();
  }
  static perfcount colormax;
  if(color_type::perf->mul > colormax.mul)
  {
    colormax = *color_type::perf;
    std::cout << "Rendering color fixpoint resources" << std::endl;
    colormax.dump();
  }
#endif
}

void perf_gameplay_dump() //FIXME: unify
{
#ifdef _DEBUG
  static perfcount max;
  if(float_type::perf->mul > max.mul)
  {
    max = *float_type::perf;
    std::cout << "Gameplay fp32 resources" << std::endl;
    max.dump();
  }
  static perfcount fixedmax;
  if(coord_type::perf->mul > fixedmax.mul)
  {
     fixedmax = *coord_type::perf;
     std::cout << "Gameplay fixed point resources" << std::endl;
     fixedmax.dump();
  }
  static perfcount fixed32max;
  if(fixed32_t::perf->mul > fixed32max.mul)
  {
    fixed32max = *fixed32_t::perf;
    std::cout << "Gameplay fixed32 resources" << std::endl;
    fixed32max.dump();
  }
  static perfcount colormax;
  if(color_type::perf->mul > colormax.mul)
  {
    colormax = *color_type::perf;
    std::cout << "Gameplay color fixpoint resources" << std::endl;
    colormax.dump();
  }
  static perfcount screencoordmax;
  if(screen_coord_t::perf->mul > screencoordmax.mul)
  {
    screencoordmax = *screen_coord_t::perf;
    std::cout << "Gameplay screencoord fixpoint resources" << std::endl;
    screencoordmax.dump();
  }
#endif
}

