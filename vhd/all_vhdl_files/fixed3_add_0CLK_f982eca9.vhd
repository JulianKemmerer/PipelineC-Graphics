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
-- Submodules: 4
entity fixed3_add_0CLK_f982eca9 is
port(
 left : in fixed3;
 right : in fixed3;
 return_output : out fixed3);
end fixed3_add_0CLK_f982eca9;
architecture arch of fixed3_add_0CLK_f982eca9 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- fixed_add[fixed_type_h_l219_c18_b1e4]
signal fixed_add_fixed_type_h_l219_c18_b1e4_left : fixed;
signal fixed_add_fixed_type_h_l219_c18_b1e4_right : fixed;
signal fixed_add_fixed_type_h_l219_c18_b1e4_return_output : fixed;

-- fixed_add[fixed_type_h_l219_c46_89a1]
signal fixed_add_fixed_type_h_l219_c46_89a1_left : fixed;
signal fixed_add_fixed_type_h_l219_c46_89a1_right : fixed;
signal fixed_add_fixed_type_h_l219_c46_89a1_return_output : fixed;

-- fixed_add[fixed_type_h_l219_c74_5c6e]
signal fixed_add_fixed_type_h_l219_c74_5c6e_left : fixed;
signal fixed_add_fixed_type_h_l219_c74_5c6e_right : fixed;
signal fixed_add_fixed_type_h_l219_c74_5c6e_return_output : fixed;

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
-- fixed_add_fixed_type_h_l219_c18_b1e4
fixed_add_fixed_type_h_l219_c18_b1e4 : entity work.fixed_add_0CLK_6f2c5aad port map (
fixed_add_fixed_type_h_l219_c18_b1e4_left,
fixed_add_fixed_type_h_l219_c18_b1e4_right,
fixed_add_fixed_type_h_l219_c18_b1e4_return_output);

-- fixed_add_fixed_type_h_l219_c46_89a1
fixed_add_fixed_type_h_l219_c46_89a1 : entity work.fixed_add_0CLK_6f2c5aad port map (
fixed_add_fixed_type_h_l219_c46_89a1_left,
fixed_add_fixed_type_h_l219_c46_89a1_right,
fixed_add_fixed_type_h_l219_c46_89a1_return_output);

-- fixed_add_fixed_type_h_l219_c74_5c6e
fixed_add_fixed_type_h_l219_c74_5c6e : entity work.fixed_add_0CLK_6f2c5aad port map (
fixed_add_fixed_type_h_l219_c74_5c6e_left,
fixed_add_fixed_type_h_l219_c74_5c6e_right,
fixed_add_fixed_type_h_l219_c74_5c6e_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 fixed_add_fixed_type_h_l219_c18_b1e4_return_output,
 fixed_add_fixed_type_h_l219_c46_89a1_return_output,
 fixed_add_fixed_type_h_l219_c74_5c6e_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed3;
 variable VAR_left : fixed3;
 variable VAR_right : fixed3;
 variable VAR_r : fixed3;
 variable VAR_fixed_add_fixed_type_h_l219_c18_b1e4_left : fixed;
 variable VAR_fixed_add_fixed_type_h_l219_c18_b1e4_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l219_c28_c2ff_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l219_c36_2585_return_output : fixed;
 variable VAR_fixed_add_fixed_type_h_l219_c18_b1e4_return_output : fixed;
 variable VAR_fixed_add_fixed_type_h_l219_c46_89a1_left : fixed;
 variable VAR_fixed_add_fixed_type_h_l219_c46_89a1_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l219_c56_35b6_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l219_c64_b367_return_output : fixed;
 variable VAR_fixed_add_fixed_type_h_l219_c46_89a1_return_output : fixed;
 variable VAR_fixed_add_fixed_type_h_l219_c74_5c6e_left : fixed;
 variable VAR_fixed_add_fixed_type_h_l219_c74_5c6e_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l219_c84_3125_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l219_c92_b603_return_output : fixed;
 variable VAR_fixed_add_fixed_type_h_l219_c74_5c6e_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l219_c111_6f47_return_output : fixed3;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- CONST_REF_RD_fixed_fixed3_x_d41d[fixed_type_h_l219_c28_c2ff] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l219_c28_c2ff_return_output := VAR_left.x;

     -- CONST_REF_RD_fixed_fixed3_y_d41d[fixed_type_h_l219_c56_35b6] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l219_c56_35b6_return_output := VAR_left.y;

     -- CONST_REF_RD_fixed_fixed3_y_d41d[fixed_type_h_l219_c64_b367] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l219_c64_b367_return_output := VAR_right.y;

     -- CONST_REF_RD_fixed_fixed3_z_d41d[fixed_type_h_l219_c92_b603] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l219_c92_b603_return_output := VAR_right.z;

     -- CONST_REF_RD_fixed_fixed3_x_d41d[fixed_type_h_l219_c36_2585] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l219_c36_2585_return_output := VAR_right.x;

     -- CONST_REF_RD_fixed_fixed3_z_d41d[fixed_type_h_l219_c84_3125] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l219_c84_3125_return_output := VAR_left.z;

     -- Submodule level 1
     VAR_fixed_add_fixed_type_h_l219_c18_b1e4_left := VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l219_c28_c2ff_return_output;
     VAR_fixed_add_fixed_type_h_l219_c18_b1e4_right := VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l219_c36_2585_return_output;
     VAR_fixed_add_fixed_type_h_l219_c46_89a1_left := VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l219_c56_35b6_return_output;
     VAR_fixed_add_fixed_type_h_l219_c46_89a1_right := VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l219_c64_b367_return_output;
     VAR_fixed_add_fixed_type_h_l219_c74_5c6e_left := VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l219_c84_3125_return_output;
     VAR_fixed_add_fixed_type_h_l219_c74_5c6e_right := VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l219_c92_b603_return_output;
     -- fixed_add[fixed_type_h_l219_c46_89a1] LATENCY=0
     -- Inputs
     fixed_add_fixed_type_h_l219_c46_89a1_left <= VAR_fixed_add_fixed_type_h_l219_c46_89a1_left;
     fixed_add_fixed_type_h_l219_c46_89a1_right <= VAR_fixed_add_fixed_type_h_l219_c46_89a1_right;
     -- Outputs
     VAR_fixed_add_fixed_type_h_l219_c46_89a1_return_output := fixed_add_fixed_type_h_l219_c46_89a1_return_output;

     -- fixed_add[fixed_type_h_l219_c74_5c6e] LATENCY=0
     -- Inputs
     fixed_add_fixed_type_h_l219_c74_5c6e_left <= VAR_fixed_add_fixed_type_h_l219_c74_5c6e_left;
     fixed_add_fixed_type_h_l219_c74_5c6e_right <= VAR_fixed_add_fixed_type_h_l219_c74_5c6e_right;
     -- Outputs
     VAR_fixed_add_fixed_type_h_l219_c74_5c6e_return_output := fixed_add_fixed_type_h_l219_c74_5c6e_return_output;

     -- fixed_add[fixed_type_h_l219_c18_b1e4] LATENCY=0
     -- Inputs
     fixed_add_fixed_type_h_l219_c18_b1e4_left <= VAR_fixed_add_fixed_type_h_l219_c18_b1e4_left;
     fixed_add_fixed_type_h_l219_c18_b1e4_right <= VAR_fixed_add_fixed_type_h_l219_c18_b1e4_right;
     -- Outputs
     VAR_fixed_add_fixed_type_h_l219_c18_b1e4_return_output := fixed_add_fixed_type_h_l219_c18_b1e4_return_output;

     -- Submodule level 2
     -- CONST_REF_RD_fixed3_fixed3_7d4c[fixed_type_h_l219_c111_6f47] LATENCY=0
     VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l219_c111_6f47_return_output := CONST_REF_RD_fixed3_fixed3_7d4c(
     VAR_fixed_add_fixed_type_h_l219_c18_b1e4_return_output,
     VAR_fixed_add_fixed_type_h_l219_c46_89a1_return_output,
     VAR_fixed_add_fixed_type_h_l219_c74_5c6e_return_output);

     -- Submodule level 3
     VAR_return_output := VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l219_c111_6f47_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
