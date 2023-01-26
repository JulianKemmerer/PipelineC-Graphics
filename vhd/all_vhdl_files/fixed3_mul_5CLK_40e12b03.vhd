-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.8027845910419393]
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
entity fixed3_mul_5CLK_40e12b03 is
port(
 clk : in std_logic;
 left : in fixed3;
 right : in fixed3;
 return_output : out fixed3);
end fixed3_mul_5CLK_40e12b03;
architecture arch of fixed3_mul_5CLK_40e12b03 is
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
-- fixed_mul[fixed_type_h_l225_c18_87cb]
signal fixed_mul_fixed_type_h_l225_c18_87cb_left : fixed;
signal fixed_mul_fixed_type_h_l225_c18_87cb_right : fixed;
signal fixed_mul_fixed_type_h_l225_c18_87cb_return_output : fixed;

-- fixed_mul[fixed_type_h_l225_c46_27be]
signal fixed_mul_fixed_type_h_l225_c46_27be_left : fixed;
signal fixed_mul_fixed_type_h_l225_c46_27be_right : fixed;
signal fixed_mul_fixed_type_h_l225_c46_27be_return_output : fixed;

-- fixed_mul[fixed_type_h_l225_c74_8cd3]
signal fixed_mul_fixed_type_h_l225_c74_8cd3_left : fixed;
signal fixed_mul_fixed_type_h_l225_c74_8cd3_right : fixed;
signal fixed_mul_fixed_type_h_l225_c74_8cd3_return_output : fixed;

function CONST_REF_RD_fixed3_fixed3_7d4c( ref_toks_0 : fixed;
 ref_toks_1 : fixed;
 ref_toks_2 : fixed) return fixed3 is
 
  variable base : fixed3; 
  variable return_output : fixed3;
begin
      base.x := ref_toks_0;
      base.y := ref_toks_1;
      base.z := ref_toks_2;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- fixed_mul_fixed_type_h_l225_c18_87cb
fixed_mul_fixed_type_h_l225_c18_87cb : entity work.fixed_mul_5CLK_70b28c19 port map (
clk,
fixed_mul_fixed_type_h_l225_c18_87cb_left,
fixed_mul_fixed_type_h_l225_c18_87cb_right,
fixed_mul_fixed_type_h_l225_c18_87cb_return_output);

-- fixed_mul_fixed_type_h_l225_c46_27be
fixed_mul_fixed_type_h_l225_c46_27be : entity work.fixed_mul_5CLK_70b28c19 port map (
clk,
fixed_mul_fixed_type_h_l225_c46_27be_left,
fixed_mul_fixed_type_h_l225_c46_27be_right,
fixed_mul_fixed_type_h_l225_c46_27be_return_output);

-- fixed_mul_fixed_type_h_l225_c74_8cd3
fixed_mul_fixed_type_h_l225_c74_8cd3 : entity work.fixed_mul_5CLK_70b28c19 port map (
clk,
fixed_mul_fixed_type_h_l225_c74_8cd3_left,
fixed_mul_fixed_type_h_l225_c74_8cd3_right,
fixed_mul_fixed_type_h_l225_c74_8cd3_return_output);



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
 fixed_mul_fixed_type_h_l225_c18_87cb_return_output,
 fixed_mul_fixed_type_h_l225_c46_27be_return_output,
 fixed_mul_fixed_type_h_l225_c74_8cd3_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed3;
 variable VAR_left : fixed3;
 variable VAR_right : fixed3;
 variable VAR_r : fixed3;
 variable VAR_fixed_mul_fixed_type_h_l225_c18_87cb_left : fixed;
 variable VAR_fixed_mul_fixed_type_h_l225_c18_87cb_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l225_c28_a276_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l225_c36_b7c7_return_output : fixed;
 variable VAR_fixed_mul_fixed_type_h_l225_c18_87cb_return_output : fixed;
 variable VAR_fixed_mul_fixed_type_h_l225_c46_27be_left : fixed;
 variable VAR_fixed_mul_fixed_type_h_l225_c46_27be_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l225_c56_dd49_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l225_c64_fbca_return_output : fixed;
 variable VAR_fixed_mul_fixed_type_h_l225_c46_27be_return_output : fixed;
 variable VAR_fixed_mul_fixed_type_h_l225_c74_8cd3_left : fixed;
 variable VAR_fixed_mul_fixed_type_h_l225_c74_8cd3_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l225_c84_1cc1_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l225_c92_a8d6_return_output : fixed;
 variable VAR_fixed_mul_fixed_type_h_l225_c74_8cd3_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l225_c111_85df_return_output : fixed3;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- CONST_REF_RD_fixed_fixed3_y_d41d[fixed_type_h_l225_c64_fbca] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l225_c64_fbca_return_output := VAR_right.y;

     -- CONST_REF_RD_fixed_fixed3_z_d41d[fixed_type_h_l225_c92_a8d6] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l225_c92_a8d6_return_output := VAR_right.z;

     -- CONST_REF_RD_fixed_fixed3_x_d41d[fixed_type_h_l225_c36_b7c7] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l225_c36_b7c7_return_output := VAR_right.x;

     -- CONST_REF_RD_fixed_fixed3_y_d41d[fixed_type_h_l225_c56_dd49] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l225_c56_dd49_return_output := VAR_left.y;

     -- CONST_REF_RD_fixed_fixed3_z_d41d[fixed_type_h_l225_c84_1cc1] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l225_c84_1cc1_return_output := VAR_left.z;

     -- CONST_REF_RD_fixed_fixed3_x_d41d[fixed_type_h_l225_c28_a276] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l225_c28_a276_return_output := VAR_left.x;

     -- Submodule level 1
     VAR_fixed_mul_fixed_type_h_l225_c18_87cb_left := VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l225_c28_a276_return_output;
     VAR_fixed_mul_fixed_type_h_l225_c18_87cb_right := VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l225_c36_b7c7_return_output;
     VAR_fixed_mul_fixed_type_h_l225_c46_27be_left := VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l225_c56_dd49_return_output;
     VAR_fixed_mul_fixed_type_h_l225_c46_27be_right := VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l225_c64_fbca_return_output;
     VAR_fixed_mul_fixed_type_h_l225_c74_8cd3_left := VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l225_c84_1cc1_return_output;
     VAR_fixed_mul_fixed_type_h_l225_c74_8cd3_right := VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l225_c92_a8d6_return_output;
     -- fixed_mul[fixed_type_h_l225_c46_27be] LATENCY=5
     -- Inputs
     fixed_mul_fixed_type_h_l225_c46_27be_left <= VAR_fixed_mul_fixed_type_h_l225_c46_27be_left;
     fixed_mul_fixed_type_h_l225_c46_27be_right <= VAR_fixed_mul_fixed_type_h_l225_c46_27be_right;

     -- fixed_mul[fixed_type_h_l225_c18_87cb] LATENCY=5
     -- Inputs
     fixed_mul_fixed_type_h_l225_c18_87cb_left <= VAR_fixed_mul_fixed_type_h_l225_c18_87cb_left;
     fixed_mul_fixed_type_h_l225_c18_87cb_right <= VAR_fixed_mul_fixed_type_h_l225_c18_87cb_right;

     -- fixed_mul[fixed_type_h_l225_c74_8cd3] LATENCY=5
     -- Inputs
     fixed_mul_fixed_type_h_l225_c74_8cd3_left <= VAR_fixed_mul_fixed_type_h_l225_c74_8cd3_left;
     fixed_mul_fixed_type_h_l225_c74_8cd3_right <= VAR_fixed_mul_fixed_type_h_l225_c74_8cd3_right;

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
     VAR_fixed_mul_fixed_type_h_l225_c18_87cb_return_output := fixed_mul_fixed_type_h_l225_c18_87cb_return_output;
     VAR_fixed_mul_fixed_type_h_l225_c46_27be_return_output := fixed_mul_fixed_type_h_l225_c46_27be_return_output;
     VAR_fixed_mul_fixed_type_h_l225_c74_8cd3_return_output := fixed_mul_fixed_type_h_l225_c74_8cd3_return_output;

     -- Submodule level 0
     -- CONST_REF_RD_fixed3_fixed3_7d4c[fixed_type_h_l225_c111_85df] LATENCY=0
     VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l225_c111_85df_return_output := CONST_REF_RD_fixed3_fixed3_7d4c(
     VAR_fixed_mul_fixed_type_h_l225_c18_87cb_return_output,
     VAR_fixed_mul_fixed_type_h_l225_c46_27be_return_output,
     VAR_fixed_mul_fixed_type_h_l225_c74_8cd3_return_output);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l225_c111_85df_return_output;
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
