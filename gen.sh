#run from project's directory
rm tr_pipelinec.E.cpp tr_pipelinec.gen.cpp tr_pipelinec.gen.o tr
clang -E tr_pipelinec.cpp > tr_pipelinec.E.cpp
python3 ../CflexHDL/cflexparser/cflexc.py tr_pipelinec.E.cpp > tr_pipelinec.gen.cpp
clang -DCCOMPILE -include c_compat.h -c tr_pipelinec.gen.cpp -o tr_pipelinec.gen.o
clang++ -DCCOMPILE -O3 -fopenmp=libiomp5 -ffast-math `sdl2-config --cflags --libs` simulator_main.cpp -o tr
./tr
