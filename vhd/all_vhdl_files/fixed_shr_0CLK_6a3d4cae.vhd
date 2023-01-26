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
entity fixed_shr_0CLK_6a3d4cae is
port(
 a : in fixed;
 shift : in signed(5 downto 0);
 return_output : out fixed);
end fixed_shr_0CLK_6a3d4cae;
architecture arch of fixed_shr_0CLK_6a3d4cae is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- fixed_shr_signed_char[tr_pipelinec_gen_c_l40_c10_ff00]
signal fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_left : fixed;
signal fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_right : signed(5 downto 0);
signal fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_return_output : fixed;


begin

-- SUBMODULE INSTANCES 
-- fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00
fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00 : entity work.fixed_shr_signed_char_0CLK_b5fe87e2 port map (
fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_left,
fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_right,
fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 a,
 shift,
 -- All submodule outputs
 fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_a : fixed;
 variable VAR_shift : signed(5 downto 0);
 variable VAR_fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_left : fixed;
 variable VAR_fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_right : signed(5 downto 0);
 variable VAR_fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_return_output : fixed;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_a := a;
     VAR_shift := shift;

     -- Submodule level 0
     VAR_fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_left := VAR_a;
     VAR_fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_right := VAR_shift;
     -- fixed_shr_signed_char[tr_pipelinec_gen_c_l40_c10_ff00] LATENCY=0
     -- Inputs
     fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_left <= VAR_fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_left;
     fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_right <= VAR_fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_right;
     -- Outputs
     VAR_fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_return_output := fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_return_output;

     -- Submodule level 1
     VAR_return_output := VAR_fixed_shr_signed_char_tr_pipelinec_gen_c_l40_c10_ff00_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
