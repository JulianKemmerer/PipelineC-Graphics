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
entity fixed3_mul_fixed_0CLK_4f51ce12 is
port(
 left : in fixed3;
 right : in fixed;
 return_output : out fixed3);
end fixed3_mul_fixed_0CLK_4f51ce12;
architecture arch of fixed3_mul_fixed_0CLK_4f51ce12 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- fixed_mul[fixed_type_h_l228_c18_cbaf]
signal fixed_mul_fixed_type_h_l228_c18_cbaf_left : fixed;
signal fixed_mul_fixed_type_h_l228_c18_cbaf_right : fixed;
signal fixed_mul_fixed_type_h_l228_c18_cbaf_return_output : fixed;

-- fixed_mul[fixed_type_h_l228_c44_407e]
signal fixed_mul_fixed_type_h_l228_c44_407e_left : fixed;
signal fixed_mul_fixed_type_h_l228_c44_407e_right : fixed;
signal fixed_mul_fixed_type_h_l228_c44_407e_return_output : fixed;

-- fixed_mul[fixed_type_h_l228_c70_f5fe]
signal fixed_mul_fixed_type_h_l228_c70_f5fe_left : fixed;
signal fixed_mul_fixed_type_h_l228_c70_f5fe_right : fixed;
signal fixed_mul_fixed_type_h_l228_c70_f5fe_return_output : fixed;

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
-- fixed_mul_fixed_type_h_l228_c18_cbaf
fixed_mul_fixed_type_h_l228_c18_cbaf : entity work.fixed_mul_0CLK_5af1a430 port map (
fixed_mul_fixed_type_h_l228_c18_cbaf_left,
fixed_mul_fixed_type_h_l228_c18_cbaf_right,
fixed_mul_fixed_type_h_l228_c18_cbaf_return_output);

-- fixed_mul_fixed_type_h_l228_c44_407e
fixed_mul_fixed_type_h_l228_c44_407e : entity work.fixed_mul_0CLK_5af1a430 port map (
fixed_mul_fixed_type_h_l228_c44_407e_left,
fixed_mul_fixed_type_h_l228_c44_407e_right,
fixed_mul_fixed_type_h_l228_c44_407e_return_output);

-- fixed_mul_fixed_type_h_l228_c70_f5fe
fixed_mul_fixed_type_h_l228_c70_f5fe : entity work.fixed_mul_0CLK_5af1a430 port map (
fixed_mul_fixed_type_h_l228_c70_f5fe_left,
fixed_mul_fixed_type_h_l228_c70_f5fe_right,
fixed_mul_fixed_type_h_l228_c70_f5fe_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 fixed_mul_fixed_type_h_l228_c18_cbaf_return_output,
 fixed_mul_fixed_type_h_l228_c44_407e_return_output,
 fixed_mul_fixed_type_h_l228_c70_f5fe_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed3;
 variable VAR_left : fixed3;
 variable VAR_right : fixed;
 variable VAR_r : fixed3;
 variable VAR_fixed_mul_fixed_type_h_l228_c18_cbaf_left : fixed;
 variable VAR_fixed_mul_fixed_type_h_l228_c18_cbaf_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l228_c28_72b3_return_output : fixed;
 variable VAR_fixed_mul_fixed_type_h_l228_c18_cbaf_return_output : fixed;
 variable VAR_fixed_mul_fixed_type_h_l228_c44_407e_left : fixed;
 variable VAR_fixed_mul_fixed_type_h_l228_c44_407e_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l228_c54_7b80_return_output : fixed;
 variable VAR_fixed_mul_fixed_type_h_l228_c44_407e_return_output : fixed;
 variable VAR_fixed_mul_fixed_type_h_l228_c70_f5fe_left : fixed;
 variable VAR_fixed_mul_fixed_type_h_l228_c70_f5fe_right : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l228_c80_5335_return_output : fixed;
 variable VAR_fixed_mul_fixed_type_h_l228_c70_f5fe_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l228_c105_eecf_return_output : fixed3;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_fixed_mul_fixed_type_h_l228_c18_cbaf_right := VAR_right;
     VAR_fixed_mul_fixed_type_h_l228_c44_407e_right := VAR_right;
     VAR_fixed_mul_fixed_type_h_l228_c70_f5fe_right := VAR_right;
     -- CONST_REF_RD_fixed_fixed3_y_d41d[fixed_type_h_l228_c54_7b80] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l228_c54_7b80_return_output := VAR_left.y;

     -- CONST_REF_RD_fixed_fixed3_z_d41d[fixed_type_h_l228_c80_5335] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l228_c80_5335_return_output := VAR_left.z;

     -- CONST_REF_RD_fixed_fixed3_x_d41d[fixed_type_h_l228_c28_72b3] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l228_c28_72b3_return_output := VAR_left.x;

     -- Submodule level 1
     VAR_fixed_mul_fixed_type_h_l228_c18_cbaf_left := VAR_CONST_REF_RD_fixed_fixed3_x_d41d_fixed_type_h_l228_c28_72b3_return_output;
     VAR_fixed_mul_fixed_type_h_l228_c44_407e_left := VAR_CONST_REF_RD_fixed_fixed3_y_d41d_fixed_type_h_l228_c54_7b80_return_output;
     VAR_fixed_mul_fixed_type_h_l228_c70_f5fe_left := VAR_CONST_REF_RD_fixed_fixed3_z_d41d_fixed_type_h_l228_c80_5335_return_output;
     -- fixed_mul[fixed_type_h_l228_c44_407e] LATENCY=0
     -- Inputs
     fixed_mul_fixed_type_h_l228_c44_407e_left <= VAR_fixed_mul_fixed_type_h_l228_c44_407e_left;
     fixed_mul_fixed_type_h_l228_c44_407e_right <= VAR_fixed_mul_fixed_type_h_l228_c44_407e_right;
     -- Outputs
     VAR_fixed_mul_fixed_type_h_l228_c44_407e_return_output := fixed_mul_fixed_type_h_l228_c44_407e_return_output;

     -- fixed_mul[fixed_type_h_l228_c70_f5fe] LATENCY=0
     -- Inputs
     fixed_mul_fixed_type_h_l228_c70_f5fe_left <= VAR_fixed_mul_fixed_type_h_l228_c70_f5fe_left;
     fixed_mul_fixed_type_h_l228_c70_f5fe_right <= VAR_fixed_mul_fixed_type_h_l228_c70_f5fe_right;
     -- Outputs
     VAR_fixed_mul_fixed_type_h_l228_c70_f5fe_return_output := fixed_mul_fixed_type_h_l228_c70_f5fe_return_output;

     -- fixed_mul[fixed_type_h_l228_c18_cbaf] LATENCY=0
     -- Inputs
     fixed_mul_fixed_type_h_l228_c18_cbaf_left <= VAR_fixed_mul_fixed_type_h_l228_c18_cbaf_left;
     fixed_mul_fixed_type_h_l228_c18_cbaf_right <= VAR_fixed_mul_fixed_type_h_l228_c18_cbaf_right;
     -- Outputs
     VAR_fixed_mul_fixed_type_h_l228_c18_cbaf_return_output := fixed_mul_fixed_type_h_l228_c18_cbaf_return_output;

     -- Submodule level 2
     -- CONST_REF_RD_fixed3_fixed3_7d4c[fixed_type_h_l228_c105_eecf] LATENCY=0
     VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l228_c105_eecf_return_output := CONST_REF_RD_fixed3_fixed3_7d4c(
     VAR_fixed_mul_fixed_type_h_l228_c18_cbaf_return_output,
     VAR_fixed_mul_fixed_type_h_l228_c44_407e_return_output,
     VAR_fixed_mul_fixed_type_h_l228_c70_f5fe_return_output);

     -- Submodule level 3
     VAR_return_output := VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l228_c105_eecf_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
