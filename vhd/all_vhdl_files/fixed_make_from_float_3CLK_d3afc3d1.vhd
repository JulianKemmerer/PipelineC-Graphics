-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.0020547336999127887, 0.641968615625854]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 3
entity fixed_make_from_float_3CLK_d3afc3d1 is
port(
 clk : in std_logic;
 a : in std_logic_vector(22 downto 0);
 return_output : out fixed);
end fixed_make_from_float_3CLK_d3afc3d1;
architecture arch of fixed_make_from_float_3CLK_d3afc3d1 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 3;
-- All of the wires/regs in function
-- Stage 0
-- Stage 1
-- Stage 2
-- Each function instance gets signals
-- BIN_OP_SL[fixed_type_h_l166_c69_4a66]
signal BIN_OP_SL_fixed_type_h_l166_c69_4a66_left : std_logic_vector(22 downto 0);
signal BIN_OP_SL_fixed_type_h_l166_c69_4a66_right : unsigned(3 downto 0);
signal BIN_OP_SL_fixed_type_h_l166_c69_4a66_return_output : std_logic_vector(22 downto 0);

-- CAST_TO_int22_t[fixed_type_h_l166_c58_e026]
signal CAST_TO_int22_t_fixed_type_h_l166_c58_e026_rhs : std_logic_vector(22 downto 0);
signal CAST_TO_int22_t_fixed_type_h_l166_c58_e026_return_output : signed(21 downto 0);

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
-- BIN_OP_SL_fixed_type_h_l166_c69_4a66
BIN_OP_SL_fixed_type_h_l166_c69_4a66 : entity work.BIN_OP_SL_float_8_14_t_uint4_t_1CLK_fce4b983 port map (
clk,
BIN_OP_SL_fixed_type_h_l166_c69_4a66_left,
BIN_OP_SL_fixed_type_h_l166_c69_4a66_right,
BIN_OP_SL_fixed_type_h_l166_c69_4a66_return_output);

-- CAST_TO_int22_t_fixed_type_h_l166_c58_e026
CAST_TO_int22_t_fixed_type_h_l166_c58_e026 : entity work.CAST_TO_int22_t_float_8_14_t_2CLK_eee4f554 port map (
clk,
CAST_TO_int22_t_fixed_type_h_l166_c58_e026_rhs,
CAST_TO_int22_t_fixed_type_h_l166_c58_e026_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 a,
 -- Registers
 -- Stage 0
 -- Stage 1
 -- Stage 2
 -- All submodule outputs
 BIN_OP_SL_fixed_type_h_l166_c69_4a66_return_output,
 CAST_TO_int22_t_fixed_type_h_l166_c58_e026_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_a : std_logic_vector(22 downto 0);
 variable VAR_r : fixed;
 variable VAR_BIN_OP_SL_fixed_type_h_l166_c69_4a66_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_fixed_type_h_l166_c69_4a66_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_SL_fixed_type_h_l166_c69_4a66_return_output : std_logic_vector(22 downto 0);
 variable VAR_CAST_TO_int22_t_fixed_type_h_l166_c58_e026_rhs : std_logic_vector(22 downto 0);
 variable VAR_CAST_TO_int22_t_fixed_type_h_l166_c58_e026_return_output : signed(21 downto 0);
 variable VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l166_c88_5e9c_return_output : fixed;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_SL_fixed_type_h_l166_c69_4a66_right := to_unsigned(10, 4);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_a := a;

     -- Submodule level 0
     VAR_BIN_OP_SL_fixed_type_h_l166_c69_4a66_left := VAR_a;
     -- BIN_OP_SL[fixed_type_h_l166_c69_4a66] LATENCY=1
     -- Inputs
     BIN_OP_SL_fixed_type_h_l166_c69_4a66_left <= VAR_BIN_OP_SL_fixed_type_h_l166_c69_4a66_left;
     BIN_OP_SL_fixed_type_h_l166_c69_4a66_right <= VAR_BIN_OP_SL_fixed_type_h_l166_c69_4a66_right;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_SL_fixed_type_h_l166_c69_4a66_return_output := BIN_OP_SL_fixed_type_h_l166_c69_4a66_return_output;

     -- Submodule level 0
     VAR_CAST_TO_int22_t_fixed_type_h_l166_c58_e026_rhs := VAR_BIN_OP_SL_fixed_type_h_l166_c69_4a66_return_output;
     -- CAST_TO_int22_t[fixed_type_h_l166_c58_e026] LATENCY=2
     -- Inputs
     CAST_TO_int22_t_fixed_type_h_l166_c58_e026_rhs <= VAR_CAST_TO_int22_t_fixed_type_h_l166_c58_e026_rhs;

     -- Write to comb signals
   elsif STAGE = 2 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 3 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_CAST_TO_int22_t_fixed_type_h_l166_c58_e026_return_output := CAST_TO_int22_t_fixed_type_h_l166_c58_e026_return_output;

     -- Submodule level 0
     -- CONST_REF_RD_fixed_fixed_7f90[fixed_type_h_l166_c88_5e9c] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l166_c88_5e9c_return_output := CONST_REF_RD_fixed_fixed_7f90(
     VAR_CAST_TO_int22_t_fixed_type_h_l166_c58_e026_return_output);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l166_c88_5e9c_return_output;
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
 end if;
end process;

end arch;
