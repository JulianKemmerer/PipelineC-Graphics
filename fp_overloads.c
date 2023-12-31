float_8_14_t BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t(float_8_14_t left, float_8_14_t right)
{
  // Get mantissa exponent and sign for both
  // LEFT
  uint14_t x_mantissa;
  x_mantissa = float_8_14_t_13_0(left);
  uint9_t x_exponent_wide;
  x_exponent_wide = float_8_14_t_21_14(left);
  uint1_t x_sign;
  x_sign = float_8_14_t_22_22(left);
  // RIGHT
  uint14_t y_mantissa;
  y_mantissa = float_8_14_t_13_0(right);
  uint9_t y_exponent_wide;
  y_exponent_wide = float_8_14_t_21_14(right);
  uint1_t y_sign;
  y_sign = float_8_14_t_22_22(right);
  
  // Declare the output portions
  uint14_t z_mantissa;
  uint8_t z_exponent;
  uint1_t z_sign;
  
  // Sign
  z_sign = x_sign ^ y_sign;
  
  // Multiplication with infinity = inf
  if((x_exponent_wide==255) | (y_exponent_wide==255))
  {
    z_exponent = 255;
    z_mantissa = 0;
  }
  // Multiplication with zero = zero
  else if((x_exponent_wide==0) | (y_exponent_wide==0))
  {
    z_exponent = 0;
    z_mantissa = 0;
    z_sign = 0;
  }
  // Normal non zero|inf mult
  else
  {
    // Delcare intermediates
    uint1_t aux;
    uint15_t aux2_x;
    uint15_t aux2_y;
    uint30_t aux2;
    uint7_t BIAS;
    BIAS = 127;
    
    aux2_x = uint1_uint14(1, x_mantissa);
    aux2_y = uint1_uint14(1, y_mantissa);
    //uint16_t upper16 = mult15x15_upper16(aux2_x, aux2_y);
    uint16_t upper16 = mult15x15_upper16_alt(aux2_x, aux2_y);
    aux = uint16_15_15(upper16);
    if(aux)
    { 
      z_mantissa = uint16_14_1(upper16); 
    }
    else
    { 
      z_mantissa = uint16_13_0(upper16);
    }
    
    // calculate exponent in parts 
    // do sequential unsigned adds and subs to avoid signed numbers for now
    // X and Y exponent are already 1 bit wider than needed
    // (0 & x_exponent) + (0 & y_exponent);
    uint9_t exponent_sum = x_exponent_wide + y_exponent_wide;
    exponent_sum = exponent_sum + aux;
    exponent_sum = exponent_sum - BIAS;
    
    // HACKY NOT CHECKING
    // if (exponent_sum(8)='1') then
    z_exponent = uint9_7_0(exponent_sum);
  }
  
  
  // Assemble output
  return float_uint8_uint14(z_sign, z_exponent, z_mantissa);
}

