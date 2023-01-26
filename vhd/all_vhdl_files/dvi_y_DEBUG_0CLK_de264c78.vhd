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
use work.global_wires_pkg.all;
-- Submodules: 0
entity dvi_y_DEBUG_0CLK_de264c78 is
port(
 global_to_module : in dvi_y_DEBUG_global_to_module_t;
 return_output : out unsigned(11 downto 0));
end dvi_y_DEBUG_0CLK_de264c78;
architecture arch of dvi_y_DEBUG_0CLK_de264c78 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

begin



-- Combinatorial process for pipeline stages
process (
 -- Clock cross input
 global_to_module)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(11 downto 0);
 variable VAR_dvi_y : unsigned(11 downto 0);
begin
 -- Reads from global variables
     VAR_dvi_y := global_to_module.dvi_y;
     -- Submodule level 0
     VAR_return_output := VAR_dvi_y;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then

     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
