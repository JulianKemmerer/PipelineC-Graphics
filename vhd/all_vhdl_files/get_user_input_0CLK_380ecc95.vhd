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
-- Submodules: 3
entity get_user_input_0CLK_380ecc95 is
port(
 global_to_module : in get_user_input_global_to_module_t;
 return_output : out user_input_t);
end get_user_input_0CLK_380ecc95;
architecture arch of get_user_input_0CLK_380ecc95 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- CONST_SR_0[pipelinec_app_c_l160_c20_c53b]
signal CONST_SR_0_pipelinec_app_c_l160_c20_c53b_x : unsigned(3 downto 0);
signal CONST_SR_0_pipelinec_app_c_l160_c20_c53b_return_output : unsigned(3 downto 0);

-- CONST_SR_3[pipelinec_app_c_l161_c21_6f3a]
signal CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_x : unsigned(3 downto 0);
signal CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_return_output : unsigned(3 downto 0);

function CONST_REF_RD_user_input_t_user_input_t_7b30( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return user_input_t is
 
  variable base : user_input_t; 
  variable return_output : user_input_t;
begin
      base.jump_pressed := ref_toks_0;
      base.reset_pressed := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SR_0_pipelinec_app_c_l160_c20_c53b
CONST_SR_0_pipelinec_app_c_l160_c20_c53b : entity work.CONST_SR_0_uint4_t_0CLK_de264c78 port map (
CONST_SR_0_pipelinec_app_c_l160_c20_c53b_x,
CONST_SR_0_pipelinec_app_c_l160_c20_c53b_return_output);

-- CONST_SR_3_pipelinec_app_c_l161_c21_6f3a
CONST_SR_3_pipelinec_app_c_l161_c21_6f3a : entity work.CONST_SR_3_uint4_t_0CLK_de264c78 port map (
CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_x,
CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 CONST_SR_0_pipelinec_app_c_l160_c20_c53b_return_output,
 CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : user_input_t;
 variable VAR_buttons_or_uart : unsigned(3 downto 0);
 variable VAR_i : user_input_t;
 variable VAR_i_jump_pressed_pipelinec_app_c_l160_c3_92fc : unsigned(0 downto 0);
 variable VAR_CONST_SR_0_pipelinec_app_c_l160_c20_c53b_return_output : unsigned(3 downto 0);
 variable VAR_CONST_SR_0_pipelinec_app_c_l160_c20_c53b_x : unsigned(3 downto 0);
 variable VAR_i_reset_pressed_pipelinec_app_c_l161_c3_0382 : unsigned(0 downto 0);
 variable VAR_CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_return_output : unsigned(3 downto 0);
 variable VAR_CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_x : unsigned(3 downto 0);
 variable VAR_CONST_REF_RD_user_input_t_user_input_t_7b30_pipelinec_app_c_l167_c10_618d_return_output : user_input_t;
begin
 -- Reads from global variables
     VAR_buttons_or_uart := global_to_module.buttons_or_uart;
     -- Submodule level 0
     VAR_CONST_SR_0_pipelinec_app_c_l160_c20_c53b_x := VAR_buttons_or_uart;
     VAR_CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_x := VAR_buttons_or_uart;
     -- CONST_SR_0[pipelinec_app_c_l160_c20_c53b] LATENCY=0
     -- Inputs
     CONST_SR_0_pipelinec_app_c_l160_c20_c53b_x <= VAR_CONST_SR_0_pipelinec_app_c_l160_c20_c53b_x;
     -- Outputs
     VAR_CONST_SR_0_pipelinec_app_c_l160_c20_c53b_return_output := CONST_SR_0_pipelinec_app_c_l160_c20_c53b_return_output;

     -- CONST_SR_3[pipelinec_app_c_l161_c21_6f3a] LATENCY=0
     -- Inputs
     CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_x <= VAR_CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_x;
     -- Outputs
     VAR_CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_return_output := CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_return_output;

     -- Submodule level 1
     VAR_i_reset_pressed_pipelinec_app_c_l161_c3_0382 := resize(VAR_CONST_SR_3_pipelinec_app_c_l161_c21_6f3a_return_output, 1);
     VAR_i_jump_pressed_pipelinec_app_c_l160_c3_92fc := resize(VAR_CONST_SR_0_pipelinec_app_c_l160_c20_c53b_return_output, 1);
     -- CONST_REF_RD_user_input_t_user_input_t_7b30[pipelinec_app_c_l167_c10_618d] LATENCY=0
     VAR_CONST_REF_RD_user_input_t_user_input_t_7b30_pipelinec_app_c_l167_c10_618d_return_output := CONST_REF_RD_user_input_t_user_input_t_7b30(
     VAR_i_jump_pressed_pipelinec_app_c_l160_c3_92fc,
     VAR_i_reset_pressed_pipelinec_app_c_l161_c3_0382);

     -- Submodule level 2
     VAR_return_output := VAR_CONST_REF_RD_user_input_t_user_input_t_7b30_pipelinec_app_c_l167_c10_618d_return_output;

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
