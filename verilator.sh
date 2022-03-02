#run from project directory
/usr/bin/verilator -Mdir ./obj_dir -Wno-UNOPTFLAT --top-module top -cc ./build/top/top.v -O3 --exe main.cpp -I./build/verilator -LDFLAGS $(sdl2-config --libs)
cp ./main.cpp ./obj_dir && make CXXFLAGS="-I../../PipelineC -I../build/verilator -I.." -C ./obj_dir -f Vtop.mk
./obj_dir/Vtop
