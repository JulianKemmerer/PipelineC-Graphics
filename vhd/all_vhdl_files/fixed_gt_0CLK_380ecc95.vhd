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
-- Submodules: 1
entity fixed_gt_0CLK_380ecc95 is
port(
 left : in fixed;
 right : in fixed;
 return_output : out unsigned(0 downto 0));
end fixed_gt_0CLK_380ecc95;
architecture arch of fixed_gt_0CLK_380ecc95 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_GT[fixed_type_h_l207_c56_99ee]
signal BIN_OP_GT_fixed_type_h_l207_c56_99ee_left : signed(21 downto 0);
signal BIN_OP_GT_fixed_type_h_l207_c56_99ee_right : signed(21 downto 0);
signal BIN_OP_GT_fixed_type_h_l207_c56_99ee_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_GT_fixed_type_h_l207_c56_99ee
BIN_OP_GT_fixed_type_h_l207_c56_99ee : entity work.BIN_OP_GT_int22_t_int22_t_0CLK_de264c78 port map (
BIN_OP_GT_fixed_type_h_l207_c56_99ee_left,
BIN_OP_GT_fixed_type_h_l207_c56_99ee_right,
BIN_OP_GT_fixed_type_h_l207_c56_99ee_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 BIN_OP_GT_fixed_type_h_l207_c56_99ee_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left : fixed;
 variable VAR_right : fixed;
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l207_c56_8c7b_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_GT_fixed_type_h_l207_c56_99ee_left : signed(21 downto 0);
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l207_c65_bf43_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_GT_fixed_type_h_l207_c56_99ee_right : signed(21 downto 0);
 variable VAR_BIN_OP_GT_fixed_type_h_l207_c56_99ee_return_output : unsigned(0 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l207_c56_8c7b] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l207_c56_8c7b_return_output := VAR_left.f;

     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l207_c65_bf43] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l207_c65_bf43_return_output := VAR_right.f;

     -- Submodule level 1
     VAR_BIN_OP_GT_fixed_type_h_l207_c56_99ee_left := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l207_c56_8c7b_return_output;
     VAR_BIN_OP_GT_fixed_type_h_l207_c56_99ee_right := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l207_c65_bf43_return_output;
     -- BIN_OP_GT[fixed_type_h_l207_c56_99ee] LATENCY=0
     -- Inputs
     BIN_OP_GT_fixed_type_h_l207_c56_99ee_left <= VAR_BIN_OP_GT_fixed_type_h_l207_c56_99ee_left;
     BIN_OP_GT_fixed_type_h_l207_c56_99ee_right <= VAR_BIN_OP_GT_fixed_type_h_l207_c56_99ee_right;
     -- Outputs
     VAR_BIN_OP_GT_fixed_type_h_l207_c56_99ee_return_output := BIN_OP_GT_fixed_type_h_l207_c56_99ee_return_output;

     -- Submodule level 2
     VAR_return_output := VAR_BIN_OP_GT_fixed_type_h_l207_c56_99ee_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
