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
-- Submodules: 15
entity BIN_OP_SL_uint36_t_uint5_t_0CLK_295015b8 is
port(
 left : in unsigned(35 downto 0);
 right : in unsigned(4 downto 0);
 return_output : out unsigned(35 downto 0));
end BIN_OP_SL_uint36_t_uint5_t_0CLK_295015b8;
architecture arch of BIN_OP_SL_uint36_t_uint5_t_0CLK_295015b8 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SL_1[BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d]
signal CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_x : unsigned(35 downto 0);
signal CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_return_output : unsigned(35 downto 0);

-- MUX[BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b]
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iftrue : unsigned(35 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iffalse : unsigned(35 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_return_output : unsigned(35 downto 0);

-- CONST_SL_2[BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c]
signal CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_x : unsigned(35 downto 0);
signal CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_return_output : unsigned(35 downto 0);

-- MUX[BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b]
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iftrue : unsigned(35 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iffalse : unsigned(35 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_return_output : unsigned(35 downto 0);

-- CONST_SL_4[BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a]
signal CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_x : unsigned(35 downto 0);
signal CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_return_output : unsigned(35 downto 0);

-- MUX[BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e]
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iftrue : unsigned(35 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iffalse : unsigned(35 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_return_output : unsigned(35 downto 0);

-- CONST_SL_8[BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2]
signal CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_x : unsigned(35 downto 0);
signal CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_return_output : unsigned(35 downto 0);

-- MUX[BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361]
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iftrue : unsigned(35 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iffalse : unsigned(35 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_return_output : unsigned(35 downto 0);

-- CONST_SL_16[BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e]
signal CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_x : unsigned(35 downto 0);
signal CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_return_output : unsigned(35 downto 0);

-- MUX[BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3]
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_cond : unsigned(0 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iftrue : unsigned(35 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iffalse : unsigned(35 downto 0);
signal MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_return_output : unsigned(35 downto 0);

function uint36_0_0( x : unsigned) return unsigned is
--variable x : unsigned(35 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(0- i);
      end loop;
return return_output;
end function;

function uint36_1_1( x : unsigned) return unsigned is
--variable x : unsigned(35 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(1- i);
      end loop;
return return_output;
end function;

function uint36_2_2( x : unsigned) return unsigned is
--variable x : unsigned(35 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(2- i);
      end loop;
return return_output;
end function;

function uint36_3_3( x : unsigned) return unsigned is
--variable x : unsigned(35 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(3- i);
      end loop;
return return_output;
end function;

function uint36_4_4( x : unsigned) return unsigned is
--variable x : unsigned(35 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(4- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d
CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d : entity work.CONST_SL_1_uint36_t_0CLK_de264c78 port map (
CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_x,
CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_return_output);

-- MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b : entity work.MUX_uint1_t_uint36_t_uint36_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_cond,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iftrue,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iffalse,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_return_output);

-- CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c
CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c : entity work.CONST_SL_2_uint36_t_0CLK_de264c78 port map (
CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_x,
CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_return_output);

-- MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b : entity work.MUX_uint1_t_uint36_t_uint36_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_cond,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iftrue,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iffalse,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_return_output);

-- CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a
CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a : entity work.CONST_SL_4_uint36_t_0CLK_de264c78 port map (
CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_x,
CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_return_output);

-- MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e : entity work.MUX_uint1_t_uint36_t_uint36_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_cond,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iftrue,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iffalse,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_return_output);

-- CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2
CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2 : entity work.CONST_SL_8_uint36_t_0CLK_de264c78 port map (
CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_x,
CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_return_output);

-- MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361 : entity work.MUX_uint1_t_uint36_t_uint36_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_cond,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iftrue,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iffalse,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_return_output);

-- CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e
CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e : entity work.CONST_SL_16_uint36_t_0CLK_de264c78 port map (
CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_x,
CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_return_output);

-- MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3 : entity work.MUX_uint1_t_uint36_t_uint36_t_0CLK_de264c78 port map (
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_cond,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iftrue,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iffalse,
MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_return_output,
 MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_return_output,
 CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_return_output,
 MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_return_output,
 CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_return_output,
 MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_return_output,
 CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_return_output,
 MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_return_output,
 CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_return_output,
 MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(35 downto 0);
 variable VAR_right : unsigned(4 downto 0);
 variable VAR_return_output : unsigned(35 downto 0);
 variable VAR_resized_shift_amount : unsigned(4 downto 0);
 variable VAR_resized_shift_amount_BIN_OP_SL_uint36_t_uint5_t_c_l11_c3_0c14 : unsigned(4 downto 0);
 variable VAR_rv : unsigned(35 downto 0);
 variable VAR_v0 : unsigned(35 downto 0);
 variable VAR_v1 : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iftrue : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iffalse : unsigned(35 downto 0);
 variable VAR_uint36_0_0_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_739b_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_return_output : unsigned(35 downto 0);
 variable VAR_CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_x : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_return_output : unsigned(35 downto 0);
 variable VAR_v2 : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iftrue : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iffalse : unsigned(35 downto 0);
 variable VAR_uint36_1_1_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_0593_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_return_output : unsigned(35 downto 0);
 variable VAR_CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_x : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_return_output : unsigned(35 downto 0);
 variable VAR_v3 : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iftrue : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iffalse : unsigned(35 downto 0);
 variable VAR_uint36_2_2_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_3c14_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_return_output : unsigned(35 downto 0);
 variable VAR_CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_x : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_return_output : unsigned(35 downto 0);
 variable VAR_v4 : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iftrue : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iffalse : unsigned(35 downto 0);
 variable VAR_uint36_3_3_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_bcb7_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_return_output : unsigned(35 downto 0);
 variable VAR_CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_x : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_return_output : unsigned(35 downto 0);
 variable VAR_v5 : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_cond : unsigned(0 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iftrue : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iffalse : unsigned(35 downto 0);
 variable VAR_uint36_4_4_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_d3cf_return_output : unsigned(0 downto 0);
 variable VAR_CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_return_output : unsigned(35 downto 0);
 variable VAR_CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_x : unsigned(35 downto 0);
 variable VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_return_output : unsigned(35 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_x := VAR_left;
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iffalse := VAR_left;
     VAR_resized_shift_amount_BIN_OP_SL_uint36_t_uint5_t_c_l11_c3_0c14 := VAR_right;
     -- uint36_0_0[BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_739b] LATENCY=0
     VAR_uint36_0_0_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_739b_return_output := uint36_0_0(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint36_t_uint5_t_c_l11_c3_0c14, 36));

     -- CONST_SL_1[BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d] LATENCY=0
     -- Inputs
     CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_x <= VAR_CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_x;
     -- Outputs
     VAR_CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_return_output := CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_return_output;

     -- uint36_3_3[BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_bcb7] LATENCY=0
     VAR_uint36_3_3_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_bcb7_return_output := uint36_3_3(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint36_t_uint5_t_c_l11_c3_0c14, 36));

     -- uint36_4_4[BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_d3cf] LATENCY=0
     VAR_uint36_4_4_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_d3cf_return_output := uint36_4_4(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint36_t_uint5_t_c_l11_c3_0c14, 36));

     -- uint36_2_2[BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_3c14] LATENCY=0
     VAR_uint36_2_2_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_3c14_return_output := uint36_2_2(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint36_t_uint5_t_c_l11_c3_0c14, 36));

     -- uint36_1_1[BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_0593] LATENCY=0
     VAR_uint36_1_1_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_0593_return_output := uint36_1_1(
     resize(VAR_resized_shift_amount_BIN_OP_SL_uint36_t_uint5_t_c_l11_c3_0c14, 36));

     -- Submodule level 1
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iftrue := VAR_CONST_SL_1_BIN_OP_SL_uint36_t_uint5_t_c_l18_c55_388d_return_output;
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_cond := VAR_uint36_0_0_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_739b_return_output;
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_cond := VAR_uint36_1_1_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_0593_return_output;
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_cond := VAR_uint36_2_2_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_3c14_return_output;
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_cond := VAR_uint36_3_3_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_bcb7_return_output;
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_cond := VAR_uint36_4_4_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_d3cf_return_output;
     -- MUX[BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_cond <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_cond;
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iftrue <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iftrue;
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iffalse <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_return_output := MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_return_output;

     -- Submodule level 2
     VAR_CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_x := VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_return_output;
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iffalse := VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l18_c19_108b_return_output;
     -- CONST_SL_2[BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c] LATENCY=0
     -- Inputs
     CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_x <= VAR_CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_x;
     -- Outputs
     VAR_CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_return_output := CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_return_output;

     -- Submodule level 3
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iftrue := VAR_CONST_SL_2_BIN_OP_SL_uint36_t_uint5_t_c_l19_c55_9a8c_return_output;
     -- MUX[BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_cond <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_cond;
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iftrue <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iftrue;
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iffalse <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_return_output := MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_return_output;

     -- Submodule level 4
     VAR_CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_x := VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_return_output;
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iffalse := VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l19_c19_bd2b_return_output;
     -- CONST_SL_4[BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a] LATENCY=0
     -- Inputs
     CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_x <= VAR_CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_x;
     -- Outputs
     VAR_CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_return_output := CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_return_output;

     -- Submodule level 5
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iftrue := VAR_CONST_SL_4_BIN_OP_SL_uint36_t_uint5_t_c_l20_c55_990a_return_output;
     -- MUX[BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_cond <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_cond;
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iftrue <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iftrue;
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iffalse <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_return_output := MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_return_output;

     -- Submodule level 6
     VAR_CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_x := VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_return_output;
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iffalse := VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l20_c19_f42e_return_output;
     -- CONST_SL_8[BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2] LATENCY=0
     -- Inputs
     CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_x <= VAR_CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_x;
     -- Outputs
     VAR_CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_return_output := CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_return_output;

     -- Submodule level 7
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iftrue := VAR_CONST_SL_8_BIN_OP_SL_uint36_t_uint5_t_c_l21_c55_9fe2_return_output;
     -- MUX[BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_cond <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_cond;
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iftrue <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iftrue;
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iffalse <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_return_output := MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_return_output;

     -- Submodule level 8
     VAR_CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_x := VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_return_output;
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iffalse := VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l21_c19_f361_return_output;
     -- CONST_SL_16[BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e] LATENCY=0
     -- Inputs
     CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_x <= VAR_CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_x;
     -- Outputs
     VAR_CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_return_output := CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_return_output;

     -- Submodule level 9
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iftrue := VAR_CONST_SL_16_BIN_OP_SL_uint36_t_uint5_t_c_l22_c55_f25e_return_output;
     -- MUX[BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3] LATENCY=0
     -- Inputs
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_cond <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_cond;
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iftrue <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iftrue;
     MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iffalse <= VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_iffalse;
     -- Outputs
     VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_return_output := MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_return_output;

     -- Submodule level 10
     VAR_return_output := VAR_MUX_BIN_OP_SL_uint36_t_uint5_t_c_l22_c19_e4c3_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
