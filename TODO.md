Current pending tasks
=====================

VICTOR
1) Reproduce Junlian's test results (ECP5 synth & verilator)
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


Getting ECP5 85F device synthesizing
=====================================

You can currently try this out yourself if you have ghdl and yosys installed - might have to change a flag for ghdl module at most...

Ive attached a zip of the raytracer files that arent in PipelineC repo
Clone the PipelineC repo
Into that repo paste the raytracer_fixed directory from the zip file so path looks like PipelineC/examples/raytracer_fixed/pipelinec_app.c
Run pipelinec tool from inside cloned git repo w/ pasted RT files:
Verilator: ./src/pipelinec ./examples/raytracer_fixed/pipelinec_app.c --comb --sim --verilator
Synthesizing the combinatorial logic (for resource estimates): ./src/pipelinec ./examples/raytracer_fixed/pipelinec_app.c --comb
See PipelineC/examples/verilator/vga/main.cpp for running SDL stuff as you know


