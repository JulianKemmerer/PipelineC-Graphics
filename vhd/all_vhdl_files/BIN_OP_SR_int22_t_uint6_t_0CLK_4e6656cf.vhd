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
entity BIN_OP_SR_int22_t_uint6_t_0CLK_4e6656cf is
port(
 left : in signed(21 downto 0);
 right : in unsigned(5 downto 0);
 return_output : out signed(21 downto 0));
end BIN_OP_SR_int22_t_uint6_t_0CLK_4e6656cf;
architecture arch of BIN_OP_SR_int22_t_uint6_t_0CLK_4e6656cf is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_GT[BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f]
signal BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_left : unsigned(5 downto 0);
signal BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_right : unsigned(4 downto 0);
signal BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f]
signal rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iftrue : signed(21 downto 0);
signal rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iffalse : signed(21 downto 0);
signal rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_return_output : signed(21 downto 0);

-- CONST_SR_1[BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4]
signal CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_x : signed(21 downto 0);
signal CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_return_output : signed(21 downto 0);

-- MUX[BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1]
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iftrue : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iffalse : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_return_output : signed(21 downto 0);

-- CONST_SR_2[BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464]
signal CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_x : signed(21 downto 0);
signal CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_return_output : signed(21 downto 0);

-- MUX[BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59]
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iftrue : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iffalse : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_return_output : signed(21 downto 0);

-- CONST_SR_4[BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8]
signal CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_x : signed(21 downto 0);
signal CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_return_output : signed(21 downto 0);

-- MUX[BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879]
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iftrue : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iffalse : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_return_output : signed(21 downto 0);

-- CONST_SR_8[BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c]
signal CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_x : signed(21 downto 0);
signal CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_return_output : signed(21 downto 0);

-- MUX[BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177]
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iftrue : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iffalse : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_return_output : signed(21 downto 0);

-- CONST_SR_16[BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8]
signal CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_x : signed(21 downto 0);
signal CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_return_output : signed(21 downto 0);

-- MUX[BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56]
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iftrue : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iffalse : signed(21 downto 0);
signal MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_return_output : signed(21 downto 0);

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
-- BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f
BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f : entity work.BIN_OP_GT_uint6_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_left,
BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_right,
BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_return_output);

-- rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f
rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_cond,
rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iftrue,
rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iffalse,
rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_return_output);

-- CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4
CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4 : entity work.CONST_SR_1_int22_t_0CLK_de264c78 port map (
CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_x,
CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_return_output);

-- MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1
MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_cond,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iftrue,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iffalse,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_return_output);

-- CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464
CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464 : entity work.CONST_SR_2_int22_t_0CLK_de264c78 port map (
CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_x,
CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_return_output);

-- MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59
MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_cond,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iftrue,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iffalse,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_return_output);

-- CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8
CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8 : entity work.CONST_SR_4_int22_t_0CLK_de264c78 port map (
CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_x,
CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_return_output);

-- MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879
MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_cond,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iftrue,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iffalse,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_return_output);

-- CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c
CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c : entity work.CONST_SR_8_int22_t_0CLK_de264c78 port map (
CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_x,
CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_return_output);

-- MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177
MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_cond,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iftrue,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iffalse,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_return_output);

-- CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8
CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8 : entity work.CONST_SR_16_int22_t_0CLK_de264c78 port map (
CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_x,
CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_return_output);

-- MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56
MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56 : entity work.MUX_uint1_t_int22_t_int22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_cond,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iftrue,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iffalse,
MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_return_output,
 rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_return_output,
 CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_return_output,
 MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_return_output,
 CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_return_output,
 MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_return_output,
 CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_return_output,
 MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_return_output,
 CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_return_output,
 MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_return_output,
 CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_return_output,
 MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : signed(21 downto 0);
 variable VAR_right : unsigned(5 downto 0);
 variable VAR_return_output : signed(21 downto 0);
 variable VAR_resized_shift_amount : unsigned(4 downto 0);
 variable VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint6_t_c_l11_c3_3315 : unsigned(4 downto 0);
 variable VAR_rv : signed(21 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_left : unsigned(5 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iftrue : signed(21 downto 0);
 variable VAR_rv_BIN_OP_SR_int22_t_uint6_t_c_l23_c5_42cc : signed(21 downto 0);
 variable VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iffalse : signed(21 downto 0);
 variable VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_return_output : signed(21 downto 0);
 variable VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_cond : unsigned(0 downto 0);
 variable VAR_sign : unsigned(0 downto 0);
 variable VAR_int22_21_21_BIN_OP_SR_int22_t_uint6_t_c_l21_c12_58c8_return_output : unsigned(0 downto 0);
 variable VAR_uint1_22_BIN_OP_SR_int22_t_uint6_t_c_l23_c10_d33c_return_output : unsigned(21 downto 0);
 variable VAR_v0 : signed(21 downto 0);
 variable VAR_v1 : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iftrue : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iffalse : signed(21 downto 0);
 variable VAR_int22_0_0_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_2f1d_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_x : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_return_output : signed(21 downto 0);
 variable VAR_v2 : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iftrue : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iffalse : signed(21 downto 0);
 variable VAR_int22_1_1_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_3716_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_x : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_return_output : signed(21 downto 0);
 variable VAR_v3 : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iftrue : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iffalse : signed(21 downto 0);
 variable VAR_int22_2_2_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_1929_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_x : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_return_output : signed(21 downto 0);
 variable VAR_v4 : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iftrue : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iffalse : signed(21 downto 0);
 variable VAR_int22_3_3_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_03cd_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_x : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_return_output : signed(21 downto 0);
 variable VAR_v5 : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iftrue : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iffalse : signed(21 downto 0);
 variable VAR_int22_4_4_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_e534_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_x : signed(21 downto 0);
 variable VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_return_output : signed(21 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_right := to_unsigned(21, 5);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_x := VAR_left;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iffalse := VAR_left;
     VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_left := VAR_right;
     VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint6_t_c_l11_c3_3315 := resize(VAR_right, 5);
     -- int22_2_2[BIN_OP_SR_int22_t_uint6_t_c_l33_c18_1929] LATENCY=0
     VAR_int22_2_2_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_1929_return_output := int22_2_2(
     signed(std_logic_vector(resize(VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint6_t_c_l11_c3_3315, 22))));

     -- int22_4_4[BIN_OP_SR_int22_t_uint6_t_c_l35_c18_e534] LATENCY=0
     VAR_int22_4_4_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_e534_return_output := int22_4_4(
     signed(std_logic_vector(resize(VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint6_t_c_l11_c3_3315, 22))));

     -- BIN_OP_GT[BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f] LATENCY=0
     -- Inputs
     BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_left <= VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_left;
     BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_right <= VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_right;
     -- Outputs
     VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_return_output := BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_return_output;

     -- int22_0_0[BIN_OP_SR_int22_t_uint6_t_c_l31_c18_2f1d] LATENCY=0
     VAR_int22_0_0_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_2f1d_return_output := int22_0_0(
     signed(std_logic_vector(resize(VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint6_t_c_l11_c3_3315, 22))));

     -- int22_3_3[BIN_OP_SR_int22_t_uint6_t_c_l34_c18_03cd] LATENCY=0
     VAR_int22_3_3_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_03cd_return_output := int22_3_3(
     signed(std_logic_vector(resize(VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint6_t_c_l11_c3_3315, 22))));

     -- CONST_SR_1[BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4] LATENCY=0
     -- Inputs
     CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_x <= VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_x;
     -- Outputs
     VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_return_output := CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_return_output;

     -- int22_21_21[BIN_OP_SR_int22_t_uint6_t_c_l21_c12_58c8] LATENCY=0
     VAR_int22_21_21_BIN_OP_SR_int22_t_uint6_t_c_l21_c12_58c8_return_output := int22_21_21(
     VAR_left);

     -- int22_1_1[BIN_OP_SR_int22_t_uint6_t_c_l32_c18_3716] LATENCY=0
     VAR_int22_1_1_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_3716_return_output := int22_1_1(
     signed(std_logic_vector(resize(VAR_resized_shift_amount_BIN_OP_SR_int22_t_uint6_t_c_l11_c3_3315, 22))));

     -- Submodule level 1
     VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_cond := VAR_BIN_OP_GT_BIN_OP_SR_int22_t_uint6_t_c_l17_c6_cb6f_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iftrue := VAR_CONST_SR_1_BIN_OP_SR_int22_t_uint6_t_c_l31_c53_6ca4_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_cond := VAR_int22_0_0_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_2f1d_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_cond := VAR_int22_1_1_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_3716_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_cond := VAR_int22_2_2_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_1929_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_cond := VAR_int22_3_3_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_03cd_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_cond := VAR_int22_4_4_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_e534_return_output;
     -- uint1_22[BIN_OP_SR_int22_t_uint6_t_c_l23_c10_d33c] LATENCY=0
     VAR_uint1_22_BIN_OP_SR_int22_t_uint6_t_c_l23_c10_d33c_return_output := uint1_22(
     VAR_int22_21_21_BIN_OP_SR_int22_t_uint6_t_c_l21_c12_58c8_return_output);

     -- MUX[BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_cond;
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iftrue <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iftrue;
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iffalse <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_return_output := MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_return_output;

     -- Submodule level 2
     VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_x := VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iffalse := VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l31_c18_99a1_return_output;
     VAR_rv_BIN_OP_SR_int22_t_uint6_t_c_l23_c5_42cc := signed(std_logic_vector(resize(VAR_uint1_22_BIN_OP_SR_int22_t_uint6_t_c_l23_c10_d33c_return_output, 22)));
     VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iftrue := VAR_rv_BIN_OP_SR_int22_t_uint6_t_c_l23_c5_42cc;
     -- CONST_SR_2[BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464] LATENCY=0
     -- Inputs
     CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_x <= VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_x;
     -- Outputs
     VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_return_output := CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_return_output;

     -- Submodule level 3
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iftrue := VAR_CONST_SR_2_BIN_OP_SR_int22_t_uint6_t_c_l32_c53_2464_return_output;
     -- MUX[BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_cond;
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iftrue <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iftrue;
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iffalse <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_return_output := MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_return_output;

     -- Submodule level 4
     VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_x := VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iffalse := VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l32_c18_0f59_return_output;
     -- CONST_SR_4[BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8] LATENCY=0
     -- Inputs
     CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_x <= VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_x;
     -- Outputs
     VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_return_output := CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_return_output;

     -- Submodule level 5
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iftrue := VAR_CONST_SR_4_BIN_OP_SR_int22_t_uint6_t_c_l33_c53_c0d8_return_output;
     -- MUX[BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_cond;
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iftrue <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iftrue;
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iffalse <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_return_output := MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_return_output;

     -- Submodule level 6
     VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_x := VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iffalse := VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l33_c18_8879_return_output;
     -- CONST_SR_8[BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c] LATENCY=0
     -- Inputs
     CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_x <= VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_x;
     -- Outputs
     VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_return_output := CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_return_output;

     -- Submodule level 7
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iftrue := VAR_CONST_SR_8_BIN_OP_SR_int22_t_uint6_t_c_l34_c53_0e8c_return_output;
     -- MUX[BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_cond;
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iftrue <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iftrue;
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iffalse <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_return_output := MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_return_output;

     -- Submodule level 8
     VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_x := VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_return_output;
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iffalse := VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l34_c18_7177_return_output;
     -- CONST_SR_16[BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8] LATENCY=0
     -- Inputs
     CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_x <= VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_x;
     -- Outputs
     VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_return_output := CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_return_output;

     -- Submodule level 9
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iftrue := VAR_CONST_SR_16_BIN_OP_SR_int22_t_uint6_t_c_l35_c53_47f8_return_output;
     -- MUX[BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_cond <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_cond;
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iftrue <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iftrue;
     MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iffalse <= VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_return_output := MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_return_output;

     -- Submodule level 10
     VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iffalse := VAR_MUX_BIN_OP_SR_int22_t_uint6_t_c_l35_c18_4d56_return_output;
     -- rv_MUX[BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_cond <= VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_cond;
     rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iftrue <= VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iftrue;
     rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iffalse <= VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_return_output := rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_return_output;

     -- Submodule level 11
     VAR_return_output := VAR_rv_MUX_BIN_OP_SR_int22_t_uint6_t_c_l17_c3_290f_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
