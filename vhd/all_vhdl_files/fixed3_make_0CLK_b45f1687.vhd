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
entity fixed3_make_0CLK_b45f1687 is
port(
 x : in fixed;
 y : in fixed;
 z : in fixed;
 return_output : out fixed3);
end fixed3_make_0CLK_b45f1687;
architecture arch of fixed3_make_0CLK_b45f1687 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
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


-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 y,
 z)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed3;
 variable VAR_x : fixed;
 variable VAR_y : fixed;
 variable VAR_z : fixed;
 variable VAR_r : fixed3;
 variable VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l214_c79_9591_return_output : fixed3;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;
     VAR_y := y;
     VAR_z := z;

     -- Submodule level 0
     -- CONST_REF_RD_fixed3_fixed3_7d4c[fixed_type_h_l214_c79_9591] LATENCY=0
     VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l214_c79_9591_return_output := CONST_REF_RD_fixed3_fixed3_7d4c(
     VAR_x,
     VAR_y,
     VAR_z);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_fixed3_fixed3_7d4c_fixed_type_h_l214_c79_9591_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
