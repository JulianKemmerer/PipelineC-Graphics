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
-- Submodules: 45
entity uart_rx_mac_0CLK_b7ac2955 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in uart_rx_mac_global_to_module_t;
 module_to_global : out uart_rx_mac_module_to_global_t);
end uart_rx_mac_0CLK_b7ac2955;
architecture arch of uart_rx_mac_0CLK_b7ac2955 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal state : uart_rx_mac_state_t := uart_rx_mac_state_t'left;
signal clk_counter : unsigned(15 downto 0) := to_unsigned(0, 16);
signal bit_counter : unsigned(3 downto 0) := to_unsigned(0, 4);
signal REG_COMB_state : uart_rx_mac_state_t;
signal REG_COMB_clk_counter : unsigned(15 downto 0);
signal REG_COMB_bit_counter : unsigned(3 downto 0);

-- Each function instance gets signals
-- BIN_OP_EQ[uart_mac_c_l58_c6_6e6e]
signal BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_c_l58_c3_76be]
signal bit_counter_MUX_uart_mac_c_l58_c3_76be_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_c_l58_c3_76be_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l58_c3_76be_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l58_c3_76be_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_c_l58_c3_76be]
signal clk_counter_MUX_uart_mac_c_l58_c3_76be_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l58_c3_76be_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l58_c3_76be_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l58_c3_76be_return_output : unsigned(15 downto 0);

-- data_sample_valid_MUX[uart_mac_c_l58_c3_76be]
signal data_sample_valid_MUX_uart_mac_c_l58_c3_76be_cond : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iftrue : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iffalse : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l58_c3_76be_return_output : unsigned(0 downto 0);

-- data_sample_MUX[uart_mac_c_l58_c3_76be]
signal data_sample_MUX_uart_mac_c_l58_c3_76be_cond : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l58_c3_76be_iftrue : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l58_c3_76be_iffalse : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l58_c3_76be_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_c_l58_c3_76be]
signal state_MUX_uart_mac_c_l58_c3_76be_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l58_c3_76be_iftrue : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l58_c3_76be_iffalse : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l58_c3_76be_return_output : uart_rx_mac_state_t;

-- BIN_OP_EQ[uart_mac_c_l61_c8_678f]
signal BIN_OP_EQ_uart_mac_c_l61_c8_678f_left : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_c_l61_c8_678f_right : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_c_l61_c8_678f_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_c_l61_c5_e61f]
signal clk_counter_MUX_uart_mac_c_l61_c5_e61f_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l61_c5_e61f_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l61_c5_e61f_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l61_c5_e61f_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_c_l61_c5_e61f]
signal state_MUX_uart_mac_c_l61_c5_e61f_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l61_c5_e61f_iftrue : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l61_c5_e61f_iffalse : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l61_c5_e61f_return_output : uart_rx_mac_state_t;

-- BIN_OP_EQ[uart_mac_c_l68_c11_da59]
signal BIN_OP_EQ_uart_mac_c_l68_c11_da59_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l68_c11_da59_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_c_l68_c8_5107]
signal bit_counter_MUX_uart_mac_c_l68_c8_5107_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_c_l68_c8_5107_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l68_c8_5107_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l68_c8_5107_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_c_l68_c8_5107]
signal clk_counter_MUX_uart_mac_c_l68_c8_5107_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l68_c8_5107_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l68_c8_5107_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l68_c8_5107_return_output : unsigned(15 downto 0);

-- data_sample_valid_MUX[uart_mac_c_l68_c8_5107]
signal data_sample_valid_MUX_uart_mac_c_l68_c8_5107_cond : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iftrue : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iffalse : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l68_c8_5107_return_output : unsigned(0 downto 0);

-- data_sample_MUX[uart_mac_c_l68_c8_5107]
signal data_sample_MUX_uart_mac_c_l68_c8_5107_cond : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l68_c8_5107_iftrue : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l68_c8_5107_iffalse : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l68_c8_5107_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_c_l68_c8_5107]
signal state_MUX_uart_mac_c_l68_c8_5107_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l68_c8_5107_iftrue : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l68_c8_5107_iffalse : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l68_c8_5107_return_output : uart_rx_mac_state_t;

-- BIN_OP_EQ[uart_mac_c_l71_c8_ce83]
signal BIN_OP_EQ_uart_mac_c_l71_c8_ce83_left : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_c_l71_c8_ce83_right : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_c_l71_c8_ce83_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_c_l71_c5_2e81]
signal bit_counter_MUX_uart_mac_c_l71_c5_2e81_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l71_c5_2e81_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_c_l71_c5_2e81]
signal clk_counter_MUX_uart_mac_c_l71_c5_2e81_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l71_c5_2e81_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_c_l71_c5_2e81]
signal state_MUX_uart_mac_c_l71_c5_2e81_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l71_c5_2e81_iftrue : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l71_c5_2e81_iffalse : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l71_c5_2e81_return_output : uart_rx_mac_state_t;

-- BIN_OP_PLUS[uart_mac_c_l74_c7_37ee]
signal BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_c_l75_c10_f1cc]
signal BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_c_l75_c7_2f7d]
signal bit_counter_MUX_uart_mac_c_l75_c7_2f7d_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_c_l75_c7_2f7d]
signal clk_counter_MUX_uart_mac_c_l75_c7_2f7d_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_c_l75_c7_2f7d]
signal state_MUX_uart_mac_c_l75_c7_2f7d_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l75_c7_2f7d_iftrue : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l75_c7_2f7d_iffalse : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l75_c7_2f7d_return_output : uart_rx_mac_state_t;

-- BIN_OP_EQ[uart_mac_c_l84_c11_6cfb]
signal BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_c_l84_c8_8deb]
signal bit_counter_MUX_uart_mac_c_l84_c8_8deb_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l84_c8_8deb_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_c_l84_c8_8deb]
signal clk_counter_MUX_uart_mac_c_l84_c8_8deb_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l84_c8_8deb_return_output : unsigned(15 downto 0);

-- data_sample_valid_MUX[uart_mac_c_l84_c8_8deb]
signal data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_cond : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iftrue : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iffalse : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_return_output : unsigned(0 downto 0);

-- data_sample_MUX[uart_mac_c_l84_c8_8deb]
signal data_sample_MUX_uart_mac_c_l84_c8_8deb_cond : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l84_c8_8deb_iftrue : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l84_c8_8deb_iffalse : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l84_c8_8deb_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_c_l84_c8_8deb]
signal state_MUX_uart_mac_c_l84_c8_8deb_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l84_c8_8deb_iftrue : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l84_c8_8deb_iffalse : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l84_c8_8deb_return_output : uart_rx_mac_state_t;

-- BIN_OP_PLUS[uart_mac_c_l87_c5_e75a]
signal BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_c_l88_c8_778e]
signal BIN_OP_GTE_uart_mac_c_l88_c8_778e_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_c_l88_c8_778e_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_c_l88_c5_eb15]
signal bit_counter_MUX_uart_mac_c_l88_c5_eb15_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l88_c5_eb15_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_c_l88_c5_eb15]
signal clk_counter_MUX_uart_mac_c_l88_c5_eb15_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l88_c5_eb15_return_output : unsigned(15 downto 0);

-- data_sample_valid_MUX[uart_mac_c_l88_c5_eb15]
signal data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_cond : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iftrue : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iffalse : unsigned(0 downto 0);
signal data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_return_output : unsigned(0 downto 0);

-- data_sample_MUX[uart_mac_c_l88_c5_eb15]
signal data_sample_MUX_uart_mac_c_l88_c5_eb15_cond : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l88_c5_eb15_iftrue : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l88_c5_eb15_iffalse : unsigned(0 downto 0);
signal data_sample_MUX_uart_mac_c_l88_c5_eb15_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_c_l88_c5_eb15]
signal state_MUX_uart_mac_c_l88_c5_eb15_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l88_c5_eb15_iftrue : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l88_c5_eb15_iffalse : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l88_c5_eb15_return_output : uart_rx_mac_state_t;

-- BIN_OP_PLUS[uart_mac_c_l96_c7_774e]
signal BIN_OP_PLUS_uart_mac_c_l96_c7_774e_left : unsigned(3 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l96_c7_774e_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l96_c7_774e_return_output : unsigned(4 downto 0);

-- BIN_OP_EQ[uart_mac_c_l99_c10_aae6]
signal BIN_OP_EQ_uart_mac_c_l99_c10_aae6_left : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_c_l99_c10_aae6_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_c_l99_c10_aae6_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_c_l99_c7_1427]
signal state_MUX_uart_mac_c_l99_c7_1427_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l99_c7_1427_iftrue : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l99_c7_1427_iffalse : uart_rx_mac_state_t;
signal state_MUX_uart_mac_c_l99_c7_1427_return_output : uart_rx_mac_state_t;

-- uart_deserializer[uart_mac_c_l108_c33_53fb]
signal uart_deserializer_uart_mac_c_l108_c33_53fb_CLOCK_ENABLE : unsigned(0 downto 0);
signal uart_deserializer_uart_mac_c_l108_c33_53fb_in_data : unsigned(0 downto 0);
signal uart_deserializer_uart_mac_c_l108_c33_53fb_in_data_valid : unsigned(0 downto 0);
signal uart_deserializer_uart_mac_c_l108_c33_53fb_out_data_ready : unsigned(0 downto 0);
signal uart_deserializer_uart_mac_c_l108_c33_53fb_return_output : uart_deserializer_o_t;

-- UNARY_OP_NOT[uart_mac_c_l111_c35_fb8c]
signal UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_c_l111_c14_d97e]
signal BIN_OP_AND_uart_mac_c_l111_c14_d97e_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_c_l111_c14_d97e_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_c_l111_c14_d97e_return_output : unsigned(0 downto 0);

function uint1_array8_le( x : uint1_t_8) return unsigned is

  --variable x : uint1_t_8;
  variable return_output : unsigned(7 downto 0);

begin
return_output := x(7)&x(6)&x(5)&x(4)&x(3)&x(2)&x(1)&x(0);
return return_output;
end function;

function CONST_REF_RD_uart_mac_s_uart_mac_s_42b0( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return uart_mac_s is
 
  variable base : uart_mac_s; 
  variable return_output : uart_mac_s;
begin
      base.data := ref_toks_0;
      base.valid := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_uart_mac_c_l58_c6_6e6e
BIN_OP_EQ_uart_mac_c_l58_c6_6e6e : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_left,
BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_right,
BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output);

-- bit_counter_MUX_uart_mac_c_l58_c3_76be
bit_counter_MUX_uart_mac_c_l58_c3_76be : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_c_l58_c3_76be_cond,
bit_counter_MUX_uart_mac_c_l58_c3_76be_iftrue,
bit_counter_MUX_uart_mac_c_l58_c3_76be_iffalse,
bit_counter_MUX_uart_mac_c_l58_c3_76be_return_output);

-- clk_counter_MUX_uart_mac_c_l58_c3_76be
clk_counter_MUX_uart_mac_c_l58_c3_76be : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l58_c3_76be_cond,
clk_counter_MUX_uart_mac_c_l58_c3_76be_iftrue,
clk_counter_MUX_uart_mac_c_l58_c3_76be_iffalse,
clk_counter_MUX_uart_mac_c_l58_c3_76be_return_output);

-- data_sample_valid_MUX_uart_mac_c_l58_c3_76be
data_sample_valid_MUX_uart_mac_c_l58_c3_76be : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_sample_valid_MUX_uart_mac_c_l58_c3_76be_cond,
data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iftrue,
data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iffalse,
data_sample_valid_MUX_uart_mac_c_l58_c3_76be_return_output);

-- data_sample_MUX_uart_mac_c_l58_c3_76be
data_sample_MUX_uart_mac_c_l58_c3_76be : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_sample_MUX_uart_mac_c_l58_c3_76be_cond,
data_sample_MUX_uart_mac_c_l58_c3_76be_iftrue,
data_sample_MUX_uart_mac_c_l58_c3_76be_iffalse,
data_sample_MUX_uart_mac_c_l58_c3_76be_return_output);

-- state_MUX_uart_mac_c_l58_c3_76be
state_MUX_uart_mac_c_l58_c3_76be : entity work.MUX_uint1_t_uart_rx_mac_state_t_uart_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l58_c3_76be_cond,
state_MUX_uart_mac_c_l58_c3_76be_iftrue,
state_MUX_uart_mac_c_l58_c3_76be_iffalse,
state_MUX_uart_mac_c_l58_c3_76be_return_output);

-- BIN_OP_EQ_uart_mac_c_l61_c8_678f
BIN_OP_EQ_uart_mac_c_l61_c8_678f : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l61_c8_678f_left,
BIN_OP_EQ_uart_mac_c_l61_c8_678f_right,
BIN_OP_EQ_uart_mac_c_l61_c8_678f_return_output);

-- clk_counter_MUX_uart_mac_c_l61_c5_e61f
clk_counter_MUX_uart_mac_c_l61_c5_e61f : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l61_c5_e61f_cond,
clk_counter_MUX_uart_mac_c_l61_c5_e61f_iftrue,
clk_counter_MUX_uart_mac_c_l61_c5_e61f_iffalse,
clk_counter_MUX_uart_mac_c_l61_c5_e61f_return_output);

-- state_MUX_uart_mac_c_l61_c5_e61f
state_MUX_uart_mac_c_l61_c5_e61f : entity work.MUX_uint1_t_uart_rx_mac_state_t_uart_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l61_c5_e61f_cond,
state_MUX_uart_mac_c_l61_c5_e61f_iftrue,
state_MUX_uart_mac_c_l61_c5_e61f_iffalse,
state_MUX_uart_mac_c_l61_c5_e61f_return_output);

-- BIN_OP_EQ_uart_mac_c_l68_c11_da59
BIN_OP_EQ_uart_mac_c_l68_c11_da59 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l68_c11_da59_left,
BIN_OP_EQ_uart_mac_c_l68_c11_da59_right,
BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output);

-- bit_counter_MUX_uart_mac_c_l68_c8_5107
bit_counter_MUX_uart_mac_c_l68_c8_5107 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_c_l68_c8_5107_cond,
bit_counter_MUX_uart_mac_c_l68_c8_5107_iftrue,
bit_counter_MUX_uart_mac_c_l68_c8_5107_iffalse,
bit_counter_MUX_uart_mac_c_l68_c8_5107_return_output);

-- clk_counter_MUX_uart_mac_c_l68_c8_5107
clk_counter_MUX_uart_mac_c_l68_c8_5107 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l68_c8_5107_cond,
clk_counter_MUX_uart_mac_c_l68_c8_5107_iftrue,
clk_counter_MUX_uart_mac_c_l68_c8_5107_iffalse,
clk_counter_MUX_uart_mac_c_l68_c8_5107_return_output);

-- data_sample_valid_MUX_uart_mac_c_l68_c8_5107
data_sample_valid_MUX_uart_mac_c_l68_c8_5107 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_sample_valid_MUX_uart_mac_c_l68_c8_5107_cond,
data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iftrue,
data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iffalse,
data_sample_valid_MUX_uart_mac_c_l68_c8_5107_return_output);

-- data_sample_MUX_uart_mac_c_l68_c8_5107
data_sample_MUX_uart_mac_c_l68_c8_5107 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_sample_MUX_uart_mac_c_l68_c8_5107_cond,
data_sample_MUX_uart_mac_c_l68_c8_5107_iftrue,
data_sample_MUX_uart_mac_c_l68_c8_5107_iffalse,
data_sample_MUX_uart_mac_c_l68_c8_5107_return_output);

-- state_MUX_uart_mac_c_l68_c8_5107
state_MUX_uart_mac_c_l68_c8_5107 : entity work.MUX_uint1_t_uart_rx_mac_state_t_uart_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l68_c8_5107_cond,
state_MUX_uart_mac_c_l68_c8_5107_iftrue,
state_MUX_uart_mac_c_l68_c8_5107_iffalse,
state_MUX_uart_mac_c_l68_c8_5107_return_output);

-- BIN_OP_EQ_uart_mac_c_l71_c8_ce83
BIN_OP_EQ_uart_mac_c_l71_c8_ce83 : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l71_c8_ce83_left,
BIN_OP_EQ_uart_mac_c_l71_c8_ce83_right,
BIN_OP_EQ_uart_mac_c_l71_c8_ce83_return_output);

-- bit_counter_MUX_uart_mac_c_l71_c5_2e81
bit_counter_MUX_uart_mac_c_l71_c5_2e81 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_c_l71_c5_2e81_cond,
bit_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue,
bit_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse,
bit_counter_MUX_uart_mac_c_l71_c5_2e81_return_output);

-- clk_counter_MUX_uart_mac_c_l71_c5_2e81
clk_counter_MUX_uart_mac_c_l71_c5_2e81 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l71_c5_2e81_cond,
clk_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue,
clk_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse,
clk_counter_MUX_uart_mac_c_l71_c5_2e81_return_output);

-- state_MUX_uart_mac_c_l71_c5_2e81
state_MUX_uart_mac_c_l71_c5_2e81 : entity work.MUX_uint1_t_uart_rx_mac_state_t_uart_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l71_c5_2e81_cond,
state_MUX_uart_mac_c_l71_c5_2e81_iftrue,
state_MUX_uart_mac_c_l71_c5_2e81_iffalse,
state_MUX_uart_mac_c_l71_c5_2e81_return_output);

-- BIN_OP_PLUS_uart_mac_c_l74_c7_37ee
BIN_OP_PLUS_uart_mac_c_l74_c7_37ee : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_left,
BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_right,
BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_return_output);

-- BIN_OP_GTE_uart_mac_c_l75_c10_f1cc
BIN_OP_GTE_uart_mac_c_l75_c10_f1cc : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_de264c78 port map (
BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_left,
BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_right,
BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_return_output);

-- bit_counter_MUX_uart_mac_c_l75_c7_2f7d
bit_counter_MUX_uart_mac_c_l75_c7_2f7d : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_c_l75_c7_2f7d_cond,
bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue,
bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse,
bit_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output);

-- clk_counter_MUX_uart_mac_c_l75_c7_2f7d
clk_counter_MUX_uart_mac_c_l75_c7_2f7d : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l75_c7_2f7d_cond,
clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue,
clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse,
clk_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output);

-- state_MUX_uart_mac_c_l75_c7_2f7d
state_MUX_uart_mac_c_l75_c7_2f7d : entity work.MUX_uint1_t_uart_rx_mac_state_t_uart_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l75_c7_2f7d_cond,
state_MUX_uart_mac_c_l75_c7_2f7d_iftrue,
state_MUX_uart_mac_c_l75_c7_2f7d_iffalse,
state_MUX_uart_mac_c_l75_c7_2f7d_return_output);

-- BIN_OP_EQ_uart_mac_c_l84_c11_6cfb
BIN_OP_EQ_uart_mac_c_l84_c11_6cfb : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_left,
BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_right,
BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output);

-- bit_counter_MUX_uart_mac_c_l84_c8_8deb
bit_counter_MUX_uart_mac_c_l84_c8_8deb : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_c_l84_c8_8deb_cond,
bit_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue,
bit_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse,
bit_counter_MUX_uart_mac_c_l84_c8_8deb_return_output);

-- clk_counter_MUX_uart_mac_c_l84_c8_8deb
clk_counter_MUX_uart_mac_c_l84_c8_8deb : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l84_c8_8deb_cond,
clk_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue,
clk_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse,
clk_counter_MUX_uart_mac_c_l84_c8_8deb_return_output);

-- data_sample_valid_MUX_uart_mac_c_l84_c8_8deb
data_sample_valid_MUX_uart_mac_c_l84_c8_8deb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_cond,
data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iftrue,
data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iffalse,
data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_return_output);

-- data_sample_MUX_uart_mac_c_l84_c8_8deb
data_sample_MUX_uart_mac_c_l84_c8_8deb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_sample_MUX_uart_mac_c_l84_c8_8deb_cond,
data_sample_MUX_uart_mac_c_l84_c8_8deb_iftrue,
data_sample_MUX_uart_mac_c_l84_c8_8deb_iffalse,
data_sample_MUX_uart_mac_c_l84_c8_8deb_return_output);

-- state_MUX_uart_mac_c_l84_c8_8deb
state_MUX_uart_mac_c_l84_c8_8deb : entity work.MUX_uint1_t_uart_rx_mac_state_t_uart_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l84_c8_8deb_cond,
state_MUX_uart_mac_c_l84_c8_8deb_iftrue,
state_MUX_uart_mac_c_l84_c8_8deb_iffalse,
state_MUX_uart_mac_c_l84_c8_8deb_return_output);

-- BIN_OP_PLUS_uart_mac_c_l87_c5_e75a
BIN_OP_PLUS_uart_mac_c_l87_c5_e75a : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_left,
BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_right,
BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_return_output);

-- BIN_OP_GTE_uart_mac_c_l88_c8_778e
BIN_OP_GTE_uart_mac_c_l88_c8_778e : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_de264c78 port map (
BIN_OP_GTE_uart_mac_c_l88_c8_778e_left,
BIN_OP_GTE_uart_mac_c_l88_c8_778e_right,
BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output);

-- bit_counter_MUX_uart_mac_c_l88_c5_eb15
bit_counter_MUX_uart_mac_c_l88_c5_eb15 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_c_l88_c5_eb15_cond,
bit_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue,
bit_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse,
bit_counter_MUX_uart_mac_c_l88_c5_eb15_return_output);

-- clk_counter_MUX_uart_mac_c_l88_c5_eb15
clk_counter_MUX_uart_mac_c_l88_c5_eb15 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l88_c5_eb15_cond,
clk_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue,
clk_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse,
clk_counter_MUX_uart_mac_c_l88_c5_eb15_return_output);

-- data_sample_valid_MUX_uart_mac_c_l88_c5_eb15
data_sample_valid_MUX_uart_mac_c_l88_c5_eb15 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_cond,
data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iftrue,
data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iffalse,
data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_return_output);

-- data_sample_MUX_uart_mac_c_l88_c5_eb15
data_sample_MUX_uart_mac_c_l88_c5_eb15 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_sample_MUX_uart_mac_c_l88_c5_eb15_cond,
data_sample_MUX_uart_mac_c_l88_c5_eb15_iftrue,
data_sample_MUX_uart_mac_c_l88_c5_eb15_iffalse,
data_sample_MUX_uart_mac_c_l88_c5_eb15_return_output);

-- state_MUX_uart_mac_c_l88_c5_eb15
state_MUX_uart_mac_c_l88_c5_eb15 : entity work.MUX_uint1_t_uart_rx_mac_state_t_uart_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l88_c5_eb15_cond,
state_MUX_uart_mac_c_l88_c5_eb15_iftrue,
state_MUX_uart_mac_c_l88_c5_eb15_iffalse,
state_MUX_uart_mac_c_l88_c5_eb15_return_output);

-- BIN_OP_PLUS_uart_mac_c_l96_c7_774e
BIN_OP_PLUS_uart_mac_c_l96_c7_774e : entity work.BIN_OP_PLUS_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_c_l96_c7_774e_left,
BIN_OP_PLUS_uart_mac_c_l96_c7_774e_right,
BIN_OP_PLUS_uart_mac_c_l96_c7_774e_return_output);

-- BIN_OP_EQ_uart_mac_c_l99_c10_aae6
BIN_OP_EQ_uart_mac_c_l99_c10_aae6 : entity work.BIN_OP_EQ_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l99_c10_aae6_left,
BIN_OP_EQ_uart_mac_c_l99_c10_aae6_right,
BIN_OP_EQ_uart_mac_c_l99_c10_aae6_return_output);

-- state_MUX_uart_mac_c_l99_c7_1427
state_MUX_uart_mac_c_l99_c7_1427 : entity work.MUX_uint1_t_uart_rx_mac_state_t_uart_rx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l99_c7_1427_cond,
state_MUX_uart_mac_c_l99_c7_1427_iftrue,
state_MUX_uart_mac_c_l99_c7_1427_iffalse,
state_MUX_uart_mac_c_l99_c7_1427_return_output);

-- uart_deserializer_uart_mac_c_l108_c33_53fb
uart_deserializer_uart_mac_c_l108_c33_53fb : entity work.uart_deserializer_0CLK_f2389995 port map (
clk,
uart_deserializer_uart_mac_c_l108_c33_53fb_CLOCK_ENABLE,
uart_deserializer_uart_mac_c_l108_c33_53fb_in_data,
uart_deserializer_uart_mac_c_l108_c33_53fb_in_data_valid,
uart_deserializer_uart_mac_c_l108_c33_53fb_out_data_ready,
uart_deserializer_uart_mac_c_l108_c33_53fb_return_output);

-- UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c
UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_expr,
UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_return_output);

-- BIN_OP_AND_uart_mac_c_l111_c14_d97e
BIN_OP_AND_uart_mac_c_l111_c14_d97e : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_c_l111_c14_d97e_left,
BIN_OP_AND_uart_mac_c_l111_c14_d97e_right,
BIN_OP_AND_uart_mac_c_l111_c14_d97e_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Registers
 state,
 clk_counter,
 bit_counter,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output,
 bit_counter_MUX_uart_mac_c_l58_c3_76be_return_output,
 clk_counter_MUX_uart_mac_c_l58_c3_76be_return_output,
 data_sample_valid_MUX_uart_mac_c_l58_c3_76be_return_output,
 data_sample_MUX_uart_mac_c_l58_c3_76be_return_output,
 state_MUX_uart_mac_c_l58_c3_76be_return_output,
 BIN_OP_EQ_uart_mac_c_l61_c8_678f_return_output,
 clk_counter_MUX_uart_mac_c_l61_c5_e61f_return_output,
 state_MUX_uart_mac_c_l61_c5_e61f_return_output,
 BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output,
 bit_counter_MUX_uart_mac_c_l68_c8_5107_return_output,
 clk_counter_MUX_uart_mac_c_l68_c8_5107_return_output,
 data_sample_valid_MUX_uart_mac_c_l68_c8_5107_return_output,
 data_sample_MUX_uart_mac_c_l68_c8_5107_return_output,
 state_MUX_uart_mac_c_l68_c8_5107_return_output,
 BIN_OP_EQ_uart_mac_c_l71_c8_ce83_return_output,
 bit_counter_MUX_uart_mac_c_l71_c5_2e81_return_output,
 clk_counter_MUX_uart_mac_c_l71_c5_2e81_return_output,
 state_MUX_uart_mac_c_l71_c5_2e81_return_output,
 BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_return_output,
 BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_return_output,
 bit_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output,
 clk_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output,
 state_MUX_uart_mac_c_l75_c7_2f7d_return_output,
 BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output,
 bit_counter_MUX_uart_mac_c_l84_c8_8deb_return_output,
 clk_counter_MUX_uart_mac_c_l84_c8_8deb_return_output,
 data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_return_output,
 data_sample_MUX_uart_mac_c_l84_c8_8deb_return_output,
 state_MUX_uart_mac_c_l84_c8_8deb_return_output,
 BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_return_output,
 BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output,
 bit_counter_MUX_uart_mac_c_l88_c5_eb15_return_output,
 clk_counter_MUX_uart_mac_c_l88_c5_eb15_return_output,
 data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_return_output,
 data_sample_MUX_uart_mac_c_l88_c5_eb15_return_output,
 state_MUX_uart_mac_c_l88_c5_eb15_return_output,
 BIN_OP_PLUS_uart_mac_c_l96_c7_774e_return_output,
 BIN_OP_EQ_uart_mac_c_l99_c10_aae6_return_output,
 state_MUX_uart_mac_c_l99_c7_1427_return_output,
 uart_deserializer_uart_mac_c_l108_c33_53fb_return_output,
 UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_return_output,
 BIN_OP_AND_uart_mac_c_l111_c14_d97e_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_data_in : unsigned(0 downto 0);
 variable VAR_uart_rx_mac_out_ready : unsigned(0 downto 0);
 variable VAR_uart_rx_mac_word_out : uart_mac_s;
 variable VAR_uart_rx_mac_overflow : unsigned(0 downto 0);
 variable VAR_data_in : unsigned(0 downto 0);
 variable VAR_out_ready : unsigned(0 downto 0);
 variable VAR_word_out : uart_mac_s;
 variable VAR_overflow : unsigned(0 downto 0);
 variable VAR_data_sample : unsigned(0 downto 0);
 variable VAR_data_sample_valid : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_cond : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iftrue : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iffalse : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_return_output : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_return_output : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_cond : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_iftrue : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_iffalse : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_return_output : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_return_output : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l58_c3_76be_iftrue : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l61_c5_e61f_return_output : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l58_c3_76be_iffalse : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l68_c8_5107_return_output : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l58_c3_76be_return_output : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l58_c3_76be_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l61_c8_678f_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l61_c8_678f_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l61_c8_678f_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_c_l65_c7_109a : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l61_c5_e61f_iftrue : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l61_c5_e61f_iffalse : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l61_c5_e61f_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_cond : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iftrue : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iffalse : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_return_output : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_cond : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_iftrue : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_iffalse : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_return_output : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l68_c8_5107_iftrue : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l71_c5_2e81_return_output : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l68_c8_5107_iffalse : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l84_c8_8deb_return_output : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l68_c8_5107_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l71_c5_2e81_iftrue : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l75_c7_2f7d_return_output : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l71_c5_2e81_iffalse : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l71_c5_2e81_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_c_l74_c7_388e : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_c_l80_c9_73a2 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_c_l79_c9_2475 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l75_c7_2f7d_iftrue : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l75_c7_2f7d_iffalse : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l75_c7_2f7d_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_cond : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iftrue : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_return_output : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iffalse : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_cond : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_iftrue : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_return_output : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_iffalse : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l84_c8_8deb_iftrue : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l88_c5_eb15_return_output : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l84_c8_8deb_iffalse : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l84_c8_8deb_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_c_l87_c5_70a4 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_c_l96_c7_9f55 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_c_l91_c7_613f : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_cond : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iftrue : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iffalse : unsigned(0 downto 0);
 variable VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_cond : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_iftrue : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_iffalse : unsigned(0 downto 0);
 variable VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l88_c5_eb15_iftrue : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l99_c7_1427_return_output : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l88_c5_eb15_iffalse : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l88_c5_eb15_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l96_c7_774e_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l96_c7_774e_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l96_c7_774e_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l99_c10_aae6_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l99_c10_aae6_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l99_c10_aae6_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l99_c7_1427_iftrue : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l99_c7_1427_iffalse : uart_rx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l99_c7_1427_cond : unsigned(0 downto 0);
 variable VAR_deser : uart_deserializer_o_t;
 variable VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_in_data : unsigned(0 downto 0);
 variable VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_in_data_valid : unsigned(0 downto 0);
 variable VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_out_data_ready : unsigned(0 downto 0);
 variable VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_return_output : uart_deserializer_o_t;
 variable VAR_CONST_REF_RD_uint1_t_8_uart_deserializer_o_t_out_data_d41d_uart_mac_c_l109_c35_597b_return_output : uint1_t_8;
 variable VAR_uint1_array8_le_uart_mac_c_l109_c19_29ba_return_output : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_deserializer_o_t_out_data_valid_d41d_uart_mac_c_l110_c20_45eb_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l111_c14_d97e_left : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_deserializer_o_t_in_data_ready_d41d_uart_mac_c_l111_c35_7632_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l111_c14_d97e_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l111_c14_d97e_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_mac_s_uart_mac_s_42b0_uart_mac_c_l114_c26_3bc1_return_output : uart_mac_s;
 -- State registers comb logic variables
variable REG_VAR_state : uart_rx_mac_state_t;
variable REG_VAR_clk_counter : unsigned(15 downto 0);
variable REG_VAR_bit_counter : unsigned(3 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_state := state;
  REG_VAR_clk_counter := clk_counter;
  REG_VAR_bit_counter := bit_counter;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_right := to_unsigned(uart_rx_mac_state_t_to_integer(RECEIVE) ,2);
     VAR_BIN_OP_EQ_uart_mac_c_l99_c10_aae6_right := to_unsigned(8, 4);
     VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_iffalse := to_unsigned(0, 1);
     VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_iftrue := to_unsigned(0, 1);
     VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_iffalse := to_unsigned(0, 1);
     VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_iftrue := to_unsigned(0, 1);
     VAR_clk_counter_uart_mac_c_l79_c9_2475 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue := VAR_clk_counter_uart_mac_c_l79_c9_2475;
     VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_right := to_unsigned(644, 16);
     VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iffalse := to_unsigned(0, 1);
     VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iftrue := to_unsigned(0, 1);
     VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iffalse := to_unsigned(0, 1);
     VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iftrue := to_unsigned(0, 1);
     VAR_BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_right := to_unsigned(1, 1);
     VAR_state_MUX_uart_mac_c_l75_c7_2f7d_iftrue := RECEIVE;
     VAR_clk_counter_uart_mac_c_l65_c7_109a := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_iftrue := VAR_clk_counter_uart_mac_c_l65_c7_109a;
     VAR_state_MUX_uart_mac_c_l99_c7_1427_iftrue := IDLE;
     VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_right := to_unsigned(0, 1);
     VAR_BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_right := to_unsigned(1, 1);
     VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_right := to_unsigned(1289, 16);
     VAR_state_MUX_uart_mac_c_l61_c5_e61f_iftrue := WAIT_START;
     VAR_bit_counter_uart_mac_c_l80_c9_73a2 := resize(to_unsigned(0, 1), 4);
     VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue := VAR_bit_counter_uart_mac_c_l80_c9_73a2;
     VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_uart_mac_c_l96_c7_774e_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_right := to_unsigned(uart_rx_mac_state_t_to_integer(IDLE) ,2);
     VAR_clk_counter_uart_mac_c_l91_c7_613f := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue := VAR_clk_counter_uart_mac_c_l91_c7_613f;
     VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_right := to_unsigned(uart_rx_mac_state_t_to_integer(WAIT_START) ,2);
     VAR_BIN_OP_EQ_uart_mac_c_l61_c8_678f_right := to_unsigned(1, 1);
 -- Reads from global variables
     VAR_uart_data_in := global_to_module.uart_data_in;
     VAR_uart_rx_mac_out_ready := global_to_module.uart_rx_mac_out_ready;
     -- Submodule level 0
     VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_out_data_ready := VAR_uart_rx_mac_out_ready;
     VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_left := VAR_uart_data_in;
     VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_iftrue := VAR_uart_data_in;
     VAR_BIN_OP_EQ_uart_mac_c_l61_c8_678f_left := VAR_uart_data_in;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;

     -- Submodule level 0
     VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     VAR_BIN_OP_PLUS_uart_mac_c_l96_c7_774e_left := bit_counter;
     VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_iftrue := bit_counter;
     VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse := bit_counter;
     VAR_BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_left := clk_counter;
     VAR_BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_left := clk_counter;
     VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse := clk_counter;
     VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_left := to_unsigned(uart_rx_mac_state_t_to_integer(state) ,2);
     VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_left := to_unsigned(uart_rx_mac_state_t_to_integer(state) ,2);
     VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_left := to_unsigned(uart_rx_mac_state_t_to_integer(state) ,2);
     VAR_state_MUX_uart_mac_c_l61_c5_e61f_iffalse := state;
     VAR_state_MUX_uart_mac_c_l71_c5_2e81_iffalse := state;
     VAR_state_MUX_uart_mac_c_l75_c7_2f7d_iffalse := state;
     VAR_state_MUX_uart_mac_c_l84_c8_8deb_iffalse := state;
     VAR_state_MUX_uart_mac_c_l88_c5_eb15_iffalse := state;
     VAR_state_MUX_uart_mac_c_l99_c7_1427_iffalse := state;
     -- BIN_OP_PLUS[uart_mac_c_l96_c7_774e] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_c_l96_c7_774e_left <= VAR_BIN_OP_PLUS_uart_mac_c_l96_c7_774e_left;
     BIN_OP_PLUS_uart_mac_c_l96_c7_774e_right <= VAR_BIN_OP_PLUS_uart_mac_c_l96_c7_774e_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_c_l96_c7_774e_return_output := BIN_OP_PLUS_uart_mac_c_l96_c7_774e_return_output;

     -- BIN_OP_EQ[uart_mac_c_l68_c11_da59] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l68_c11_da59_left <= VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_left;
     BIN_OP_EQ_uart_mac_c_l68_c11_da59_right <= VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output := BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output;

     -- BIN_OP_EQ[uart_mac_c_l58_c6_6e6e] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_left <= VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_left;
     BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_right <= VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output := BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output;

     -- BIN_OP_EQ[uart_mac_c_l61_c8_678f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l61_c8_678f_left <= VAR_BIN_OP_EQ_uart_mac_c_l61_c8_678f_left;
     BIN_OP_EQ_uart_mac_c_l61_c8_678f_right <= VAR_BIN_OP_EQ_uart_mac_c_l61_c8_678f_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l61_c8_678f_return_output := BIN_OP_EQ_uart_mac_c_l61_c8_678f_return_output;

     -- BIN_OP_EQ[uart_mac_c_l71_c8_ce83] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l71_c8_ce83_left <= VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_left;
     BIN_OP_EQ_uart_mac_c_l71_c8_ce83_right <= VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_return_output := BIN_OP_EQ_uart_mac_c_l71_c8_ce83_return_output;

     -- BIN_OP_PLUS[uart_mac_c_l74_c7_37ee] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_left <= VAR_BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_left;
     BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_right <= VAR_BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_return_output := BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_return_output;

     -- BIN_OP_EQ[uart_mac_c_l84_c11_6cfb] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_left <= VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_left;
     BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_right <= VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output := BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output;

     -- BIN_OP_PLUS[uart_mac_c_l87_c5_e75a] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_left <= VAR_BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_left;
     BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_right <= VAR_BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_return_output := BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_return_output;

     -- Submodule level 1
     VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_cond := VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_cond := VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output;
     VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_cond := VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output;
     VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_cond := VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output;
     VAR_state_MUX_uart_mac_c_l58_c3_76be_cond := VAR_BIN_OP_EQ_uart_mac_c_l58_c6_6e6e_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_cond := VAR_BIN_OP_EQ_uart_mac_c_l61_c8_678f_return_output;
     VAR_state_MUX_uart_mac_c_l61_c5_e61f_cond := VAR_BIN_OP_EQ_uart_mac_c_l61_c8_678f_return_output;
     VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_cond := VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_cond := VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output;
     VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_cond := VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output;
     VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_cond := VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output;
     VAR_state_MUX_uart_mac_c_l68_c8_5107_cond := VAR_BIN_OP_EQ_uart_mac_c_l68_c11_da59_return_output;
     VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_cond := VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_cond := VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_return_output;
     VAR_state_MUX_uart_mac_c_l71_c5_2e81_cond := VAR_BIN_OP_EQ_uart_mac_c_l71_c8_ce83_return_output;
     VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_cond := VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_cond := VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output;
     VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_cond := VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output;
     VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_cond := VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output;
     VAR_state_MUX_uart_mac_c_l84_c8_8deb_cond := VAR_BIN_OP_EQ_uart_mac_c_l84_c11_6cfb_return_output;
     VAR_clk_counter_uart_mac_c_l74_c7_388e := resize(VAR_BIN_OP_PLUS_uart_mac_c_l74_c7_37ee_return_output, 16);
     VAR_clk_counter_uart_mac_c_l87_c5_70a4 := resize(VAR_BIN_OP_PLUS_uart_mac_c_l87_c5_e75a_return_output, 16);
     VAR_bit_counter_uart_mac_c_l96_c7_9f55 := resize(VAR_BIN_OP_PLUS_uart_mac_c_l96_c7_774e_return_output, 4);
     VAR_BIN_OP_EQ_uart_mac_c_l99_c10_aae6_left := VAR_bit_counter_uart_mac_c_l96_c7_9f55;
     VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue := VAR_bit_counter_uart_mac_c_l96_c7_9f55;
     VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_left := VAR_clk_counter_uart_mac_c_l74_c7_388e;
     VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse := VAR_clk_counter_uart_mac_c_l74_c7_388e;
     VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_left := VAR_clk_counter_uart_mac_c_l87_c5_70a4;
     VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse := VAR_clk_counter_uart_mac_c_l87_c5_70a4;
     -- BIN_OP_GTE[uart_mac_c_l75_c10_f1cc] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_left <= VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_left;
     BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_right <= VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_return_output := BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_return_output;

     -- clk_counter_MUX[uart_mac_c_l61_c5_e61f] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l61_c5_e61f_cond <= VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_cond;
     clk_counter_MUX_uart_mac_c_l61_c5_e61f_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_iftrue;
     clk_counter_MUX_uart_mac_c_l61_c5_e61f_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_return_output := clk_counter_MUX_uart_mac_c_l61_c5_e61f_return_output;

     -- BIN_OP_GTE[uart_mac_c_l88_c8_778e] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_c_l88_c8_778e_left <= VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_left;
     BIN_OP_GTE_uart_mac_c_l88_c8_778e_right <= VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output := BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output;

     -- state_MUX[uart_mac_c_l61_c5_e61f] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l61_c5_e61f_cond <= VAR_state_MUX_uart_mac_c_l61_c5_e61f_cond;
     state_MUX_uart_mac_c_l61_c5_e61f_iftrue <= VAR_state_MUX_uart_mac_c_l61_c5_e61f_iftrue;
     state_MUX_uart_mac_c_l61_c5_e61f_iffalse <= VAR_state_MUX_uart_mac_c_l61_c5_e61f_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l61_c5_e61f_return_output := state_MUX_uart_mac_c_l61_c5_e61f_return_output;

     -- BIN_OP_EQ[uart_mac_c_l99_c10_aae6] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l99_c10_aae6_left <= VAR_BIN_OP_EQ_uart_mac_c_l99_c10_aae6_left;
     BIN_OP_EQ_uart_mac_c_l99_c10_aae6_right <= VAR_BIN_OP_EQ_uart_mac_c_l99_c10_aae6_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l99_c10_aae6_return_output := BIN_OP_EQ_uart_mac_c_l99_c10_aae6_return_output;

     -- Submodule level 2
     VAR_state_MUX_uart_mac_c_l99_c7_1427_cond := VAR_BIN_OP_EQ_uart_mac_c_l99_c10_aae6_return_output;
     VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_cond := VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_cond := VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_return_output;
     VAR_state_MUX_uart_mac_c_l75_c7_2f7d_cond := VAR_BIN_OP_GTE_uart_mac_c_l75_c10_f1cc_return_output;
     VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_cond := VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_cond := VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output;
     VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_cond := VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output;
     VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_cond := VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output;
     VAR_state_MUX_uart_mac_c_l88_c5_eb15_cond := VAR_BIN_OP_GTE_uart_mac_c_l88_c8_778e_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_iftrue := VAR_clk_counter_MUX_uart_mac_c_l61_c5_e61f_return_output;
     VAR_state_MUX_uart_mac_c_l58_c3_76be_iftrue := VAR_state_MUX_uart_mac_c_l61_c5_e61f_return_output;
     -- state_MUX[uart_mac_c_l99_c7_1427] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l99_c7_1427_cond <= VAR_state_MUX_uart_mac_c_l99_c7_1427_cond;
     state_MUX_uart_mac_c_l99_c7_1427_iftrue <= VAR_state_MUX_uart_mac_c_l99_c7_1427_iftrue;
     state_MUX_uart_mac_c_l99_c7_1427_iffalse <= VAR_state_MUX_uart_mac_c_l99_c7_1427_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l99_c7_1427_return_output := state_MUX_uart_mac_c_l99_c7_1427_return_output;

     -- bit_counter_MUX[uart_mac_c_l88_c5_eb15] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_c_l88_c5_eb15_cond <= VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_cond;
     bit_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue <= VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue;
     bit_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse <= VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_return_output := bit_counter_MUX_uart_mac_c_l88_c5_eb15_return_output;

     -- bit_counter_MUX[uart_mac_c_l75_c7_2f7d] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_c_l75_c7_2f7d_cond <= VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_cond;
     bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue <= VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue;
     bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse <= VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output := bit_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output;

     -- clk_counter_MUX[uart_mac_c_l75_c7_2f7d] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l75_c7_2f7d_cond <= VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_cond;
     clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iftrue;
     clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output := clk_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output;

     -- state_MUX[uart_mac_c_l75_c7_2f7d] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l75_c7_2f7d_cond <= VAR_state_MUX_uart_mac_c_l75_c7_2f7d_cond;
     state_MUX_uart_mac_c_l75_c7_2f7d_iftrue <= VAR_state_MUX_uart_mac_c_l75_c7_2f7d_iftrue;
     state_MUX_uart_mac_c_l75_c7_2f7d_iffalse <= VAR_state_MUX_uart_mac_c_l75_c7_2f7d_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l75_c7_2f7d_return_output := state_MUX_uart_mac_c_l75_c7_2f7d_return_output;

     -- clk_counter_MUX[uart_mac_c_l88_c5_eb15] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l88_c5_eb15_cond <= VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_cond;
     clk_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_iftrue;
     clk_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_return_output := clk_counter_MUX_uart_mac_c_l88_c5_eb15_return_output;

     -- data_sample_valid_MUX[uart_mac_c_l88_c5_eb15] LATENCY=0
     -- Inputs
     data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_cond <= VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_cond;
     data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iftrue <= VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iftrue;
     data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iffalse <= VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_iffalse;
     -- Outputs
     VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_return_output := data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_return_output;

     -- data_sample_MUX[uart_mac_c_l88_c5_eb15] LATENCY=0
     -- Inputs
     data_sample_MUX_uart_mac_c_l88_c5_eb15_cond <= VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_cond;
     data_sample_MUX_uart_mac_c_l88_c5_eb15_iftrue <= VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_iftrue;
     data_sample_MUX_uart_mac_c_l88_c5_eb15_iffalse <= VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_iffalse;
     -- Outputs
     VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_return_output := data_sample_MUX_uart_mac_c_l88_c5_eb15_return_output;

     -- Submodule level 3
     VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue := VAR_bit_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output;
     VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue := VAR_bit_counter_MUX_uart_mac_c_l88_c5_eb15_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue := VAR_clk_counter_MUX_uart_mac_c_l75_c7_2f7d_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue := VAR_clk_counter_MUX_uart_mac_c_l88_c5_eb15_return_output;
     VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_iftrue := VAR_data_sample_MUX_uart_mac_c_l88_c5_eb15_return_output;
     VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iftrue := VAR_data_sample_valid_MUX_uart_mac_c_l88_c5_eb15_return_output;
     VAR_state_MUX_uart_mac_c_l71_c5_2e81_iftrue := VAR_state_MUX_uart_mac_c_l75_c7_2f7d_return_output;
     VAR_state_MUX_uart_mac_c_l88_c5_eb15_iftrue := VAR_state_MUX_uart_mac_c_l99_c7_1427_return_output;
     -- data_sample_MUX[uart_mac_c_l84_c8_8deb] LATENCY=0
     -- Inputs
     data_sample_MUX_uart_mac_c_l84_c8_8deb_cond <= VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_cond;
     data_sample_MUX_uart_mac_c_l84_c8_8deb_iftrue <= VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_iftrue;
     data_sample_MUX_uart_mac_c_l84_c8_8deb_iffalse <= VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_iffalse;
     -- Outputs
     VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_return_output := data_sample_MUX_uart_mac_c_l84_c8_8deb_return_output;

     -- state_MUX[uart_mac_c_l88_c5_eb15] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l88_c5_eb15_cond <= VAR_state_MUX_uart_mac_c_l88_c5_eb15_cond;
     state_MUX_uart_mac_c_l88_c5_eb15_iftrue <= VAR_state_MUX_uart_mac_c_l88_c5_eb15_iftrue;
     state_MUX_uart_mac_c_l88_c5_eb15_iffalse <= VAR_state_MUX_uart_mac_c_l88_c5_eb15_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l88_c5_eb15_return_output := state_MUX_uart_mac_c_l88_c5_eb15_return_output;

     -- state_MUX[uart_mac_c_l71_c5_2e81] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l71_c5_2e81_cond <= VAR_state_MUX_uart_mac_c_l71_c5_2e81_cond;
     state_MUX_uart_mac_c_l71_c5_2e81_iftrue <= VAR_state_MUX_uart_mac_c_l71_c5_2e81_iftrue;
     state_MUX_uart_mac_c_l71_c5_2e81_iffalse <= VAR_state_MUX_uart_mac_c_l71_c5_2e81_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l71_c5_2e81_return_output := state_MUX_uart_mac_c_l71_c5_2e81_return_output;

     -- clk_counter_MUX[uart_mac_c_l71_c5_2e81] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l71_c5_2e81_cond <= VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_cond;
     clk_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue;
     clk_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_return_output := clk_counter_MUX_uart_mac_c_l71_c5_2e81_return_output;

     -- bit_counter_MUX[uart_mac_c_l84_c8_8deb] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_c_l84_c8_8deb_cond <= VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_cond;
     bit_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue <= VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue;
     bit_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse <= VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_return_output := bit_counter_MUX_uart_mac_c_l84_c8_8deb_return_output;

     -- bit_counter_MUX[uart_mac_c_l71_c5_2e81] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_c_l71_c5_2e81_cond <= VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_cond;
     bit_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue <= VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_iftrue;
     bit_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse <= VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_return_output := bit_counter_MUX_uart_mac_c_l71_c5_2e81_return_output;

     -- clk_counter_MUX[uart_mac_c_l84_c8_8deb] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l84_c8_8deb_cond <= VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_cond;
     clk_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_iftrue;
     clk_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_return_output := clk_counter_MUX_uart_mac_c_l84_c8_8deb_return_output;

     -- data_sample_valid_MUX[uart_mac_c_l84_c8_8deb] LATENCY=0
     -- Inputs
     data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_cond <= VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_cond;
     data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iftrue <= VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iftrue;
     data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iffalse <= VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_iffalse;
     -- Outputs
     VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_return_output := data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_iftrue := VAR_bit_counter_MUX_uart_mac_c_l71_c5_2e81_return_output;
     VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_iffalse := VAR_bit_counter_MUX_uart_mac_c_l84_c8_8deb_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_iftrue := VAR_clk_counter_MUX_uart_mac_c_l71_c5_2e81_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_iffalse := VAR_clk_counter_MUX_uart_mac_c_l84_c8_8deb_return_output;
     VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_iffalse := VAR_data_sample_MUX_uart_mac_c_l84_c8_8deb_return_output;
     VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iffalse := VAR_data_sample_valid_MUX_uart_mac_c_l84_c8_8deb_return_output;
     VAR_state_MUX_uart_mac_c_l68_c8_5107_iftrue := VAR_state_MUX_uart_mac_c_l71_c5_2e81_return_output;
     VAR_state_MUX_uart_mac_c_l84_c8_8deb_iftrue := VAR_state_MUX_uart_mac_c_l88_c5_eb15_return_output;
     -- state_MUX[uart_mac_c_l84_c8_8deb] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l84_c8_8deb_cond <= VAR_state_MUX_uart_mac_c_l84_c8_8deb_cond;
     state_MUX_uart_mac_c_l84_c8_8deb_iftrue <= VAR_state_MUX_uart_mac_c_l84_c8_8deb_iftrue;
     state_MUX_uart_mac_c_l84_c8_8deb_iffalse <= VAR_state_MUX_uart_mac_c_l84_c8_8deb_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l84_c8_8deb_return_output := state_MUX_uart_mac_c_l84_c8_8deb_return_output;

     -- clk_counter_MUX[uart_mac_c_l68_c8_5107] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l68_c8_5107_cond <= VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_cond;
     clk_counter_MUX_uart_mac_c_l68_c8_5107_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_iftrue;
     clk_counter_MUX_uart_mac_c_l68_c8_5107_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_return_output := clk_counter_MUX_uart_mac_c_l68_c8_5107_return_output;

     -- data_sample_MUX[uart_mac_c_l68_c8_5107] LATENCY=0
     -- Inputs
     data_sample_MUX_uart_mac_c_l68_c8_5107_cond <= VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_cond;
     data_sample_MUX_uart_mac_c_l68_c8_5107_iftrue <= VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_iftrue;
     data_sample_MUX_uart_mac_c_l68_c8_5107_iffalse <= VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_iffalse;
     -- Outputs
     VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_return_output := data_sample_MUX_uart_mac_c_l68_c8_5107_return_output;

     -- bit_counter_MUX[uart_mac_c_l68_c8_5107] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_c_l68_c8_5107_cond <= VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_cond;
     bit_counter_MUX_uart_mac_c_l68_c8_5107_iftrue <= VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_iftrue;
     bit_counter_MUX_uart_mac_c_l68_c8_5107_iffalse <= VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_return_output := bit_counter_MUX_uart_mac_c_l68_c8_5107_return_output;

     -- data_sample_valid_MUX[uart_mac_c_l68_c8_5107] LATENCY=0
     -- Inputs
     data_sample_valid_MUX_uart_mac_c_l68_c8_5107_cond <= VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_cond;
     data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iftrue <= VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iftrue;
     data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iffalse <= VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_iffalse;
     -- Outputs
     VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_return_output := data_sample_valid_MUX_uart_mac_c_l68_c8_5107_return_output;

     -- Submodule level 5
     VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_iffalse := VAR_bit_counter_MUX_uart_mac_c_l68_c8_5107_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_iffalse := VAR_clk_counter_MUX_uart_mac_c_l68_c8_5107_return_output;
     VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_iffalse := VAR_data_sample_MUX_uart_mac_c_l68_c8_5107_return_output;
     VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iffalse := VAR_data_sample_valid_MUX_uart_mac_c_l68_c8_5107_return_output;
     VAR_state_MUX_uart_mac_c_l68_c8_5107_iffalse := VAR_state_MUX_uart_mac_c_l84_c8_8deb_return_output;
     -- clk_counter_MUX[uart_mac_c_l58_c3_76be] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l58_c3_76be_cond <= VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_cond;
     clk_counter_MUX_uart_mac_c_l58_c3_76be_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_iftrue;
     clk_counter_MUX_uart_mac_c_l58_c3_76be_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_return_output := clk_counter_MUX_uart_mac_c_l58_c3_76be_return_output;

     -- data_sample_valid_MUX[uart_mac_c_l58_c3_76be] LATENCY=0
     -- Inputs
     data_sample_valid_MUX_uart_mac_c_l58_c3_76be_cond <= VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_cond;
     data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iftrue <= VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iftrue;
     data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iffalse <= VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_iffalse;
     -- Outputs
     VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_return_output := data_sample_valid_MUX_uart_mac_c_l58_c3_76be_return_output;

     -- state_MUX[uart_mac_c_l68_c8_5107] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l68_c8_5107_cond <= VAR_state_MUX_uart_mac_c_l68_c8_5107_cond;
     state_MUX_uart_mac_c_l68_c8_5107_iftrue <= VAR_state_MUX_uart_mac_c_l68_c8_5107_iftrue;
     state_MUX_uart_mac_c_l68_c8_5107_iffalse <= VAR_state_MUX_uart_mac_c_l68_c8_5107_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l68_c8_5107_return_output := state_MUX_uart_mac_c_l68_c8_5107_return_output;

     -- data_sample_MUX[uart_mac_c_l58_c3_76be] LATENCY=0
     -- Inputs
     data_sample_MUX_uart_mac_c_l58_c3_76be_cond <= VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_cond;
     data_sample_MUX_uart_mac_c_l58_c3_76be_iftrue <= VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_iftrue;
     data_sample_MUX_uart_mac_c_l58_c3_76be_iffalse <= VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_iffalse;
     -- Outputs
     VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_return_output := data_sample_MUX_uart_mac_c_l58_c3_76be_return_output;

     -- bit_counter_MUX[uart_mac_c_l58_c3_76be] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_c_l58_c3_76be_cond <= VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_cond;
     bit_counter_MUX_uart_mac_c_l58_c3_76be_iftrue <= VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_iftrue;
     bit_counter_MUX_uart_mac_c_l58_c3_76be_iffalse <= VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_return_output := bit_counter_MUX_uart_mac_c_l58_c3_76be_return_output;

     -- Submodule level 6
     REG_VAR_bit_counter := VAR_bit_counter_MUX_uart_mac_c_l58_c3_76be_return_output;
     REG_VAR_clk_counter := VAR_clk_counter_MUX_uart_mac_c_l58_c3_76be_return_output;
     VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_in_data := VAR_data_sample_MUX_uart_mac_c_l58_c3_76be_return_output;
     VAR_BIN_OP_AND_uart_mac_c_l111_c14_d97e_left := VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_return_output;
     VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_in_data_valid := VAR_data_sample_valid_MUX_uart_mac_c_l58_c3_76be_return_output;
     VAR_state_MUX_uart_mac_c_l58_c3_76be_iffalse := VAR_state_MUX_uart_mac_c_l68_c8_5107_return_output;
     -- uart_deserializer[uart_mac_c_l108_c33_53fb] LATENCY=0
     -- Clock enable
     uart_deserializer_uart_mac_c_l108_c33_53fb_CLOCK_ENABLE <= VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_CLOCK_ENABLE;
     -- Inputs
     uart_deserializer_uart_mac_c_l108_c33_53fb_in_data <= VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_in_data;
     uart_deserializer_uart_mac_c_l108_c33_53fb_in_data_valid <= VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_in_data_valid;
     uart_deserializer_uart_mac_c_l108_c33_53fb_out_data_ready <= VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_out_data_ready;
     -- Outputs
     VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_return_output := uart_deserializer_uart_mac_c_l108_c33_53fb_return_output;

     -- state_MUX[uart_mac_c_l58_c3_76be] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l58_c3_76be_cond <= VAR_state_MUX_uart_mac_c_l58_c3_76be_cond;
     state_MUX_uart_mac_c_l58_c3_76be_iftrue <= VAR_state_MUX_uart_mac_c_l58_c3_76be_iftrue;
     state_MUX_uart_mac_c_l58_c3_76be_iffalse <= VAR_state_MUX_uart_mac_c_l58_c3_76be_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l58_c3_76be_return_output := state_MUX_uart_mac_c_l58_c3_76be_return_output;

     -- Submodule level 7
     REG_VAR_state := VAR_state_MUX_uart_mac_c_l58_c3_76be_return_output;
     -- CONST_REF_RD_uint1_t_uart_deserializer_o_t_out_data_valid_d41d[uart_mac_c_l110_c20_45eb] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_deserializer_o_t_out_data_valid_d41d_uart_mac_c_l110_c20_45eb_return_output := VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_return_output.out_data_valid;

     -- CONST_REF_RD_uint1_t_8_uart_deserializer_o_t_out_data_d41d[uart_mac_c_l109_c35_597b] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_8_uart_deserializer_o_t_out_data_d41d_uart_mac_c_l109_c35_597b_return_output := VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_return_output.out_data;

     -- CONST_REF_RD_uint1_t_uart_deserializer_o_t_in_data_ready_d41d[uart_mac_c_l111_c35_7632] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_deserializer_o_t_in_data_ready_d41d_uart_mac_c_l111_c35_7632_return_output := VAR_uart_deserializer_uart_mac_c_l108_c33_53fb_return_output.in_data_ready;

     -- Submodule level 8
     VAR_UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_expr := VAR_CONST_REF_RD_uint1_t_uart_deserializer_o_t_in_data_ready_d41d_uart_mac_c_l111_c35_7632_return_output;
     -- uint1_array8_le[uart_mac_c_l109_c19_29ba] LATENCY=0
     VAR_uint1_array8_le_uart_mac_c_l109_c19_29ba_return_output := uint1_array8_le(
     VAR_CONST_REF_RD_uint1_t_8_uart_deserializer_o_t_out_data_d41d_uart_mac_c_l109_c35_597b_return_output);

     -- UNARY_OP_NOT[uart_mac_c_l111_c35_fb8c] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_expr <= VAR_UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_return_output := UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_return_output;

     -- Submodule level 9
     VAR_BIN_OP_AND_uart_mac_c_l111_c14_d97e_right := VAR_UNARY_OP_NOT_uart_mac_c_l111_c35_fb8c_return_output;
     -- CONST_REF_RD_uart_mac_s_uart_mac_s_42b0[uart_mac_c_l114_c26_3bc1] LATENCY=0
     VAR_CONST_REF_RD_uart_mac_s_uart_mac_s_42b0_uart_mac_c_l114_c26_3bc1_return_output := CONST_REF_RD_uart_mac_s_uart_mac_s_42b0(
     VAR_uint1_array8_le_uart_mac_c_l109_c19_29ba_return_output,
     VAR_CONST_REF_RD_uint1_t_uart_deserializer_o_t_out_data_valid_d41d_uart_mac_c_l110_c20_45eb_return_output);

     -- BIN_OP_AND[uart_mac_c_l111_c14_d97e] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_c_l111_c14_d97e_left <= VAR_BIN_OP_AND_uart_mac_c_l111_c14_d97e_left;
     BIN_OP_AND_uart_mac_c_l111_c14_d97e_right <= VAR_BIN_OP_AND_uart_mac_c_l111_c14_d97e_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_c_l111_c14_d97e_return_output := BIN_OP_AND_uart_mac_c_l111_c14_d97e_return_output;

     -- Submodule level 10
     VAR_uart_rx_mac_overflow := VAR_BIN_OP_AND_uart_mac_c_l111_c14_d97e_return_output;
     VAR_uart_rx_mac_word_out := VAR_CONST_REF_RD_uart_mac_s_uart_mac_s_42b0_uart_mac_c_l114_c26_3bc1_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_state <= REG_VAR_state;
REG_COMB_clk_counter <= REG_VAR_clk_counter;
REG_COMB_bit_counter <= REG_VAR_bit_counter;
     -- Global wires driven various places in pipeline
     module_to_global.uart_rx_mac_word_out <= VAR_uart_rx_mac_word_out;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     state <= REG_COMB_state;
     clk_counter <= REG_COMB_clk_counter;
     bit_counter <= REG_COMB_bit_counter;
 end if;
 end if;
end process;

end arch;
