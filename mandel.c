#ifndef SHADER
float dot2(vec2 a, vec2 b) { return a.x*b.x + a.y*b.y; }
#endif

#define ITER 12
#define ESCAPE 4.
#ifndef float_lshift
#define float_lshift float_shift
#endif

float mandelbrot(vec2 c)
{
  bool b = true;
  uint16_t n = 2;
#if 0
  vec2 z = vec2(0.);
  for(uint16_t i=0; i<ITER; i++)
  {
      b = b && dot2(z,z) <= ESCAPE*ESCAPE;
      n += uint16_t(b);
      if(b)
        z = vec2( z.x*z.x - z.y*z.y, float_lshift(z.x*z.y, 1)) + c;
  }
  float sl = float(n) - log2(log2(dot2(z,z)));
#else

//fixed point implementation
#define mandel_shift 10 //6 looks nicely pixelated, 12 gives errors
#define mandel_mul float(1 << mandel_shift)
#define norm_max (16 << mandel_shift)
  int32_t Cr = int32_t(c.x*mandel_mul);
  int32_t Ci = int32_t(c.y*mandel_mul);

  int32_t Zr = Cr;
  int32_t Zi = Ci;
  int32_t Zrr;
  int32_t Zii;
  int32_t Zri;
  for(uint16_t i=0; i<ITER; i++)
  {
      Zrr = (Zr * Zr) >> mandel_shift;
	  Zii = (Zi * Zi) >> mandel_shift;
      b = b && Zrr + Zii <= norm_max;
      n += uint16_t(b);
      if(b)
      {
	    Zri = (Zr * Zi) >> (mandel_shift - 1);
	    Zr = Cr + Zrr - Zii;
	    Zi = Ci + Zri;
	   }
	 }
  float sl = float(n) - log2(log2(float(Zrr+Zii))-float(mandel_shift));
#endif
  return b ? 0.: sl/float(ITER);
}

color render_pixel_internal(screen_coord_t x, screen_coord_t y)
{
  vec2 v = vec2(x, y);
  return vec3(mandelbrot(v*4.));
}

struct scene_t { uint32_t frame; };
struct full_state_t { scene_t scene; };
