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
entity fixed_to_short_0CLK_380ecc95 is
port(
 a : in fixed;
 return_output : out signed(15 downto 0));
end fixed_to_short_0CLK_380ecc95;
architecture arch of fixed_to_short_0CLK_380ecc95 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_10[fixed_type_h_l170_c52_165e]
signal CONST_SR_10_fixed_type_h_l170_c52_165e_x : signed(21 downto 0);
signal CONST_SR_10_fixed_type_h_l170_c52_165e_return_output : signed(21 downto 0);

function CAST_TO_int16_t_int22_t( rhs : signed) return signed is

  --variable rhs : signed(21 downto 0);
  variable return_output : signed(15 downto 0);

begin

      return_output := signed(std_logic_vector(resize(rhs,16)));
    return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SR_10_fixed_type_h_l170_c52_165e
CONST_SR_10_fixed_type_h_l170_c52_165e : entity work.CONST_SR_10_int22_t_0CLK_de264c78 port map (
CONST_SR_10_fixed_type_h_l170_c52_165e_x,
CONST_SR_10_fixed_type_h_l170_c52_165e_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 a,
 -- All submodule outputs
 CONST_SR_10_fixed_type_h_l170_c52_165e_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : signed(15 downto 0);
 variable VAR_a : fixed;
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l170_c52_e729_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_10_fixed_type_h_l170_c52_165e_return_output : signed(21 downto 0);
 variable VAR_CONST_SR_10_fixed_type_h_l170_c52_165e_x : signed(21 downto 0);
 variable VAR_CAST_TO_int16_t_fixed_type_h_l170_c42_a5ce_return_output : signed(15 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_a := a;

     -- Submodule level 0
     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l170_c52_e729] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l170_c52_e729_return_output := VAR_a.f;

     -- Submodule level 1
     VAR_CONST_SR_10_fixed_type_h_l170_c52_165e_x := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l170_c52_e729_return_output;
     -- CONST_SR_10[fixed_type_h_l170_c52_165e] LATENCY=0
     -- Inputs
     CONST_SR_10_fixed_type_h_l170_c52_165e_x <= VAR_CONST_SR_10_fixed_type_h_l170_c52_165e_x;
     -- Outputs
     VAR_CONST_SR_10_fixed_type_h_l170_c52_165e_return_output := CONST_SR_10_fixed_type_h_l170_c52_165e_return_output;

     -- Submodule level 2
     -- CAST_TO_int16_t[fixed_type_h_l170_c42_a5ce] LATENCY=0
     VAR_CAST_TO_int16_t_fixed_type_h_l170_c42_a5ce_return_output := CAST_TO_int16_t_int22_t(
     VAR_CONST_SR_10_fixed_type_h_l170_c52_165e_return_output);

     -- Submodule level 3
     VAR_return_output := VAR_CAST_TO_int16_t_fixed_type_h_l170_c42_a5ce_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
