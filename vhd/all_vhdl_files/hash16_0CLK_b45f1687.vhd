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
entity hash16_0CLK_b45f1687 is
port(
 v : in unsigned(15 downto 0);
 return_output : out unsigned(15 downto 0));
end hash16_0CLK_b45f1687;
architecture arch of hash16_0CLK_b45f1687 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l166_c10_4fcf]
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_left : unsigned(15 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_right : unsigned(15 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_return_output : unsigned(31 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf : entity work.BIN_OP_INFERRED_MULT_uint16_t_uint16_t_0CLK_de264c78 port map (
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_left,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_right,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 v,
 -- All submodule outputs
 BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(15 downto 0);
 variable VAR_v : unsigned(15 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_return_output : unsigned(31 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_right := to_unsigned(40503, 16);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_v := v;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_left := VAR_v;
     -- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l166_c10_4fcf] LATENCY=0
     -- Inputs
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_left;
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_right <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_right;
     -- Outputs
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_return_output := BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_return_output;

     -- Submodule level 1
     VAR_return_output := resize(VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l166_c10_4fcf_return_output, 16);
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
