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
-- Submodules: 17
entity BIN_OP_SL_uint22_t_uint6_t_0CLK_9d359dd9 is
port(
 left : in unsigned(21 downto 0);
 right : in unsigned(5 downto 0);
 return_output : out unsigned(21 downto 0));
end BIN_OP_SL_uint22_t_uint6_t_0CLK_9d359dd9;
architecture arch of BIN_OP_SL_uint22_t_uint6_t_0CLK_9d359dd9 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_GT[BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed]
signal BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_left : unsigned(5 downto 0);
signal BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_right : unsigned(4 downto 0);
signal BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_return_output : unsigned(0 downto 0);

-- rv_MUX[BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96]
signal rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_cond : unsigned(0 downto 0);
signal rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iftrue : unsigned(21 downto 0);
signal rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iffalse : unsigned(21 downto 0);
signal rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_return_output : unsigned(21 downto 0);

-- CONST_SL_1[BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827]
signal CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_x : unsigned(21 downto 0);
signal CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_return_output : unsigned(21 downto 0);

-- MUX[BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958]
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iftrue : unsigned(21 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iffalse : unsigned(21 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_return_output : unsigned(21 downto 0);

-- CONST_SL_2[BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179]
signal CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_x : unsigned(21 downto 0);
signal CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_return_output : unsigned(21 downto 0);

-- MUX[BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9]
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iftrue : unsigned(21 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iffalse : unsigned(21 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_return_output : unsigned(21 downto 0);

-- CONST_SL_4[BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865]
signal CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_x : unsigned(21 downto 0);
signal CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_return_output : unsigned(21 downto 0);

-- MUX[BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7]
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iftrue : unsigned(21 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iffalse : unsigned(21 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_return_output : unsigned(21 downto 0);

-- CONST_SL_8[BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971]
signal CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_x : unsigned(21 downto 0);
signal CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_return_output : unsigned(21 downto 0);

-- MUX[BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a]
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iftrue : unsigned(21 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iffalse : unsigned(21 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_return_output : unsigned(21 downto 0);

-- CONST_SL_16[BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a]
signal CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_x : unsigned(21 downto 0);
signal CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_return_output : unsigned(21 downto 0);

-- MUX[BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808]
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iftrue : unsigned(21 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iffalse : unsigned(21 downto 0);
signal MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_return_output : unsigned(21 downto 0);

function uint22_0_0( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(0- i);
      end loop;
return return_output;
end function;

function uint22_1_1( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(1- i);
      end loop;
return return_output;
end function;

function uint22_2_2( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(2- i);
      end loop;
return return_output;
end function;

function uint22_3_3( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(3- i);
      end loop;
return return_output;
end function;

function uint22_4_4( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(4- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed
BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed : entity work.BIN_OP_GT_uint6_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_left,
BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_right,
BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_return_output);

-- rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96
rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96 : entity work.MUX_uint1_t_uint22_t_uint22_t_0CLK_de264c78 port map (
rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_cond,
rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iftrue,
rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iffalse,
rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_return_output);

-- CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827
CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827 : entity work.CONST_SL_1_uint22_t_0CLK_de264c78 port map (
CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_x,
CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_return_output);

-- MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958 : entity work.MUX_uint1_t_uint22_t_uint22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_cond,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iftrue,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iffalse,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_return_output);

-- CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179
CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179 : entity work.CONST_SL_2_uint22_t_0CLK_de264c78 port map (
CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_x,
CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_return_output);

-- MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9 : entity work.MUX_uint1_t_uint22_t_uint22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_cond,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iftrue,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iffalse,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_return_output);

-- CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865
CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865 : entity work.CONST_SL_4_uint22_t_0CLK_de264c78 port map (
CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_x,
CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_return_output);

-- MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7 : entity work.MUX_uint1_t_uint22_t_uint22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_cond,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iftrue,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iffalse,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_return_output);

-- CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971
CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971 : entity work.CONST_SL_8_uint22_t_0CLK_de264c78 port map (
CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_x,
CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_return_output);

-- MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a : entity work.MUX_uint1_t_uint22_t_uint22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_cond,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iftrue,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iffalse,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_return_output);

-- CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a
CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a : entity work.CONST_SL_16_uint22_t_0CLK_de264c78 port map (
CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_x,
CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_return_output);

-- MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808 : entity work.MUX_uint1_t_uint22_t_uint22_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_cond,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iftrue,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iffalse,
MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_return_output,
 rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_return_output,
 CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_return_output,
 MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_return_output,
 CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_return_output,
 MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_return_output,
 CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_return_output,
 MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_return_output,
 CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_return_output,
 MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_return_output,
 CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_return_output,
 MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(21 downto 0);
 variable VAR_right : unsigned(5 downto 0);
 variable VAR_return_output : unsigned(21 downto 0);
 variable VAR_resized_shift_amount : unsigned(4 downto 0);
 variable VAR_resized_shift_amount_BIN_OP_SL_uint22_t_uint6_t_c_l11_c3_cfdb : unsigned(4 downto 0);
 variable VAR_rv : unsigned(21 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_left : unsigned(5 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iftrue : unsigned(21 downto 0);
 variable VAR_rv_BIN_OP_SL_uint22_t_uint6_t_c_l20_c5_9549 : unsigned(21 downto 0);
 variable VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iffalse : unsigned(21 downto 0);
 variable VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_return_output : unsigned(21 downto 0);
 variable VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_cond : unsigned(0 downto 0);
 variable VAR_v0 : unsigned(21 downto 0);
 variable VAR_v1 : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iftrue : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iffalse : unsigned(21 downto 0);
 variable VAR_uint22_0_0_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_644f_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_return_output : unsigned(21 downto 0);
 variable VAR_CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_x : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_return_output : unsigned(21 downto 0);
 variable VAR_v2 : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iftrue : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iffalse : unsigned(21 downto 0);
 variable VAR_uint22_1_1_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_56ee_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_return_output : unsigned(21 downto 0);
 variable VAR_CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_x : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_return_output : unsigned(21 downto 0);
 variable VAR_v3 : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iftrue : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iffalse : unsigned(21 downto 0);
 variable VAR_uint22_2_2_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_81a3_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_return_output : unsigned(21 downto 0);
 variable VAR_CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_x : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_return_output : unsigned(21 downto 0);
 variable VAR_v4 : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iftrue : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iffalse : unsigned(21 downto 0);
 variable VAR_uint22_3_3_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a0f1_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_return_output : unsigned(21 downto 0);
 variable VAR_CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_x : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_return_output : unsigned(21 downto 0);
 variable VAR_v5 : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iftrue : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iffalse : unsigned(21 downto 0);
 variable VAR_uint22_4_4_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_5a37_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_return_output : unsigned(21 downto 0);
 variable VAR_CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_x : unsigned(21 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_return_output : unsigned(21 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_rv_BIN_OP_SL_uint22_t_uint6_t_c_l20_c5_9549 := resize(to_unsigned(0, 1), 22);
     VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iftrue := VAR_rv_BIN_OP_SL_uint22_t_uint6_t_c_l20_c5_9549;
     VAR_BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_right := to_unsigned(21, 5);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_x := VAR_left;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iffalse := VAR_left;
     VAR_BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_left := VAR_right;
     VAR_resized_shift_amount_BIN_OP_SL_uint22_t_uint6_t_c_l11_c3_cfdb := resize(VAR_right, 5);
     -- BIN_OP_GT[BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed] LATENCY=0
     -- Inputs
     BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_left <= VAR_BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_left;
     BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_right <= VAR_BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_right;
     -- Outputs
     VAR_BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_return_output := BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_return_output;

     -- CONST_SL_1[BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827] LATENCY=0
     -- Inputs
     CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_x <= VAR_CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_x;
     -- Outputs
     VAR_CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_return_output := CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_return_output;

     -- uint22_0_0[BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_644f] LATENCY=0
     VAR_uint22_0_0_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_644f_return_output := uint22_0_0(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint22_t_uint6_t_c_l11_c3_cfdb, 22));

     -- uint22_4_4[BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_5a37] LATENCY=0
     VAR_uint22_4_4_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_5a37_return_output := uint22_4_4(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint22_t_uint6_t_c_l11_c3_cfdb, 22));

     -- uint22_3_3[BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a0f1] LATENCY=0
     VAR_uint22_3_3_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a0f1_return_output := uint22_3_3(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint22_t_uint6_t_c_l11_c3_cfdb, 22));

     -- uint22_2_2[BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_81a3] LATENCY=0
     VAR_uint22_2_2_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_81a3_return_output := uint22_2_2(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint22_t_uint6_t_c_l11_c3_cfdb, 22));

     -- uint22_1_1[BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_56ee] LATENCY=0
     VAR_uint22_1_1_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_56ee_return_output := uint22_1_1(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint22_t_uint6_t_c_l11_c3_cfdb, 22));

     -- Submodule level 1
     VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_cond := VAR_BIN_OP_GT_BIN_OP_SL_uint22_t_uint6_t_c_l17_c6_fbed_return_output;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iftrue := VAR_CONST_SL_1_BIN_OP_SL_uint22_t_uint6_t_c_l26_c55_4827_return_output;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_cond := VAR_uint22_0_0_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_644f_return_output;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_cond := VAR_uint22_1_1_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_56ee_return_output;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_cond := VAR_uint22_2_2_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_81a3_return_output;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_cond := VAR_uint22_3_3_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a0f1_return_output;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_cond := VAR_uint22_4_4_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_5a37_return_output;
     -- MUX[BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_cond <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_cond;
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iftrue <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iftrue;
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iffalse <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_return_output := MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_return_output;

     -- Submodule level 2
     VAR_CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_x := VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_return_output;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iffalse := VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l26_c19_d958_return_output;
     -- CONST_SL_2[BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179] LATENCY=0
     -- Inputs
     CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_x <= VAR_CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_x;
     -- Outputs
     VAR_CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_return_output := CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_return_output;

     -- Submodule level 3
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iftrue := VAR_CONST_SL_2_BIN_OP_SL_uint22_t_uint6_t_c_l27_c55_e179_return_output;
     -- MUX[BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_cond <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_cond;
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iftrue <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iftrue;
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iffalse <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_return_output := MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_return_output;

     -- Submodule level 4
     VAR_CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_x := VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_return_output;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iffalse := VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l27_c19_e0e9_return_output;
     -- CONST_SL_4[BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865] LATENCY=0
     -- Inputs
     CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_x <= VAR_CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_x;
     -- Outputs
     VAR_CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_return_output := CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_return_output;

     -- Submodule level 5
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iftrue := VAR_CONST_SL_4_BIN_OP_SL_uint22_t_uint6_t_c_l28_c55_e865_return_output;
     -- MUX[BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_cond <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_cond;
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iftrue <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iftrue;
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iffalse <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_return_output := MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_return_output;

     -- Submodule level 6
     VAR_CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_x := VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_return_output;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iffalse := VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l28_c19_45f7_return_output;
     -- CONST_SL_8[BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971] LATENCY=0
     -- Inputs
     CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_x <= VAR_CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_x;
     -- Outputs
     VAR_CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_return_output := CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_return_output;

     -- Submodule level 7
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iftrue := VAR_CONST_SL_8_BIN_OP_SL_uint22_t_uint6_t_c_l29_c55_3971_return_output;
     -- MUX[BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_cond <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_cond;
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iftrue <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iftrue;
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iffalse <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_return_output := MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_return_output;

     -- Submodule level 8
     VAR_CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_x := VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_return_output;
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iffalse := VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l29_c19_a99a_return_output;
     -- CONST_SL_16[BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a] LATENCY=0
     -- Inputs
     CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_x <= VAR_CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_x;
     -- Outputs
     VAR_CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_return_output := CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_return_output;

     -- Submodule level 9
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iftrue := VAR_CONST_SL_16_BIN_OP_SL_uint22_t_uint6_t_c_l30_c55_944a_return_output;
     -- MUX[BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_cond <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_cond;
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iftrue <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iftrue;
     MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iffalse <= VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_return_output := MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_return_output;

     -- Submodule level 10
     VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iffalse := VAR_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l30_c19_6808_return_output;
     -- rv_MUX[BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96] LATENCY=0
     -- Inputs
     rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_cond <= VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_cond;
     rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iftrue <= VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iftrue;
     rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iffalse <= VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_iffalse;
     -- Outputs
     VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_return_output := rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_return_output;

     -- Submodule level 11
     VAR_return_output := VAR_rv_MUX_BIN_OP_SL_uint22_t_uint6_t_c_l17_c3_bc96_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
