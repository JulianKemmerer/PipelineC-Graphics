PIPELINEC ?=../PipelineC/src/pipelinec

all: run

sim: run

tr_sim: tr.cpp simulator_main.cpp tr_pipelinec.cpp
	clang++ -fopenmp=libiomp5 -I../PipelineC/ -O3 -ffast-math `sdl2-config --cflags` simulator_main.cpp `sdl2-config --libs` -o tr_sim

run: tr_sim
	./tr_sim

tr_pipelinec.gen.c: tr.cpp tr_pipelinec.cpp
	clang -E tr_pipelinec.cpp > tr_pipelinec.E.cpp
	python3 ../CflexHDL/cflexparser/cflexc.py tr_pipelinec.E.cpp > tr_pipelinec.gen.c

gen: tr_gen
	./tr_gen

tr_gen: tr_pipelinec.gen.c
	clang -x c++ -DCCOMPILE -include c_compat.h -c tr_pipelinec.gen.c -o tr_pipelinec.gen.o
	clang++ -DCCOMPILE -O3 -fopenmp=libiomp5 -ffast-math `sdl2-config --cflags --libs` simulator_main.cpp -o tr_gen

./build/top/top.v: pipelinec_app.c tr_pipelinec.gen.c
	$(PIPELINEC) ./pipelinec_app.c --out_dir ./build --comb --sim --verilator 

compile: ./build/top/top.v

verilator: obj_dir/Vtop
	./obj_dir/Vtop

obj_dir/Vtop: ./main.cpp compile
	/usr/bin/verilator -Mdir ./obj_dir -Wno-UNOPTFLAT --top-module top -cc ./build/top/top.v -O3 --exe main.cpp -I./build/verilator -LDFLAGS $(sdl2-config --libs)
	cp ./main.cpp ./obj_dir && make CXXFLAGS="-I../../PipelineC -I../build/verilator -I.." -C ./obj_dir -f Vtop.mk

clean:
	rm -Rf tr_sim tr_gen ./build ./obj_dir tr_pipelinec.gen.c tr_pipelinec.E.cpp
