-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.7358396990979105]
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
entity fixed_add_1CLK_4aa0a483 is
port(
 clk : in std_logic;
 left : in fixed;
 right : in fixed;
 return_output : out fixed);
end fixed_add_1CLK_4aa0a483;
architecture arch of fixed_add_1CLK_4aa0a483 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;
-- All of the wires/regs in function
-- Stage 0
-- Each function instance gets signals
-- BIN_OP_PLUS[fixed_type_h_l204_c57_4dd6]
signal BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_left : signed(21 downto 0);
signal BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_right : signed(21 downto 0);
signal BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_return_output : signed(22 downto 0);

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
-- BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6
BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6 : entity work.BIN_OP_PLUS_int22_t_int22_t_1CLK_966d2e60 port map (
clk,
BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_left,
BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_right,
BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- Registers
 -- Stage 0
 -- All submodule outputs
 BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_left : fixed;
 variable VAR_right : fixed;
 variable VAR_r : fixed;
 variable VAR_r_f_fixed_type_h_l204_c51_ec5b_0 : signed(21 downto 0);
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l204_c57_c07b_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_left : signed(21 downto 0);
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l204_c66_e2b1_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_right : signed(21 downto 0);
 variable VAR_BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_return_output : signed(22 downto 0);
 variable VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l204_c86_3f1b_return_output : fixed;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l204_c57_c07b] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l204_c57_c07b_return_output := VAR_left.f;

     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l204_c66_e2b1] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l204_c66_e2b1_return_output := VAR_right.f;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_left := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l204_c57_c07b_return_output;
     VAR_BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_right := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l204_c66_e2b1_return_output;
     -- BIN_OP_PLUS[fixed_type_h_l204_c57_4dd6] LATENCY=1
     -- Inputs
     BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_left <= VAR_BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_left;
     BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_right <= VAR_BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_right;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_return_output := BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_return_output;

     -- Submodule level 0
     VAR_r_f_fixed_type_h_l204_c51_ec5b_0 := resize(VAR_BIN_OP_PLUS_fixed_type_h_l204_c57_4dd6_return_output, 22);
     -- CONST_REF_RD_fixed_fixed_7f90[fixed_type_h_l204_c86_3f1b] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l204_c86_3f1b_return_output := CONST_REF_RD_fixed_fixed_7f90(
     VAR_r_f_fixed_type_h_l204_c51_ec5b_0);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l204_c86_3f1b_return_output;
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
 end if;
end process;

end arch;
