// Copyright (c) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>
// Code portions Copyright (c) 2018-2020 Ondrej Čerman with MIT License

#include <stdio.h>
#include <math.h>
#include <unistd.h>
#include <fcntl.h>

#define SYSFS_DIR_CPUS "/sys/devices/system/cpu"


static int msr_file;

static int open_msr(short devid) {
    char msr_path[20];
    sprintf(msr_path, "/dev/cpu/%d/msr", devid);
    return open(msr_path, O_RDONLY);
}

static bool read_msr(int file, unsigned index, unsigned long *data) {
    if (file < 0)
        return false;

    return pread(file, data, sizeof *data, index) == sizeof *data;
}

double get_energy_unit() {
    unsigned long data;
    // AMD OSRR: page 139 - MSRC001_0299
    if (!read_msr(msr_file, 0xC0010299, &data))
        return 0.0;

    return pow(1.0/2.0, (double)((data >> 8) & 0x1F));
}

unsigned long get_package_energy() {
    unsigned long data;
    // AMD OSRR: page 139 - MSRC001_029B
    if (!read_msr(msr_file, 0xC001029B, &data))
        return 0;

    return data;
}

bool power_init()
{
  const short cpuid = 0;
  msr_file = open_msr(cpuid);
  return msr_file >= 0;
}

#ifndef POWER_BENCH
int main()
{
  
  if(!power_init())
  {
    perror("Cannot open MSR file. Try using sudo and have the msr module loaded. Error");
    exit(1);
  }
  
  double unit = get_energy_unit();
  unsigned long e0 = get_package_energy();

  const unsigned interval_us = 500*1000;
  for(;;)
  {
    usleep(interval_us);
    unsigned long e1 = get_package_energy();
    long energy = e1 - e0;
    e0 = e1;
    printf("package energy: %f watts\n", energy*unit/(interval_us*1e-6));
  }
  return 0;
}
#endif
