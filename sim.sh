clang++ -fopenmp=libiomp5 -I../../../include -O3 -ffast-math `sdl2-config --cflags` simulator_main.cpp `sdl2-config --libs` -o tr && ./tr
