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
-- Submodules: 1
entity uart_buttons_rx_0CLK_380ecc95 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in uart_buttons_rx_global_to_module_t;
 module_to_global : out uart_buttons_rx_module_to_global_t);
end uart_buttons_rx_0CLK_380ecc95;
architecture arch of uart_buttons_rx_0CLK_380ecc95 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal uart_buttons_reg : unsigned(3 downto 0) := to_unsigned(0, 4);
signal REG_COMB_uart_buttons_reg : unsigned(3 downto 0);

-- Each function instance gets signals
-- uart_buttons_reg_MUX[pipelinec_app_c_l117_c3_2cec]
signal uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_cond : unsigned(0 downto 0);
signal uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iftrue : unsigned(3 downto 0);
signal uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iffalse : unsigned(3 downto 0);
signal uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_return_output : unsigned(3 downto 0);


begin

-- SUBMODULE INSTANCES 
-- uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec
uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_cond,
uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iftrue,
uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iffalse,
uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Registers
 uart_buttons_reg,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_buttons : unsigned(3 downto 0);
 variable VAR_uart_rx_mac_out_ready : unsigned(0 downto 0);
 variable VAR_uart_rx_mac_word_out : uart_mac_s;
 variable VAR_CONST_REF_RD_uint1_t_uart_mac_s_valid_d41d_pipelinec_app_c_l117_c6_c892_return_output : unsigned(0 downto 0);
 variable VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iftrue : unsigned(3 downto 0);
 variable VAR_uart_buttons_reg_pipelinec_app_c_l119_c5_f051 : unsigned(3 downto 0);
 variable VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iffalse : unsigned(3 downto 0);
 variable VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_return_output : unsigned(3 downto 0);
 variable VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_pipelinec_app_c_l119_c24_95ea_return_output : unsigned(7 downto 0);
 -- State registers comb logic variables
variable REG_VAR_uart_buttons_reg : unsigned(3 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_uart_buttons_reg := uart_buttons_reg;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_uart_rx_mac_out_ready := to_unsigned(1, 1);
 -- Reads from global variables
     VAR_uart_rx_mac_word_out := global_to_module.uart_rx_mac_word_out;
     -- Submodule level 0
     -- CONST_REF_RD_uint1_t_uart_mac_s_valid_d41d[pipelinec_app_c_l117_c6_c892] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_mac_s_valid_d41d_pipelinec_app_c_l117_c6_c892_return_output := VAR_uart_rx_mac_word_out.valid;

     -- CONST_REF_RD_uint8_t_uart_mac_s_data_d41d[pipelinec_app_c_l119_c24_95ea] LATENCY=0
     VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_pipelinec_app_c_l119_c24_95ea_return_output := VAR_uart_rx_mac_word_out.data;

     -- Submodule level 1
     VAR_uart_buttons_reg_pipelinec_app_c_l119_c5_f051 := resize(VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_pipelinec_app_c_l119_c24_95ea_return_output, 4);
     VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iftrue := VAR_uart_buttons_reg_pipelinec_app_c_l119_c5_f051;
     VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_cond := VAR_CONST_REF_RD_uint1_t_uart_mac_s_valid_d41d_pipelinec_app_c_l117_c6_c892_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;

     -- Submodule level 0
     VAR_uart_buttons := uart_buttons_reg;
     VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iffalse := uart_buttons_reg;
     -- uart_buttons_reg_MUX[pipelinec_app_c_l117_c3_2cec] LATENCY=0
     -- Inputs
     uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_cond <= VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_cond;
     uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iftrue <= VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iftrue;
     uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iffalse <= VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_iffalse;
     -- Outputs
     VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_return_output := uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_return_output;

     -- Submodule level 1
     REG_VAR_uart_buttons_reg := VAR_uart_buttons_reg_MUX_pipelinec_app_c_l117_c3_2cec_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_uart_buttons_reg <= REG_VAR_uart_buttons_reg;
     -- Global wires driven various places in pipeline
     module_to_global.uart_buttons <= VAR_uart_buttons;
     module_to_global.uart_rx_mac_out_ready <= VAR_uart_rx_mac_out_ready;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     uart_buttons_reg <= REG_COMB_uart_buttons_reg;
 end if;
 end if;
end process;

end arch;
