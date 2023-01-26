-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.846229427818363]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 4
entity fixed_mul_5CLK_70b28c19 is
port(
 clk : in std_logic;
 left : in fixed;
 right : in fixed;
 return_output : out fixed);
end fixed_mul_5CLK_70b28c19;
architecture arch of fixed_mul_5CLK_70b28c19 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 5;
-- All of the wires/regs in function
-- Stage 0
-- Stage 1
-- Stage 2
-- Stage 3
-- Stage 4
-- Each function instance gets signals
-- BIN_OP_INFERRED_MULT[fixed_type_h_l179_c68_d3d3]
signal BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_left : signed(21 downto 0);
signal BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_right : signed(21 downto 0);
signal BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_return_output : signed(43 downto 0);

-- CONST_SR_10[fixed_type_h_l179_c68_8e24]
signal CONST_SR_10_fixed_type_h_l179_c68_8e24_x : signed(43 downto 0);
signal CONST_SR_10_fixed_type_h_l179_c68_8e24_return_output : signed(43 downto 0);

function CAST_TO_int22_t_int44_t( rhs : signed) return signed is

  --variable rhs : signed(43 downto 0);
  variable return_output : signed(21 downto 0);

begin

      return_output := signed(std_logic_vector(resize(rhs,22)));
    return return_output;
end function;

function CONST_REF_RD_fixed_fixed_7f90( ref_toks_0 : signed) return fixed is
 
  variable base : fixed; 
  variable return_output : fixed;
begin
      base.f := ref_toks_0;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3
BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3 : entity work.BIN_OP_INFERRED_MULT_int22_t_int22_t_5CLK_1fe629b3 port map (
clk,
BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_left,
BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_right,
BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_return_output);

-- CONST_SR_10_fixed_type_h_l179_c68_8e24
CONST_SR_10_fixed_type_h_l179_c68_8e24 : entity work.CONST_SR_10_int44_t_0CLK_de264c78 port map (
CONST_SR_10_fixed_type_h_l179_c68_8e24_x,
CONST_SR_10_fixed_type_h_l179_c68_8e24_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- Registers
 -- Stage 0
 -- Stage 1
 -- Stage 2
 -- Stage 3
 -- Stage 4
 -- All submodule outputs
 BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_return_output,
 CONST_SR_10_fixed_type_h_l179_c68_8e24_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_left : fixed;
 variable VAR_right : fixed;
 variable VAR_r : fixed;
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l179_c68_a618_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_left : signed(21 downto 0);
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l179_c77_3b44_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_right : signed(21 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_return_output : signed(43 downto 0);
 variable VAR_CONST_SR_10_fixed_type_h_l179_c68_8e24_return_output : signed(43 downto 0);
 variable VAR_CONST_SR_10_fixed_type_h_l179_c68_8e24_x : signed(43 downto 0);
 variable VAR_CAST_TO_int22_t_fixed_type_h_l179_c57_ca9b_return_output : signed(21 downto 0);
 variable VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l179_c104_e6e5_return_output : fixed;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l179_c68_a618] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l179_c68_a618_return_output := VAR_left.f;

     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l179_c77_3b44] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l179_c77_3b44_return_output := VAR_right.f;

     -- Submodule level 1
     VAR_BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_left := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l179_c68_a618_return_output;
     VAR_BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_right := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l179_c77_3b44_return_output;
     -- BIN_OP_INFERRED_MULT[fixed_type_h_l179_c68_d3d3] LATENCY=5
     -- Inputs
     BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_left <= VAR_BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_left;
     BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_right <= VAR_BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_right;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage

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
     -- Submodule outputs
     VAR_BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_return_output := BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_return_output;

     -- Submodule level 0
     VAR_CONST_SR_10_fixed_type_h_l179_c68_8e24_x := VAR_BIN_OP_INFERRED_MULT_fixed_type_h_l179_c68_d3d3_return_output;
     -- CONST_SR_10[fixed_type_h_l179_c68_8e24] LATENCY=0
     -- Inputs
     CONST_SR_10_fixed_type_h_l179_c68_8e24_x <= VAR_CONST_SR_10_fixed_type_h_l179_c68_8e24_x;
     -- Outputs
     VAR_CONST_SR_10_fixed_type_h_l179_c68_8e24_return_output := CONST_SR_10_fixed_type_h_l179_c68_8e24_return_output;

     -- Submodule level 1
     -- CAST_TO_int22_t[fixed_type_h_l179_c57_ca9b] LATENCY=0
     VAR_CAST_TO_int22_t_fixed_type_h_l179_c57_ca9b_return_output := CAST_TO_int22_t_int44_t(
     VAR_CONST_SR_10_fixed_type_h_l179_c68_8e24_return_output);

     -- Submodule level 2
     -- CONST_REF_RD_fixed_fixed_7f90[fixed_type_h_l179_c104_e6e5] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l179_c104_e6e5_return_output := CONST_REF_RD_fixed_fixed_7f90(
     VAR_CAST_TO_int22_t_fixed_type_h_l179_c57_ca9b_return_output);

     -- Submodule level 3
     VAR_return_output := VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l179_c104_e6e5_return_output;
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
     -- Stage 1
     -- Stage 2
     -- Stage 3
     -- Stage 4
 end if;
end process;

end arch;
