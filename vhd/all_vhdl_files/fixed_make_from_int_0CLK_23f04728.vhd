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
entity fixed_make_from_int_0CLK_23f04728 is
port(
 a : in signed(31 downto 0);
 return_output : out fixed);
end fixed_make_from_int_0CLK_23f04728;
architecture arch of fixed_make_from_int_0CLK_23f04728 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SL_10[fixed_type_h_l164_c57_627d]
signal CONST_SL_10_fixed_type_h_l164_c57_627d_x : signed(31 downto 0);
signal CONST_SL_10_fixed_type_h_l164_c57_627d_return_output : signed(31 downto 0);

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
-- CONST_SL_10_fixed_type_h_l164_c57_627d
CONST_SL_10_fixed_type_h_l164_c57_627d : entity work.CONST_SL_10_int32_t_0CLK_de264c78 port map (
CONST_SL_10_fixed_type_h_l164_c57_627d_x,
CONST_SL_10_fixed_type_h_l164_c57_627d_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 a,
 -- All submodule outputs
 CONST_SL_10_fixed_type_h_l164_c57_627d_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_a : signed(31 downto 0);
 variable VAR_r : fixed;
 variable VAR_r_f_fixed_type_h_l164_c52_2124_0 : signed(21 downto 0);
 variable VAR_CONST_SL_10_fixed_type_h_l164_c57_627d_return_output : signed(31 downto 0);
 variable VAR_CONST_SL_10_fixed_type_h_l164_c57_627d_x : signed(31 downto 0);
 variable VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l164_c74_c84e_return_output : fixed;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_a := a;

     -- Submodule level 0
     VAR_CONST_SL_10_fixed_type_h_l164_c57_627d_x := VAR_a;
     -- CONST_SL_10[fixed_type_h_l164_c57_627d] LATENCY=0
     -- Inputs
     CONST_SL_10_fixed_type_h_l164_c57_627d_x <= VAR_CONST_SL_10_fixed_type_h_l164_c57_627d_x;
     -- Outputs
     VAR_CONST_SL_10_fixed_type_h_l164_c57_627d_return_output := CONST_SL_10_fixed_type_h_l164_c57_627d_return_output;

     -- Submodule level 1
     VAR_r_f_fixed_type_h_l164_c52_2124_0 := resize(VAR_CONST_SL_10_fixed_type_h_l164_c57_627d_return_output, 22);
     -- CONST_REF_RD_fixed_fixed_7f90[fixed_type_h_l164_c74_c84e] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l164_c74_c84e_return_output := CONST_REF_RD_fixed_fixed_7f90(
     VAR_r_f_fixed_type_h_l164_c52_2124_0);

     -- Submodule level 2
     VAR_return_output := VAR_CONST_REF_RD_fixed_fixed_7f90_fixed_type_h_l164_c74_c84e_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
