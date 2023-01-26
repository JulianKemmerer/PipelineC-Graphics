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
entity uart_buttons_tx_0CLK_380ecc95 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in uart_buttons_tx_global_to_module_t;
 module_to_global : out uart_buttons_tx_module_to_global_t);
end uart_buttons_tx_0CLK_380ecc95;
architecture arch of uart_buttons_tx_0CLK_380ecc95 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal buttons_or_uart_reg : unsigned(3 downto 0) := to_unsigned(0, 4);
signal REG_COMB_buttons_or_uart_reg : unsigned(3 downto 0);

-- Each function instance gets signals
-- buttons_or_uart_reg_MUX[pipelinec_app_c_l140_c3_d2fe]
signal buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_cond : unsigned(0 downto 0);
signal buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iftrue : unsigned(3 downto 0);
signal buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iffalse : unsigned(3 downto 0);
signal buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[pipelinec_app_c_l144_c27_c467]
signal BIN_OP_OR_pipelinec_app_c_l144_c27_c467_left : unsigned(3 downto 0);
signal BIN_OP_OR_pipelinec_app_c_l144_c27_c467_right : unsigned(3 downto 0);
signal BIN_OP_OR_pipelinec_app_c_l144_c27_c467_return_output : unsigned(3 downto 0);

function CONST_REF_RD_uart_mac_s_uart_mac_s_1095( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return uart_mac_s is
 
  variable base : uart_mac_s; 
  variable return_output : uart_mac_s;
begin
      base.valid := ref_toks_0;
      base.data := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe
buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_cond,
buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iftrue,
buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iffalse,
buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_return_output);

-- BIN_OP_OR_pipelinec_app_c_l144_c27_c467
BIN_OP_OR_pipelinec_app_c_l144_c27_c467 : entity work.BIN_OP_OR_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_pipelinec_app_c_l144_c27_c467_left,
BIN_OP_OR_pipelinec_app_c_l144_c27_c467_right,
BIN_OP_OR_pipelinec_app_c_l144_c27_c467_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Registers
 buttons_or_uart_reg,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_return_output,
 BIN_OP_OR_pipelinec_app_c_l144_c27_c467_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_buttons_or_uart : unsigned(3 downto 0);
 variable VAR_uart_tx_mac_word_in : uart_mac_s;
 variable VAR_frame_clock_rising_edge : unsigned(0 downto 0);
 variable VAR_frame_clock_falling_edge : unsigned(0 downto 0);
 variable VAR_buttons : unsigned(3 downto 0);
 variable VAR_uart_buttons : unsigned(3 downto 0);
 variable VAR_uart_tx_mac_word_in_data_pipelinec_app_c_l135_c3_659c : unsigned(7 downto 0);
 variable VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iftrue : unsigned(3 downto 0);
 variable VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iffalse : unsigned(3 downto 0);
 variable VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_return_output : unsigned(3 downto 0);
 variable VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_pipelinec_app_c_l144_c27_c467_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_pipelinec_app_c_l144_c27_c467_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_pipelinec_app_c_l144_c27_c467_return_output : unsigned(3 downto 0);
 variable VAR_CONST_REF_RD_uart_mac_s_uart_mac_s_1095_pipelinec_app_c_l128_c6_cec9_return_output : uart_mac_s;
 -- State registers comb logic variables
variable REG_VAR_buttons_or_uart_reg : unsigned(3 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_buttons_or_uart_reg := buttons_or_uart_reg;
 -- Reads from global variables
     VAR_frame_clock_rising_edge := global_to_module.frame_clock_rising_edge;
     VAR_frame_clock_falling_edge := global_to_module.frame_clock_falling_edge;
     VAR_buttons := global_to_module.buttons;
     VAR_uart_buttons := global_to_module.uart_buttons;
     -- Submodule level 0
     VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_cond := VAR_frame_clock_falling_edge;
     VAR_BIN_OP_OR_pipelinec_app_c_l144_c27_c467_right := VAR_uart_buttons;
     VAR_BIN_OP_OR_pipelinec_app_c_l144_c27_c467_left := VAR_buttons;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;

     -- Submodule level 0
     VAR_buttons_or_uart := buttons_or_uart_reg;
     VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iffalse := buttons_or_uart_reg;
     VAR_uart_tx_mac_word_in_data_pipelinec_app_c_l135_c3_659c := resize(buttons_or_uart_reg, 8);
     -- BIN_OP_OR[pipelinec_app_c_l144_c27_c467] LATENCY=0
     -- Inputs
     BIN_OP_OR_pipelinec_app_c_l144_c27_c467_left <= VAR_BIN_OP_OR_pipelinec_app_c_l144_c27_c467_left;
     BIN_OP_OR_pipelinec_app_c_l144_c27_c467_right <= VAR_BIN_OP_OR_pipelinec_app_c_l144_c27_c467_right;
     -- Outputs
     VAR_BIN_OP_OR_pipelinec_app_c_l144_c27_c467_return_output := BIN_OP_OR_pipelinec_app_c_l144_c27_c467_return_output;

     -- CONST_REF_RD_uart_mac_s_uart_mac_s_1095[pipelinec_app_c_l128_c6_cec9] LATENCY=0
     VAR_CONST_REF_RD_uart_mac_s_uart_mac_s_1095_pipelinec_app_c_l128_c6_cec9_return_output := CONST_REF_RD_uart_mac_s_uart_mac_s_1095(
     VAR_frame_clock_rising_edge,
     VAR_uart_tx_mac_word_in_data_pipelinec_app_c_l135_c3_659c);

     -- Submodule level 1
     VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iftrue := VAR_BIN_OP_OR_pipelinec_app_c_l144_c27_c467_return_output;
     VAR_uart_tx_mac_word_in := VAR_CONST_REF_RD_uart_mac_s_uart_mac_s_1095_pipelinec_app_c_l128_c6_cec9_return_output;
     -- buttons_or_uart_reg_MUX[pipelinec_app_c_l140_c3_d2fe] LATENCY=0
     -- Inputs
     buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_cond <= VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_cond;
     buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iftrue <= VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iftrue;
     buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iffalse <= VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_iffalse;
     -- Outputs
     VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_return_output := buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_return_output;

     -- Submodule level 2
     REG_VAR_buttons_or_uart_reg := VAR_buttons_or_uart_reg_MUX_pipelinec_app_c_l140_c3_d2fe_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_buttons_or_uart_reg <= REG_VAR_buttons_or_uart_reg;
     -- Global wires driven various places in pipeline
     module_to_global.buttons_or_uart <= VAR_buttons_or_uart;
     module_to_global.uart_tx_mac_word_in <= VAR_uart_tx_mac_word_in;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     buttons_or_uart_reg <= REG_COMB_buttons_or_uart_reg;
 end if;
 end if;
end process;

end arch;
