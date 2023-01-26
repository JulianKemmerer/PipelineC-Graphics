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
-- Submodules: 12
entity BIN_OP_SL_uint21_t_uint4_t_0CLK_25d197a7 is
port(
 left : in unsigned(20 downto 0);
 right : in unsigned(3 downto 0);
 return_output : out unsigned(20 downto 0));
end BIN_OP_SL_uint21_t_uint4_t_0CLK_25d197a7;
architecture arch of BIN_OP_SL_uint21_t_uint4_t_0CLK_25d197a7 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SL_1[BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15]
signal CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_x : unsigned(20 downto 0);
signal CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_return_output : unsigned(20 downto 0);

-- MUX[BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415]
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iftrue : unsigned(20 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iffalse : unsigned(20 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_return_output : unsigned(20 downto 0);

-- CONST_SL_2[BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4]
signal CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_x : unsigned(20 downto 0);
signal CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_return_output : unsigned(20 downto 0);

-- MUX[BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716]
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iftrue : unsigned(20 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iffalse : unsigned(20 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_return_output : unsigned(20 downto 0);

-- CONST_SL_4[BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2]
signal CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_x : unsigned(20 downto 0);
signal CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_return_output : unsigned(20 downto 0);

-- MUX[BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b]
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iftrue : unsigned(20 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iffalse : unsigned(20 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_return_output : unsigned(20 downto 0);

-- CONST_SL_8[BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad]
signal CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_x : unsigned(20 downto 0);
signal CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_return_output : unsigned(20 downto 0);

-- MUX[BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad]
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iftrue : unsigned(20 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iffalse : unsigned(20 downto 0);
signal MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_return_output : unsigned(20 downto 0);

function uint21_0_0( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(0- i);
      end loop;
return return_output;
end function;

function uint21_1_1( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(1- i);
      end loop;
return return_output;
end function;

function uint21_2_2( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(2- i);
      end loop;
return return_output;
end function;

function uint21_3_3( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(3- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15
CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15 : entity work.CONST_SL_1_uint21_t_0CLK_de264c78 port map (
CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_x,
CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_return_output);

-- MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415 : entity work.MUX_uint1_t_uint21_t_uint21_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_cond,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iftrue,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iffalse,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_return_output);

-- CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4
CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4 : entity work.CONST_SL_2_uint21_t_0CLK_de264c78 port map (
CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_x,
CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_return_output);

-- MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716 : entity work.MUX_uint1_t_uint21_t_uint21_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_cond,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iftrue,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iffalse,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_return_output);

-- CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2
CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2 : entity work.CONST_SL_4_uint21_t_0CLK_de264c78 port map (
CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_x,
CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_return_output);

-- MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b : entity work.MUX_uint1_t_uint21_t_uint21_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_cond,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iftrue,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iffalse,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_return_output);

-- CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad
CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad : entity work.CONST_SL_8_uint21_t_0CLK_de264c78 port map (
CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_x,
CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_return_output);

-- MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad : entity work.MUX_uint1_t_uint21_t_uint21_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_cond,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iftrue,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iffalse,
MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_return_output,
 MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_return_output,
 CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_return_output,
 MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_return_output,
 CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_return_output,
 MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_return_output,
 CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_return_output,
 MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(20 downto 0);
 variable VAR_right : unsigned(3 downto 0);
 variable VAR_return_output : unsigned(20 downto 0);
 variable VAR_resized_shift_amount : unsigned(3 downto 0);
 variable VAR_resized_shift_amount_BIN_OP_SL_uint21_t_uint4_t_c_l11_c3_e835 : unsigned(3 downto 0);
 variable VAR_rv : unsigned(20 downto 0);
 variable VAR_v0 : unsigned(20 downto 0);
 variable VAR_v1 : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iftrue : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iffalse : unsigned(20 downto 0);
 variable VAR_uint21_0_0_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_d649_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_return_output : unsigned(20 downto 0);
 variable VAR_CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_x : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_return_output : unsigned(20 downto 0);
 variable VAR_v2 : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iftrue : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iffalse : unsigned(20 downto 0);
 variable VAR_uint21_1_1_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_4289_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_return_output : unsigned(20 downto 0);
 variable VAR_CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_x : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_return_output : unsigned(20 downto 0);
 variable VAR_v3 : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iftrue : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iffalse : unsigned(20 downto 0);
 variable VAR_uint21_2_2_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_ce47_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_return_output : unsigned(20 downto 0);
 variable VAR_CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_x : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_return_output : unsigned(20 downto 0);
 variable VAR_v4 : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iftrue : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iffalse : unsigned(20 downto 0);
 variable VAR_uint21_3_3_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_c4e8_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_return_output : unsigned(20 downto 0);
 variable VAR_CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_x : unsigned(20 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_return_output : unsigned(20 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_x := VAR_left;
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iffalse := VAR_left;
     VAR_resized_shift_amount_BIN_OP_SL_uint21_t_uint4_t_c_l11_c3_e835 := VAR_right;
     -- uint21_1_1[BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_4289] LATENCY=0
     VAR_uint21_1_1_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_4289_return_output := uint21_1_1(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint21_t_uint4_t_c_l11_c3_e835, 21));

     -- uint21_3_3[BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_c4e8] LATENCY=0
     VAR_uint21_3_3_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_c4e8_return_output := uint21_3_3(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint21_t_uint4_t_c_l11_c3_e835, 21));

     -- CONST_SL_1[BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15] LATENCY=0
     -- Inputs
     CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_x <= VAR_CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_x;
     -- Outputs
     VAR_CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_return_output := CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_return_output;

     -- uint21_0_0[BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_d649] LATENCY=0
     VAR_uint21_0_0_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_d649_return_output := uint21_0_0(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint21_t_uint4_t_c_l11_c3_e835, 21));

     -- uint21_2_2[BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_ce47] LATENCY=0
     VAR_uint21_2_2_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_ce47_return_output := uint21_2_2(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint21_t_uint4_t_c_l11_c3_e835, 21));

     -- Submodule level 1
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iftrue := VAR_CONST_SL_1_BIN_OP_SL_uint21_t_uint4_t_c_l18_c55_5e15_return_output;
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_cond := VAR_uint21_0_0_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_d649_return_output;
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_cond := VAR_uint21_1_1_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_4289_return_output;
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_cond := VAR_uint21_2_2_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_ce47_return_output;
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_cond := VAR_uint21_3_3_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_c4e8_return_output;
     -- MUX[BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_cond <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_cond;
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iftrue <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iftrue;
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iffalse <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_return_output := MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_return_output;

     -- Submodule level 2
     VAR_CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_x := VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_return_output;
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iffalse := VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l18_c19_0415_return_output;
     -- CONST_SL_2[BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4] LATENCY=0
     -- Inputs
     CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_x <= VAR_CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_x;
     -- Outputs
     VAR_CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_return_output := CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_return_output;

     -- Submodule level 3
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iftrue := VAR_CONST_SL_2_BIN_OP_SL_uint21_t_uint4_t_c_l19_c55_18d4_return_output;
     -- MUX[BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_cond <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_cond;
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iftrue <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iftrue;
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iffalse <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_return_output := MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_return_output;

     -- Submodule level 4
     VAR_CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_x := VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_return_output;
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iffalse := VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l19_c19_1716_return_output;
     -- CONST_SL_4[BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2] LATENCY=0
     -- Inputs
     CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_x <= VAR_CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_x;
     -- Outputs
     VAR_CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_return_output := CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_return_output;

     -- Submodule level 5
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iftrue := VAR_CONST_SL_4_BIN_OP_SL_uint21_t_uint4_t_c_l20_c55_7de2_return_output;
     -- MUX[BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_cond <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_cond;
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iftrue <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iftrue;
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iffalse <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_return_output := MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_return_output;

     -- Submodule level 6
     VAR_CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_x := VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_return_output;
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iffalse := VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l20_c19_6c0b_return_output;
     -- CONST_SL_8[BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad] LATENCY=0
     -- Inputs
     CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_x <= VAR_CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_x;
     -- Outputs
     VAR_CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_return_output := CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_return_output;

     -- Submodule level 7
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iftrue := VAR_CONST_SL_8_BIN_OP_SL_uint21_t_uint4_t_c_l21_c55_b4ad_return_output;
     -- MUX[BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_cond <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_cond;
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iftrue <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iftrue;
     MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iffalse <= VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_return_output := MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_return_output;

     -- Submodule level 8
     VAR_return_output := VAR_MUX_BIN_OP_SL_uint21_t_uint4_t_c_l21_c19_faad_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
