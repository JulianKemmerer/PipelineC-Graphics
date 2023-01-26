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
-- Submodules: 2
entity fixed_sub_0CLK_6f2c5aad is
port(
 left : in fixed;
 right : in fixed;
 return_output : out fixed);
end fixed_sub_0CLK_6f2c5aad;
architecture arch of fixed_sub_0CLK_6f2c5aad is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_MINUS[fixed_type_h_l205_c57_9d6e]
signal BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_left : signed(21 downto 0);
signal BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_right : signed(21 downto 0);
signal BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_return_output : signed(22 downto 0);

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
-- BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e
BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e : entity work.BIN_OP_MINUS_int22_t_int22_t_0CLK_de264c78 port map (
BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_left,
BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_right,
BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_left : fixed;
 variable VAR_right : fixed;
 variable VAR_r : fixed;
 variable VAR_r_f_fixed_type_h_l205_c51_f49c_0 : signed(21 downto 0);
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l205_c57_9a69_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_left : signed(21 downto 0);
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l205_c66_b4e0_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_right : signed(21 downto 0);
 variable VAR_BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_return_output : signed(22 downto 0);
 variable VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l205_c86_66c9_return_output : fixed;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l205_c57_9a69] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l205_c57_9a69_return_output := VAR_left.f;

     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l205_c66_b4e0] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l205_c66_b4e0_return_output := VAR_right.f;

     -- Submodule level 1
     VAR_BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_left := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l205_c57_9a69_return_output;
     VAR_BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_right := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l205_c66_b4e0_return_output;
     -- BIN_OP_MINUS[fixed_type_h_l205_c57_9d6e] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_left <= VAR_BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_left;
     BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_right <= VAR_BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_right;
     -- Outputs
     VAR_BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_return_output := BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_return_output;

     -- Submodule level 2
     VAR_r_f_fixed_type_h_l205_c51_f49c_0 := resize(VAR_BIN_OP_MINUS_fixed_type_h_l205_c57_9d6e_return_output, 22);
     -- CONST_REF_RD_fixed_fixed_7f90[fixed_type_h_l205_c86_66c9] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l205_c86_66c9_return_output := CONST_REF_RD_fixed_fixed_7f90(
     VAR_r_f_fixed_type_h_l205_c51_f49c_0);

     -- Submodule level 3
     VAR_return_output := VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l205_c86_66c9_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
