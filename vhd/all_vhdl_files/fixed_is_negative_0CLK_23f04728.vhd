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
entity fixed_is_negative_0CLK_23f04728 is
port(
 x : in fixed;
 return_output : out unsigned(0 downto 0));
end fixed_is_negative_0CLK_23f04728;
architecture arch of fixed_is_negative_0CLK_23f04728 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_LT[tr_pipelinec_gen_c_l50_c10_05db]
signal BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_left : signed(21 downto 0);
signal BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_right : signed(1 downto 0);
signal BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db
BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db : entity work.BIN_OP_LT_int22_t_int2_t_0CLK_de264c78 port map (
BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_left,
BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_right,
BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- All submodule outputs
 BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_x : fixed;
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_tr_pipelinec_gen_c_l50_c10_7240_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_left : signed(21 downto 0);
 variable VAR_BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_right : signed(1 downto 0);
 variable VAR_BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_right := signed(std_logic_vector(resize(to_unsigned(0, 1), 2)));

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     -- CONST_REF_RD_int22_t_fixed_f_d41d[tr_pipelinec_gen_c_l50_c10_7240] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_tr_pipelinec_gen_c_l50_c10_7240_return_output := VAR_x.f;

     -- Submodule level 1
     VAR_BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_left := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_tr_pipelinec_gen_c_l50_c10_7240_return_output;
     -- BIN_OP_LT[tr_pipelinec_gen_c_l50_c10_05db] LATENCY=0
     -- Inputs
     BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_left <= VAR_BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_left;
     BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_right <= VAR_BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_right;
     -- Outputs
     VAR_BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_return_output := BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_return_output;

     -- Submodule level 2
     VAR_return_output := VAR_BIN_OP_LT_tr_pipelinec_gen_c_l50_c10_05db_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
