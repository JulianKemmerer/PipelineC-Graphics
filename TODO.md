Current sources
=====================
BUILD:
$ ./sim.sh		#run compiled
$ ./compile.sh		#run pipelineC
$ ./verilator.sh	#run verilator simulation
$ ./gen.sh	#run compiled after C to C translation
$ ./synth.sh	#run synthesis

UPDATE SOURCES / CODE GENERATOR:
=====================

Victor's review (from diff):
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
   -change 1e23 to 1.0e23

Julian's review:
- Integer inputs to bit shift left functions should be cast to full 32b. x = (int32_t)1 << y;  (pipelinec has no default int literal size)
- No bool type, no bool operators, use bitwise with extra parenthesis. https://github.com/JulianKemmerer/PipelineC/issues/24
-Typedef issues:
- https://github.com/JulianKemmerer/PipelineC/issues/52
- Cant use typedef to just rename a type (only can use for enums and structs) (use #define to 'rename' types for now)
- Structs must use a struct alias name matching the struct name (so no 'struct' keyword outside of def).
- Dont use types and variables with the same case-insensitive name (ex. change 'Material' type to material_t so use in code is `material_t material`). VHDL case insensitivity issues.
- Dont support constructor syntax, cast, etc instead. Ex cant. float f  = float(0.0);
- Removed redundant casts: https://github.com/JulianKemmerer/PipelineC/issues/53
- No support for complex compile time calculations
-  Ex. const object_coord_t plane_center_start = fixed3_make(...); // Requires computing fixed3_make by the compiler
-  Can move decl inside function where used. Will be resolved like other constant wires by synthesis 'at run time'
- Use of PipelineC bit manip funcs, ex. float_to_uint is float_31_0
- No support for 'double' type like there is for float
- Use width specified int 'int32_t' instead of int
- Init floats with float consts, BIG_FLOAT = 1e23 is technically an int larger than VHDL can support, 1.0e23 is a float, is fine
- Cast or specify mixed int+float operations , ex. if(diff > 0) where diff is float needs to be if(diff > 0.0) or if(diff > (float)0)
- Function names can't start with underscore (VHDL naming rules)
- No support for unions (cant have members .x,y,z and .r,g,b for same struct)
- Minor things commented out like bool, FRAME_WIDTH, pixel, etc defined elsewhere


Current pending tasks
=====================

VICTOR
0) DONE: Reproduce Julian's test results (verilator)
1) tweak the code or generator to avoid any need of manual changes of generated code (see Julian's review and Victor's review above)
2) Integrate game logic
3) Integrate the already developed fixed point optimizations
4) Check if floor reflections are enabled -- seems they don't
5) Try to add antialiasing - check highest resolution achievable
6) test the rendering code on a GPU (may get full resolution at realtime)
7) test cflextypes to compare estimated vs. used resources & effect of changing mantissa precision

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
Install tools: see apio (ecp5)

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

