Current sources
=====================
SCRATCH/cflextypes/examples/pipelinec/rt/clang/tr_pipelinec.gen.c


diff:
   -double constants (0 -> 0.0)
   -add casts after <<, >>
   -int -> int32_t / int16_t
   -Material -> material_t
   -no return on the middle (plane_has_hole)
   - ~0x7FF -> ~(int16_t)0x7FF)
   -init plane_center_start in reset_state
   -ray_plane_intersect: define all variables in outmost scope
   -render_pixel_internal: split cx, cy calc in two operations
   -render_pixel: change saturation logic: pix.r = (r >= 256) ? 255 : (uint8_t)r;
   -next_state_fun, won logic: if((n.stinout.score >= 15000) & (n.stinout.won==0))
   -reset_state: int startpos -> int16_t
   -use macros for the colors, so can be multiplied by constants

Current pending tasks
=====================

VICTOR
0) DONE: Reproduce Julian's test results (verilator)
1) tweak the code or generator to avoid any need of manual changes of generated code
2) Integrate game logic
3) Integrate the already developed fixed point optimizations
4) Check if floor reflections are enabled -- seems they don't
5) Try to add antialiasing - check highest resolution achievable
6) test the rendering code on a GPU (may get full resolution at realtime)

JULIAN
1) do a full pipelining, including pipelined mults for ECP5 if needed
2) check possible fmax (thus resolution) -- currently 136MHz without pipelining (just fp mult test)

POSSIBLE FEATURES
=================
-Activate grayscale rendering
-Activate subpixel offsets
-Use a 7" LCD screen (800x480) and show both a monitor and a LCD working


SELLING POINTS
=================
-fully open source toolchain & example board


Getting ECP5 85F device synthesizing
=====================================

$ ./src/pipelinec ./examples/raytracer_fixed/pipelinec_app.c --out_dir ./examples/raytracer_fixed/build --comb --sim --verilator #only --comb for resource estimates

FUTURE IMPROVEMENTS
===================
-use internal adders in DSP slices (ECP5 as a start) for fmadd operations

TOOLS
===================
GHDL 2.0.0-dev (1.0.0.r836.g260be4a7.dirty) [Dunoon edition]
https://github.com/ghdl/ghdl
Building: https://ghdl.github.io/ghdl/development/building/index.html

Mine: GHDL 2.0.0-dev (1.0.0.r1015.g3a3e2f01) [Dunoon edition]
 Compiled with GNAT Version: 8.3.0
 mcode code generator


Yosys 0.10+30 (git sha1 a15b01a77, clang 10.0.0-4ubuntu1 -fPIC -Os)
Mine: Yosys 0.9+4303 (git sha1 c88eaea6, clang 7.0.1-8+deb10u2 -fPIC -Os)

Verilator 4.215 devel rev v4.214-2-g0ef9087f

