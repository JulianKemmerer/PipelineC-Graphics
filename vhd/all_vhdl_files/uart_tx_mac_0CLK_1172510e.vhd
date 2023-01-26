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
-- Submodules: 49
entity uart_tx_mac_0CLK_1172510e is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in uart_tx_mac_global_to_module_t;
 module_to_global : out uart_tx_mac_module_to_global_t);
end uart_tx_mac_0CLK_1172510e;
architecture arch of uart_tx_mac_0CLK_1172510e is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal state : uart_tx_mac_state_t := uart_tx_mac_state_t'left;
signal clk_counter : unsigned(15 downto 0) := to_unsigned(0, 16);
signal bit_counter : unsigned(3 downto 0) := to_unsigned(0, 4);
signal REG_COMB_state : uart_tx_mac_state_t;
signal REG_COMB_clk_counter : unsigned(15 downto 0);
signal REG_COMB_bit_counter : unsigned(3 downto 0);

-- Each function instance gets signals
-- BIN_OP_EQ[uart_mac_c_l160_c6_ede4]
signal BIN_OP_EQ_uart_mac_c_l160_c6_ede4_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l160_c6_ede4_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l160_c6_ede4_return_output : unsigned(0 downto 0);

-- do_next_bit_stuff_MUX[uart_mac_c_l160_c3_15d1]
signal do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_cond : unsigned(0 downto 0);
signal do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iftrue : unsigned(0 downto 0);
signal do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iffalse : unsigned(0 downto 0);
signal do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_return_output : unsigned(0 downto 0);

-- BIN_OP_GTE[uart_mac_c_l163_c8_1550]
signal BIN_OP_GTE_uart_mac_c_l163_c8_1550_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_c_l163_c8_1550_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_c_l163_c8_1550_return_output : unsigned(0 downto 0);

-- do_next_bit_stuff_MUX[uart_mac_c_l163_c5_e8f9]
signal do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_cond : unsigned(0 downto 0);
signal do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iftrue : unsigned(0 downto 0);
signal do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iffalse : unsigned(0 downto 0);
signal do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_return_output : unsigned(0 downto 0);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0[uart_mac_c_l175_c22_d235]
signal FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1[uart_mac_c_l175_c22_d235]
signal FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2[uart_mac_c_l175_c22_d235]
signal FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3[uart_mac_c_l175_c22_d235]
signal FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4[uart_mac_c_l175_c22_d235]
signal FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5[uart_mac_c_l175_c22_d235]
signal FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6[uart_mac_c_l175_c22_d235]
signal FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7[uart_mac_c_l175_c22_d235]
signal FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
signal FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);

-- uart_serializer[uart_mac_c_l177_c29_5c3a]
signal uart_serializer_uart_mac_c_l177_c29_5c3a_CLOCK_ENABLE : unsigned(0 downto 0);
signal uart_serializer_uart_mac_c_l177_c29_5c3a_in_data : uint1_t_8;
signal uart_serializer_uart_mac_c_l177_c29_5c3a_in_data_valid : unsigned(0 downto 0);
signal uart_serializer_uart_mac_c_l177_c29_5c3a_out_data_ready : unsigned(0 downto 0);
signal uart_serializer_uart_mac_c_l177_c29_5c3a_return_output : uart_serializer_o_t;

-- BIN_OP_EQ[uart_mac_c_l183_c6_177d]
signal BIN_OP_EQ_uart_mac_c_l183_c6_177d_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l183_c6_177d_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l183_c6_177d_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_c_l183_c3_62d8]
signal clk_counter_MUX_uart_mac_c_l183_c3_62d8_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l183_c3_62d8_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l183_c3_62d8_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l183_c3_62d8_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_c_l183_c3_62d8]
signal state_MUX_uart_mac_c_l183_c3_62d8_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l183_c3_62d8_iftrue : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l183_c3_62d8_iffalse : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l183_c3_62d8_return_output : uart_tx_mac_state_t;

-- clk_counter_MUX[uart_mac_c_l186_c5_b13a]
signal clk_counter_MUX_uart_mac_c_l186_c5_b13a_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l186_c5_b13a_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l186_c5_b13a_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l186_c5_b13a_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_c_l186_c5_b13a]
signal state_MUX_uart_mac_c_l186_c5_b13a_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l186_c5_b13a_iftrue : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l186_c5_b13a_iffalse : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l186_c5_b13a_return_output : uart_tx_mac_state_t;

-- BIN_OP_EQ[uart_mac_c_l194_c6_4ab9]
signal BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_c_l194_c3_faa3]
signal bit_counter_MUX_uart_mac_c_l194_c3_faa3_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l194_c3_faa3_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_c_l194_c3_faa3]
signal clk_counter_MUX_uart_mac_c_l194_c3_faa3_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l194_c3_faa3_return_output : unsigned(15 downto 0);

-- data_out_MUX[uart_mac_c_l194_c3_faa3]
signal data_out_MUX_uart_mac_c_l194_c3_faa3_cond : unsigned(0 downto 0);
signal data_out_MUX_uart_mac_c_l194_c3_faa3_iftrue : unsigned(0 downto 0);
signal data_out_MUX_uart_mac_c_l194_c3_faa3_iffalse : unsigned(0 downto 0);
signal data_out_MUX_uart_mac_c_l194_c3_faa3_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_c_l194_c3_faa3]
signal state_MUX_uart_mac_c_l194_c3_faa3_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l194_c3_faa3_iftrue : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l194_c3_faa3_iffalse : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l194_c3_faa3_return_output : uart_tx_mac_state_t;

-- BIN_OP_PLUS[uart_mac_c_l198_c5_6c4d]
signal BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_c_l199_c8_71cd]
signal BIN_OP_GTE_uart_mac_c_l199_c8_71cd_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_c_l199_c8_71cd_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_c_l199_c8_71cd_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_c_l199_c5_bda7]
signal bit_counter_MUX_uart_mac_c_l199_c5_bda7_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l199_c5_bda7_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_c_l199_c5_bda7]
signal clk_counter_MUX_uart_mac_c_l199_c5_bda7_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l199_c5_bda7_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_c_l199_c5_bda7]
signal state_MUX_uart_mac_c_l199_c5_bda7_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l199_c5_bda7_iftrue : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l199_c5_bda7_iffalse : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l199_c5_bda7_return_output : uart_tx_mac_state_t;

-- BIN_OP_EQ[uart_mac_c_l207_c11_341d]
signal BIN_OP_EQ_uart_mac_c_l207_c11_341d_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l207_c11_341d_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l207_c11_341d_return_output : unsigned(0 downto 0);

-- bit_counter_MUX[uart_mac_c_l207_c8_a40b]
signal bit_counter_MUX_uart_mac_c_l207_c8_a40b_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l207_c8_a40b_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_c_l207_c8_a40b]
signal clk_counter_MUX_uart_mac_c_l207_c8_a40b_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l207_c8_a40b_return_output : unsigned(15 downto 0);

-- data_out_MUX[uart_mac_c_l207_c8_a40b]
signal data_out_MUX_uart_mac_c_l207_c8_a40b_cond : unsigned(0 downto 0);
signal data_out_MUX_uart_mac_c_l207_c8_a40b_iftrue : unsigned(0 downto 0);
signal data_out_MUX_uart_mac_c_l207_c8_a40b_iffalse : unsigned(0 downto 0);
signal data_out_MUX_uart_mac_c_l207_c8_a40b_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_c_l207_c8_a40b]
signal state_MUX_uart_mac_c_l207_c8_a40b_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l207_c8_a40b_iftrue : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l207_c8_a40b_iffalse : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l207_c8_a40b_return_output : uart_tx_mac_state_t;

-- BIN_OP_PLUS[uart_mac_c_l211_c5_9223]
signal BIN_OP_PLUS_uart_mac_c_l211_c5_9223_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l211_c5_9223_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l211_c5_9223_return_output : unsigned(16 downto 0);

-- bit_counter_MUX[uart_mac_c_l212_c5_f476]
signal bit_counter_MUX_uart_mac_c_l212_c5_f476_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_c_l212_c5_f476_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l212_c5_f476_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_c_l212_c5_f476_return_output : unsigned(3 downto 0);

-- clk_counter_MUX[uart_mac_c_l212_c5_f476]
signal clk_counter_MUX_uart_mac_c_l212_c5_f476_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l212_c5_f476_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l212_c5_f476_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l212_c5_f476_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_c_l212_c5_f476]
signal state_MUX_uart_mac_c_l212_c5_f476_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l212_c5_f476_iftrue : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l212_c5_f476_iffalse : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l212_c5_f476_return_output : uart_tx_mac_state_t;

-- BIN_OP_PLUS[uart_mac_c_l216_c7_8f91]
signal BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_left : unsigned(3 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_return_output : unsigned(4 downto 0);

-- BIN_OP_EQ[uart_mac_c_l218_c10_e118]
signal BIN_OP_EQ_uart_mac_c_l218_c10_e118_left : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_c_l218_c10_e118_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_c_l218_c10_e118_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_c_l218_c7_257c]
signal clk_counter_MUX_uart_mac_c_l218_c7_257c_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l218_c7_257c_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l218_c7_257c_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l218_c7_257c_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_c_l218_c7_257c]
signal state_MUX_uart_mac_c_l218_c7_257c_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l218_c7_257c_iftrue : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l218_c7_257c_iffalse : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l218_c7_257c_return_output : uart_tx_mac_state_t;

-- BIN_OP_EQ[uart_mac_c_l226_c11_e38c]
signal BIN_OP_EQ_uart_mac_c_l226_c11_e38c_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l226_c11_e38c_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_c_l226_c11_e38c_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_c_l226_c8_1c3c]
signal clk_counter_MUX_uart_mac_c_l226_c8_1c3c_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_c_l226_c8_1c3c_return_output : unsigned(15 downto 0);

-- data_out_MUX[uart_mac_c_l226_c8_1c3c]
signal data_out_MUX_uart_mac_c_l226_c8_1c3c_cond : unsigned(0 downto 0);
signal data_out_MUX_uart_mac_c_l226_c8_1c3c_iftrue : unsigned(0 downto 0);
signal data_out_MUX_uart_mac_c_l226_c8_1c3c_iffalse : unsigned(0 downto 0);
signal data_out_MUX_uart_mac_c_l226_c8_1c3c_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_c_l226_c8_1c3c]
signal state_MUX_uart_mac_c_l226_c8_1c3c_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l226_c8_1c3c_iftrue : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l226_c8_1c3c_iffalse : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l226_c8_1c3c_return_output : uart_tx_mac_state_t;

-- BIN_OP_PLUS[uart_mac_c_l230_c5_47ea]
signal BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_c_l231_c8_a6aa]
signal BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_c_l231_c5_7b67]
signal state_MUX_uart_mac_c_l231_c5_7b67_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_c_l231_c5_7b67_iftrue : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l231_c5_7b67_iffalse : uart_tx_mac_state_t;
signal state_MUX_uart_mac_c_l231_c5_7b67_return_output : uart_tx_mac_state_t;

function CONST_REF_RD_uint1_t_8_uint1_t_8_52b8( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned;
 ref_toks_4 : unsigned;
 ref_toks_5 : unsigned;
 ref_toks_6 : unsigned;
 ref_toks_7 : unsigned) return uint1_t_8 is
 
  variable base : uint1_t_8; 
  variable return_output : uint1_t_8;
begin
      base(0) := ref_toks_0;
      base(1) := ref_toks_1;
      base(2) := ref_toks_2;
      base(3) := ref_toks_3;
      base(4) := ref_toks_4;
      base(5) := ref_toks_5;
      base(6) := ref_toks_6;
      base(7) := ref_toks_7;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_uart_mac_c_l160_c6_ede4
BIN_OP_EQ_uart_mac_c_l160_c6_ede4 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l160_c6_ede4_left,
BIN_OP_EQ_uart_mac_c_l160_c6_ede4_right,
BIN_OP_EQ_uart_mac_c_l160_c6_ede4_return_output);

-- do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1
do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_cond,
do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iftrue,
do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iffalse,
do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_return_output);

-- BIN_OP_GTE_uart_mac_c_l163_c8_1550
BIN_OP_GTE_uart_mac_c_l163_c8_1550 : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_de264c78 port map (
BIN_OP_GTE_uart_mac_c_l163_c8_1550_left,
BIN_OP_GTE_uart_mac_c_l163_c8_1550_right,
BIN_OP_GTE_uart_mac_c_l163_c8_1550_return_output);

-- do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9
do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_cond,
do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iftrue,
do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iffalse,
do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_return_output);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235
FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235 : entity work.CONST_SR_0_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_x,
FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_return_output);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235
FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235 : entity work.CONST_SR_1_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_x,
FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_return_output);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235
FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235 : entity work.CONST_SR_2_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_x,
FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_return_output);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235
FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235 : entity work.CONST_SR_3_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_x,
FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_return_output);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235
FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235 : entity work.CONST_SR_4_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_x,
FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_return_output);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235
FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235 : entity work.CONST_SR_5_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_x,
FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_return_output);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235
FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235 : entity work.CONST_SR_6_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_x,
FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_return_output);

-- FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235
FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235 : entity work.CONST_SR_7_uint8_t_0CLK_de264c78 port map (
FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_x,
FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_return_output);

-- uart_serializer_uart_mac_c_l177_c29_5c3a
uart_serializer_uart_mac_c_l177_c29_5c3a : entity work.uart_serializer_0CLK_1ef564a5 port map (
clk,
uart_serializer_uart_mac_c_l177_c29_5c3a_CLOCK_ENABLE,
uart_serializer_uart_mac_c_l177_c29_5c3a_in_data,
uart_serializer_uart_mac_c_l177_c29_5c3a_in_data_valid,
uart_serializer_uart_mac_c_l177_c29_5c3a_out_data_ready,
uart_serializer_uart_mac_c_l177_c29_5c3a_return_output);

-- BIN_OP_EQ_uart_mac_c_l183_c6_177d
BIN_OP_EQ_uart_mac_c_l183_c6_177d : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l183_c6_177d_left,
BIN_OP_EQ_uart_mac_c_l183_c6_177d_right,
BIN_OP_EQ_uart_mac_c_l183_c6_177d_return_output);

-- clk_counter_MUX_uart_mac_c_l183_c3_62d8
clk_counter_MUX_uart_mac_c_l183_c3_62d8 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l183_c3_62d8_cond,
clk_counter_MUX_uart_mac_c_l183_c3_62d8_iftrue,
clk_counter_MUX_uart_mac_c_l183_c3_62d8_iffalse,
clk_counter_MUX_uart_mac_c_l183_c3_62d8_return_output);

-- state_MUX_uart_mac_c_l183_c3_62d8
state_MUX_uart_mac_c_l183_c3_62d8 : entity work.MUX_uint1_t_uart_tx_mac_state_t_uart_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l183_c3_62d8_cond,
state_MUX_uart_mac_c_l183_c3_62d8_iftrue,
state_MUX_uart_mac_c_l183_c3_62d8_iffalse,
state_MUX_uart_mac_c_l183_c3_62d8_return_output);

-- clk_counter_MUX_uart_mac_c_l186_c5_b13a
clk_counter_MUX_uart_mac_c_l186_c5_b13a : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l186_c5_b13a_cond,
clk_counter_MUX_uart_mac_c_l186_c5_b13a_iftrue,
clk_counter_MUX_uart_mac_c_l186_c5_b13a_iffalse,
clk_counter_MUX_uart_mac_c_l186_c5_b13a_return_output);

-- state_MUX_uart_mac_c_l186_c5_b13a
state_MUX_uart_mac_c_l186_c5_b13a : entity work.MUX_uint1_t_uart_tx_mac_state_t_uart_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l186_c5_b13a_cond,
state_MUX_uart_mac_c_l186_c5_b13a_iftrue,
state_MUX_uart_mac_c_l186_c5_b13a_iffalse,
state_MUX_uart_mac_c_l186_c5_b13a_return_output);

-- BIN_OP_EQ_uart_mac_c_l194_c6_4ab9
BIN_OP_EQ_uart_mac_c_l194_c6_4ab9 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_left,
BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_right,
BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_return_output);

-- bit_counter_MUX_uart_mac_c_l194_c3_faa3
bit_counter_MUX_uart_mac_c_l194_c3_faa3 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_c_l194_c3_faa3_cond,
bit_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue,
bit_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse,
bit_counter_MUX_uart_mac_c_l194_c3_faa3_return_output);

-- clk_counter_MUX_uart_mac_c_l194_c3_faa3
clk_counter_MUX_uart_mac_c_l194_c3_faa3 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l194_c3_faa3_cond,
clk_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue,
clk_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse,
clk_counter_MUX_uart_mac_c_l194_c3_faa3_return_output);

-- data_out_MUX_uart_mac_c_l194_c3_faa3
data_out_MUX_uart_mac_c_l194_c3_faa3 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_out_MUX_uart_mac_c_l194_c3_faa3_cond,
data_out_MUX_uart_mac_c_l194_c3_faa3_iftrue,
data_out_MUX_uart_mac_c_l194_c3_faa3_iffalse,
data_out_MUX_uart_mac_c_l194_c3_faa3_return_output);

-- state_MUX_uart_mac_c_l194_c3_faa3
state_MUX_uart_mac_c_l194_c3_faa3 : entity work.MUX_uint1_t_uart_tx_mac_state_t_uart_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l194_c3_faa3_cond,
state_MUX_uart_mac_c_l194_c3_faa3_iftrue,
state_MUX_uart_mac_c_l194_c3_faa3_iffalse,
state_MUX_uart_mac_c_l194_c3_faa3_return_output);

-- BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d
BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_left,
BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_right,
BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_return_output);

-- BIN_OP_GTE_uart_mac_c_l199_c8_71cd
BIN_OP_GTE_uart_mac_c_l199_c8_71cd : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_de264c78 port map (
BIN_OP_GTE_uart_mac_c_l199_c8_71cd_left,
BIN_OP_GTE_uart_mac_c_l199_c8_71cd_right,
BIN_OP_GTE_uart_mac_c_l199_c8_71cd_return_output);

-- bit_counter_MUX_uart_mac_c_l199_c5_bda7
bit_counter_MUX_uart_mac_c_l199_c5_bda7 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_c_l199_c5_bda7_cond,
bit_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue,
bit_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse,
bit_counter_MUX_uart_mac_c_l199_c5_bda7_return_output);

-- clk_counter_MUX_uart_mac_c_l199_c5_bda7
clk_counter_MUX_uart_mac_c_l199_c5_bda7 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l199_c5_bda7_cond,
clk_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue,
clk_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse,
clk_counter_MUX_uart_mac_c_l199_c5_bda7_return_output);

-- state_MUX_uart_mac_c_l199_c5_bda7
state_MUX_uart_mac_c_l199_c5_bda7 : entity work.MUX_uint1_t_uart_tx_mac_state_t_uart_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l199_c5_bda7_cond,
state_MUX_uart_mac_c_l199_c5_bda7_iftrue,
state_MUX_uart_mac_c_l199_c5_bda7_iffalse,
state_MUX_uart_mac_c_l199_c5_bda7_return_output);

-- BIN_OP_EQ_uart_mac_c_l207_c11_341d
BIN_OP_EQ_uart_mac_c_l207_c11_341d : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l207_c11_341d_left,
BIN_OP_EQ_uart_mac_c_l207_c11_341d_right,
BIN_OP_EQ_uart_mac_c_l207_c11_341d_return_output);

-- bit_counter_MUX_uart_mac_c_l207_c8_a40b
bit_counter_MUX_uart_mac_c_l207_c8_a40b : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_c_l207_c8_a40b_cond,
bit_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue,
bit_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse,
bit_counter_MUX_uart_mac_c_l207_c8_a40b_return_output);

-- clk_counter_MUX_uart_mac_c_l207_c8_a40b
clk_counter_MUX_uart_mac_c_l207_c8_a40b : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l207_c8_a40b_cond,
clk_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue,
clk_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse,
clk_counter_MUX_uart_mac_c_l207_c8_a40b_return_output);

-- data_out_MUX_uart_mac_c_l207_c8_a40b
data_out_MUX_uart_mac_c_l207_c8_a40b : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_out_MUX_uart_mac_c_l207_c8_a40b_cond,
data_out_MUX_uart_mac_c_l207_c8_a40b_iftrue,
data_out_MUX_uart_mac_c_l207_c8_a40b_iffalse,
data_out_MUX_uart_mac_c_l207_c8_a40b_return_output);

-- state_MUX_uart_mac_c_l207_c8_a40b
state_MUX_uart_mac_c_l207_c8_a40b : entity work.MUX_uint1_t_uart_tx_mac_state_t_uart_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l207_c8_a40b_cond,
state_MUX_uart_mac_c_l207_c8_a40b_iftrue,
state_MUX_uart_mac_c_l207_c8_a40b_iffalse,
state_MUX_uart_mac_c_l207_c8_a40b_return_output);

-- BIN_OP_PLUS_uart_mac_c_l211_c5_9223
BIN_OP_PLUS_uart_mac_c_l211_c5_9223 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_c_l211_c5_9223_left,
BIN_OP_PLUS_uart_mac_c_l211_c5_9223_right,
BIN_OP_PLUS_uart_mac_c_l211_c5_9223_return_output);

-- bit_counter_MUX_uart_mac_c_l212_c5_f476
bit_counter_MUX_uart_mac_c_l212_c5_f476 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_c_l212_c5_f476_cond,
bit_counter_MUX_uart_mac_c_l212_c5_f476_iftrue,
bit_counter_MUX_uart_mac_c_l212_c5_f476_iffalse,
bit_counter_MUX_uart_mac_c_l212_c5_f476_return_output);

-- clk_counter_MUX_uart_mac_c_l212_c5_f476
clk_counter_MUX_uart_mac_c_l212_c5_f476 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l212_c5_f476_cond,
clk_counter_MUX_uart_mac_c_l212_c5_f476_iftrue,
clk_counter_MUX_uart_mac_c_l212_c5_f476_iffalse,
clk_counter_MUX_uart_mac_c_l212_c5_f476_return_output);

-- state_MUX_uart_mac_c_l212_c5_f476
state_MUX_uart_mac_c_l212_c5_f476 : entity work.MUX_uint1_t_uart_tx_mac_state_t_uart_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l212_c5_f476_cond,
state_MUX_uart_mac_c_l212_c5_f476_iftrue,
state_MUX_uart_mac_c_l212_c5_f476_iffalse,
state_MUX_uart_mac_c_l212_c5_f476_return_output);

-- BIN_OP_PLUS_uart_mac_c_l216_c7_8f91
BIN_OP_PLUS_uart_mac_c_l216_c7_8f91 : entity work.BIN_OP_PLUS_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_left,
BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_right,
BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_return_output);

-- BIN_OP_EQ_uart_mac_c_l218_c10_e118
BIN_OP_EQ_uart_mac_c_l218_c10_e118 : entity work.BIN_OP_EQ_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l218_c10_e118_left,
BIN_OP_EQ_uart_mac_c_l218_c10_e118_right,
BIN_OP_EQ_uart_mac_c_l218_c10_e118_return_output);

-- clk_counter_MUX_uart_mac_c_l218_c7_257c
clk_counter_MUX_uart_mac_c_l218_c7_257c : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l218_c7_257c_cond,
clk_counter_MUX_uart_mac_c_l218_c7_257c_iftrue,
clk_counter_MUX_uart_mac_c_l218_c7_257c_iffalse,
clk_counter_MUX_uart_mac_c_l218_c7_257c_return_output);

-- state_MUX_uart_mac_c_l218_c7_257c
state_MUX_uart_mac_c_l218_c7_257c : entity work.MUX_uint1_t_uart_tx_mac_state_t_uart_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l218_c7_257c_cond,
state_MUX_uart_mac_c_l218_c7_257c_iftrue,
state_MUX_uart_mac_c_l218_c7_257c_iffalse,
state_MUX_uart_mac_c_l218_c7_257c_return_output);

-- BIN_OP_EQ_uart_mac_c_l226_c11_e38c
BIN_OP_EQ_uart_mac_c_l226_c11_e38c : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l226_c11_e38c_left,
BIN_OP_EQ_uart_mac_c_l226_c11_e38c_right,
BIN_OP_EQ_uart_mac_c_l226_c11_e38c_return_output);

-- clk_counter_MUX_uart_mac_c_l226_c8_1c3c
clk_counter_MUX_uart_mac_c_l226_c8_1c3c : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_c_l226_c8_1c3c_cond,
clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iftrue,
clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iffalse,
clk_counter_MUX_uart_mac_c_l226_c8_1c3c_return_output);

-- data_out_MUX_uart_mac_c_l226_c8_1c3c
data_out_MUX_uart_mac_c_l226_c8_1c3c : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
data_out_MUX_uart_mac_c_l226_c8_1c3c_cond,
data_out_MUX_uart_mac_c_l226_c8_1c3c_iftrue,
data_out_MUX_uart_mac_c_l226_c8_1c3c_iffalse,
data_out_MUX_uart_mac_c_l226_c8_1c3c_return_output);

-- state_MUX_uart_mac_c_l226_c8_1c3c
state_MUX_uart_mac_c_l226_c8_1c3c : entity work.MUX_uint1_t_uart_tx_mac_state_t_uart_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l226_c8_1c3c_cond,
state_MUX_uart_mac_c_l226_c8_1c3c_iftrue,
state_MUX_uart_mac_c_l226_c8_1c3c_iffalse,
state_MUX_uart_mac_c_l226_c8_1c3c_return_output);

-- BIN_OP_PLUS_uart_mac_c_l230_c5_47ea
BIN_OP_PLUS_uart_mac_c_l230_c5_47ea : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_left,
BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_right,
BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_return_output);

-- BIN_OP_GTE_uart_mac_c_l231_c8_a6aa
BIN_OP_GTE_uart_mac_c_l231_c8_a6aa : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_de264c78 port map (
BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_left,
BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_right,
BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_return_output);

-- state_MUX_uart_mac_c_l231_c5_7b67
state_MUX_uart_mac_c_l231_c5_7b67 : entity work.MUX_uint1_t_uart_tx_mac_state_t_uart_tx_mac_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_c_l231_c5_7b67_cond,
state_MUX_uart_mac_c_l231_c5_7b67_iftrue,
state_MUX_uart_mac_c_l231_c5_7b67_iffalse,
state_MUX_uart_mac_c_l231_c5_7b67_return_output);



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
 BIN_OP_EQ_uart_mac_c_l160_c6_ede4_return_output,
 do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_return_output,
 BIN_OP_GTE_uart_mac_c_l163_c8_1550_return_output,
 do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_return_output,
 FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_return_output,
 FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_return_output,
 FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_return_output,
 FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_return_output,
 FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_return_output,
 FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_return_output,
 FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_return_output,
 FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_return_output,
 uart_serializer_uart_mac_c_l177_c29_5c3a_return_output,
 BIN_OP_EQ_uart_mac_c_l183_c6_177d_return_output,
 clk_counter_MUX_uart_mac_c_l183_c3_62d8_return_output,
 state_MUX_uart_mac_c_l183_c3_62d8_return_output,
 clk_counter_MUX_uart_mac_c_l186_c5_b13a_return_output,
 state_MUX_uart_mac_c_l186_c5_b13a_return_output,
 BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_return_output,
 bit_counter_MUX_uart_mac_c_l194_c3_faa3_return_output,
 clk_counter_MUX_uart_mac_c_l194_c3_faa3_return_output,
 data_out_MUX_uart_mac_c_l194_c3_faa3_return_output,
 state_MUX_uart_mac_c_l194_c3_faa3_return_output,
 BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_return_output,
 BIN_OP_GTE_uart_mac_c_l199_c8_71cd_return_output,
 bit_counter_MUX_uart_mac_c_l199_c5_bda7_return_output,
 clk_counter_MUX_uart_mac_c_l199_c5_bda7_return_output,
 state_MUX_uart_mac_c_l199_c5_bda7_return_output,
 BIN_OP_EQ_uart_mac_c_l207_c11_341d_return_output,
 bit_counter_MUX_uart_mac_c_l207_c8_a40b_return_output,
 clk_counter_MUX_uart_mac_c_l207_c8_a40b_return_output,
 data_out_MUX_uart_mac_c_l207_c8_a40b_return_output,
 state_MUX_uart_mac_c_l207_c8_a40b_return_output,
 BIN_OP_PLUS_uart_mac_c_l211_c5_9223_return_output,
 bit_counter_MUX_uart_mac_c_l212_c5_f476_return_output,
 clk_counter_MUX_uart_mac_c_l212_c5_f476_return_output,
 state_MUX_uart_mac_c_l212_c5_f476_return_output,
 BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_return_output,
 BIN_OP_EQ_uart_mac_c_l218_c10_e118_return_output,
 clk_counter_MUX_uart_mac_c_l218_c7_257c_return_output,
 state_MUX_uart_mac_c_l218_c7_257c_return_output,
 BIN_OP_EQ_uart_mac_c_l226_c11_e38c_return_output,
 clk_counter_MUX_uart_mac_c_l226_c8_1c3c_return_output,
 data_out_MUX_uart_mac_c_l226_c8_1c3c_return_output,
 state_MUX_uart_mac_c_l226_c8_1c3c_return_output,
 BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_return_output,
 BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_return_output,
 state_MUX_uart_mac_c_l231_c5_7b67_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_tx_mac_word_in : uart_mac_s;
 variable VAR_uart_tx_mac_in_ready : unsigned(0 downto 0);
 variable VAR_uart_data_out : unsigned(0 downto 0);
 variable VAR_word_in : uart_mac_s;
 variable VAR_word_in_ready : unsigned(0 downto 0);
 variable VAR_data_out : unsigned(0 downto 0);
 variable VAR_i : unsigned(31 downto 0);
 variable VAR_do_next_bit_stuff : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l160_c6_ede4_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l160_c6_ede4_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l160_c6_ede4_return_output : unsigned(0 downto 0);
 variable VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iftrue : unsigned(0 downto 0);
 variable VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_return_output : unsigned(0 downto 0);
 variable VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iffalse : unsigned(0 downto 0);
 variable VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_return_output : unsigned(0 downto 0);
 variable VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l163_c8_1550_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l163_c8_1550_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l163_c8_1550_return_output : unsigned(0 downto 0);
 variable VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iftrue : unsigned(0 downto 0);
 variable VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iffalse : unsigned(0 downto 0);
 variable VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_cond : unsigned(0 downto 0);
 variable VAR_ser_out_data_ready : unsigned(0 downto 0);
 variable VAR_ser_in_data : uint1_t_8;
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_0_ser_in_data_0_uart_mac_c_l175_c5_e7f2 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_1_ser_in_data_1_uart_mac_c_l175_c5_e7f2 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_2_ser_in_data_2_uart_mac_c_l175_c5_e7f2 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_3_ser_in_data_3_uart_mac_c_l175_c5_e7f2 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_4_ser_in_data_4_uart_mac_c_l175_c5_e7f2 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_5_ser_in_data_5_uart_mac_c_l175_c5_e7f2 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_6_ser_in_data_6_uart_mac_c_l175_c5_e7f2 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_7_ser_in_data_7_uart_mac_c_l175_c5_e7f2 : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_return_output : unsigned(7 downto 0);
 variable VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_x : unsigned(7 downto 0);
 variable VAR_ser : uart_serializer_o_t;
 variable VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_in_data : uint1_t_8;
 variable VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_in_data_valid : unsigned(0 downto 0);
 variable VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_out_data_ready : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_c_l177_c45_cc51_return_output : uint1_t_8;
 variable VAR_CONST_REF_RD_uint1_t_uart_mac_s_valid_d41d_uart_mac_c_l177_c58_c930_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_return_output : uart_serializer_o_t;
 variable VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_in_data_ready_d41d_uart_mac_c_l178_c19_1109_return_output : unsigned(0 downto 0);
 variable VAR_tx_bit : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_d41d_uart_mac_c_l179_c20_1752_return_output : unsigned(0 downto 0);
 variable VAR_tx_bit_valid : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_valid_d41d_uart_mac_c_l180_c26_c62f_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l183_c6_177d_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l183_c6_177d_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l183_c6_177d_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l183_c3_62d8_iftrue : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l186_c5_b13a_return_output : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l183_c3_62d8_iffalse : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l183_c3_62d8_return_output : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l183_c3_62d8_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_c_l190_c7_6354 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l186_c5_b13a_iftrue : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l186_c5_b13a_iffalse : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l186_c5_b13a_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_cond : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_iftrue : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_iffalse : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_return_output : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_return_output : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l194_c3_faa3_iftrue : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l199_c5_bda7_return_output : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l194_c3_faa3_iffalse : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l207_c8_a40b_return_output : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l194_c3_faa3_return_output : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l194_c3_faa3_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_c_l198_c5_3b4f : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_c_l204_c7_9e31 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_c_l203_c7_9f9d : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l199_c5_bda7_iftrue : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l199_c5_bda7_iffalse : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l199_c5_bda7_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_return_output : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_cond : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_iftrue : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_iffalse : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_return_output : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l207_c8_a40b_iftrue : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l212_c5_f476_return_output : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l207_c8_a40b_iffalse : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l226_c8_1c3c_return_output : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l207_c8_a40b_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_c_l211_c5_a7ac : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l211_c5_9223_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l211_c5_9223_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l211_c5_9223_return_output : unsigned(16 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_c_l216_c7_861f : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l212_c5_f476_iftrue : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l218_c7_257c_return_output : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l212_c5_f476_iffalse : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l212_c5_f476_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_c_l215_c7_c804 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l218_c10_e118_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l218_c10_e118_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l218_c10_e118_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_c_l222_c9_d5e3 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l218_c7_257c_iftrue : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l218_c7_257c_iffalse : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l218_c7_257c_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_c_l230_c5_1414 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_cond : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_iftrue : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_iffalse : unsigned(0 downto 0);
 variable VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l226_c8_1c3c_iftrue : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l231_c5_7b67_return_output : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l226_c8_1c3c_iffalse : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l226_c8_1c3c_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_c_l231_c5_7b67_iftrue : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l231_c5_7b67_iffalse : uart_tx_mac_state_t;
 variable VAR_state_MUX_uart_mac_c_l231_c5_7b67_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027_return_output : unsigned(7 downto 0);
 -- State registers comb logic variables
variable REG_VAR_state : uart_tx_mac_state_t;
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
     VAR_BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_c_l183_c6_177d_right := to_unsigned(uart_tx_mac_state_t_to_integer(IDLE) ,2);
     VAR_state_MUX_uart_mac_c_l231_c5_7b67_iftrue := IDLE;
     VAR_BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_c_l160_c6_ede4_right := to_unsigned(uart_tx_mac_state_t_to_integer(TRANSMIT) ,2);
     VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iftrue := to_unsigned(1, 1);
     VAR_clk_counter_uart_mac_c_l203_c7_9f9d := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue := VAR_clk_counter_uart_mac_c_l203_c7_9f9d;
     VAR_state_MUX_uart_mac_c_l186_c5_b13a_iftrue := SEND_START;
     VAR_BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_right := to_unsigned(1, 1);
     VAR_state_MUX_uart_mac_c_l199_c5_bda7_iftrue := TRANSMIT;
     VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_iftrue := to_unsigned(1, 1);
     VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_iftrue := to_unsigned(0, 1);
     VAR_bit_counter_uart_mac_c_l204_c7_9e31 := resize(to_unsigned(0, 1), 4);
     VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue := VAR_bit_counter_uart_mac_c_l204_c7_9e31;
     VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_right := to_unsigned(uart_tx_mac_state_t_to_integer(SEND_STOP) ,2);
     VAR_clk_counter_uart_mac_c_l215_c7_c804 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_iffalse := VAR_clk_counter_uart_mac_c_l215_c7_c804;
     VAR_BIN_OP_PLUS_uart_mac_c_l211_c5_9223_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_c_l218_c10_e118_right := to_unsigned(8, 4);
     VAR_BIN_OP_GTE_uart_mac_c_l163_c8_1550_right := resize(to_unsigned(1287, 11), 16);
     VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_right := to_unsigned(uart_tx_mac_state_t_to_integer(TRANSMIT) ,2);
     VAR_BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_right := resize(to_unsigned(1288, 11), 16);
     VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iffalse := to_unsigned(0, 1);
     VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iffalse := to_unsigned(0, 1);
     VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_right := resize(to_unsigned(1288, 11), 16);
     VAR_clk_counter_uart_mac_c_l190_c7_6354 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_iftrue := VAR_clk_counter_uart_mac_c_l190_c7_6354;
     VAR_clk_counter_uart_mac_c_l222_c9_d5e3 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_iftrue := VAR_clk_counter_uart_mac_c_l222_c9_d5e3;
     VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_right := to_unsigned(uart_tx_mac_state_t_to_integer(SEND_START) ,2);
     VAR_state_MUX_uart_mac_c_l218_c7_257c_iftrue := SEND_STOP;
 -- Reads from global variables
     VAR_uart_tx_mac_word_in := global_to_module.uart_tx_mac_word_in;
     -- Submodule level 0
     -- CONST_REF_RD_uint1_t_uart_mac_s_valid_d41d[uart_mac_c_l177_c58_c930] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_mac_s_valid_d41d_uart_mac_c_l177_c58_c930_return_output := VAR_uart_tx_mac_word_in.valid;

     -- CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027 LATENCY=0
     VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027_return_output := VAR_uart_tx_mac_word_in.data;

     -- Submodule level 1
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_x := VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027_return_output;
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_x := VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027_return_output;
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_x := VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027_return_output;
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_x := VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027_return_output;
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_x := VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027_return_output;
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_x := VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027_return_output;
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_x := VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027_return_output;
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_x := VAR_CONST_REF_RD_uint8_t_uart_mac_s_data_d41d_uart_mac_c_l175_DUPLICATE_c027_return_output;
     VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_in_data_valid := VAR_CONST_REF_RD_uint1_t_uart_mac_s_valid_d41d_uart_mac_c_l177_c58_c930_return_output;
     -- FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3[uart_mac_c_l175_c22_d235] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_x <= VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_return_output := FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_return_output;

     -- FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6[uart_mac_c_l175_c22_d235] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_x <= VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_return_output := FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_return_output;

     -- FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1[uart_mac_c_l175_c22_d235] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_x <= VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_return_output := FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_return_output;

     -- FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4[uart_mac_c_l175_c22_d235] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_x <= VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_return_output := FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_return_output;

     -- FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7[uart_mac_c_l175_c22_d235] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_x <= VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_return_output := FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_return_output;

     -- FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5[uart_mac_c_l175_c22_d235] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_x <= VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_return_output := FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_return_output;

     -- FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2[uart_mac_c_l175_c22_d235] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_x <= VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_return_output := FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_return_output;

     -- FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0[uart_mac_c_l175_c22_d235] LATENCY=0
     -- Inputs
     FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_x <= VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_x;
     -- Outputs
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_return_output := FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_return_output;

     -- Submodule level 2
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_6_ser_in_data_6_uart_mac_c_l175_c5_e7f2 := resize(VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_6_CONST_SR_6_uart_mac_c_l175_c22_d235_return_output, 1);
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_0_ser_in_data_0_uart_mac_c_l175_c5_e7f2 := resize(VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_0_CONST_SR_0_uart_mac_c_l175_c22_d235_return_output, 1);
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_3_ser_in_data_3_uart_mac_c_l175_c5_e7f2 := resize(VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_3_CONST_SR_3_uart_mac_c_l175_c22_d235_return_output, 1);
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_7_ser_in_data_7_uart_mac_c_l175_c5_e7f2 := resize(VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_7_CONST_SR_7_uart_mac_c_l175_c22_d235_return_output, 1);
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_5_ser_in_data_5_uart_mac_c_l175_c5_e7f2 := resize(VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_5_CONST_SR_5_uart_mac_c_l175_c22_d235_return_output, 1);
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_1_ser_in_data_1_uart_mac_c_l175_c5_e7f2 := resize(VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_1_CONST_SR_1_uart_mac_c_l175_c22_d235_return_output, 1);
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_2_ser_in_data_2_uart_mac_c_l175_c5_e7f2 := resize(VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_2_CONST_SR_2_uart_mac_c_l175_c22_d235_return_output, 1);
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_4_ser_in_data_4_uart_mac_c_l175_c5_e7f2 := resize(VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_4_CONST_SR_4_uart_mac_c_l175_c22_d235_return_output, 1);
     -- CONST_REF_RD_uint1_t_8_uint1_t_8_52b8[uart_mac_c_l177_c45_cc51] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_c_l177_c45_cc51_return_output := CONST_REF_RD_uint1_t_8_uint1_t_8_52b8(
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_0_ser_in_data_0_uart_mac_c_l175_c5_e7f2,
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_1_ser_in_data_1_uart_mac_c_l175_c5_e7f2,
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_2_ser_in_data_2_uart_mac_c_l175_c5_e7f2,
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_3_ser_in_data_3_uart_mac_c_l175_c5_e7f2,
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_4_ser_in_data_4_uart_mac_c_l175_c5_e7f2,
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_5_ser_in_data_5_uart_mac_c_l175_c5_e7f2,
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_6_ser_in_data_6_uart_mac_c_l175_c5_e7f2,
     VAR_FOR_uart_mac_c_l173_c3_69e8_ITER_7_ser_in_data_7_uart_mac_c_l175_c5_e7f2);

     -- Submodule level 3
     VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_in_data := VAR_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_c_l177_c45_cc51_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;

     -- Submodule level 0
     VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     VAR_BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_left := bit_counter;
     VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_iffalse := bit_counter;
     VAR_BIN_OP_GTE_uart_mac_c_l163_c8_1550_left := clk_counter;
     VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_iffalse := clk_counter;
     VAR_BIN_OP_EQ_uart_mac_c_l160_c6_ede4_left := to_unsigned(uart_tx_mac_state_t_to_integer(state) ,2);
     VAR_BIN_OP_EQ_uart_mac_c_l183_c6_177d_left := to_unsigned(uart_tx_mac_state_t_to_integer(state) ,2);
     VAR_state_MUX_uart_mac_c_l183_c3_62d8_iffalse := state;
     VAR_state_MUX_uart_mac_c_l186_c5_b13a_iffalse := state;
     -- BIN_OP_EQ[uart_mac_c_l183_c6_177d] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l183_c6_177d_left <= VAR_BIN_OP_EQ_uart_mac_c_l183_c6_177d_left;
     BIN_OP_EQ_uart_mac_c_l183_c6_177d_right <= VAR_BIN_OP_EQ_uart_mac_c_l183_c6_177d_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l183_c6_177d_return_output := BIN_OP_EQ_uart_mac_c_l183_c6_177d_return_output;

     -- BIN_OP_GTE[uart_mac_c_l163_c8_1550] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_c_l163_c8_1550_left <= VAR_BIN_OP_GTE_uart_mac_c_l163_c8_1550_left;
     BIN_OP_GTE_uart_mac_c_l163_c8_1550_right <= VAR_BIN_OP_GTE_uart_mac_c_l163_c8_1550_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_c_l163_c8_1550_return_output := BIN_OP_GTE_uart_mac_c_l163_c8_1550_return_output;

     -- BIN_OP_EQ[uart_mac_c_l160_c6_ede4] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l160_c6_ede4_left <= VAR_BIN_OP_EQ_uart_mac_c_l160_c6_ede4_left;
     BIN_OP_EQ_uart_mac_c_l160_c6_ede4_right <= VAR_BIN_OP_EQ_uart_mac_c_l160_c6_ede4_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l160_c6_ede4_return_output := BIN_OP_EQ_uart_mac_c_l160_c6_ede4_return_output;

     -- BIN_OP_PLUS[uart_mac_c_l216_c7_8f91] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_left <= VAR_BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_left;
     BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_right <= VAR_BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_return_output := BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_return_output;

     -- Submodule level 1
     VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_cond := VAR_BIN_OP_EQ_uart_mac_c_l160_c6_ede4_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_cond := VAR_BIN_OP_EQ_uart_mac_c_l183_c6_177d_return_output;
     VAR_state_MUX_uart_mac_c_l183_c3_62d8_cond := VAR_BIN_OP_EQ_uart_mac_c_l183_c6_177d_return_output;
     VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_cond := VAR_BIN_OP_GTE_uart_mac_c_l163_c8_1550_return_output;
     VAR_bit_counter_uart_mac_c_l216_c7_861f := resize(VAR_BIN_OP_PLUS_uart_mac_c_l216_c7_8f91_return_output, 4);
     VAR_BIN_OP_EQ_uart_mac_c_l218_c10_e118_left := VAR_bit_counter_uart_mac_c_l216_c7_861f;
     VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_iftrue := VAR_bit_counter_uart_mac_c_l216_c7_861f;
     -- do_next_bit_stuff_MUX[uart_mac_c_l163_c5_e8f9] LATENCY=0
     -- Inputs
     do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_cond <= VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_cond;
     do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iftrue <= VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iftrue;
     do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iffalse <= VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_iffalse;
     -- Outputs
     VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_return_output := do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_return_output;

     -- BIN_OP_EQ[uart_mac_c_l218_c10_e118] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l218_c10_e118_left <= VAR_BIN_OP_EQ_uart_mac_c_l218_c10_e118_left;
     BIN_OP_EQ_uart_mac_c_l218_c10_e118_right <= VAR_BIN_OP_EQ_uart_mac_c_l218_c10_e118_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l218_c10_e118_return_output := BIN_OP_EQ_uart_mac_c_l218_c10_e118_return_output;

     -- Submodule level 2
     VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_cond := VAR_BIN_OP_EQ_uart_mac_c_l218_c10_e118_return_output;
     VAR_state_MUX_uart_mac_c_l218_c7_257c_cond := VAR_BIN_OP_EQ_uart_mac_c_l218_c10_e118_return_output;
     VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iftrue := VAR_do_next_bit_stuff_MUX_uart_mac_c_l163_c5_e8f9_return_output;
     -- clk_counter_MUX[uart_mac_c_l218_c7_257c] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l218_c7_257c_cond <= VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_cond;
     clk_counter_MUX_uart_mac_c_l218_c7_257c_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_iftrue;
     clk_counter_MUX_uart_mac_c_l218_c7_257c_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_return_output := clk_counter_MUX_uart_mac_c_l218_c7_257c_return_output;

     -- do_next_bit_stuff_MUX[uart_mac_c_l160_c3_15d1] LATENCY=0
     -- Inputs
     do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_cond <= VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_cond;
     do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iftrue <= VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iftrue;
     do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iffalse <= VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_iffalse;
     -- Outputs
     VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_return_output := do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_return_output;

     -- Submodule level 3
     VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_iftrue := VAR_clk_counter_MUX_uart_mac_c_l218_c7_257c_return_output;
     VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_cond := VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_cond := VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_return_output;
     VAR_state_MUX_uart_mac_c_l212_c5_f476_cond := VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_return_output;
     VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_out_data_ready := VAR_do_next_bit_stuff_MUX_uart_mac_c_l160_c3_15d1_return_output;
     -- uart_serializer[uart_mac_c_l177_c29_5c3a] LATENCY=0
     -- Clock enable
     uart_serializer_uart_mac_c_l177_c29_5c3a_CLOCK_ENABLE <= VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_CLOCK_ENABLE;
     -- Inputs
     uart_serializer_uart_mac_c_l177_c29_5c3a_in_data <= VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_in_data;
     uart_serializer_uart_mac_c_l177_c29_5c3a_in_data_valid <= VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_in_data_valid;
     uart_serializer_uart_mac_c_l177_c29_5c3a_out_data_ready <= VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_out_data_ready;
     -- Outputs
     VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_return_output := uart_serializer_uart_mac_c_l177_c29_5c3a_return_output;

     -- bit_counter_MUX[uart_mac_c_l212_c5_f476] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_c_l212_c5_f476_cond <= VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_cond;
     bit_counter_MUX_uart_mac_c_l212_c5_f476_iftrue <= VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_iftrue;
     bit_counter_MUX_uart_mac_c_l212_c5_f476_iffalse <= VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_return_output := bit_counter_MUX_uart_mac_c_l212_c5_f476_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue := VAR_bit_counter_MUX_uart_mac_c_l212_c5_f476_return_output;
     -- CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_valid_d41d[uart_mac_c_l180_c26_c62f] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_valid_d41d_uart_mac_c_l180_c26_c62f_return_output := VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_return_output.out_data_valid;

     -- CONST_REF_RD_uint1_t_uart_serializer_o_t_in_data_ready_d41d[uart_mac_c_l178_c19_1109] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_in_data_ready_d41d_uart_mac_c_l178_c19_1109_return_output := VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_return_output.in_data_ready;

     -- CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_d41d[uart_mac_c_l179_c20_1752] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_d41d_uart_mac_c_l179_c20_1752_return_output := VAR_uart_serializer_uart_mac_c_l177_c29_5c3a_return_output.out_data;

     -- Submodule level 5
     VAR_uart_tx_mac_in_ready := VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_in_data_ready_d41d_uart_mac_c_l178_c19_1109_return_output;
     VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_iftrue := VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_d41d_uart_mac_c_l179_c20_1752_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_cond := VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_valid_d41d_uart_mac_c_l180_c26_c62f_return_output;
     VAR_state_MUX_uart_mac_c_l186_c5_b13a_cond := VAR_CONST_REF_RD_uint1_t_uart_serializer_o_t_out_data_valid_d41d_uart_mac_c_l180_c26_c62f_return_output;
     -- state_MUX[uart_mac_c_l186_c5_b13a] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l186_c5_b13a_cond <= VAR_state_MUX_uart_mac_c_l186_c5_b13a_cond;
     state_MUX_uart_mac_c_l186_c5_b13a_iftrue <= VAR_state_MUX_uart_mac_c_l186_c5_b13a_iftrue;
     state_MUX_uart_mac_c_l186_c5_b13a_iffalse <= VAR_state_MUX_uart_mac_c_l186_c5_b13a_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l186_c5_b13a_return_output := state_MUX_uart_mac_c_l186_c5_b13a_return_output;

     -- clk_counter_MUX[uart_mac_c_l186_c5_b13a] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l186_c5_b13a_cond <= VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_cond;
     clk_counter_MUX_uart_mac_c_l186_c5_b13a_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_iftrue;
     clk_counter_MUX_uart_mac_c_l186_c5_b13a_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_return_output := clk_counter_MUX_uart_mac_c_l186_c5_b13a_return_output;

     -- Submodule level 6
     VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_iftrue := VAR_clk_counter_MUX_uart_mac_c_l186_c5_b13a_return_output;
     VAR_state_MUX_uart_mac_c_l183_c3_62d8_iftrue := VAR_state_MUX_uart_mac_c_l186_c5_b13a_return_output;
     -- clk_counter_MUX[uart_mac_c_l183_c3_62d8] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l183_c3_62d8_cond <= VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_cond;
     clk_counter_MUX_uart_mac_c_l183_c3_62d8_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_iftrue;
     clk_counter_MUX_uart_mac_c_l183_c3_62d8_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_return_output := clk_counter_MUX_uart_mac_c_l183_c3_62d8_return_output;

     -- state_MUX[uart_mac_c_l183_c3_62d8] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l183_c3_62d8_cond <= VAR_state_MUX_uart_mac_c_l183_c3_62d8_cond;
     state_MUX_uart_mac_c_l183_c3_62d8_iftrue <= VAR_state_MUX_uart_mac_c_l183_c3_62d8_iftrue;
     state_MUX_uart_mac_c_l183_c3_62d8_iffalse <= VAR_state_MUX_uart_mac_c_l183_c3_62d8_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l183_c3_62d8_return_output := state_MUX_uart_mac_c_l183_c3_62d8_return_output;

     -- Submodule level 7
     VAR_BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_left := VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_return_output;
     VAR_BIN_OP_PLUS_uart_mac_c_l211_c5_9223_left := VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_return_output;
     VAR_BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_left := VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iffalse := VAR_clk_counter_MUX_uart_mac_c_l183_c3_62d8_return_output;
     VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_left := to_unsigned(uart_tx_mac_state_t_to_integer(VAR_state_MUX_uart_mac_c_l183_c3_62d8_return_output) ,2);
     VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_left := to_unsigned(uart_tx_mac_state_t_to_integer(VAR_state_MUX_uart_mac_c_l183_c3_62d8_return_output) ,2);
     VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_left := to_unsigned(uart_tx_mac_state_t_to_integer(VAR_state_MUX_uart_mac_c_l183_c3_62d8_return_output) ,2);
     VAR_state_MUX_uart_mac_c_l199_c5_bda7_iffalse := VAR_state_MUX_uart_mac_c_l183_c3_62d8_return_output;
     VAR_state_MUX_uart_mac_c_l212_c5_f476_iffalse := VAR_state_MUX_uart_mac_c_l183_c3_62d8_return_output;
     VAR_state_MUX_uart_mac_c_l218_c7_257c_iffalse := VAR_state_MUX_uart_mac_c_l183_c3_62d8_return_output;
     VAR_state_MUX_uart_mac_c_l226_c8_1c3c_iffalse := VAR_state_MUX_uart_mac_c_l183_c3_62d8_return_output;
     VAR_state_MUX_uart_mac_c_l231_c5_7b67_iffalse := VAR_state_MUX_uart_mac_c_l183_c3_62d8_return_output;
     -- BIN_OP_EQ[uart_mac_c_l226_c11_e38c] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l226_c11_e38c_left <= VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_left;
     BIN_OP_EQ_uart_mac_c_l226_c11_e38c_right <= VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_return_output := BIN_OP_EQ_uart_mac_c_l226_c11_e38c_return_output;

     -- BIN_OP_PLUS[uart_mac_c_l198_c5_6c4d] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_left <= VAR_BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_left;
     BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_right <= VAR_BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_return_output := BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_return_output;

     -- state_MUX[uart_mac_c_l218_c7_257c] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l218_c7_257c_cond <= VAR_state_MUX_uart_mac_c_l218_c7_257c_cond;
     state_MUX_uart_mac_c_l218_c7_257c_iftrue <= VAR_state_MUX_uart_mac_c_l218_c7_257c_iftrue;
     state_MUX_uart_mac_c_l218_c7_257c_iffalse <= VAR_state_MUX_uart_mac_c_l218_c7_257c_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l218_c7_257c_return_output := state_MUX_uart_mac_c_l218_c7_257c_return_output;

     -- BIN_OP_PLUS[uart_mac_c_l211_c5_9223] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_c_l211_c5_9223_left <= VAR_BIN_OP_PLUS_uart_mac_c_l211_c5_9223_left;
     BIN_OP_PLUS_uart_mac_c_l211_c5_9223_right <= VAR_BIN_OP_PLUS_uart_mac_c_l211_c5_9223_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_c_l211_c5_9223_return_output := BIN_OP_PLUS_uart_mac_c_l211_c5_9223_return_output;

     -- BIN_OP_EQ[uart_mac_c_l194_c6_4ab9] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_left <= VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_left;
     BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_right <= VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_return_output := BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_return_output;

     -- BIN_OP_EQ[uart_mac_c_l207_c11_341d] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l207_c11_341d_left <= VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_left;
     BIN_OP_EQ_uart_mac_c_l207_c11_341d_right <= VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_return_output := BIN_OP_EQ_uart_mac_c_l207_c11_341d_return_output;

     -- BIN_OP_PLUS[uart_mac_c_l230_c5_47ea] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_left <= VAR_BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_left;
     BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_right <= VAR_BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_return_output := BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_return_output;

     -- Submodule level 8
     VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_cond := VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_cond := VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_return_output;
     VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_cond := VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_return_output;
     VAR_state_MUX_uart_mac_c_l194_c3_faa3_cond := VAR_BIN_OP_EQ_uart_mac_c_l194_c6_4ab9_return_output;
     VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_cond := VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_cond := VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_return_output;
     VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_cond := VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_return_output;
     VAR_state_MUX_uart_mac_c_l207_c8_a40b_cond := VAR_BIN_OP_EQ_uart_mac_c_l207_c11_341d_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_cond := VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_return_output;
     VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_cond := VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_return_output;
     VAR_state_MUX_uart_mac_c_l226_c8_1c3c_cond := VAR_BIN_OP_EQ_uart_mac_c_l226_c11_e38c_return_output;
     VAR_clk_counter_uart_mac_c_l198_c5_3b4f := resize(VAR_BIN_OP_PLUS_uart_mac_c_l198_c5_6c4d_return_output, 16);
     VAR_clk_counter_uart_mac_c_l211_c5_a7ac := resize(VAR_BIN_OP_PLUS_uart_mac_c_l211_c5_9223_return_output, 16);
     VAR_clk_counter_uart_mac_c_l230_c5_1414 := resize(VAR_BIN_OP_PLUS_uart_mac_c_l230_c5_47ea_return_output, 16);
     VAR_state_MUX_uart_mac_c_l212_c5_f476_iftrue := VAR_state_MUX_uart_mac_c_l218_c7_257c_return_output;
     VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_left := VAR_clk_counter_uart_mac_c_l198_c5_3b4f;
     VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse := VAR_clk_counter_uart_mac_c_l198_c5_3b4f;
     VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_iffalse := VAR_clk_counter_uart_mac_c_l211_c5_a7ac;
     VAR_BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_left := VAR_clk_counter_uart_mac_c_l230_c5_1414;
     VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iftrue := VAR_clk_counter_uart_mac_c_l230_c5_1414;
     -- BIN_OP_GTE[uart_mac_c_l199_c8_71cd] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_c_l199_c8_71cd_left <= VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_left;
     BIN_OP_GTE_uart_mac_c_l199_c8_71cd_right <= VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_return_output := BIN_OP_GTE_uart_mac_c_l199_c8_71cd_return_output;

     -- clk_counter_MUX[uart_mac_c_l226_c8_1c3c] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l226_c8_1c3c_cond <= VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_cond;
     clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iftrue;
     clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_return_output := clk_counter_MUX_uart_mac_c_l226_c8_1c3c_return_output;

     -- state_MUX[uart_mac_c_l212_c5_f476] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l212_c5_f476_cond <= VAR_state_MUX_uart_mac_c_l212_c5_f476_cond;
     state_MUX_uart_mac_c_l212_c5_f476_iftrue <= VAR_state_MUX_uart_mac_c_l212_c5_f476_iftrue;
     state_MUX_uart_mac_c_l212_c5_f476_iffalse <= VAR_state_MUX_uart_mac_c_l212_c5_f476_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l212_c5_f476_return_output := state_MUX_uart_mac_c_l212_c5_f476_return_output;

     -- data_out_MUX[uart_mac_c_l226_c8_1c3c] LATENCY=0
     -- Inputs
     data_out_MUX_uart_mac_c_l226_c8_1c3c_cond <= VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_cond;
     data_out_MUX_uart_mac_c_l226_c8_1c3c_iftrue <= VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_iftrue;
     data_out_MUX_uart_mac_c_l226_c8_1c3c_iffalse <= VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_iffalse;
     -- Outputs
     VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_return_output := data_out_MUX_uart_mac_c_l226_c8_1c3c_return_output;

     -- bit_counter_MUX[uart_mac_c_l207_c8_a40b] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_c_l207_c8_a40b_cond <= VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_cond;
     bit_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue <= VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue;
     bit_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse <= VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_return_output := bit_counter_MUX_uart_mac_c_l207_c8_a40b_return_output;

     -- BIN_OP_GTE[uart_mac_c_l231_c8_a6aa] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_left <= VAR_BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_left;
     BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_right <= VAR_BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_return_output := BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_return_output;

     -- clk_counter_MUX[uart_mac_c_l212_c5_f476] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l212_c5_f476_cond <= VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_cond;
     clk_counter_MUX_uart_mac_c_l212_c5_f476_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_iftrue;
     clk_counter_MUX_uart_mac_c_l212_c5_f476_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_return_output := clk_counter_MUX_uart_mac_c_l212_c5_f476_return_output;

     -- Submodule level 9
     VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_cond := VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_cond := VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_return_output;
     VAR_state_MUX_uart_mac_c_l199_c5_bda7_cond := VAR_BIN_OP_GTE_uart_mac_c_l199_c8_71cd_return_output;
     VAR_state_MUX_uart_mac_c_l231_c5_7b67_cond := VAR_BIN_OP_GTE_uart_mac_c_l231_c8_a6aa_return_output;
     VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse := VAR_bit_counter_MUX_uart_mac_c_l207_c8_a40b_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue := VAR_clk_counter_MUX_uart_mac_c_l212_c5_f476_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse := VAR_clk_counter_MUX_uart_mac_c_l226_c8_1c3c_return_output;
     VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_iffalse := VAR_data_out_MUX_uart_mac_c_l226_c8_1c3c_return_output;
     VAR_state_MUX_uart_mac_c_l207_c8_a40b_iftrue := VAR_state_MUX_uart_mac_c_l212_c5_f476_return_output;
     -- bit_counter_MUX[uart_mac_c_l199_c5_bda7] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_c_l199_c5_bda7_cond <= VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_cond;
     bit_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue <= VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue;
     bit_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse <= VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_return_output := bit_counter_MUX_uart_mac_c_l199_c5_bda7_return_output;

     -- state_MUX[uart_mac_c_l199_c5_bda7] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l199_c5_bda7_cond <= VAR_state_MUX_uart_mac_c_l199_c5_bda7_cond;
     state_MUX_uart_mac_c_l199_c5_bda7_iftrue <= VAR_state_MUX_uart_mac_c_l199_c5_bda7_iftrue;
     state_MUX_uart_mac_c_l199_c5_bda7_iffalse <= VAR_state_MUX_uart_mac_c_l199_c5_bda7_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l199_c5_bda7_return_output := state_MUX_uart_mac_c_l199_c5_bda7_return_output;

     -- clk_counter_MUX[uart_mac_c_l199_c5_bda7] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l199_c5_bda7_cond <= VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_cond;
     clk_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_iftrue;
     clk_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_return_output := clk_counter_MUX_uart_mac_c_l199_c5_bda7_return_output;

     -- clk_counter_MUX[uart_mac_c_l207_c8_a40b] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l207_c8_a40b_cond <= VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_cond;
     clk_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_iftrue;
     clk_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_return_output := clk_counter_MUX_uart_mac_c_l207_c8_a40b_return_output;

     -- data_out_MUX[uart_mac_c_l207_c8_a40b] LATENCY=0
     -- Inputs
     data_out_MUX_uart_mac_c_l207_c8_a40b_cond <= VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_cond;
     data_out_MUX_uart_mac_c_l207_c8_a40b_iftrue <= VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_iftrue;
     data_out_MUX_uart_mac_c_l207_c8_a40b_iffalse <= VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_iffalse;
     -- Outputs
     VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_return_output := data_out_MUX_uart_mac_c_l207_c8_a40b_return_output;

     -- state_MUX[uart_mac_c_l231_c5_7b67] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l231_c5_7b67_cond <= VAR_state_MUX_uart_mac_c_l231_c5_7b67_cond;
     state_MUX_uart_mac_c_l231_c5_7b67_iftrue <= VAR_state_MUX_uart_mac_c_l231_c5_7b67_iftrue;
     state_MUX_uart_mac_c_l231_c5_7b67_iffalse <= VAR_state_MUX_uart_mac_c_l231_c5_7b67_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l231_c5_7b67_return_output := state_MUX_uart_mac_c_l231_c5_7b67_return_output;

     -- Submodule level 10
     VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue := VAR_bit_counter_MUX_uart_mac_c_l199_c5_bda7_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue := VAR_clk_counter_MUX_uart_mac_c_l199_c5_bda7_return_output;
     VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse := VAR_clk_counter_MUX_uart_mac_c_l207_c8_a40b_return_output;
     VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_iffalse := VAR_data_out_MUX_uart_mac_c_l207_c8_a40b_return_output;
     VAR_state_MUX_uart_mac_c_l194_c3_faa3_iftrue := VAR_state_MUX_uart_mac_c_l199_c5_bda7_return_output;
     VAR_state_MUX_uart_mac_c_l226_c8_1c3c_iftrue := VAR_state_MUX_uart_mac_c_l231_c5_7b67_return_output;
     -- bit_counter_MUX[uart_mac_c_l194_c3_faa3] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_c_l194_c3_faa3_cond <= VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_cond;
     bit_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue <= VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue;
     bit_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse <= VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_return_output := bit_counter_MUX_uart_mac_c_l194_c3_faa3_return_output;

     -- clk_counter_MUX[uart_mac_c_l194_c3_faa3] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_c_l194_c3_faa3_cond <= VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_cond;
     clk_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue <= VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_iftrue;
     clk_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse <= VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_return_output := clk_counter_MUX_uart_mac_c_l194_c3_faa3_return_output;

     -- state_MUX[uart_mac_c_l226_c8_1c3c] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l226_c8_1c3c_cond <= VAR_state_MUX_uart_mac_c_l226_c8_1c3c_cond;
     state_MUX_uart_mac_c_l226_c8_1c3c_iftrue <= VAR_state_MUX_uart_mac_c_l226_c8_1c3c_iftrue;
     state_MUX_uart_mac_c_l226_c8_1c3c_iffalse <= VAR_state_MUX_uart_mac_c_l226_c8_1c3c_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l226_c8_1c3c_return_output := state_MUX_uart_mac_c_l226_c8_1c3c_return_output;

     -- data_out_MUX[uart_mac_c_l194_c3_faa3] LATENCY=0
     -- Inputs
     data_out_MUX_uart_mac_c_l194_c3_faa3_cond <= VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_cond;
     data_out_MUX_uart_mac_c_l194_c3_faa3_iftrue <= VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_iftrue;
     data_out_MUX_uart_mac_c_l194_c3_faa3_iffalse <= VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_iffalse;
     -- Outputs
     VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_return_output := data_out_MUX_uart_mac_c_l194_c3_faa3_return_output;

     -- Submodule level 11
     REG_VAR_bit_counter := VAR_bit_counter_MUX_uart_mac_c_l194_c3_faa3_return_output;
     REG_VAR_clk_counter := VAR_clk_counter_MUX_uart_mac_c_l194_c3_faa3_return_output;
     VAR_uart_data_out := VAR_data_out_MUX_uart_mac_c_l194_c3_faa3_return_output;
     VAR_state_MUX_uart_mac_c_l207_c8_a40b_iffalse := VAR_state_MUX_uart_mac_c_l226_c8_1c3c_return_output;
     -- state_MUX[uart_mac_c_l207_c8_a40b] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l207_c8_a40b_cond <= VAR_state_MUX_uart_mac_c_l207_c8_a40b_cond;
     state_MUX_uart_mac_c_l207_c8_a40b_iftrue <= VAR_state_MUX_uart_mac_c_l207_c8_a40b_iftrue;
     state_MUX_uart_mac_c_l207_c8_a40b_iffalse <= VAR_state_MUX_uart_mac_c_l207_c8_a40b_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l207_c8_a40b_return_output := state_MUX_uart_mac_c_l207_c8_a40b_return_output;

     -- Submodule level 12
     VAR_state_MUX_uart_mac_c_l194_c3_faa3_iffalse := VAR_state_MUX_uart_mac_c_l207_c8_a40b_return_output;
     -- state_MUX[uart_mac_c_l194_c3_faa3] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_c_l194_c3_faa3_cond <= VAR_state_MUX_uart_mac_c_l194_c3_faa3_cond;
     state_MUX_uart_mac_c_l194_c3_faa3_iftrue <= VAR_state_MUX_uart_mac_c_l194_c3_faa3_iftrue;
     state_MUX_uart_mac_c_l194_c3_faa3_iffalse <= VAR_state_MUX_uart_mac_c_l194_c3_faa3_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_c_l194_c3_faa3_return_output := state_MUX_uart_mac_c_l194_c3_faa3_return_output;

     -- Submodule level 13
     REG_VAR_state := VAR_state_MUX_uart_mac_c_l194_c3_faa3_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_state <= REG_VAR_state;
REG_COMB_clk_counter <= REG_VAR_clk_counter;
REG_COMB_bit_counter <= REG_VAR_bit_counter;
     -- Global wires driven various places in pipeline
     module_to_global.uart_data_out <= VAR_uart_data_out;
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
