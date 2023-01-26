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
entity BIN_OP_LT_float_8_14_t_float_8_14_t_0CLK_36723c85 is
port(
 left : in std_logic_vector(22 downto 0);
 right : in std_logic_vector(22 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_LT_float_8_14_t_float_8_14_t_0CLK_36723c85;
architecture arch of BIN_OP_LT_float_8_14_t_float_8_14_t_0CLK_36723c85 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_EQ[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3]
signal BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_left : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_right : unsigned(0 downto 0);
signal BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900]
signal UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb]
signal BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_left : unsigned(0 downto 0);
signal BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_right : unsigned(0 downto 0);
signal BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec]
signal rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4]
signal BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_left : unsigned(21 downto 0);
signal BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_right : unsigned(21 downto 0);
signal BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758]
signal BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_left : unsigned(0 downto 0);
signal BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_right : unsigned(0 downto 0);
signal BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa]
signal rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iftrue : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iffalse : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_return_output : unsigned(0 downto 0);

-- BIN_OP_LTE[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4]
signal BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_left : unsigned(21 downto 0);
signal BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_right : unsigned(21 downto 0);
signal BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_return_output : unsigned(0 downto 0);

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
-- BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3
BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3 : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_left,
BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_right,
BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_return_output);

-- UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900
UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_expr,
UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_return_output);

-- BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb
BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_left,
BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_right,
BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_return_output);

-- rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec
rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_cond,
rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iftrue,
rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iffalse,
rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_return_output);

-- BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4
BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4 : entity work.BIN_OP_LT_uint22_t_uint22_t_0CLK_de264c78 port map (
BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_left,
BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_right,
BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_return_output);

-- BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758
BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_left,
BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_right,
BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_return_output);

-- rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa
rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_cond,
rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iftrue,
rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iffalse,
rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_return_output);

-- BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4
BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4 : entity work.BIN_OP_LTE_uint22_t_uint22_t_0CLK_de264c78 port map (
BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_left,
BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_right,
BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_return_output,
 UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_return_output,
 BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_return_output,
 rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_return_output,
 BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_return_output,
 BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_return_output,
 rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_return_output,
 BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : std_logic_vector(22 downto 0);
 variable VAR_right : std_logic_vector(22 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_mantissa : unsigned(13 downto 0);
 variable VAR_float_8_14_t_13_0_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l12_c19_aa6a_return_output : unsigned(13 downto 0);
 variable VAR_left_exponent : unsigned(7 downto 0);
 variable VAR_float_8_14_t_21_14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l14_c19_517f_return_output : unsigned(7 downto 0);
 variable VAR_left_sign : unsigned(0 downto 0);
 variable VAR_float_8_14_t_22_22_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l16_c15_7303_return_output : unsigned(0 downto 0);
 variable VAR_right_mantissa : unsigned(13 downto 0);
 variable VAR_float_8_14_t_13_0_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l19_c20_bc78_return_output : unsigned(13 downto 0);
 variable VAR_right_exponent : unsigned(7 downto 0);
 variable VAR_float_8_14_t_21_14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l21_c20_b641_return_output : unsigned(7 downto 0);
 variable VAR_right_sign : unsigned(0 downto 0);
 variable VAR_float_8_14_t_22_22_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l23_c16_966d_return_output : unsigned(0 downto 0);
 variable VAR_left_abs : unsigned(21 downto 0);
 variable VAR_uint8_uint14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l28_c14_bc3a_return_output : unsigned(21 downto 0);
 variable VAR_right_abs : unsigned(21 downto 0);
 variable VAR_uint8_uint14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l30_c15_660f_return_output : unsigned(21 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_same_sign : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_return_output : unsigned(0 downto 0);
 variable VAR_pos_signs : unsigned(0 downto 0);
 variable VAR_neg_signs : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_left : unsigned(21 downto 0);
 variable VAR_BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_right : unsigned(21 downto 0);
 variable VAR_BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iftrue : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iffalse : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_left : unsigned(21 downto 0);
 variable VAR_BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_right : unsigned(21 downto 0);
 variable VAR_BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_return_output : unsigned(0 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- float_8_14_t_13_0[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l19_c20_bc78] LATENCY=0
     VAR_float_8_14_t_13_0_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l19_c20_bc78_return_output := float_8_14_t_13_0(
     VAR_right);

     -- float_8_14_t_21_14[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l21_c20_b641] LATENCY=0
     VAR_float_8_14_t_21_14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l21_c20_b641_return_output := float_8_14_t_21_14(
     VAR_right);

     -- float_8_14_t_13_0[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l12_c19_aa6a] LATENCY=0
     VAR_float_8_14_t_13_0_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l12_c19_aa6a_return_output := float_8_14_t_13_0(
     VAR_left);

     -- float_8_14_t_22_22[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l16_c15_7303] LATENCY=0
     VAR_float_8_14_t_22_22_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l16_c15_7303_return_output := float_8_14_t_22_22(
     VAR_left);

     -- float_8_14_t_21_14[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l14_c19_517f] LATENCY=0
     VAR_float_8_14_t_21_14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l14_c19_517f_return_output := float_8_14_t_21_14(
     VAR_left);

     -- float_8_14_t_22_22[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l23_c16_966d] LATENCY=0
     VAR_float_8_14_t_22_22_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l23_c16_966d_return_output := float_8_14_t_22_22(
     VAR_right);

     -- Submodule level 1
     VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_right := VAR_float_8_14_t_22_22_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l16_c15_7303_return_output;
     VAR_BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_left := VAR_float_8_14_t_22_22_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l16_c15_7303_return_output;
     VAR_UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_expr := VAR_float_8_14_t_22_22_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l16_c15_7303_return_output;
     VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iffalse := VAR_float_8_14_t_22_22_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l16_c15_7303_return_output;
     VAR_BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_right := VAR_float_8_14_t_22_22_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l23_c16_966d_return_output;
     -- UNARY_OP_NOT[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_expr <= VAR_UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_return_output := UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_return_output;

     -- uint8_uint14[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l28_c14_bc3a] LATENCY=0
     VAR_uint8_uint14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l28_c14_bc3a_return_output := uint8_uint14(
     VAR_float_8_14_t_21_14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l14_c19_517f_return_output,
     VAR_float_8_14_t_13_0_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l12_c19_aa6a_return_output);

     -- uint8_uint14[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l30_c15_660f] LATENCY=0
     VAR_uint8_uint14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l30_c15_660f_return_output := uint8_uint14(
     VAR_float_8_14_t_21_14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l21_c20_b641_return_output,
     VAR_float_8_14_t_13_0_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l19_c20_bc78_return_output);

     -- BIN_OP_EQ[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3] LATENCY=0
     -- Inputs
     BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_left <= VAR_BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_left;
     BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_right <= VAR_BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_right;
     -- Outputs
     VAR_BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_return_output := BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_left := VAR_BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_return_output;
     VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_left := VAR_BIN_OP_EQ_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l34_c15_8cc3_return_output;
     VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_right := VAR_UNARY_OP_NOT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l38_c16_2900_return_output;
     VAR_BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_right := VAR_uint8_uint14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l28_c14_bc3a_return_output;
     VAR_BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_left := VAR_uint8_uint14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l28_c14_bc3a_return_output;
     VAR_BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_left := VAR_uint8_uint14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l30_c15_660f_return_output;
     VAR_BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_right := VAR_uint8_uint14_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l30_c15_660f_return_output;
     -- BIN_OP_LT[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4] LATENCY=0
     -- Inputs
     BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_left <= VAR_BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_left;
     BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_right <= VAR_BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_right;
     -- Outputs
     VAR_BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_return_output := BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_return_output;

     -- BIN_OP_AND[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb] LATENCY=0
     -- Inputs
     BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_left <= VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_left;
     BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_right <= VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_right;
     -- Outputs
     VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_return_output := BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_return_output;

     -- BIN_OP_AND[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758] LATENCY=0
     -- Inputs
     BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_left <= VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_left;
     BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_right <= VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_right;
     -- Outputs
     VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_return_output := BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_return_output;

     -- BIN_OP_LTE[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4] LATENCY=0
     -- Inputs
     BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_left <= VAR_BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_left;
     BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_right <= VAR_BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_right;
     -- Outputs
     VAR_BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_return_output := BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_return_output;

     -- Submodule level 3
     VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_cond := VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c6_1bcb_return_output;
     VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_cond := VAR_BIN_OP_AND_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c11_6758_return_output;
     VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iftrue := VAR_BIN_OP_LTE_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l46_c10_0fd4_return_output;
     VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iftrue := VAR_BIN_OP_LT_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l41_c10_1ef4_return_output;
     -- rv_MUX[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_cond <= VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_cond;
     rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iftrue <= VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iftrue;
     rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iffalse <= VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_return_output := rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_return_output;

     -- Submodule level 4
     VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iffalse := VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l43_c8_6dfa_return_output;
     -- rv_MUX[BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_cond <= VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_cond;
     rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iftrue <= VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iftrue;
     rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iffalse <= VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_return_output := rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_return_output;

     -- Submodule level 5
     VAR_return_output := VAR_rv_MUX_BIN_OP_LT_float_8_14_t_float_8_14_t_c_l39_c3_04ec_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
