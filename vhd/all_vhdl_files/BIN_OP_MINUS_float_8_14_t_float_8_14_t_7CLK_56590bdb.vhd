-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.044758306760323704, 0.2513823502727631, 0.45800639378520164, 0.6646304372976409, 0.8712544808100773]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 6
entity BIN_OP_MINUS_float_8_14_t_float_8_14_t_7CLK_56590bdb is
port(
 clk : in std_logic;
 left : in std_logic_vector(22 downto 0);
 right : in std_logic_vector(22 downto 0);
 return_output : out std_logic_vector(22 downto 0));
end BIN_OP_MINUS_float_8_14_t_float_8_14_t_7CLK_56590bdb;
architecture arch of BIN_OP_MINUS_float_8_14_t_float_8_14_t_7CLK_56590bdb is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 7;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output : unsigned(21 downto 0);
signal REG_STAGE0_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left : std_logic_vector(22 downto 0);
signal COMB_STAGE0_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output : unsigned(21 downto 0);
signal COMB_STAGE0_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left : std_logic_vector(22 downto 0);
-- Stage 1
-- Stage 2
-- Stage 3
-- Stage 4
-- Stage 5
-- Stage 6
-- Each function instance gets signals
-- UNARY_OP_NOT[BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54]
signal UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16]
signal BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left : std_logic_vector(22 downto 0);
signal BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_right : std_logic_vector(22 downto 0);
signal BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_return_output : std_logic_vector(22 downto 0);

function float_8_14_t_22_22( x : std_logic_vector) return unsigned is
--variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(22- i);
      end loop;
return return_output;
end function;

function float_8_14_t_21_0( x : std_logic_vector) return unsigned is
--variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(21 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 0)));
return return_output;
end function;

function uint1_uint22( x : unsigned;
 y : unsigned) return unsigned is

  --variable x : unsigned(0 downto 0);
  --variable y : unsigned(21 downto 0);
  variable return_output : unsigned(22 downto 0);

begin

    return_output := unsigned(std_logic_vector(x)) & unsigned(std_logic_vector(y));
    return return_output;

end function;

function float_8_14_t_uint23( x : unsigned) return std_logic_vector is

  --variable x : unsigned(22 downto 0);
  variable return_output : std_logic_vector(22 downto 0);

begin

    return_output := std_logic_vector(x);
    return return_output;

end function;


begin

-- SUBMODULE INSTANCES 
-- UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54
UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54 : entity work.UNARY_OP_NOT_uint1_t_1CLK_27c1eb25 port map (
clk,
UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_expr,
UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_return_output);

-- BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16
BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16 : entity work.BIN_OP_PLUS_float_8_14_t_float_8_14_t_6CLK_d5d58814 port map (
clk,
BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left,
BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_right,
BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- Registers
 -- Stage 0
 REG_STAGE0_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output,
 REG_STAGE0_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left,
 -- Stage 1
 -- Stage 2
 -- Stage 3
 -- Stage 4
 -- Stage 5
 -- Stage 6
 -- All submodule outputs
 UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_return_output,
 BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : std_logic_vector(22 downto 0);
 variable VAR_right : std_logic_vector(22 downto 0);
 variable VAR_return_output : std_logic_vector(22 downto 0);
 variable VAR_right_sign : unsigned(0 downto 0);
 variable VAR_float_8_14_t_22_22_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l13_c16_abc5_return_output : unsigned(0 downto 0);
 variable VAR_right_everythingelse : unsigned(21 downto 0);
 variable VAR_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output : unsigned(21 downto 0);
 variable VAR_negated_right_unsigned : unsigned(22 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_return_output : unsigned(0 downto 0);
 variable VAR_uint1_uint22_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c37_e781_return_output : unsigned(22 downto 0);
 variable VAR_negated_right : std_logic_vector(22 downto 0);
 variable VAR_float_8_14_t_uint23_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l16_c32_d2f6_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_return_output : std_logic_vector(22 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left := VAR_left;
     -- float_8_14_t_22_22[BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l13_c16_abc5] LATENCY=0
     VAR_float_8_14_t_22_22_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l13_c16_abc5_return_output := float_8_14_t_22_22(
     VAR_right);

     -- float_8_14_t_21_0[BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4] LATENCY=0
     VAR_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output := float_8_14_t_21_0(
     VAR_right);

     -- Submodule level 1
     VAR_UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_expr := VAR_float_8_14_t_22_22_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l13_c16_abc5_return_output;
     -- UNARY_OP_NOT[BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54] LATENCY=1
     -- Inputs
     UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_expr <= VAR_UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_expr;

     -- Write to comb signals
     COMB_STAGE0_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output <= VAR_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output;
     COMB_STAGE0_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left <= VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output := REG_STAGE0_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output;
     VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left := REG_STAGE0_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left;
     -- Submodule outputs
     VAR_UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_return_output := UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_return_output;

     -- Submodule level 0
     -- uint1_uint22[BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c37_e781] LATENCY=0
     VAR_uint1_uint22_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c37_e781_return_output := uint1_uint22(
     VAR_UNARY_OP_NOT_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c51_8e54_return_output,
     VAR_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output);

     -- Submodule level 1
     -- float_8_14_t_uint23[BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l16_c32_d2f6] LATENCY=0
     VAR_float_8_14_t_uint23_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l16_c32_d2f6_return_output := float_8_14_t_uint23(
     VAR_uint1_uint22_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l15_c37_e781_return_output);

     -- Submodule level 2
     VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_right := VAR_float_8_14_t_uint23_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l16_c32_d2f6_return_output;
     -- BIN_OP_PLUS[BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16] LATENCY=6
     -- Inputs
     BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left <= VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left;
     BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_right <= VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_right;

     -- Write to comb signals
   elsif STAGE = 2 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 3 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 4 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 5 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 6 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 7 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_return_output := BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_return_output;
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
     REG_STAGE0_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output <= COMB_STAGE0_float_8_14_t_21_0_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l14_c35_b2d4_return_output;
     REG_STAGE0_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left <= COMB_STAGE0_BIN_OP_PLUS_BIN_OP_MINUS_float_8_14_t_float_8_14_t_c_l17_c10_0f16_left;
     -- Stage 1
     -- Stage 2
     -- Stage 3
     -- Stage 4
     -- Stage 5
     -- Stage 6
 end if;
end process;

end arch;
