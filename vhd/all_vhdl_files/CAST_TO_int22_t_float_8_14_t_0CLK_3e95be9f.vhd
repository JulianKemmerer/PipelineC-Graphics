-- Timing params:
--   Fixed?: False
--   Pipeline Slices: []
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 19
entity CAST_TO_int22_t_float_8_14_t_0CLK_3e95be9f is
port(
 rhs : in std_logic_vector(22 downto 0);
 return_output : out signed(21 downto 0));
end CAST_TO_int22_t_float_8_14_t_0CLK_3e95be9f;
architecture arch of CAST_TO_int22_t_float_8_14_t_0CLK_3e95be9f is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_EQ[CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8]
signal BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_left : unsigned(13 downto 0);
signal BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_right : unsigned(0 downto 0);
signal BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b]
signal BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_left : unsigned(7 downto 0);
signal BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_right : unsigned(0 downto 0);
signal BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a]
signal BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_left : unsigned(0 downto 0);
signal BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_right : unsigned(0 downto 0);
signal BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_return_output : unsigned(0 downto 0);

-- rv_MUX[CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7]
signal rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_cond : unsigned(0 downto 0);
signal rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iftrue : signed(21 downto 0);
signal rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iffalse : signed(21 downto 0);
signal rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_return_output : signed(21 downto 0);

-- BIN_OP_MINUS[CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9]
signal BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_left : signed(8 downto 0);
signal BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_right : signed(7 downto 0);
signal BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_return_output : signed(9 downto 0);

-- BIN_OP_GTE[CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d]
signal BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_left : signed(7 downto 0);
signal BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_right : signed(1 downto 0);
signal BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_return_output : unsigned(0 downto 0);

-- BIN_OP_LTE[CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1]
signal BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_left : signed(7 downto 0);
signal BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_right : signed(5 downto 0);
signal BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf]
signal BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_left : unsigned(0 downto 0);
signal BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_right : unsigned(0 downto 0);
signal BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_return_output : unsigned(0 downto 0);

-- interm_MUX[CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b]
signal interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_cond : unsigned(0 downto 0);
signal interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iftrue : unsigned(35 downto 0);
signal interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iffalse : unsigned(35 downto 0);
signal interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_return_output : unsigned(35 downto 0);

-- BIN_OP_SL[CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228]
signal BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_left : unsigned(35 downto 0);
signal BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_right : unsigned(4 downto 0);
signal BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_return_output : unsigned(35 downto 0);

-- BIN_OP_LT[CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d]
signal BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_left : signed(7 downto 0);
signal BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_right : signed(1 downto 0);
signal BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_return_output : unsigned(0 downto 0);

-- interm_MUX[CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049]
signal interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_cond : unsigned(0 downto 0);
signal interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iftrue : unsigned(35 downto 0);
signal interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iffalse : unsigned(35 downto 0);
signal interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_return_output : unsigned(35 downto 0);

-- rv_MUX[CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b]
signal rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_cond : unsigned(0 downto 0);
signal rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iftrue : signed(21 downto 0);
signal rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iffalse : signed(21 downto 0);
signal rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_return_output : signed(21 downto 0);

-- uint21_negate[CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f]
signal uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_x : unsigned(20 downto 0);
signal uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_return_output : signed(21 downto 0);

function float_8_14_t_13_0( x : std_logic_vector) return unsigned is
--variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(13 downto 0);
begin
return_output := unsigned(std_logic_vector(x(13 downto 0)));
return return_output;
end function;

function float_8_14_t_21_14( x : std_logic_vector) return unsigned is
--variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(7 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 14)));
return return_output;
end function;

function float_8_14_t_22_22( x : std_logic_vector) return unsigned is
--variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(22- i);
      end loop;
return return_output;
end function;

function uint1_uint14( x : unsigned;
 y : unsigned) return unsigned is

  --variable x : unsigned(0 downto 0);
  --variable y : unsigned(13 downto 0);
  variable return_output : unsigned(14 downto 0);

begin

    return_output := unsigned(std_logic_vector(x)) & unsigned(std_logic_vector(y));
    return return_output;

end function;

function uint36_35_14( x : unsigned) return unsigned is
--variable x : unsigned(35 downto 0);
  variable return_output : unsigned(21 downto 0);
begin
return_output := unsigned(std_logic_vector(x(35 downto 14)));
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8
BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8 : entity work.BIN_OP_EQ_uint14_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_left,
BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_right,
BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_return_output);

-- BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b
BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b : entity work.BIN_OP_EQ_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_left,
BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_right,
BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_return_output);

-- BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a
BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_left,
BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_right,
BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_return_output);

-- rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7
rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_cond,
rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iftrue,
rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iffalse,
rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_return_output);

-- BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9
BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9 : entity work.BIN_OP_MINUS_int9_t_int8_t_0CLK_de264c78 port map (
BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_left,
BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_right,
BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_return_output);

-- BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d
BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d : entity work.BIN_OP_GTE_int8_t_int2_t_0CLK_de264c78 port map (
BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_left,
BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_right,
BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_return_output);

-- BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1
BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1 : entity work.BIN_OP_LTE_int8_t_int6_t_0CLK_de264c78 port map (
BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_left,
BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_right,
BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_return_output);

-- BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf
BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_left,
BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_right,
BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_return_output);

-- interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b
interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b : entity work.MUX_uint1_t_uint36_t_uint36_t_0CLK_de264c78 port map (
interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_cond,
interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iftrue,
interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iffalse,
interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_return_output);

-- BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228
BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228 : entity work.BIN_OP_SL_uint36_t_uint5_t_0CLK_295015b8 port map (
BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_left,
BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_right,
BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_return_output);

-- BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d
BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d : entity work.BIN_OP_LT_int8_t_int2_t_0CLK_de264c78 port map (
BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_left,
BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_right,
BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_return_output);

-- interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049
interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049 : entity work.MUX_uint1_t_uint36_t_uint36_t_0CLK_de264c78 port map (
interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_cond,
interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iftrue,
interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iffalse,
interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_return_output);

-- rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b
rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_cond,
rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iftrue,
rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iffalse,
rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_return_output);

-- uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f
uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f : entity work.uint21_negate_0CLK_23f04728 port map (
uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_x,
uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 rhs,
 -- All submodule outputs
 BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_return_output,
 BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_return_output,
 BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_return_output,
 rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_return_output,
 BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_return_output,
 BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_return_output,
 BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_return_output,
 BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_return_output,
 interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_return_output,
 BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_return_output,
 BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_return_output,
 interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_return_output,
 rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_return_output,
 uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_rhs : std_logic_vector(22 downto 0);
 variable VAR_return_output : signed(21 downto 0);
 variable VAR_mantissa : unsigned(13 downto 0);
 variable VAR_float_8_14_t_13_0_CAST_TO_int22_t_float_8_14_t_c_l12_c14_e7e4_return_output : unsigned(13 downto 0);
 variable VAR_biased_exponent : unsigned(7 downto 0);
 variable VAR_biased_exponent_CAST_TO_int22_t_float_8_14_t_c_l14_c3_eb37 : unsigned(7 downto 0);
 variable VAR_float_8_14_t_21_14_CAST_TO_int22_t_float_8_14_t_c_l14_c21_e8be_return_output : unsigned(7 downto 0);
 variable VAR_sign : unsigned(0 downto 0);
 variable VAR_float_8_14_t_22_22_CAST_TO_int22_t_float_8_14_t_c_l16_c10_f37c_return_output : unsigned(0 downto 0);
 variable VAR_rv : signed(21 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_left : unsigned(13 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iftrue : signed(21 downto 0);
 variable VAR_rv_CAST_TO_int22_t_float_8_14_t_c_l22_c5_52b6 : signed(21 downto 0);
 variable VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iffalse : signed(21 downto 0);
 variable VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_return_output : signed(21 downto 0);
 variable VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_return_output : signed(21 downto 0);
 variable VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_cond : unsigned(0 downto 0);
 variable VAR_signed_biased_exponent : signed(8 downto 0);
 variable VAR_signed_biased_exponent_CAST_TO_int22_t_float_8_14_t_c_l28_c5_ee3b : signed(8 downto 0);
 variable VAR_unbiased_exponent : signed(7 downto 0);
 variable VAR_unbiased_exponent_CAST_TO_int22_t_float_8_14_t_c_l30_c5_3eac : signed(7 downto 0);
 variable VAR_BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_left : signed(8 downto 0);
 variable VAR_BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_right : signed(7 downto 0);
 variable VAR_BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_return_output : signed(9 downto 0);
 variable VAR_mantissa_normalized : unsigned(14 downto 0);
 variable VAR_mantissa_normalized_CAST_TO_int22_t_float_8_14_t_c_l32_c5_446b : unsigned(14 downto 0);
 variable VAR_uint1_uint14_CAST_TO_int22_t_float_8_14_t_c_l32_c27_4094_return_output : unsigned(14 downto 0);
 variable VAR_interm : unsigned(35 downto 0);
 variable VAR_interm_CAST_TO_int22_t_float_8_14_t_c_l34_c5_97f7 : unsigned(35 downto 0);
 variable VAR_BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_left : signed(7 downto 0);
 variable VAR_BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_right : signed(1 downto 0);
 variable VAR_BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_left : signed(7 downto 0);
 variable VAR_BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_right : signed(5 downto 0);
 variable VAR_BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_return_output : unsigned(0 downto 0);
 variable VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iftrue : unsigned(35 downto 0);
 variable VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iffalse : unsigned(35 downto 0);
 variable VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_return_output : unsigned(35 downto 0);
 variable VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_return_output : unsigned(35 downto 0);
 variable VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_cond : unsigned(0 downto 0);
 variable VAR_shift : unsigned(4 downto 0);
 variable VAR_shift_CAST_TO_int22_t_float_8_14_t_c_l38_c7_2782 : unsigned(4 downto 0);
 variable VAR_BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_left : unsigned(35 downto 0);
 variable VAR_BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_return_output : unsigned(35 downto 0);
 variable VAR_BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_left : signed(7 downto 0);
 variable VAR_BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_right : signed(1 downto 0);
 variable VAR_BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_return_output : unsigned(0 downto 0);
 variable VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iftrue : unsigned(35 downto 0);
 variable VAR_interm_CAST_TO_int22_t_float_8_14_t_c_l42_c7_93c2 : unsigned(35 downto 0);
 variable VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iffalse : unsigned(35 downto 0);
 variable VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_cond : unsigned(0 downto 0);
 variable VAR_unsigned_result : unsigned(20 downto 0);
 variable VAR_unsigned_result_CAST_TO_int22_t_float_8_14_t_c_l45_c5_8e53 : unsigned(20 downto 0);
 variable VAR_uint36_35_14_CAST_TO_int22_t_float_8_14_t_c_l45_c23_679f_return_output : unsigned(21 downto 0);
 variable VAR_rv_CAST_TO_int22_t_float_8_14_t_c_l47_c5_8f73 : signed(21 downto 0);
 variable VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iftrue : signed(21 downto 0);
 variable VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iffalse : signed(21 downto 0);
 variable VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_cond : unsigned(0 downto 0);
 variable VAR_uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_x : unsigned(20 downto 0);
 variable VAR_uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_return_output : signed(21 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_right := signed(std_logic_vector(resize(to_unsigned(127, 7), 8)));
     VAR_BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_right := signed(std_logic_vector(resize(to_unsigned(0, 1), 2)));
     VAR_interm_CAST_TO_int22_t_float_8_14_t_c_l42_c7_93c2 := resize(to_unsigned(0, 1), 36);
     VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iftrue := VAR_interm_CAST_TO_int22_t_float_8_14_t_c_l42_c7_93c2;
     VAR_BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_right := signed(std_logic_vector(resize(to_unsigned(0, 1), 2)));
     VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_right := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_right := to_unsigned(0, 1);
     VAR_BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_right := signed(std_logic_vector(resize(to_unsigned(21, 5), 6)));
     VAR_rv_CAST_TO_int22_t_float_8_14_t_c_l22_c5_52b6 := signed(std_logic_vector(resize(to_unsigned(0, 1), 22)));
     VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iftrue := VAR_rv_CAST_TO_int22_t_float_8_14_t_c_l22_c5_52b6;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_rhs := rhs;

     -- Submodule level 0
     -- float_8_14_t_22_22[CAST_TO_int22_t_float_8_14_t_c_l16_c10_f37c] LATENCY=0
     VAR_float_8_14_t_22_22_CAST_TO_int22_t_float_8_14_t_c_l16_c10_f37c_return_output := float_8_14_t_22_22(
     VAR_rhs);

     -- float_8_14_t_13_0[CAST_TO_int22_t_float_8_14_t_c_l12_c14_e7e4] LATENCY=0
     VAR_float_8_14_t_13_0_CAST_TO_int22_t_float_8_14_t_c_l12_c14_e7e4_return_output := float_8_14_t_13_0(
     VAR_rhs);

     -- float_8_14_t_21_14[CAST_TO_int22_t_float_8_14_t_c_l14_c21_e8be] LATENCY=0
     VAR_float_8_14_t_21_14_CAST_TO_int22_t_float_8_14_t_c_l14_c21_e8be_return_output := float_8_14_t_21_14(
     VAR_rhs);

     -- Submodule level 1
     VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_left := VAR_float_8_14_t_13_0_CAST_TO_int22_t_float_8_14_t_c_l12_c14_e7e4_return_output;
     VAR_biased_exponent_CAST_TO_int22_t_float_8_14_t_c_l14_c3_eb37 := VAR_float_8_14_t_21_14_CAST_TO_int22_t_float_8_14_t_c_l14_c21_e8be_return_output;
     VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_cond := VAR_float_8_14_t_22_22_CAST_TO_int22_t_float_8_14_t_c_l16_c10_f37c_return_output;
     VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_left := VAR_biased_exponent_CAST_TO_int22_t_float_8_14_t_c_l14_c3_eb37;
     VAR_signed_biased_exponent_CAST_TO_int22_t_float_8_14_t_c_l28_c5_ee3b := signed(std_logic_vector(resize(VAR_biased_exponent_CAST_TO_int22_t_float_8_14_t_c_l14_c3_eb37, 9)));
     VAR_BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_left := VAR_signed_biased_exponent_CAST_TO_int22_t_float_8_14_t_c_l28_c5_ee3b;
     -- BIN_OP_EQ[CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b] LATENCY=0
     -- Inputs
     BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_left <= VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_left;
     BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_right <= VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_right;
     -- Outputs
     VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_return_output := BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_return_output;

     -- BIN_OP_EQ[CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8] LATENCY=0
     -- Inputs
     BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_left <= VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_left;
     BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_right <= VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_right;
     -- Outputs
     VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_return_output := BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_return_output;

     -- uint1_uint14[CAST_TO_int22_t_float_8_14_t_c_l32_c27_4094] LATENCY=0
     VAR_uint1_uint14_CAST_TO_int22_t_float_8_14_t_c_l32_c27_4094_return_output := uint1_uint14(
     to_unsigned(1, 1),
     VAR_float_8_14_t_13_0_CAST_TO_int22_t_float_8_14_t_c_l12_c14_e7e4_return_output);

     -- BIN_OP_MINUS[CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_left <= VAR_BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_left;
     BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_right <= VAR_BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_right;
     -- Outputs
     VAR_BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_return_output := BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_right := VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c23_2b4b_return_output;
     VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_left := VAR_BIN_OP_EQ_CAST_TO_int22_t_float_8_14_t_c_l20_c7_eae8_return_output;
     VAR_unbiased_exponent_CAST_TO_int22_t_float_8_14_t_c_l30_c5_3eac := resize(VAR_BIN_OP_MINUS_CAST_TO_int22_t_float_8_14_t_c_l30_c25_11d9_return_output, 8);
     VAR_mantissa_normalized_CAST_TO_int22_t_float_8_14_t_c_l32_c5_446b := VAR_uint1_uint14_CAST_TO_int22_t_float_8_14_t_c_l32_c27_4094_return_output;
     VAR_interm_CAST_TO_int22_t_float_8_14_t_c_l34_c5_97f7 := resize(VAR_mantissa_normalized_CAST_TO_int22_t_float_8_14_t_c_l32_c5_446b, 36);
     VAR_BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_left := VAR_unbiased_exponent_CAST_TO_int22_t_float_8_14_t_c_l30_c5_3eac;
     VAR_BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_left := VAR_unbiased_exponent_CAST_TO_int22_t_float_8_14_t_c_l30_c5_3eac;
     VAR_BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_left := VAR_unbiased_exponent_CAST_TO_int22_t_float_8_14_t_c_l30_c5_3eac;
     VAR_shift_CAST_TO_int22_t_float_8_14_t_c_l38_c7_2782 := resize(unsigned(std_logic_vector(VAR_unbiased_exponent_CAST_TO_int22_t_float_8_14_t_c_l30_c5_3eac)),5);
     VAR_BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_left := VAR_interm_CAST_TO_int22_t_float_8_14_t_c_l34_c5_97f7;
     VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iffalse := VAR_interm_CAST_TO_int22_t_float_8_14_t_c_l34_c5_97f7;
     VAR_BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_right := VAR_shift_CAST_TO_int22_t_float_8_14_t_c_l38_c7_2782;
     -- BIN_OP_LT[CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d] LATENCY=0
     -- Inputs
     BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_left <= VAR_BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_left;
     BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_right <= VAR_BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_right;
     -- Outputs
     VAR_BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_return_output := BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_return_output;

     -- BIN_OP_GTE[CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d] LATENCY=0
     -- Inputs
     BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_left <= VAR_BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_left;
     BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_right <= VAR_BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_right;
     -- Outputs
     VAR_BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_return_output := BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_return_output;

     -- BIN_OP_LTE[CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1] LATENCY=0
     -- Inputs
     BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_left <= VAR_BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_left;
     BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_right <= VAR_BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_right;
     -- Outputs
     VAR_BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_return_output := BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_return_output;

     -- BIN_OP_AND[CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a] LATENCY=0
     -- Inputs
     BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_left <= VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_left;
     BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_right <= VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_right;
     -- Outputs
     VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_return_output := BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_return_output;

     -- BIN_OP_SL[CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228] LATENCY=0
     -- Inputs
     BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_left <= VAR_BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_left;
     BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_right <= VAR_BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_right;
     -- Outputs
     VAR_BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_return_output := BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_return_output;

     -- Submodule level 3
     VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_cond := VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l20_c7_b90a_return_output;
     VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_left := VAR_BIN_OP_GTE_CAST_TO_int22_t_float_8_14_t_c_l35_c10_3b4d_return_output;
     VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_right := VAR_BIN_OP_LTE_CAST_TO_int22_t_float_8_14_t_c_l35_c37_ffd1_return_output;
     VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_cond := VAR_BIN_OP_LT_CAST_TO_int22_t_float_8_14_t_c_l40_c14_029d_return_output;
     VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iftrue := VAR_BIN_OP_SL_CAST_TO_int22_t_float_8_14_t_c_l39_c16_5228_return_output;
     -- interm_MUX[CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049] LATENCY=0
     -- Inputs
     interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_cond <= VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_cond;
     interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iftrue <= VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iftrue;
     interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iffalse <= VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_iffalse;
     -- Outputs
     VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_return_output := interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_return_output;

     -- BIN_OP_AND[CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf] LATENCY=0
     -- Inputs
     BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_left <= VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_left;
     BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_right <= VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_right;
     -- Outputs
     VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_return_output := BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_return_output;

     -- Submodule level 4
     VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_cond := VAR_BIN_OP_AND_CAST_TO_int22_t_float_8_14_t_c_l35_c10_55bf_return_output;
     VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iffalse := VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l40_c11_c049_return_output;
     -- interm_MUX[CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b] LATENCY=0
     -- Inputs
     interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_cond <= VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_cond;
     interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iftrue <= VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iftrue;
     interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iffalse <= VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_iffalse;
     -- Outputs
     VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_return_output := interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_return_output;

     -- Submodule level 5
     -- uint36_35_14[CAST_TO_int22_t_float_8_14_t_c_l45_c23_679f] LATENCY=0
     VAR_uint36_35_14_CAST_TO_int22_t_float_8_14_t_c_l45_c23_679f_return_output := uint36_35_14(
     VAR_interm_MUX_CAST_TO_int22_t_float_8_14_t_c_l35_c5_2d3b_return_output);

     -- Submodule level 6
     VAR_unsigned_result_CAST_TO_int22_t_float_8_14_t_c_l45_c5_8e53 := resize(VAR_uint36_35_14_CAST_TO_int22_t_float_8_14_t_c_l45_c23_679f_return_output, 21);
     VAR_rv_CAST_TO_int22_t_float_8_14_t_c_l47_c5_8f73 := signed(std_logic_vector(resize(VAR_unsigned_result_CAST_TO_int22_t_float_8_14_t_c_l45_c5_8e53, 22)));
     VAR_uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_x := VAR_unsigned_result_CAST_TO_int22_t_float_8_14_t_c_l45_c5_8e53;
     VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iffalse := VAR_rv_CAST_TO_int22_t_float_8_14_t_c_l47_c5_8f73;
     -- uint21_negate[CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f] LATENCY=0
     -- Inputs
     uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_x <= VAR_uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_x;
     -- Outputs
     VAR_uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_return_output := uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_return_output;

     -- Submodule level 7
     VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iftrue := VAR_uint21_negate_CAST_TO_int22_t_float_8_14_t_c_l50_c12_c53f_return_output;
     -- rv_MUX[CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b] LATENCY=0
     -- Inputs
     rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_cond <= VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_cond;
     rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iftrue <= VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iftrue;
     rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iffalse <= VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_iffalse;
     -- Outputs
     VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_return_output := rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_return_output;

     -- Submodule level 8
     VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iffalse := VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l48_c5_d33b_return_output;
     -- rv_MUX[CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7] LATENCY=0
     -- Inputs
     rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_cond <= VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_cond;
     rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iftrue <= VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iftrue;
     rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iffalse <= VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_iffalse;
     -- Outputs
     VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_return_output := rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_return_output;

     -- Submodule level 9
     VAR_return_output := VAR_rv_MUX_CAST_TO_int22_t_float_8_14_t_c_l20_c3_e7c7_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
