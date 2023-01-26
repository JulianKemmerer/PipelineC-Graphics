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
-- Submodules: 3
entity round16_0CLK_a193dced is
port(
 x : in fixed;
 return_output : out signed(15 downto 0));
end round16_0CLK_a193dced;
architecture arch of round16_0CLK_a193dced is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- fixed_make_from_double[tr_pipelinec_gen_c_l161_c38_60d4]
signal fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_return_output : fixed;

-- fixed_add[tr_pipelinec_gen_c_l161_c25_21ce]
signal fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_left : fixed;
signal fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_right : fixed;
signal fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_return_output : fixed;

-- fixed_to_short[tr_pipelinec_gen_c_l161_c10_3378]
signal fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_a : fixed;
signal fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_return_output : signed(15 downto 0);


begin

-- SUBMODULE INSTANCES 
-- fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4
fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_a,
fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_return_output);

-- fixed_add_tr_pipelinec_gen_c_l161_c25_21ce
fixed_add_tr_pipelinec_gen_c_l161_c25_21ce : entity work.fixed_add_0CLK_6f2c5aad port map (
fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_left,
fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_right,
fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_return_output);

-- fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378
fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378 : entity work.fixed_to_short_0CLK_380ecc95 port map (
fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_a,
fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- All submodule outputs
 fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_return_output,
 fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_return_output,
 fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : signed(15 downto 0);
 variable VAR_x : fixed;
 variable VAR_fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_a : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_left : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_right : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_return_output : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_return_output : fixed;
 variable VAR_fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_return_output : signed(15 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_a := to_slv(to_float(0.5, 8, 14));
     -- fixed_make_from_double[tr_pipelinec_gen_c_l161_c38_60d4] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_return_output;

     -- Submodule level 1
     VAR_fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l161_c38_60d4_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     VAR_fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_left := VAR_x;
     -- fixed_add[tr_pipelinec_gen_c_l161_c25_21ce] LATENCY=0
     -- Inputs
     fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_left <= VAR_fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_left;
     fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_right <= VAR_fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_right;
     -- Outputs
     VAR_fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_return_output := fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_return_output;

     -- Submodule level 1
     VAR_fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_a := VAR_fixed_add_tr_pipelinec_gen_c_l161_c25_21ce_return_output;
     -- fixed_to_short[tr_pipelinec_gen_c_l161_c10_3378] LATENCY=0
     -- Inputs
     fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_a <= VAR_fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_a;
     -- Outputs
     VAR_fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_return_output := fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_return_output;

     -- Submodule level 2
     VAR_return_output := VAR_fixed_to_short_tr_pipelinec_gen_c_l161_c10_3378_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
