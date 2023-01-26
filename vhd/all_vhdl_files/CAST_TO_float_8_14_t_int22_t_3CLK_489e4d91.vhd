-- Timing params:
--   Fixed?: True
--   Pipeline Slices: [0.5]
--   Input regs?: True
--   Output regs?: True
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 14
entity CAST_TO_float_8_14_t_int22_t_3CLK_489e4d91 is
port(
 clk : in std_logic;
 rhs : in signed(21 downto 0);
 return_output : out std_logic_vector(22 downto 0));
end CAST_TO_float_8_14_t_int22_t_3CLK_489e4d91;
architecture arch of CAST_TO_float_8_14_t_int22_t_3CLK_489e4d91 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond : unsigned(0 downto 0);
signal REG_STAGE0_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output : unsigned(0 downto 0);
signal REG_STAGE0_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left : unsigned(21 downto 0);
signal COMB_STAGE0_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond : unsigned(0 downto 0);
signal COMB_STAGE0_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output : unsigned(0 downto 0);
signal COMB_STAGE0_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left : unsigned(21 downto 0);

-- Type holding all input registers
type input_registers_t is record
 rhs : signed(21 downto 0);
end record;

-- Type holding all output registers
type output_registers_t is record
 return_output : std_logic_vector(22 downto 0);
end record;
 
  -- Type holding all manually (not auto generated in pipelining) registers for this function
  --  RAW HDL pipeline, user state regs
  type manual_registers_t is record
    input_regs : input_registers_t;
    output_regs : output_registers_t; 
  end record;
  
-- Function to null out manual regs 
function manual_registers_NULL return manual_registers_t is
 variable rv : manual_registers_t;
  begin
 rv.input_regs.rhs := to_signed(0, 22);
 rv.output_regs.return_output := std_logic_vector(to_unsigned(0, 23));

  return rv;
end function;

-- Manual (not auto pipeline) registers and signals for this function
signal manual_registers : manual_registers_t;
signal manual_registers_r : manual_registers_t := manual_registers_NULL;

-- Each function instance gets signals
-- BIN_OP_EQ[CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8]
signal BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_left : signed(21 downto 0);
signal BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_right : signed(1 downto 0);
signal BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_return_output : unsigned(0 downto 0);

-- rv_MUX[CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac]
signal rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond : unsigned(0 downto 0);
signal rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iftrue : std_logic_vector(22 downto 0);
signal rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iffalse : std_logic_vector(22 downto 0);
signal rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_return_output : std_logic_vector(22 downto 0);

-- int22_abs[CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9]
signal int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_x : signed(21 downto 0);
signal int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_return_output : unsigned(21 downto 0);

-- count0s_uint22[CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d]
signal count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_x : unsigned(21 downto 0);
signal count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_return_output : unsigned(4 downto 0);

-- BIN_OP_PLUS[CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd]
signal BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_left : unsigned(4 downto 0);
signal BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_return_output : unsigned(5 downto 0);

-- BIN_OP_SL[CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b]
signal BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left : unsigned(21 downto 0);
signal BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_right : unsigned(5 downto 0);
signal BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_return_output : unsigned(21 downto 0);

-- BIN_OP_EQ[CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c]
signal BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_left : unsigned(5 downto 0);
signal BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_right : unsigned(4 downto 0);
signal BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_return_output : unsigned(0 downto 0);

-- biased_exponent_MUX[CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd]
signal biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_cond : unsigned(0 downto 0);
signal biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iftrue : unsigned(7 downto 0);
signal biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iffalse : unsigned(7 downto 0);
signal biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_return_output : unsigned(7 downto 0);

-- BIN_OP_MINUS[CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511]
signal BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_left : unsigned(4 downto 0);
signal BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_right : unsigned(5 downto 0);
signal BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_return_output : unsigned(4 downto 0);

-- BIN_OP_PLUS[CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f]
signal BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_left : unsigned(7 downto 0);
signal BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_right : unsigned(6 downto 0);
signal BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_return_output : unsigned(8 downto 0);

function float_uint8_uint14( sign : unsigned;
 exponent : unsigned;
 mantissa : unsigned) return std_logic_vector is

  --variable sign : unsigned(0 downto 0);
  --variable exponent : unsigned(7 downto 0);
  --variable mantissa : unsigned(13 downto 0);
  variable return_output : std_logic_vector(22 downto 0);

begin

    return_output := std_logic_vector(sign) & std_logic_vector(exponent) & std_logic_vector(mantissa);
    return return_output;

end function;

function int22_21_21( x : signed) return unsigned is
--variable x : signed(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(21- i);
      end loop;
return return_output;
end function;

function uint22_21_8( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(13 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 8)));
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8
BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8 : entity work.BIN_OP_EQ_int22_t_int2_t_0CLK_de264c78 port map (
BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_left,
BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_right,
BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_return_output);

-- rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac
rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac : entity work.MUX_uint1_t_float_8_14_t_float_8_14_t_0CLK_de264c78 port map (
rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond,
rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iftrue,
rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iffalse,
rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_return_output);

-- int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9
int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9 : entity work.int22_abs_0CLK_a5a1cd4e port map (
int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_x,
int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_return_output);

-- count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d
count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d : entity work.count0s_uint22_0CLK_0852fa80 port map (
count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_x,
count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_return_output);

-- BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd
BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd : entity work.BIN_OP_PLUS_uint5_t_uint1_t_1CLK_168e1cee port map (
clk,
BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_left,
BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_right,
BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_return_output);

-- BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b
BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b : entity work.BIN_OP_SL_uint22_t_uint6_t_0CLK_9d359dd9 port map (
BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left,
BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_right,
BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_return_output);

-- BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c
BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c : entity work.BIN_OP_EQ_uint6_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_left,
BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_right,
BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_return_output);

-- biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd
biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_cond,
biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iftrue,
biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iffalse,
biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_return_output);

-- BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511
BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511 : entity work.BIN_OP_MINUS_uint5_t_uint6_t_0CLK_de264c78 port map (
BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_left,
BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_right,
BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_return_output);

-- BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f
BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f : entity work.BIN_OP_PLUS_uint8_t_uint7_t_0CLK_de264c78 port map (
BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_left,
BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_right,
BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 rhs,
 -- Registers
 -- Stage 0
 REG_STAGE0_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond,
 REG_STAGE0_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output,
 REG_STAGE0_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left,
 manual_registers_r,
 -- All submodule outputs
 BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_return_output,
 rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_return_output,
 int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_return_output,
 count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_return_output,
 BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_return_output,
 BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_return_output,
 BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_return_output,
 biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_return_output,
 BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_return_output,
 BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_rhs : signed(21 downto 0);
 variable VAR_return_output : std_logic_vector(22 downto 0);
 variable VAR_mantissa : unsigned(13 downto 0);
 variable VAR_biased_exponent : unsigned(7 downto 0);
 variable VAR_sign : unsigned(0 downto 0);
 variable VAR_rv : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_left : signed(21 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_right : signed(1 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iftrue : std_logic_vector(22 downto 0);
 variable VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iffalse : std_logic_vector(22 downto 0);
 variable VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_return_output : std_logic_vector(22 downto 0);
 variable VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond : unsigned(0 downto 0);
 variable VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_return_output : unsigned(7 downto 0);
 variable VAR_float_uint8_uint14_CAST_TO_float_8_14_t_int22_t_c_l19_c10_d5a4_return_output : std_logic_vector(22 downto 0);
 variable VAR_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output : unsigned(0 downto 0);
 variable VAR_unsigned_rhs : unsigned(21 downto 0);
 variable VAR_int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_x : signed(21 downto 0);
 variable VAR_int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_return_output : unsigned(21 downto 0);
 variable VAR_num_zeros : unsigned(4 downto 0);
 variable VAR_count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_x : unsigned(21 downto 0);
 variable VAR_count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_return_output : unsigned(4 downto 0);
 variable VAR_shift : unsigned(5 downto 0);
 variable VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_return_output : unsigned(5 downto 0);
 variable VAR_shifted_unsigned_rhs : unsigned(21 downto 0);
 variable VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left : unsigned(21 downto 0);
 variable VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_right : unsigned(5 downto 0);
 variable VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_return_output : unsigned(21 downto 0);
 variable VAR_maybe_resized_rhs : unsigned(21 downto 0);
 variable VAR_uint22_21_8_CAST_TO_float_8_14_t_int22_t_c_l42_c16_678d_return_output : unsigned(13 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_left : unsigned(5 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_return_output : unsigned(0 downto 0);
 variable VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iftrue : unsigned(7 downto 0);
 variable VAR_biased_exponent_CAST_TO_float_8_14_t_int22_t_c_l47_c7_5a1f : unsigned(7 downto 0);
 variable VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iffalse : unsigned(7 downto 0);
 variable VAR_biased_exponent_CAST_TO_float_8_14_t_int22_t_c_l55_c7_8dcd : unsigned(7 downto 0);
 variable VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_cond : unsigned(0 downto 0);
 variable VAR_exponent : unsigned(7 downto 0);
 variable VAR_exponent_CAST_TO_float_8_14_t_int22_t_c_l53_c7_6dc2 : unsigned(7 downto 0);
 variable VAR_BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_right : unsigned(5 downto 0);
 variable VAR_BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_right : unsigned(6 downto 0);
 variable VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_return_output : unsigned(8 downto 0);
 variable VAR_float_uint8_uint14_CAST_TO_float_8_14_t_int22_t_c_l57_c10_335d_return_output : std_logic_vector(22 downto 0);
begin
 -- Input regs
 manual_registers.input_regs.rhs <= rhs;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_left := to_unsigned(22, 5);
     VAR_biased_exponent_CAST_TO_float_8_14_t_int22_t_c_l47_c7_5a1f := resize(to_unsigned(0, 1), 8);
     VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iftrue := VAR_biased_exponent_CAST_TO_float_8_14_t_int22_t_c_l47_c7_5a1f;
     VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_right := signed(std_logic_vector(resize(to_unsigned(0, 1), 2)));
     VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_right := to_unsigned(23, 5);
     VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_right := to_unsigned(127, 7);
     -- float_uint8_uint14[CAST_TO_float_8_14_t_int22_t_c_l19_c10_d5a4] LATENCY=0
     VAR_float_uint8_uint14_CAST_TO_float_8_14_t_int22_t_c_l19_c10_d5a4_return_output := float_uint8_uint14(
     to_unsigned(0, 1),
     resize(to_unsigned(0, 1), 8),
     resize(to_unsigned(0, 1), 14));

     -- Submodule level 1
     VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iftrue := VAR_float_uint8_uint14_CAST_TO_float_8_14_t_int22_t_c_l19_c10_d5a4_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_rhs := manual_registers_r.input_regs.rhs;

     -- Submodule level 0
     VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_left := VAR_rhs;
     VAR_int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_x := VAR_rhs;
     -- int22_abs[CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9] LATENCY=0
     -- Inputs
     int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_x <= VAR_int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_x;
     -- Outputs
     VAR_int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_return_output := int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_return_output;

     -- BIN_OP_EQ[CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8] LATENCY=0
     -- Inputs
     BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_left <= VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_left;
     BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_right <= VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_right;
     -- Outputs
     VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_return_output := BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_return_output;

     -- int22_21_21[CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11] LATENCY=0
     VAR_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output := int22_21_21(
     VAR_rhs);

     -- Submodule level 1
     VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond := VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l17_c6_47a8_return_output;
     VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left := VAR_int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_return_output;
     VAR_count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_x := VAR_int22_abs_CAST_TO_float_8_14_t_int22_t_c_l28_c20_1be9_return_output;
     -- count0s_uint22[CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d] LATENCY=0
     -- Inputs
     count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_x <= VAR_count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_x;
     -- Outputs
     VAR_count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_return_output := count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_return_output;

     -- Submodule level 2
     VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_left := VAR_count0s_uint22_CAST_TO_float_8_14_t_int22_t_c_l32_c17_d16d_return_output;
     -- BIN_OP_PLUS[CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd] LATENCY=1
     -- Inputs
     BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_left <= VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_left;
     BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_right <= VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_right;

     -- Write to comb signals
     COMB_STAGE0_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond <= VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond;
     COMB_STAGE0_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output <= VAR_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output;
     COMB_STAGE0_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left <= VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond := REG_STAGE0_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond;
     VAR_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output := REG_STAGE0_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output;
     VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left := REG_STAGE0_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left;
     -- Submodule outputs
     VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_return_output := BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_return_output;

     -- Submodule level 0
     VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_left := VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_return_output;
     VAR_BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_right := VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_return_output;
     VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_right := VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l35_c13_8ffd_return_output;
     -- BIN_OP_EQ[CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c] LATENCY=0
     -- Inputs
     BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_left <= VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_left;
     BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_right <= VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_right;
     -- Outputs
     VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_return_output := BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_return_output;

     -- BIN_OP_MINUS[CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_left <= VAR_BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_left;
     BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_right <= VAR_BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_right;
     -- Outputs
     VAR_BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_return_output := BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_return_output;

     -- BIN_OP_SL[CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b] LATENCY=0
     -- Inputs
     BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left <= VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left;
     BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_right <= VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_right;
     -- Outputs
     VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_return_output := BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_return_output;

     -- Submodule level 1
     VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_cond := VAR_BIN_OP_EQ_CAST_TO_float_8_14_t_int22_t_c_l45_c8_248c_return_output;
     VAR_exponent_CAST_TO_float_8_14_t_int22_t_c_l53_c7_6dc2 := resize(VAR_BIN_OP_MINUS_CAST_TO_float_8_14_t_int22_t_c_l53_c18_7511_return_output, 8);
     VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_left := VAR_exponent_CAST_TO_float_8_14_t_int22_t_c_l53_c7_6dc2;
     -- BIN_OP_PLUS[CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_left <= VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_left;
     BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_right <= VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_right;
     -- Outputs
     VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_return_output := BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_return_output;

     -- uint22_21_8[CAST_TO_float_8_14_t_int22_t_c_l42_c16_678d] LATENCY=0
     VAR_uint22_21_8_CAST_TO_float_8_14_t_int22_t_c_l42_c16_678d_return_output := uint22_21_8(
     VAR_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_return_output);

     -- Submodule level 2
     VAR_biased_exponent_CAST_TO_float_8_14_t_int22_t_c_l55_c7_8dcd := resize(VAR_BIN_OP_PLUS_CAST_TO_float_8_14_t_int22_t_c_l55_c25_c08f_return_output, 8);
     VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iffalse := VAR_biased_exponent_CAST_TO_float_8_14_t_int22_t_c_l55_c7_8dcd;
     -- biased_exponent_MUX[CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd] LATENCY=0
     -- Inputs
     biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_cond <= VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_cond;
     biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iftrue <= VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iftrue;
     biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iffalse <= VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_iffalse;
     -- Outputs
     VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_return_output := biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_return_output;

     -- Submodule level 3
     -- float_uint8_uint14[CAST_TO_float_8_14_t_int22_t_c_l57_c10_335d] LATENCY=0
     VAR_float_uint8_uint14_CAST_TO_float_8_14_t_int22_t_c_l57_c10_335d_return_output := float_uint8_uint14(
     VAR_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output,
     VAR_biased_exponent_MUX_CAST_TO_float_8_14_t_int22_t_c_l45_c5_a0fd_return_output,
     VAR_uint22_21_8_CAST_TO_float_8_14_t_int22_t_c_l42_c16_678d_return_output);

     -- Submodule level 4
     VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iffalse := VAR_float_uint8_uint14_CAST_TO_float_8_14_t_int22_t_c_l57_c10_335d_return_output;
     -- rv_MUX[CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac] LATENCY=0
     -- Inputs
     rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond <= VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond;
     rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iftrue <= VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iftrue;
     rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iffalse <= VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_iffalse;
     -- Outputs
     VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_return_output := rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_return_output;

     -- Submodule level 5
     VAR_return_output := VAR_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_return_output;
     -- Last stage of pipeline return wire to return port/reg
     manual_registers.output_regs.return_output <= VAR_return_output;
   end if;
 end loop;

end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then

     manual_registers_r <= manual_registers;
     -- Stage 0
     REG_STAGE0_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond <= COMB_STAGE0_rv_MUX_CAST_TO_float_8_14_t_int22_t_c_l17_c3_c0ac_cond;
     REG_STAGE0_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output <= COMB_STAGE0_int22_21_21_CAST_TO_float_8_14_t_int22_t_c_l25_c12_ea11_return_output;
     REG_STAGE0_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left <= COMB_STAGE0_BIN_OP_SL_CAST_TO_float_8_14_t_int22_t_c_l37_c28_d03b_left;
 end if;
end process;
 -- Output regs
 return_output <= manual_registers_r.output_regs.return_output;

end arch;
