-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.10588235294117672]
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
entity BIN_OP_SR_int22_t_uint8_t_1CLK_57b0e109 is
port(
 clk : in std_logic;
 left : in signed(21 downto 0);
 right : in unsigned(7 downto 0);
 return_output : out signed(21 downto 0));
end BIN_OP_SR_int22_t_uint8_t_1CLK_57b0e109;
architecture arch of BIN_OP_SR_int22_t_uint8_t_1CLK_57b0e109 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue : signed(21 downto 0);
signal REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond : unsigned(0 downto 0);
signal REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond : unsigned(0 downto 0);
signal REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond : unsigned(0 downto 0);
signal REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond : unsigned(0 downto 0);
signal COMB_STAGE0_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue : signed(21 downto 0);
signal COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond : unsigned(0 downto 0);
signal COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond : unsigned(0 downto 0);
signal COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond : unsigned(0 downto 0);
signal COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond : unsigned(0 downto 0);
-- Each function instance gets signals
-- BIN_OP_GT[BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d]
signal BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_left : unsigned(7 downto 0);
signal BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_right : unsigned(4 downto 0);
signal BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756]
signal rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue : signed(21 downto 0);
signal rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iffalse : signed(21 downto 0);
signal rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_return_output : signed(21 downto 0);

-- CONST_SR_1[BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113]
signal CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_x : signed(21 downto 0);
signal CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_return_output : signed(21 downto 0);

-- MUX[BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e]
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iftrue : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iffalse : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_return_output : signed(21 downto 0);

-- CONST_SR_2[BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08]
signal CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_x : signed(21 downto 0);
signal CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_return_output : signed(21 downto 0);

-- MUX[BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953]
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iftrue : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iffalse : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_return_output : signed(21 downto 0);

-- CONST_SR_4[BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff]
signal CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_x : signed(21 downto 0);
signal CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_return_output : signed(21 downto 0);

-- MUX[BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0]
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iftrue : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iffalse : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_return_output : signed(21 downto 0);

-- CONST_SR_8[BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3]
signal CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_x : signed(21 downto 0);
signal CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_return_output : signed(21 downto 0);

-- MUX[BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9]
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iftrue : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iffalse : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_return_output : signed(21 downto 0);

-- CONST_SR_16[BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e]
signal CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_x : signed(21 downto 0);
signal CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_return_output : signed(21 downto 0);

-- MUX[BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112]
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iftrue : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iffalse : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_return_output : signed(21 downto 0);

function int22_21_21( x : signed) return unsigned is
--variable x : signed(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(21- i);
      end loop;
return return_output;
end function;

function uint1_22( x : unsigned) return unsigned is

  --variable x : unsigned(0 downto 0);
  variable return_output : unsigned(21 downto 0);

begin

    for i in 0 to 21 loop
      return_output( (((i+1)*1)-1) downto (i*1)) := unsigned(std_logic_vector(x));
    end loop;
return return_output;
end function;

function int22_0_0( x : signed) return unsigned is
--variable x : signed(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(0- i);
      end loop;
return return_output;
end function;

function int22_1_1( x : signed) return unsigned is
--variable x : signed(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(1- i);
      end loop;
return return_output;
end function;

function int22_2_2( x : signed) return unsigned is
--variable x : signed(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(2- i);
      end loop;
return return_output;
end function;

function int22_3_3( x : signed) return unsigned is
--variable x : signed(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(3- i);
      end loop;
return return_output;
end function;

function int22_4_4( x : signed) return unsigned is
--variable x : signed(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(4- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d
BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d : entity work.BIN_OP_GT_uint8_t_uint5_t_1CLK_18ce96cc port map (
clk,
BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_left,
BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_right,
BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_return_output);

-- rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756
rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_cond,
rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue,
rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iffalse,
rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_return_output);

-- CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113
CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113 : entity work.CONST_SR_1_int22_t_0CLK_de264c78 port map (
CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_x,
CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_return_output);

-- MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e
MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e : entity work.MUX_uint1_t_int22_t_int22_t_1CLK_d20ad696 port map (
clk,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_cond,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iftrue,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iffalse,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_return_output);

-- CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08
CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08 : entity work.CONST_SR_2_int22_t_0CLK_de264c78 port map (
CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_x,
CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_return_output);

-- MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953
MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iftrue,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iffalse,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_return_output);

-- CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff
CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff : entity work.CONST_SR_4_int22_t_0CLK_de264c78 port map (
CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_x,
CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_return_output);

-- MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0
MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iftrue,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iffalse,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_return_output);

-- CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3
CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3 : entity work.CONST_SR_8_int22_t_0CLK_de264c78 port map (
CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_x,
CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_return_output);

-- MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9
MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iftrue,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iffalse,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_return_output);

-- CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e
CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e : entity work.CONST_SR_16_int22_t_0CLK_de264c78 port map (
CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_x,
CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_return_output);

-- MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112
MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iftrue,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iffalse,
MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- Registers
 -- Stage 0
 REG_STAGE0_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue,
 REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond,
 REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond,
 REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond,
 REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond,
 -- All submodule outputs
 BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_return_output,
 rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_return_output,
 CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_return_output,
 MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_return_output,
 CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_return_output,
 MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_return_output,
 CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_return_output,
 MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_return_output,
 CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_return_output,
 MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_return_output,
 CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_return_output,
 MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : signed(21 downto 0);
 variable VAR_right : unsigned(7 downto 0);
 variable VAR_return_output : signed(21 downto 0);
 variable VAR_resized_shift_amount : unsigned(4 downto 0);
 variable VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint8_t_c_l11_c3_6fe5 : unsigned(4 downto 0);
 variable VAR_rv : signed(21 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue : signed(21 downto 0);
 variable VAR_rv_BIN_OP_SR_int22_t_uint8_t_c_l23_c5_9f51 : signed(21 downto 0);
 variable VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iffalse : signed(21 downto 0);
 variable VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_return_output : signed(21 downto 0);
 variable VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_cond : unsigned(0 downto 0);
 variable VAR_sign : unsigned(0 downto 0);
 variable VAR_int22_21_21_BIN_OP_SR_int22_t_uint8_t_c_l21_c12_6b00_return_output : unsigned(0 downto 0);
 variable VAR_uint1_22_BIN_OP_SR_int22_t_uint8_t_c_l23_c10_e2ea_return_output : unsigned(21 downto 0);
 variable VAR_v0 : signed(21 downto 0);
 variable VAR_v1 : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iftrue : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iffalse : signed(21 downto 0);
 variable VAR_int22_0_0_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_dbda_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_x : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_return_output : signed(21 downto 0);
 variable VAR_v2 : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iftrue : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iffalse : signed(21 downto 0);
 variable VAR_int22_1_1_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_6ff6_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_x : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_return_output : signed(21 downto 0);
 variable VAR_v3 : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iftrue : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iffalse : signed(21 downto 0);
 variable VAR_int22_2_2_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_dfa9_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_x : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_return_output : signed(21 downto 0);
 variable VAR_v4 : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iftrue : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iffalse : signed(21 downto 0);
 variable VAR_int22_3_3_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_baf8_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_x : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_return_output : signed(21 downto 0);
 variable VAR_v5 : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iftrue : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iffalse : signed(21 downto 0);
 variable VAR_int22_4_4_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_e630_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_x : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_return_output : signed(21 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_right := to_unsigned(21, 5);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_x := VAR_left;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iffalse := VAR_left;
     VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_left := VAR_right;
     VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint8_t_c_l11_c3_6fe5 := resize(VAR_right, 5);
     -- int22_3_3[BIN_OP_SR_int22_t_uint8_t_c_l34_c18_baf8] LATENCY=0
     VAR_int22_3_3_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_baf8_return_output := int22_3_3(
     signed(std_logic_vector(resize(VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint8_t_c_l11_c3_6fe5, 22))));

     -- CONST_SR_1[BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113] LATENCY=0
     -- Inputs
     CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_x <= VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_x;
     -- Outputs
     VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_return_output := CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_return_output;

     -- int22_2_2[BIN_OP_SR_int22_t_uint8_t_c_l33_c18_dfa9] LATENCY=0
     VAR_int22_2_2_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_dfa9_return_output := int22_2_2(
     signed(std_logic_vector(resize(VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint8_t_c_l11_c3_6fe5, 22))));

     -- BIN_OP_GT[BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d] LATENCY=1
     -- Inputs
     BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_left <= VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_left;
     BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_right <= VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_right;

     -- int22_4_4[BIN_OP_SR_int22_t_uint8_t_c_l35_c18_e630] LATENCY=0
     VAR_int22_4_4_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_e630_return_output := int22_4_4(
     signed(std_logic_vector(resize(VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint8_t_c_l11_c3_6fe5, 22))));

     -- int22_1_1[BIN_OP_SR_int22_t_uint8_t_c_l32_c18_6ff6] LATENCY=0
     VAR_int22_1_1_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_6ff6_return_output := int22_1_1(
     signed(std_logic_vector(resize(VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint8_t_c_l11_c3_6fe5, 22))));

     -- int22_21_21[BIN_OP_SR_int22_t_uint8_t_c_l21_c12_6b00] LATENCY=0
     VAR_int22_21_21_BIN_OP_SR_int22_t_uint8_t_c_l21_c12_6b00_return_output := int22_21_21(
     VAR_left);

     -- int22_0_0[BIN_OP_SR_int22_t_uint8_t_c_l31_c18_dbda] LATENCY=0
     VAR_int22_0_0_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_dbda_return_output := int22_0_0(
     signed(std_logic_vector(resize(VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint8_t_c_l11_c3_6fe5, 22))));

     -- Submodule level 1
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iftrue := VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint8_t_c_l31_c53_8113_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_cond := VAR_int22_0_0_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_dbda_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond := VAR_int22_1_1_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_6ff6_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond := VAR_int22_2_2_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_dfa9_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond := VAR_int22_3_3_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_baf8_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond := VAR_int22_4_4_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_e630_return_output;
     -- MUX[BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e] LATENCY=1
     -- Inputs
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_cond;
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iftrue <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iftrue;
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iffalse <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_iffalse;

     -- uint1_22[BIN_OP_SR_int22_t_uint8_t_c_l23_c10_e2ea] LATENCY=0
     VAR_uint1_22_BIN_OP_SR_int22_t_uint8_t_c_l23_c10_e2ea_return_output := uint1_22(
     VAR_int22_21_21_BIN_OP_SR_int22_t_uint8_t_c_l21_c12_6b00_return_output);

     -- Submodule level 2
     VAR_rv_BIN_OP_SR_int22_t_uint8_t_c_l23_c5_9f51 := signed(std_logic_vector(resize(VAR_uint1_22_BIN_OP_SR_int22_t_uint8_t_c_l23_c10_e2ea_return_output, 22)));
     VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue := VAR_rv_BIN_OP_SR_int22_t_uint8_t_c_l23_c5_9f51;
     -- Write to comb signals
     COMB_STAGE0_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue <= VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue;
     COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond;
     COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond;
     COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond;
     COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue := REG_STAGE0_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond := REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond := REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond := REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond := REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond;
     -- Submodule outputs
     VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_return_output := BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_return_output := MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_return_output;

     -- Submodule level 0
     VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_cond := VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint8_t_c_l17_c6_a49d_return_output;
     VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_x := VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iffalse := VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l31_c18_a45e_return_output;
     -- CONST_SR_2[BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08] LATENCY=0
     -- Inputs
     CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_x <= VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_x;
     -- Outputs
     VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_return_output := CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_return_output;

     -- Submodule level 1
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iftrue := VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint8_t_c_l32_c53_5f08_return_output;
     -- MUX[BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond;
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iftrue <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iftrue;
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iffalse <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_return_output := MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_return_output;

     -- Submodule level 2
     VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_x := VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iffalse := VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_return_output;
     -- CONST_SR_4[BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff] LATENCY=0
     -- Inputs
     CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_x <= VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_x;
     -- Outputs
     VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_return_output := CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_return_output;

     -- Submodule level 3
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iftrue := VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint8_t_c_l33_c53_aaff_return_output;
     -- MUX[BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond;
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iftrue <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iftrue;
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iffalse <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_return_output := MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_return_output;

     -- Submodule level 4
     VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_x := VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iffalse := VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_return_output;
     -- CONST_SR_8[BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3] LATENCY=0
     -- Inputs
     CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_x <= VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_x;
     -- Outputs
     VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_return_output := CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_return_output;

     -- Submodule level 5
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iftrue := VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint8_t_c_l34_c53_12e3_return_output;
     -- MUX[BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond;
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iftrue <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iftrue;
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iffalse <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_return_output := MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_return_output;

     -- Submodule level 6
     VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_x := VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iffalse := VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_return_output;
     -- CONST_SR_16[BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e] LATENCY=0
     -- Inputs
     CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_x <= VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_x;
     -- Outputs
     VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_return_output := CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_return_output;

     -- Submodule level 7
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iftrue := VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint8_t_c_l35_c53_bf4e_return_output;
     -- MUX[BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond;
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iftrue <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iftrue;
     MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iffalse <= VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_return_output := MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_return_output;

     -- Submodule level 8
     VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iffalse := VAR_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_return_output;
     -- rv_MUX[BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_cond <= VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_cond;
     rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue <= VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue;
     rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iffalse <= VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_return_output := rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_return_output;

     -- Submodule level 9
     VAR_return_output := VAR_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
     -- Stage 0
     REG_STAGE0_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue <= COMB_STAGE0_rv_MUX_BIN_OP_SR_int22_t_uint8_t_c_l17_c3_a756_iftrue;
     REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond <= COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l32_c18_5953_cond;
     REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond <= COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l33_c18_47b0_cond;
     REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond <= COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l34_c18_6aa9_cond;
     REG_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond <= COMB_STAGE0_MUX_BIN_OP_SR_int22_t_uint8_t_c_l35_c18_d112_cond;
 end if;
end process;

end arch;
