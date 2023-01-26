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
-- Submodules: 16
entity BIN_OP_GTE_float_8_14_t_float_8_14_t_0CLK_36723c85 is
port(
 left : in std_logic_vector(22 downto 0);
 right : in std_logic_vector(22 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_GTE_float_8_14_t_float_8_14_t_0CLK_36723c85;
architecture arch of BIN_OP_GTE_float_8_14_t_float_8_14_t_0CLK_36723c85 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_EQ[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50]
signal BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_left : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba]
signal UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6]
signal BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_left : unsigned(0 downto 0);
signal BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_right : unsigned(0 downto 0);
signal BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735]
signal rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_return_output : unsigned(0 downto 0);

-- BIN_OP_GT[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8]
signal BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_left : unsigned(21 downto 0);
signal BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_right : unsigned(21 downto 0);
signal BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235]
signal BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_left : unsigned(0 downto 0);
signal BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_right : unsigned(0 downto 0);
signal BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360]
signal rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_return_output : unsigned(0 downto 0);

-- BIN_OP_GTE[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7]
signal BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_left : unsigned(21 downto 0);
signal BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_right : unsigned(21 downto 0);
signal BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_return_output : unsigned(0 downto 0);

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

function uint8_uint14( x : unsigned;
 y : unsigned) return unsigned is

  --variable x : unsigned(7 downto 0);
  --variable y : unsigned(13 downto 0);
  variable return_output : unsigned(21 downto 0);

begin

    return_output := unsigned(std_logic_vector(x)) & unsigned(std_logic_vector(y));
    return return_output;

end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50
BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50 : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_left,
BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_right,
BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_return_output);

-- UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba
UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_expr,
UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_return_output);

-- BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6
BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_left,
BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_right,
BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_return_output);

-- rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735
rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_cond,
rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iftrue,
rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iffalse,
rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_return_output);

-- BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8
BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8 : entity work.BIN_OP_GT_uint22_t_uint22_t_0CLK_de264c78 port map (
BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_left,
BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_right,
BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_return_output);

-- BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235
BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_left,
BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_right,
BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_return_output);

-- rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360
rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_cond,
rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iftrue,
rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iffalse,
rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_return_output);

-- BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7
BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7 : entity work.BIN_OP_GTE_uint22_t_uint22_t_0CLK_de264c78 port map (
BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_left,
BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_right,
BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_return_output,
 UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_return_output,
 BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_return_output,
 rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_return_output,
 BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_return_output,
 BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_return_output,
 rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_return_output,
 BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : std_logic_vector(22 downto 0);
 variable VAR_right : std_logic_vector(22 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_mantissa : unsigned(13 downto 0);
 variable VAR_float_8_14_t_13_0_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l12_c19_8df5_return_output : unsigned(13 downto 0);
 variable VAR_left_exponent : unsigned(7 downto 0);
 variable VAR_float_8_14_t_21_14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l14_c19_f350_return_output : unsigned(7 downto 0);
 variable VAR_left_sign : unsigned(0 downto 0);
 variable VAR_float_8_14_t_22_22_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l16_c15_fd42_return_output : unsigned(0 downto 0);
 variable VAR_right_mantissa : unsigned(13 downto 0);
 variable VAR_float_8_14_t_13_0_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l19_c20_2dd1_return_output : unsigned(13 downto 0);
 variable VAR_right_exponent : unsigned(7 downto 0);
 variable VAR_float_8_14_t_21_14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l21_c20_9a52_return_output : unsigned(7 downto 0);
 variable VAR_right_sign : unsigned(0 downto 0);
 variable VAR_float_8_14_t_22_22_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l23_c16_15c8_return_output : unsigned(0 downto 0);
 variable VAR_left_abs : unsigned(21 downto 0);
 variable VAR_uint8_uint14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l28_c14_60f7_return_output : unsigned(21 downto 0);
 variable VAR_right_abs : unsigned(21 downto 0);
 variable VAR_uint8_uint14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l30_c15_c5b3_return_output : unsigned(21 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_same_sign : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_return_output : unsigned(0 downto 0);
 variable VAR_pos_signs : unsigned(0 downto 0);
 variable VAR_neg_signs : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_left : unsigned(21 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_right : unsigned(21 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_left : unsigned(21 downto 0);
 variable VAR_BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_right : unsigned(21 downto 0);
 variable VAR_BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_return_output : unsigned(0 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- float_8_14_t_22_22[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l23_c16_15c8] LATENCY=0
     VAR_float_8_14_t_22_22_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l23_c16_15c8_return_output := float_8_14_t_22_22(
     VAR_right);

     -- float_8_14_t_22_22[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l16_c15_fd42] LATENCY=0
     VAR_float_8_14_t_22_22_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l16_c15_fd42_return_output := float_8_14_t_22_22(
     VAR_left);

     -- float_8_14_t_21_14[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l14_c19_f350] LATENCY=0
     VAR_float_8_14_t_21_14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l14_c19_f350_return_output := float_8_14_t_21_14(
     VAR_left);

     -- float_8_14_t_21_14[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l21_c20_9a52] LATENCY=0
     VAR_float_8_14_t_21_14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l21_c20_9a52_return_output := float_8_14_t_21_14(
     VAR_right);

     -- float_8_14_t_13_0[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l12_c19_8df5] LATENCY=0
     VAR_float_8_14_t_13_0_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l12_c19_8df5_return_output := float_8_14_t_13_0(
     VAR_left);

     -- float_8_14_t_13_0[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l19_c20_2dd1] LATENCY=0
     VAR_float_8_14_t_13_0_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l19_c20_2dd1_return_output := float_8_14_t_13_0(
     VAR_right);

     -- Submodule level 1
     VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_right := VAR_float_8_14_t_22_22_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l16_c15_fd42_return_output;
     VAR_BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_left := VAR_float_8_14_t_22_22_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l16_c15_fd42_return_output;
     VAR_UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_expr := VAR_float_8_14_t_22_22_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l16_c15_fd42_return_output;
     VAR_BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_right := VAR_float_8_14_t_22_22_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l23_c16_15c8_return_output;
     VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iffalse := VAR_float_8_14_t_22_22_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l23_c16_15c8_return_output;
     -- uint8_uint14[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l28_c14_60f7] LATENCY=0
     VAR_uint8_uint14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l28_c14_60f7_return_output := uint8_uint14(
     VAR_float_8_14_t_21_14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l14_c19_f350_return_output,
     VAR_float_8_14_t_13_0_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l12_c19_8df5_return_output);

     -- UNARY_OP_NOT[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_expr <= VAR_UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_return_output := UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_return_output;

     -- uint8_uint14[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l30_c15_c5b3] LATENCY=0
     VAR_uint8_uint14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l30_c15_c5b3_return_output := uint8_uint14(
     VAR_float_8_14_t_21_14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l21_c20_9a52_return_output,
     VAR_float_8_14_t_13_0_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l19_c20_2dd1_return_output);

     -- BIN_OP_EQ[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_left <= VAR_BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_left;
     BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_right <= VAR_BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_return_output := BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_left := VAR_BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_return_output;
     VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_left := VAR_BIN_OP_EQ_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l34_c15_be50_return_output;
     VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_right := VAR_UNARY_OP_NOT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l38_c16_64ba_return_output;
     VAR_BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_right := VAR_uint8_uint14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l28_c14_60f7_return_output;
     VAR_BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_left := VAR_uint8_uint14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l28_c14_60f7_return_output;
     VAR_BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_left := VAR_uint8_uint14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l30_c15_c5b3_return_output;
     VAR_BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_right := VAR_uint8_uint14_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l30_c15_c5b3_return_output;
     -- BIN_OP_GTE[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7] LATENCY=0
     -- Inputs
     BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_left <= VAR_BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_left;
     BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_right <= VAR_BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_right;
     -- Outputs
     VAR_BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_return_output := BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_return_output;

     -- BIN_OP_AND[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235] LATENCY=0
     -- Inputs
     BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_left <= VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_left;
     BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_right <= VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_right;
     -- Outputs
     VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_return_output := BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_return_output;

     -- BIN_OP_AND[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6] LATENCY=0
     -- Inputs
     BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_left <= VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_left;
     BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_right <= VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_right;
     -- Outputs
     VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_return_output := BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_return_output;

     -- BIN_OP_GT[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8] LATENCY=0
     -- Inputs
     BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_left <= VAR_BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_left;
     BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_right <= VAR_BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_right;
     -- Outputs
     VAR_BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_return_output := BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_return_output;

     -- Submodule level 3
     VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_cond := VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c6_1cd6_return_output;
     VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_cond := VAR_BIN_OP_AND_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c11_f235_return_output;
     VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iftrue := VAR_BIN_OP_GTE_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l46_c10_5bc7_return_output;
     VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iftrue := VAR_BIN_OP_GT_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l41_c10_c9d8_return_output;
     -- rv_MUX[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_cond <= VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_cond;
     rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iftrue <= VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iftrue;
     rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iffalse <= VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_return_output := rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_return_output;

     -- Submodule level 4
     VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iffalse := VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l43_c8_c360_return_output;
     -- rv_MUX[BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_cond <= VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_cond;
     rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iftrue <= VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iftrue;
     rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iffalse <= VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_return_output := rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_return_output;

     -- Submodule level 5
     VAR_return_output := VAR_rv_MUX_BIN_OP_GTE_float_8_14_t_float_8_14_t_c_l39_c3_3735_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
