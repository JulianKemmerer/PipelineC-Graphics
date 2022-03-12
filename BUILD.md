

DEBIAN 11 INSTALL
=====================

#for "make sim"
sudo apt install make g++ libsdl2

#for "make gen"
sudo apt install python3-dev python3-pip
pip3 install cython
sudo apt install  software-properties-common #for add-apt-repository
bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)" #latest llvm
pip3 install clang #not libclang!, it may need to create a symlink libclang-14.so in /usr/lib/x86_64-linux-gnu/

#for "make verilator"
sudo apt install verilator gnat
build & install yosys #make; sudo make install 
build & install ghdl #make; sudo make install
build & install ghdl-yosys-plugin #make; sudo make install

#for "make fullsynth"
install vivado
bash settings64.sh

