-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.22406527899316886]
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
entity fixed3_sub_1CLK_0feb4a39 is
port(
 clk : in std_logic;
 left : in fixed3;
 right : in fixed3;
 return_output : out fixed3);
end fixed3_sub_1CLK_0feb4a39;
architecture arch of fixed3_sub_1CLK_0feb4a39 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;
-- All of the wires/regs in function
-- Stage 0
-- Each function instance gets signals
-- fixed_sub[fixed_type_h_l222_c18_f0ab]
signal fixed_sub_fixed_type_h_l222_c18_f0ab_left : fixed;
signal fixed_sub_fixed_type_h_l222_c18_f0ab_right : fixed;
signal fixed_sub_fixed_type_h_l222_c18_f0ab_return_output : fixed;

-- fixed_sub[fixed_type_h_l222_c46_cc26]
signal fixed_sub_fixed_type_h_l222_c46_cc26_left : fixed;
signal fixed_sub_fixed_type_h_l222_c46_cc26_right : fixed;
signal fixed_sub_fixed_type_h_l222_c46_cc26_return_output : fixed;

-- fixed_sub[fixed_type_h_l222_c74_4b49]
signal fixed_sub_fixed_type_h_l222_c74_4b49_left : fixed;
signal fixed_sub_fixed_type_h_l222_c74_4b49_right : fixed;
signal fixed_sub_fixed_type_h_l222_c74_4b49_return_output : fixed;

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
-- fixed_sub_fixed_type_h_l222_c18_f0ab
fixed_sub_fixed_type_h_l222_c18_f0ab : entity work.fixed_sub_1CLK_adafaef6 port map (
clk,
fixed_sub_fixed_type_h_l222_c18_f0ab_left,
fixed_sub_fixed_type_h_l222_c18_f0ab_right,
fixed_sub_fixed_type_h_l222_c18_f0ab_return_output);

-- fixed_sub_fixed_type_h_l222_c46_cc26
fixed_sub_fixed_type_h_l222_c46_cc26 : entity work.fixed_sub_1CLK_adafaef6 port map (
clk,
fixed_sub_fixed_type_h_l222_c46_cc26_left,
fixed_sub_fixed_type_h_l222_c46_cc26_right,
fixed_sub_fixed_type_h_l222_c46_cc26_return_output);

-- fixed_sub_fixed_type_h_l222_c74_4b49
fixed_sub_fixed_type_h_l222_c74_4b49 : entity work.fixed_sub_1CLK_adafaef6 port map (
clk,
fixed_sub_fixed_type_h_l222_c74_4b49_left,
fixed_sub_fixed_type_h_l222_c74_4b49_right,
fixed_sub_fixed_type_h_l222_c74_4b49_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- Registers
 -- Stage 0
 -- All submodule outputs
 fixed_sub_fixed_type_h_l222_c18_f0ab_return_output,
 fixed_sub_fixed_type_h_l222_c46_cc26_return_output,
 fixed_sub_fixed_type_h_l222_c74_4b49_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed3;
 variable VAR_left : fixed3;
 variable VAR_right : fixed3;
 variable VAR_r : fixed3;
 variable VAR_fixed_sub_fixed_type_h_l222_c18_f0ab_left : fixed;
 variable VAR_fixed_sub_fixed_type_h_l222_c18_f0ab_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l222_c28_942b_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l222_c36_a443_return_output : fixed;
 variable VAR_fixed_sub_fixed_type_h_l222_c18_f0ab_return_output : fixed;
 variable VAR_fixed_sub_fixed_type_h_l222_c46_cc26_left : fixed;
 variable VAR_fixed_sub_fixed_type_h_l222_c46_cc26_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l222_c56_1265_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l222_c64_52da_return_output : fixed;
 variable VAR_fixed_sub_fixed_type_h_l222_c46_cc26_return_output : fixed;
 variable VAR_fixed_sub_fixed_type_h_l222_c74_4b49_left : fixed;
 variable VAR_fixed_sub_fixed_type_h_l222_c74_4b49_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l222_c84_511b_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l222_c92_ad48_return_output : fixed;
 variable VAR_fixed_sub_fixed_type_h_l222_c74_4b49_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l222_c111_9aab_return_output : fixed3;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- CONST_REF_RD_fixed_fixed3_z_d41d[fixed_type_h_l222_c92_ad48] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l222_c92_ad48_return_output := VAR_right.z;

     -- CONST_REF_RD_fixed_fixed3_x_d41d[fixed_type_h_l222_c36_a443] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l222_c36_a443_return_output := VAR_right.x;

     -- CONST_REF_RD_fixed_fixed3_y_d41d[fixed_type_h_l222_c64_52da] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l222_c64_52da_return_output := VAR_right.y;

     -- CONST_REF_RD_fixed_fixed3_y_d41d[fixed_type_h_l222_c56_1265] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l222_c56_1265_return_output := VAR_left.y;

     -- CONST_REF_RD_fixed_fixed3_x_d41d[fixed_type_h_l222_c28_942b] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l222_c28_942b_return_output := VAR_left.x;

     -- CONST_REF_RD_fixed_fixed3_z_d41d[fixed_type_h_l222_c84_511b] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l222_c84_511b_return_output := VAR_left.z;

     -- Submodule level 1
     VAR_fixed_sub_fixed_type_h_l222_c18_f0ab_left := VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l222_c28_942b_return_output;
     VAR_fixed_sub_fixed_type_h_l222_c18_f0ab_right := VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l222_c36_a443_return_output;
     VAR_fixed_sub_fixed_type_h_l222_c46_cc26_left := VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l222_c56_1265_return_output;
     VAR_fixed_sub_fixed_type_h_l222_c46_cc26_right := VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l222_c64_52da_return_output;
     VAR_fixed_sub_fixed_type_h_l222_c74_4b49_left := VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l222_c84_511b_return_output;
     VAR_fixed_sub_fixed_type_h_l222_c74_4b49_right := VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l222_c92_ad48_return_output;
     -- fixed_sub[fixed_type_h_l222_c18_f0ab] LATENCY=1
     -- Inputs
     fixed_sub_fixed_type_h_l222_c18_f0ab_left <= VAR_fixed_sub_fixed_type_h_l222_c18_f0ab_left;
     fixed_sub_fixed_type_h_l222_c18_f0ab_right <= VAR_fixed_sub_fixed_type_h_l222_c18_f0ab_right;

     -- fixed_sub[fixed_type_h_l222_c74_4b49] LATENCY=1
     -- Inputs
     fixed_sub_fixed_type_h_l222_c74_4b49_left <= VAR_fixed_sub_fixed_type_h_l222_c74_4b49_left;
     fixed_sub_fixed_type_h_l222_c74_4b49_right <= VAR_fixed_sub_fixed_type_h_l222_c74_4b49_right;

     -- fixed_sub[fixed_type_h_l222_c46_cc26] LATENCY=1
     -- Inputs
     fixed_sub_fixed_type_h_l222_c46_cc26_left <= VAR_fixed_sub_fixed_type_h_l222_c46_cc26_left;
     fixed_sub_fixed_type_h_l222_c46_cc26_right <= VAR_fixed_sub_fixed_type_h_l222_c46_cc26_right;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_fixed_sub_fixed_type_h_l222_c18_f0ab_return_output := fixed_sub_fixed_type_h_l222_c18_f0ab_return_output;
     VAR_fixed_sub_fixed_type_h_l222_c46_cc26_return_output := fixed_sub_fixed_type_h_l222_c46_cc26_return_output;
     VAR_fixed_sub_fixed_type_h_l222_c74_4b49_return_output := fixed_sub_fixed_type_h_l222_c74_4b49_return_output;

     -- Submodule level 0
     -- CONST_REF_RD_fixed3_fixed3_7d4c[fixed_type_h_l222_c111_9aab] LATENCY=0
     VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l222_c111_9aab_return_output := CONST_REF_RD_fixed3_fixed3_7d4c(
     VAR_fixed_sub_fixed_type_h_l222_c18_f0ab_return_output,
     VAR_fixed_sub_fixed_type_h_l222_c46_cc26_return_output,
     VAR_fixed_sub_fixed_type_h_l222_c74_4b49_return_output);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l222_c111_9aab_return_output;
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
