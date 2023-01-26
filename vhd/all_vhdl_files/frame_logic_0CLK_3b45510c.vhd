-- Timing params:
--   Fixed?: True
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
entity frame_logic_0CLK_3b45510c is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in frame_logic_global_to_module_t;
 module_to_global : out frame_logic_module_to_global_t);
end frame_logic_0CLK_3b45510c;
architecture arch of frame_logic_0CLK_3b45510c is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal power_on_reset : unsigned(0 downto 0) := to_unsigned(1, 1);
signal state_reg : full_state_t := full_state_t_NULL;
signal REG_COMB_power_on_reset : unsigned(0 downto 0);
signal REG_COMB_state_reg : full_state_t;

-- Each function instance gets signals
-- get_user_input[pipelinec_app_c_l181_c21_69d9]
signal get_user_input_pipelinec_app_c_l181_c21_69d9_return_output : user_input_t;

-- BIN_OP_OR[pipelinec_app_c_l184_c38_c54b]
signal BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_left : unsigned(0 downto 0);
signal BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_right : unsigned(0 downto 0);
signal BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_return_output : unsigned(0 downto 0);

-- full_update[pipelinec_app_c_l184_c15_d166]
signal full_update_pipelinec_app_c_l184_c15_d166_state : full_state_t;
signal full_update_pipelinec_app_c_l184_c15_d166_reset : unsigned(0 downto 0);
signal full_update_pipelinec_app_c_l184_c15_d166_button_state : unsigned(0 downto 0);
signal full_update_pipelinec_app_c_l184_c15_d166_return_output : full_state_t;


begin

-- SUBMODULE INSTANCES 
-- get_user_input_pipelinec_app_c_l181_c21_69d9
get_user_input_pipelinec_app_c_l181_c21_69d9 : entity work.get_user_input_0CLK_380ecc95 port map (
global_to_module.get_user_input_pipelinec_app_c_l181_c21_69d9,
get_user_input_pipelinec_app_c_l181_c21_69d9_return_output);

-- BIN_OP_OR_pipelinec_app_c_l184_c38_c54b
BIN_OP_OR_pipelinec_app_c_l184_c38_c54b : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_left,
BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_right,
BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_return_output);

-- full_update_pipelinec_app_c_l184_c15_d166
full_update_pipelinec_app_c_l184_c15_d166 : entity work.full_update_0CLK_1832bdba port map (
full_update_pipelinec_app_c_l184_c15_d166_state,
full_update_pipelinec_app_c_l184_c15_d166_reset,
full_update_pipelinec_app_c_l184_c15_d166_button_state,
full_update_pipelinec_app_c_l184_c15_d166_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Registers
 power_on_reset,
 state_reg,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 get_user_input_pipelinec_app_c_l181_c21_69d9_return_output,
 BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_return_output,
 full_update_pipelinec_app_c_l184_c15_d166_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_state : full_state_t;
 variable VAR_ui : user_input_t;
 variable VAR_get_user_input_pipelinec_app_c_l181_c21_69d9_return_output : user_input_t;
 variable VAR_full_update_pipelinec_app_c_l184_c15_d166_state : full_state_t;
 variable VAR_full_update_pipelinec_app_c_l184_c15_d166_reset : unsigned(0 downto 0);
 variable VAR_full_update_pipelinec_app_c_l184_c15_d166_button_state : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_reset_pressed_d41d_pipelinec_app_c_l184_c38_1cdb_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_user_input_t_jump_pressed_d41d_pipelinec_app_c_l184_c73_1ef6_return_output : unsigned(0 downto 0);
 variable VAR_full_update_pipelinec_app_c_l184_c15_d166_return_output : full_state_t;
 -- State registers comb logic variables
variable REG_VAR_power_on_reset : unsigned(0 downto 0);
variable REG_VAR_state_reg : full_state_t;
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_power_on_reset := power_on_reset;
  REG_VAR_state_reg := state_reg;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     REG_VAR_power_on_reset := to_unsigned(0, 1);
     VAR_BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_right := power_on_reset;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;

     -- Submodule level 0
     VAR_full_update_pipelinec_app_c_l184_c15_d166_state := state_reg;
     VAR_state := state_reg;
     -- get_user_input[pipelinec_app_c_l181_c21_69d9] LATENCY=0
     -- Inputs
     -- Outputs
     VAR_get_user_input_pipelinec_app_c_l181_c21_69d9_return_output := get_user_input_pipelinec_app_c_l181_c21_69d9_return_output;

     -- Submodule level 1
     -- CONST_REF_RD_uint1_t_user_input_t_reset_pressed_d41d[pipelinec_app_c_l184_c38_1cdb] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_reset_pressed_d41d_pipelinec_app_c_l184_c38_1cdb_return_output := VAR_get_user_input_pipelinec_app_c_l181_c21_69d9_return_output.reset_pressed;

     -- CONST_REF_RD_uint1_t_user_input_t_jump_pressed_d41d[pipelinec_app_c_l184_c73_1ef6] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_user_input_t_jump_pressed_d41d_pipelinec_app_c_l184_c73_1ef6_return_output := VAR_get_user_input_pipelinec_app_c_l181_c21_69d9_return_output.jump_pressed;

     -- Submodule level 2
     VAR_full_update_pipelinec_app_c_l184_c15_d166_button_state := VAR_CONST_REF_RD_uint1_t_user_input_t_jump_pressed_d41d_pipelinec_app_c_l184_c73_1ef6_return_output;
     VAR_BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_left := VAR_CONST_REF_RD_uint1_t_user_input_t_reset_pressed_d41d_pipelinec_app_c_l184_c38_1cdb_return_output;
     -- BIN_OP_OR[pipelinec_app_c_l184_c38_c54b] LATENCY=0
     -- Inputs
     BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_left <= VAR_BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_left;
     BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_right <= VAR_BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_right;
     -- Outputs
     VAR_BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_return_output := BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_return_output;

     -- Submodule level 3
     VAR_full_update_pipelinec_app_c_l184_c15_d166_reset := VAR_BIN_OP_OR_pipelinec_app_c_l184_c38_c54b_return_output;
     -- full_update[pipelinec_app_c_l184_c15_d166] LATENCY=0
     -- Inputs
     full_update_pipelinec_app_c_l184_c15_d166_state <= VAR_full_update_pipelinec_app_c_l184_c15_d166_state;
     full_update_pipelinec_app_c_l184_c15_d166_reset <= VAR_full_update_pipelinec_app_c_l184_c15_d166_reset;
     full_update_pipelinec_app_c_l184_c15_d166_button_state <= VAR_full_update_pipelinec_app_c_l184_c15_d166_button_state;
     -- Outputs
     VAR_full_update_pipelinec_app_c_l184_c15_d166_return_output := full_update_pipelinec_app_c_l184_c15_d166_return_output;

     -- Submodule level 4
     REG_VAR_state_reg := VAR_full_update_pipelinec_app_c_l184_c15_d166_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_power_on_reset <= REG_VAR_power_on_reset;
REG_COMB_state_reg <= REG_VAR_state_reg;
     -- Global wires driven various places in pipeline
     module_to_global.state <= VAR_state;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     power_on_reset <= REG_COMB_power_on_reset;
     state_reg <= REG_COMB_state_reg;
 end if;
 end if;
end process;

end arch;
