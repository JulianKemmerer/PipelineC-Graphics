/usr/bin/verilator -Wno-UNOPTFLAT --top-module top -cc /media/vsuarez/elocaldata/SCRATCH/PipelineC/examples/pipelinec_output_pipelinec_app.c_5022/top/top.v -O3 --exe main.cpp -I/media/vsuarez/elocaldata/SCRATCH/PipelineC/examples/pipelinec_output_pipelinec_app.c_5022/verilator -I/media/vsuarez/elocaldata/SCRATCH/PipelineC -LDFLAGS $(sdl2-config --libs)	
cp main.cpp obj_dir
make CXXFLAGS="-I/media/vsuarez/elocaldata/SCRATCH/PipelineC/examples/pipelinec_output_pipelinec_app.c_5022/verilator -I/media/vsuarez/elocaldata/SCRATCH/PipelineC" -C obj_dir -f Vtop.mk
