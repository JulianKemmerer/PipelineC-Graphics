FRAME_WIDTH?=640
FRAME_HEIGHT?=480
VERILATOR?=verilator
VERILATOR_CFLAGS+=-CFLAGS -DUSE_VERILATOR -CFLAGS -DFRAME_WIDTH=$(FRAME_WIDTH) -CFLAGS -DFRAME_HEIGHT=$(FRAME_HEIGHT) -LDFLAGS $(shell sdl2-config --libs)
CFLEX_C?=python3 ../CflexHDL/cflexparser/cflexc.py
PIPELINEC ?=../PipelineC/src/pipelinec
INCLUDE+=-I../PipelineC/

all: run

sim: run

tr_sim: tr.cpp simulator_main.cpp tr_pipelinec.cpp
	clang++ -D_FRAME_WIDTH=$(FRAME_WIDTH) -D_FRAME_HEIGHT=$(FRAME_HEIGHT) $(INCLUDE) -O3 -fopenmp=libiomp5 -ffast-math `sdl2-config --cflags` simulator_main.cpp `sdl2-config --libs` -o tr_sim

run: tr_sim
	./tr_sim

tr_pipelinec.gen.c: tr.cpp tr_pipelinec.cpp
	clang -DPARSING -E tr_pipelinec.cpp > tr_pipelinec.E.cpp
	$(CFLEX_C) tr_pipelinec.E.cpp > tr_pipelinec.gen.c

gen: tr_gen
	./tr_gen

tr_gen: tr_pipelinec.gen.c simulator_main.cpp
	clang -x c++ -DCCOMPILE -DFRAME_WIDTH=$(FRAME_WIDTH) -DFRAME_HEIGHT=$(FRAME_HEIGHT) -include pipelinec_compat.h -include float_type.h -include fixed_type.h -c tr_pipelinec.gen.c -o tr_pipelinec.gen.o
	clang++ -DCCOMPILE -D_FRAME_WIDTH=$(FRAME_WIDTH) -D_FRAME_HEIGHT=$(FRAME_HEIGHT) $(INCLUDE) -O3 -ffast-math `sdl2-config --cflags --libs` simulator_main.cpp -o tr_gen

./build/top/top.v: pipelinec_app.c tr_pipelinec.gen.c
	rm -Rf ./build
	echo "#define FRAME_WIDTH" $(FRAME_WIDTH) > pipelinec_app_vgaconfig.h
	echo "#define FRAME_HEIGHT" $(FRAME_HEIGHT) >> pipelinec_app_vgaconfig.h
	$(PIPELINEC) ./pipelinec_app.c --out_dir ./build --comb --sim --verilator 

./synth/top/top.v: pipelinec_app.c tr_pipelinec.gen.c
	#rm -Rf ./synth
	echo "#define FRAME_WIDTH" $(FRAME_WIDTH) > pipelinec_app_vgaconfig.h
	echo "#define FRAME_HEIGHT" $(FRAME_HEIGHT) >> pipelinec_app_vgaconfig.h
	$(PIPELINEC) ./pipelinec_app.c --out_dir ./synth --comb #delete --comb for full pipelining (~10% more resources and slower)

./fullsynth/top/top.v: pipelinec_app.c tr_pipelinec.gen.c
	echo "#define FRAME_WIDTH" $(FRAME_WIDTH) > pipelinec_app_vgaconfig.h
	echo "#define FRAME_HEIGHT" $(FRAME_HEIGHT) >> pipelinec_app_vgaconfig.h
	$(PIPELINEC) ./pipelinec_app.c --out_dir ./fullsynth

compile: ./build/top/top.v

synth: ./synth/top/top.v

fullsynth: ./fullsynth/top/top.v

verilator: obj_dir/Vtop
	./obj_dir/Vtop

obj_dir/Vtop: ./main.cpp compile
	$(VERILATOR) -Mdir ./obj_dir -Wno-UNOPTFLAT --top-module top -cc ./build/top/top.v -O3 --exe main.cpp -I./build/verilator $(VERILATOR_CFLAGS)
	cp ./main.cpp ./obj_dir
	make CXXFLAGS="-DUSE_VERILATOR -I../../PipelineC/ -I../build/verilator -I.." -C ./obj_dir -f Vtop.mk

cxxrtl_top: ./synth/top/top.v
	mkdir -p cxxrtl_build && cd cxxrtl_build
	ghdl -i --std=08 `cat ../synth/vhdl_files.txt`
	ghdl -m --std=08 top
	yosys -g -m ghdl -p "ghdl --std=08 top; write_cxxrtl ./top.cpp"
	clang++ -DUSE_CXXRTL -g -O3 -std=c++14 -I `yosys-config --datdir`/include ../main.cpp -o cxxrtl_top

cxxrtl: ./cxxrtl_build/cxxrtl_top
	./cxxrtl_build/cxxrtl_top

clean:
	rm -Rf *.o tr_sim tr_gen build obj_dir synth fullsynth tr_pipelinec.gen.c tr_pipelinec.E.cpp

