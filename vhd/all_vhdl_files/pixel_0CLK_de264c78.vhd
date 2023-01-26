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
entity pixel_0CLK_de264c78 is
port(
 module_to_global : out pixel_module_to_global_t;
 clock : in unsigned(0 downto 0));
end pixel_0CLK_de264c78;
architecture arch of pixel_0CLK_de264c78 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

begin



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 clock)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_clock : unsigned(0 downto 0);
 variable VAR_pixel_clock : unsigned(0 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_clock := clock;

     -- Submodule level 0
     VAR_pixel_clock := VAR_clock;
   end if;
 end loop;

     -- Global wires driven various places in pipeline
     module_to_global.pixel_clock <= VAR_pixel_clock;
end process;

end arch;
