// https://github.com/JulianKemmerer/PipelineC/discussions/22
/*
(C) 2021 Victor Suarez Rovere <suarezvictor@gmail.com>, Julian Kemmerer <julian.v.kemmerer@gmail.com>
LICENSE: GPL 3.0

Compile is still a little hacky:
    TODO: make compatible with PipelineC --main_cpp Verilator make file based flow

# From pipelinec repo:
$ ./src/pipelinec ./examples/arty/src/vga/test_pattern_modular.c --sim_comb --verilator --out_dir ~/pipelinec_output
# ^ can swap out test_pattern_modular.c for other example files.

# From current dir with main.cpp go C++ compile:
#   Use include path of verilator install (might not be required if installed to system include dir)
$ clang++ -DCCOMPILE -O3 -I. -I/media/1TB/Programs/Linux/oss-cad-suite/share/verilator/include -I$HOME/pipelinec_output/verilator main.cpp -o sim `sdl2-config --cflags --libs` && ./sim 

# Run
$ ./sim
*/

// VGA timing logic, frame size const, etc
#include "wire.h"
#include "uintN_t.h"
#include "examples/arty/src/vga/pixel.h"
#include "vga_timing.h"

// Select verilator RTL based sim, or raw C?
#define USE_VERILATOR

#ifdef USE_VERILATOR
#include "pipelinec_verilator.h"
#include "Vtop.h"
#endif

// Code adapted from https://projectf.io/posts/verilog-sim-verilator-sdl/
#ifdef USE_VERILATOR
#define WINDOW_TITLE "Verilated PipelineC Framebuffer"
#else
#define WINDOW_TITLE "Compiled C Code Framebuffer"
#endif
#include <SDL2/SDL.h>
//struct pixel_t { uint8_t a, b, g, r; };
inline void fb_setpixel(pixel_t *p, uint8_t r, uint8_t g, uint8_t b) { p->a = 0xFF; p->b = b; p->g = g; p->r = r; }
pixel_t pixelbuf[FRAME_HEIGHT][FRAME_WIDTH];
inline void fb_setpixel(unsigned x, unsigned y, uint8_t r, uint8_t g, uint8_t b) { fb_setpixel(&pixelbuf[y][x], r, g, b); }
inline uint64_t higres_ticks() { return SDL_GetPerformanceCounter(); }
inline uint64_t higres_ticks_freq() { return SDL_GetPerformanceFrequency(); }
SDL_Window*   sdl_window   = NULL;
SDL_Renderer* sdl_renderer = NULL;
SDL_Texture*  sdl_texture  = NULL;
bool fb_init(unsigned hres, unsigned vres)
{
    if(SDL_Init(SDL_INIT_VIDEO) < 0) {
        printf("SDL init failed.\n");
        return false;
    }

    sdl_window = SDL_CreateWindow(WINDOW_TITLE, SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED, hres, vres, SDL_WINDOW_SHOWN);
    if (!sdl_window) {
        printf("Window creation failed: %s\n", SDL_GetError());
        return false;
    }

    sdl_renderer = SDL_CreateRenderer(sdl_window, -1,
        SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!sdl_renderer) {
        printf("Renderer creation failed: %s\n", SDL_GetError());
        return false;
    }

    sdl_texture = SDL_CreateTexture(sdl_renderer, SDL_PIXELFORMAT_RGBA8888,
        SDL_TEXTUREACCESS_TARGET, hres, vres);
    if (!sdl_texture) {
        printf("Texture creation failed: %s\n", SDL_GetError());
        return false;
    }
    return true;
}
bool fb_should_quit()
{
    SDL_Event e;
    if (SDL_PollEvent(&e)) {
        if (e.type == SDL_QUIT) {
            return true;
        }
    }
    return false;
}
void fb_update()
{
    SDL_UpdateTexture(sdl_texture, NULL, pixelbuf, FRAME_WIDTH*sizeof(pixel_t));
    SDL_RenderClear(sdl_renderer);
    SDL_RenderCopy(sdl_renderer, sdl_texture, NULL, NULL);
    SDL_RenderPresent(sdl_renderer);
}
void fb_deinit()
{
    SDL_DestroyTexture(sdl_texture);
    SDL_DestroyRenderer(sdl_renderer);
    SDL_DestroyWindow(sdl_window);
    SDL_Quit();
}

// VGA outputs (pmod when on physical fpga, verilator in sim)
//#include "../../arty/src/vga/vga_pmod.c"
// DVI outputs
#include "examples/arty/src/dvi/dvi_pmod.c"

// Application 'app()' func under test to run (instead of verilator model)
#ifndef USE_VERILATOR
#include "examples/arty/src/vga/mandelbrot.c"
#endif

// Main loop doing per clock:
//  Verilated clk+eval loop of hardware sim
// OR
//  Raw C app() func until exit 
int main()
{
    // Init verilator
    #ifdef USE_VERILATOR
    Vtop* g_top = new Vtop;
    #endif
    
    // Init SDL frame buffer
    if(!fb_init(FRAME_WIDTH, FRAME_HEIGHT))
        return 1;
        
    // Init FPS clock
    t0 = higres_ticks();

    // Per clock pixel loop
    for(;;)
    {
      // Verilator clock loop iter?
      #ifdef USE_VERILATOR
      if(g_top->dvi_x == 0 /*&& g_top->dvi_y == 0*/)
      {
         if(fb_should_quit()) exit(1);
         printf("frame %d, y %d\n", frame, g_top->dvi_y);
		 fb_update(); //once by line
      }
      verilator_output(g_top);
      g_top->clk = 0;
      g_top->eval();
      g_top->clk = 1;
      g_top->eval();
      
      // Or raw C code running?
      #else 
      app();
      
      #endif
    }

    // End verilation
    #ifdef USE_VERILATOR
    g_top->final();
    #endif

    // Close frame buffer
    fb_deinit();
    
    return 0;
}
