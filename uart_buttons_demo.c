// gcc uart_buttons_demo.c -o uart_buttons_demo -I ../PipelineC
// sudo ./uart_buttons_demo

// 'Software' side of uart pipelinec helper include
#include "uart/uart_sw.c"

// Init + do some work + close
int main(int argc, char **argv) 
{
  // Settings
  int n_sec = 20;
  int n_frames = n_sec * 60;
  char file_name[] = "buttons-recorded.bin";

	// Init uart to/from FPGA
	init_uart();

  // Open output file
  FILE * fp = fopen(file_name, "wb");
  if(fp == NULL)
  {
    printf("Open error!");
    exit(-1);
  }

  printf("Recording...\n");
  
  // Read N frames of data and write to file
  int frame = 0;
  uint8_t the_byte;
  while(frame < n_frames)
  {
    // Read 1 byte
    uart_read(&the_byte, 1);
    // Write 1 byte
    size_t n_bytes = fwrite(&the_byte, 1, 1, fp);
    if(n_bytes != 1)
    {
      printf("Write error!");
      exit(-1);
    }
    frame++;
  }

	// Close output file
  fclose(fp);

	// Close uart to/from FPGA
	close_uart();

  printf("Done...\n");
}

