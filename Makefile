SHELL := /bin/bash

FRAME_WIDTH?=640
FRAME_HEIGHT?=480
FRAME_FPS?=60
VERILATOR?=verilator
VERILATOR_CFLAGS+=-CFLAGS -DUSE_VERILATOR -CFLAGS -DFRAME_WIDTH=$(FRAME_WIDTH) -CFLAGS -DFRAME_HEIGHT=$(FRAME_HEIGHT) -LDFLAGS $(shell sdl2-config --libs)
CFLEX_C?=python3 ../CflexHDL/cflexparser/cflexc.py
PIPELINEC_ROOT?=../PipelineC
PIPELINEC?=$(PIPELINEC_ROOT)/src/pipelinec
INCLUDE+=-I$(PIPELINEC_ROOT) -I$(PIPELINEC_ROOT)/pipelinec/include -I../CflexHDL/include
PIPELINEC_MAIN?=./pipelinec_app.c
BOARD?=hackaday_hadbadge
#BOARD?=gsd_orangecrab
#BOARD?=digilent_arty
VALENTYUSB=../OrangeCrab-test-sw/hw/deps/valentyusb
OMP_FLAGS=-fopenmp=libiomp5
CLANGXX?=clang++-14
RTCODE?=tr.cpp

GATEWAREDIR=./build/$(BOARD)/gateware

all: run

sim: run

tr.cpp: tr_base.cpp tr.h
	unifdefall tr_base.cpp  > tr.cpp || true

tr_sim: $(RTCODE) simulator_main.cpp tr_pipelinec.cpp
	$(CLANGXX) -DRTCODE=\"$(RTCODE)\" -D_FRAME_WIDTH=$(FRAME_WIDTH) -D_FRAME_HEIGHT=$(FRAME_HEIGHT) $(INCLUDE) -O3 $(OMP_FLAGS) -ffast-math `sdl2-config --cflags` simulator_main.cpp `sdl2-config --libs` -o tr_sim

run: tr_sim
	./tr_sim

tr_pipelinec.gen.c: $(RTCODE) tr_pipelinec.cpp
	$(CLANGXX) -DPARSING -E -DRTCODE=\"$(RTCODE)\" tr_pipelinec.cpp > tr_pipelinec.E.cpp
	$(CFLEX_C) tr_pipelinec.E.cpp > tr_pipelinec.gen.c

metrics.c: tr_pipelinec.gen.c
	$(CLANGXX) -E -include float_type.h -include fixed_type.h tr_pipelinec.gen.c > metrics.c
	$(CFLEX_C) metrics.c

gen: tr_gen
	./tr_gen

pipelinec_app_config.h:
	echo "#define FRAME_WIDTH" $(FRAME_WIDTH) > pipelinec_app_config.h
	echo "#define FRAME_HEIGHT" $(FRAME_HEIGHT) >> pipelinec_app_config.h
	echo "#define FRAME_FPS" $(FRAME_FPS) >> pipelinec_app_config.h

tr_gen: tr_pipelinec.gen.c simulator_main.cpp
	$(CLANGXX) $(INCLUDE) -x c++ -Dget_scene=scene_t -DCCOMPILE -DFRAME_WIDTH=$(FRAME_WIDTH) -DFRAME_HEIGHT=$(FRAME_HEIGHT) -include pipelinec_compat.h -include float_type.h -include fixed_type.h -c tr_pipelinec.gen.c -o tr_pipelinec.gen.o
	$(CLANGXX) -DCCOMPILE -D_FRAME_WIDTH=$(FRAME_WIDTH) -D_FRAME_HEIGHT=$(FRAME_HEIGHT) $(INCLUDE) -O3 $(OMP_FLAGS) -ffast-math `sdl2-config --cflags --libs` simulator_main.cpp -o tr_gen

./build/top/top.v: $(PIPELINEC_MAIN) pipelinec_app.c tr_pipelinec.gen.c
	rm -Rf ./build
	echo "#define USE_VERILATOR" >> pipelinec_app_config.h
	#$(CLANGXX) $(INCLUDE) -E -D__PIPELINEC__ $(PIPELINEC_MAIN) > $(PIPELINEC_MAIN).gen
	$(PIPELINEC) $(PIPELINEC_MAIN) --out_dir ./build --comb --sim --verilator

./synth/top/top.v: pipelinec_app.c tr_pipelinec.gen.c #FIXME: this verilog generation is duplicated
	#rm -Rf ./synth
	$(PIPELINEC) ./pipelinec_app.c --out_dir ./synth --comb #delete --comb for full pipelining (~10% more resources and slower)
	@echo FLOAT USAGE:
	grep -v fixed_make_from_float synth/float_module_instances.log

./fullsynth/top/top-digilent_arty.vhd: pipelinec_app_config.h pipelinec_app.c tr_pipelinec.gen.c
	#echo \#pragma PART "xc7a100tcsg324-1" >> pipelinec_app_config.h # Arty 100t
	echo \#pragma PART "xc7a35tcsg324-1" >> pipelinec_app_config.h # Arty 35t
	$(PIPELINEC) ./pipelinec_app.c --hier_mult 1.9375 --out_dir ./fullsynth

./fullsynth/top/top-gsd_orangecrab.vhd: pipelinec_app_config.h pipelinec_app.c tr_pipelinec.gen.c
	echo \#pragma PART "LFE5U-85F-6BG381C" >> pipelinec_app_config.h # An ECP5U 85F part (OrgangeCrab 85F) 
	$(PIPELINEC) ./pipelinec_app.c --coarse --sweep --start 70 --out_dir ./fullsynth
	cp ./fullsynth/top/top.vhd ./fullsynth/top/top-$(BOARD).vhd

./fullsynth/top/top-hackaday_hadbadge.vhd: pipelinec_app_config.h pipelinec_app.c tr_pipelinec.gen.c
	#FIXME: chech part!
	echo \#pragma PART "LFE5U-45F-8BG381C" >> pipelinec_app_config.h # An ECP5U 45F part (Hackaday Badge 2019) 
	$(PIPELINEC) ./pipelinec_app.c --coarse --sweep --start 70 --out_dir ./fullsynth
	cp ./fullsynth/top/top.vhd ./fullsynth/top/top-$(BOARD).vhd

./fullsynth/top/top.vhd: ./fullsynth/top/top-$(BOARD).vhd

compile: ./build/top/top.v

synth: ./synth/top/top.v

verilator: obj_dir/Vtop
	./obj_dir/Vtop

obj_dir/Vtop: ./main.cpp compile
	$(VERILATOR) -Mdir ./obj_dir -Wno-UNOPTFLAT -Wno-WIDTH -Wno-CASEOVERLAP --top-module top -cc ./build/top/top.v -O3 --exe main.cpp -I./build/verilator $(VERILATOR_CFLAGS)
	cp ./main.cpp ./obj_dir
	make CXXFLAGS="-DUSE_VERILATOR -I../../PipelineC/ -I../../PipelineC/pipelinec/include -I../build/verilator -I.." -C ./obj_dir -f Vtop.mk

video: #frames0.ppm
	rm -f frames.mp4
	ffmpeg -framerate 60 -i frame%d.ppm -c:v libx264 -crf 20 -vf "format=yuv420p" -movflags +faststart -r 60 frames.mp4
	#mogrify -format png frame*.ppm
	
frames0.ppm: gen
    
cxxrtl_top: ./synth/top/top.v
	mkdir -p cxxrtl_build && cd cxxrtl_build
	ghdl -i --std=08 `cat ../synth/vhdl_files.txt`
	ghdl -m --std=08 top
	yosys -g -m ghdl -p "ghdl --std=08 top; write_cxxrtl ./top.cpp"
	$(CLANGXX) -DUSE_CXXRTL -g -O3 -std=c++14 -I `yosys-config --datdir`/include ../main.cpp -o cxxrtl_top

cxxrtl: ./cxxrtl_build/cxxrtl_top
	./cxxrtl_build/cxxrtl_top

$(GATEWAREDIR)/digilent_arty.bit: ./fullsynth/top/top-digilent_arty.vhd ./litex_soc.py
	#FIXME: unify builr and vhd directories
	mkdir -p ./vhd/all_vhdl_files/
	cp `cat ./fullsynth/vhdl_files.txt` ./vhd/all_vhdl_files/ #FIXME: with this, maybe --sim is not needed
	FRAME_WIDTH=$(FRAME_WIDTH) FRAME_HEIGHT=$(FRAME_HEIGHT) FRAME_FPS=$(FRAME_FPS) python3 ./litex_soc-OSSCAD.py $(BOARD) --cpu-type=None

digilent_arty: $(GATEWAREDIR)/digilent_arty.bit
	openFPGALoader -b arty --freq 30e6 $<

de0nano: ./fullsynth/top/top.vhd ./litex_soc.py
	#FIXME: unify builr and vhd directories
	mkdir -p ./vhd/all_vhdl_files/
	cp `cat ./fullsynth/vhdl_files.txt` ./vhd/all_vhdl_files/ #FIXME: with this, maybe --sim is not needed
	python3 ./litex_soc.py $(BOARD) --cpu-type=None
	openFPGALoader -b $(BOARD) ./build/terasic_de0nano/gateware/terasic_de0nano.rbf

load: $(BOARD)

	

clean:
	rm -Rf tr.cpp tr_pipelinec.gen.c *.o tr_sim tr_gen vhd build cxxrtl_build obj_dir synth \
	fullsynth tr_pipelinec.gen.c tr_pipelinec.E.cpp pipelinec_app_config.h


pipelinec-synth: #synth and load with pipelinec (NOTE: fixed 1080p PLLs)
	cd PipelineC/examples/arty
	vivado arty.xpr -mode batch -source gen_bit.tcl 
	vivado arty.xpr -mode batch -source load_bit.tcl

gsd_orangecrab: $(GATEWAREDIR)/gsd_orangecrab.dfu
	read -t 10 -p "Activate bootloader before upload (press board's button for 1 second)"
	dfu-util -a 0 -D $<

./vhd/all_vhdl_files/top.v: ./fullsynth/top/top.vhd
	mkdir -p ./vhd/all_vhdl_files/
	cp `cat ./fullsynth/vhdl_files.txt` ./vhd/all_vhdl_files/
	cd ./vhd/all_vhdl_files && ghdl -i --std=08 `cat ../../fullsynth/vhdl_files.txt` && ghdl -m --std=08 top && yosys -g -m ghdl -p "ghdl --std=08 top; write_verilog top.v" #TODO: opt pass?

$(GATEWAREDIR)/gsd_orangecrab.dfu: ./vhd/all_vhdl_files/top.v ./litex_soc.py
	PYTHONPATH=$(VALENTYUSB) FRAME_WIDTH=$(FRAME_WIDTH) FRAME_HEIGHT=$(FRAME_HEIGHT) FRAME_FPS=$(FRAME_FPS) python3 ./litex_soc.py $(BOARD) --cpu-type=None
	yosys -l $(GATEWAREDIR)/gsd_orangecrab.rpt -p "read_verilog ./vhd/all_vhdl_files/top.v; opt; flatten; read_verilog $(GATEWAREDIR)/gsd_orangecrab.v; synth_ecp5 -abc9 -top gsd_orangecrab; write_json $(GATEWAREDIR)/gsd_orangecrab.json" #from LiteX is like this $(GATEWAREDIR)/gsd_orangecrab.ys, we need opt; flatten; for reducing memory usage
	nextpnr-ecp5 --json $(GATEWAREDIR)/gsd_orangecrab.json --lpf $(GATEWAREDIR)/gsd_orangecrab.lpf --textcfg $(GATEWAREDIR)/gsd_orangecrab.config --85k --package CSFBGA285 --speed 8 --timing-allow-fail --seed 1 
	ecppack --bootaddr 0 --compress  $(GATEWAREDIR)/gsd_orangecrab.config --svf $(GATEWAREDIR)/gsd_orangecrab.svf --bit $(GATEWAREDIR)/gsd_orangecrab.bit	
	cp $(GATEWAREDIR)/gsd_orangecrab.bit $@
	dfu-suffix -v 1209 -p 5bf0 -a $@

$(GATEWAREDIR)/hackaday_hadbadge.bit: ./vhd/all_vhdl_files/top.v ./litex_soc.py
	FRAME_WIDTH=$(FRAME_WIDTH) FRAME_HEIGHT=$(FRAME_HEIGHT) FRAME_FPS=$(FRAME_FPS) python3 ./litex_soc.py $(BOARD) --cpu-type=None

hackaday_hadbadge: $(GATEWAREDIR)/hackaday_hadbadge.bit
	echo TO PROGRAM THE BADGE, run:
	echo dfu-util -d 1d50:614a,1d50:614b -a 0 -R -D ./build/hackaday_hadbadge/gateware/hackaday_hadbadge.bit

