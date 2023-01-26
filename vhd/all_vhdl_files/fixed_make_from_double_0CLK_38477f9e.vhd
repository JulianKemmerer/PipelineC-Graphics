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
-- Submodules: 3
entity fixed_make_from_double_0CLK_38477f9e is
port(
 a : in std_logic_vector(22 downto 0);
 return_output : out fixed);
end fixed_make_from_double_0CLK_38477f9e;
architecture arch of fixed_make_from_double_0CLK_38477f9e is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_SL[fixed_type_h_l167_c71_2c57]
signal BIN_OP_SL_fixed_type_h_l167_c71_2c57_left : std_logic_vector(22 downto 0);
signal BIN_OP_SL_fixed_type_h_l167_c71_2c57_right : unsigned(3 downto 0);
signal BIN_OP_SL_fixed_type_h_l167_c71_2c57_return_output : std_logic_vector(22 downto 0);

-- CAST_TO_int22_t[fixed_type_h_l167_c59_abee]
signal CAST_TO_int22_t_fixed_type_h_l167_c59_abee_rhs : std_logic_vector(22 downto 0);
signal CAST_TO_int22_t_fixed_type_h_l167_c59_abee_return_output : signed(21 downto 0);

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
-- BIN_OP_SL_fixed_type_h_l167_c71_2c57
BIN_OP_SL_fixed_type_h_l167_c71_2c57 : entity work.BIN_OP_SL_float_8_14_t_uint4_t_0CLK_e595f783 port map (
BIN_OP_SL_fixed_type_h_l167_c71_2c57_left,
BIN_OP_SL_fixed_type_h_l167_c71_2c57_right,
BIN_OP_SL_fixed_type_h_l167_c71_2c57_return_output);

-- CAST_TO_int22_t_fixed_type_h_l167_c59_abee
CAST_TO_int22_t_fixed_type_h_l167_c59_abee : entity work.CAST_TO_int22_t_float_8_14_t_0CLK_3e95be9f port map (
CAST_TO_int22_t_fixed_type_h_l167_c59_abee_rhs,
CAST_TO_int22_t_fixed_type_h_l167_c59_abee_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 a,
 -- All submodule outputs
 BIN_OP_SL_fixed_type_h_l167_c71_2c57_return_output,
 CAST_TO_int22_t_fixed_type_h_l167_c59_abee_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_a : std_logic_vector(22 downto 0);
 variable VAR_r : fixed;
 variable VAR_BIN_OP_SL_fixed_type_h_l167_c71_2c57_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_fixed_type_h_l167_c71_2c57_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_SL_fixed_type_h_l167_c71_2c57_return_output : std_logic_vector(22 downto 0);
 variable VAR_CAST_TO_int22_t_fixed_type_h_l167_c59_abee_rhs : std_logic_vector(22 downto 0);
 variable VAR_CAST_TO_int22_t_fixed_type_h_l167_c59_abee_return_output : signed(21 downto 0);
 variable VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l167_c90_5de6_return_output : fixed;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_SL_fixed_type_h_l167_c71_2c57_right := to_unsigned(10, 4);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_a := a;

     -- Submodule level 0
     VAR_BIN_OP_SL_fixed_type_h_l167_c71_2c57_left := VAR_a;
     -- BIN_OP_SL[fixed_type_h_l167_c71_2c57] LATENCY=0
     -- Inputs
     BIN_OP_SL_fixed_type_h_l167_c71_2c57_left <= VAR_BIN_OP_SL_fixed_type_h_l167_c71_2c57_left;
     BIN_OP_SL_fixed_type_h_l167_c71_2c57_right <= VAR_BIN_OP_SL_fixed_type_h_l167_c71_2c57_right;
     -- Outputs
     VAR_BIN_OP_SL_fixed_type_h_l167_c71_2c57_return_output := BIN_OP_SL_fixed_type_h_l167_c71_2c57_return_output;

     -- Submodule level 1
     VAR_CAST_TO_int22_t_fixed_type_h_l167_c59_abee_rhs := VAR_BIN_OP_SL_fixed_type_h_l167_c71_2c57_return_output;
     -- CAST_TO_int22_t[fixed_type_h_l167_c59_abee] LATENCY=0
     -- Inputs
     CAST_TO_int22_t_fixed_type_h_l167_c59_abee_rhs <= VAR_CAST_TO_int22_t_fixed_type_h_l167_c59_abee_rhs;
     -- Outputs
     VAR_CAST_TO_int22_t_fixed_type_h_l167_c59_abee_return_output := CAST_TO_int22_t_fixed_type_h_l167_c59_abee_return_output;

     -- Submodule level 2
     -- CONST_REF_RD_fixed_fixed_7f90[fixed_type_h_l167_c90_5de6] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l167_c90_5de6_return_output := CONST_REF_RD_fixed_fixed_7f90(
     VAR_CAST_TO_int22_t_fixed_type_h_l167_c59_abee_return_output);

     -- Submodule level 3
     VAR_return_output := VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l167_c90_5de6_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
