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
-- Submodules: 13
entity uart_deserializer_0CLK_f2389995 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 in_data : in unsigned(0 downto 0);
 in_data_valid : in unsigned(0 downto 0);
 out_data_ready : in unsigned(0 downto 0);
 return_output : out uart_deserializer_o_t);
end uart_deserializer_0CLK_f2389995;
architecture arch of uart_deserializer_0CLK_f2389995 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal uart_deserializer_out_buffer_valid : unsigned(0 downto 0) := to_unsigned(0, 1);
signal uart_deserializer_out_counter : unsigned(31 downto 0) := to_unsigned(0, 32);
signal uart_deserializer_out_buffer : uint1_t_8 := (others => to_unsigned(0, 1));
signal REG_COMB_uart_deserializer_out_buffer_valid : unsigned(0 downto 0);
signal REG_COMB_uart_deserializer_out_counter : unsigned(31 downto 0);
signal REG_COMB_uart_deserializer_out_buffer : uint1_t_8;

-- Each function instance gets signals
-- UNARY_OP_NOT[uart_mac_c_l26_c409_b739]
signal UNARY_OP_NOT_uart_mac_c_l26_c409_b739_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_c_l26_c409_b739_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_c_l26_c548_a455]
signal BIN_OP_AND_uart_mac_c_l26_c548_a455_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_c_l26_c548_a455_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_c_l26_c548_a455_return_output : unsigned(0 downto 0);

-- uart_deserializer_out_buffer_valid_MUX[uart_mac_c_l26_c545_6da4]
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_cond : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iftrue : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iffalse : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_return_output : unsigned(0 downto 0);

-- uart_deserializer_out_counter_MUX[uart_mac_c_l26_c545_6da4]
signal uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_cond : unsigned(0 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iftrue : unsigned(31 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iffalse : unsigned(31 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_return_output : unsigned(31 downto 0);

-- BIN_OP_AND[uart_mac_c_l26_c683_1959]
signal BIN_OP_AND_uart_mac_c_l26_c683_1959_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_c_l26_c683_1959_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_c_l26_c683_1959_return_output : unsigned(0 downto 0);

-- uart_deserializer_out_buffer_valid_MUX[uart_mac_c_l26_c680_aea8]
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_cond : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iftrue : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iffalse : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_return_output : unsigned(0 downto 0);

-- uart_deserializer_out_buffer_MUX[uart_mac_c_l26_c680_aea8]
signal uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_cond : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iftrue : uint1_t_8;
signal uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iffalse : uint1_t_8;
signal uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_return_output : uint1_t_8;

-- uart_deserializer_out_counter_MUX[uart_mac_c_l26_c680_aea8]
signal uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_cond : unsigned(0 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iftrue : unsigned(31 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iffalse : unsigned(31 downto 0);
signal uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_return_output : unsigned(31 downto 0);

-- BIN_OP_PLUS[uart_mac_c_l26_c874_4480]
signal BIN_OP_PLUS_uart_mac_c_l26_c874_4480_left : unsigned(31 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l26_c874_4480_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l26_c874_4480_return_output : unsigned(32 downto 0);

-- BIN_OP_EQ[uart_mac_c_l26_c913_2c56]
signal BIN_OP_EQ_uart_mac_c_l26_c913_2c56_left : unsigned(31 downto 0);
signal BIN_OP_EQ_uart_mac_c_l26_c913_2c56_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_c_l26_c913_2c56_return_output : unsigned(0 downto 0);

-- uart_deserializer_out_buffer_valid_MUX[uart_mac_c_l26_c910_d333]
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_cond : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iftrue : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iffalse : unsigned(0 downto 0);
signal uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_return_output : unsigned(0 downto 0);

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

function CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b( ref_toks_0 : unsigned;
 ref_toks_1 : uint1_t_8;
 ref_toks_2 : unsigned) return uart_deserializer_o_t is
 
  variable base : uart_deserializer_o_t; 
  variable return_output : uart_deserializer_o_t;
begin
      base.in_data_ready := ref_toks_0;
      base.out_data := ref_toks_1;
      base.out_data_valid := ref_toks_2;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- UNARY_OP_NOT_uart_mac_c_l26_c409_b739
UNARY_OP_NOT_uart_mac_c_l26_c409_b739 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_c_l26_c409_b739_expr,
UNARY_OP_NOT_uart_mac_c_l26_c409_b739_return_output);

-- BIN_OP_AND_uart_mac_c_l26_c548_a455
BIN_OP_AND_uart_mac_c_l26_c548_a455 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_c_l26_c548_a455_left,
BIN_OP_AND_uart_mac_c_l26_c548_a455_right,
BIN_OP_AND_uart_mac_c_l26_c548_a455_return_output);

-- uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_cond,
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iftrue,
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iffalse,
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_return_output);

-- uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4
uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_cond,
uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iftrue,
uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iffalse,
uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_return_output);

-- BIN_OP_AND_uart_mac_c_l26_c683_1959
BIN_OP_AND_uart_mac_c_l26_c683_1959 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_c_l26_c683_1959_left,
BIN_OP_AND_uart_mac_c_l26_c683_1959_right,
BIN_OP_AND_uart_mac_c_l26_c683_1959_return_output);

-- uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_cond,
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iftrue,
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iffalse,
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_return_output);

-- uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8
uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8 : entity work.MUX_uint1_t_uint1_t_8_uint1_t_8_0CLK_de264c78 port map (
uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_cond,
uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iftrue,
uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iffalse,
uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_return_output);

-- uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8
uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_cond,
uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iftrue,
uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iffalse,
uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_return_output);

-- BIN_OP_PLUS_uart_mac_c_l26_c874_4480
BIN_OP_PLUS_uart_mac_c_l26_c874_4480 : entity work.BIN_OP_PLUS_uint32_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_c_l26_c874_4480_left,
BIN_OP_PLUS_uart_mac_c_l26_c874_4480_right,
BIN_OP_PLUS_uart_mac_c_l26_c874_4480_return_output);

-- BIN_OP_EQ_uart_mac_c_l26_c913_2c56
BIN_OP_EQ_uart_mac_c_l26_c913_2c56 : entity work.BIN_OP_EQ_uint32_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l26_c913_2c56_left,
BIN_OP_EQ_uart_mac_c_l26_c913_2c56_right,
BIN_OP_EQ_uart_mac_c_l26_c913_2c56_return_output);

-- uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_cond,
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iftrue,
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iffalse,
uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Inputs
 in_data,
 in_data_valid,
 out_data_ready,
 -- Registers
 uart_deserializer_out_buffer_valid,
 uart_deserializer_out_counter,
 uart_deserializer_out_buffer,
 -- All submodule outputs
 UNARY_OP_NOT_uart_mac_c_l26_c409_b739_return_output,
 BIN_OP_AND_uart_mac_c_l26_c548_a455_return_output,
 uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_return_output,
 uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_return_output,
 BIN_OP_AND_uart_mac_c_l26_c683_1959_return_output,
 uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_return_output,
 uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_return_output,
 uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_return_output,
 BIN_OP_PLUS_uart_mac_c_l26_c874_4480_return_output,
 BIN_OP_EQ_uart_mac_c_l26_c913_2c56_return_output,
 uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_deserializer_o_t;
 variable VAR_in_data : unsigned(0 downto 0);
 variable VAR_in_data_valid : unsigned(0 downto 0);
 variable VAR_out_data_ready : unsigned(0 downto 0);
 variable VAR_rv : uart_deserializer_o_t;
 variable VAR_UNARY_OP_NOT_uart_mac_c_l26_c409_b739_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_c_l26_c409_b739_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l26_c548_a455_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l26_c548_a455_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l26_c548_a455_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iftrue : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iffalse : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_cond : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iftrue : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_uart_mac_c_l26_c643_c5fe : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iffalse : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_return_output : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iftrue : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iffalse : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_cond : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iftrue : uint1_t_8;
 variable VAR_uart_deserializer_out_buffer_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_c_l26_c680_aea8_return_output : uint1_t_8;
 variable VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iffalse : uint1_t_8;
 variable VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_return_output : uint1_t_8;
 variable VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_cond : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iftrue : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_uart_mac_c_l26_c874_4877 : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iffalse : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_return_output : unsigned(31 downto 0);
 variable VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_cond : unsigned(0 downto 0);
 variable VAR_i : unsigned(31 downto 0);
 variable VAR_FOR_uart_mac_c_l26_c731_4460_ITER_0_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_c_l26_c791_b901_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l26_c731_4460_ITER_1_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_c_l26_c791_b901_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l26_c731_4460_ITER_2_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_c_l26_c791_b901_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l26_c731_4460_ITER_3_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_c_l26_c791_b901_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l26_c731_4460_ITER_4_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_c_l26_c791_b901_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l26_c731_4460_ITER_5_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_c_l26_c791_b901_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_mac_c_l26_c731_4460_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_c_l26_c791_b901_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l26_c874_4480_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l26_c874_4480_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l26_c874_4480_return_output : unsigned(32 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l26_c913_2c56_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l26_c913_2c56_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l26_c913_2c56_return_output : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iftrue : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iffalse : unsigned(0 downto 0);
 variable VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b_uart_mac_c_l26_c1000_dbed_return_output : uart_deserializer_o_t;
 -- State registers comb logic variables
variable REG_VAR_uart_deserializer_out_buffer_valid : unsigned(0 downto 0);
variable REG_VAR_uart_deserializer_out_counter : unsigned(31 downto 0);
variable REG_VAR_uart_deserializer_out_buffer : uint1_t_8;
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_uart_deserializer_out_buffer_valid := uart_deserializer_out_buffer_valid;
  REG_VAR_uart_deserializer_out_counter := uart_deserializer_out_counter;
  REG_VAR_uart_deserializer_out_buffer := uart_deserializer_out_buffer;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_uart_mac_c_l26_c874_4480_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_c_l26_c913_2c56_right := to_unsigned(8, 4);
     VAR_uart_deserializer_out_counter_uart_mac_c_l26_c643_c5fe := resize(to_unsigned(0, 1), 32);
     VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iftrue := VAR_uart_deserializer_out_counter_uart_mac_c_l26_c643_c5fe;
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iftrue := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;
     -- Mux in inputs
     VAR_in_data := in_data;
     VAR_in_data_valid := in_data_valid;
     VAR_out_data_ready := out_data_ready;

     -- Submodule level 0
     VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_right := VAR_in_data_valid;
     VAR_BIN_OP_AND_uart_mac_c_l26_c548_a455_left := VAR_out_data_ready;
     VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iffalse := uart_deserializer_out_buffer;
     VAR_BIN_OP_AND_uart_mac_c_l26_c548_a455_right := uart_deserializer_out_buffer_valid;
     VAR_UNARY_OP_NOT_uart_mac_c_l26_c409_b739_expr := uart_deserializer_out_buffer_valid;
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iffalse := uart_deserializer_out_buffer_valid;
     VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iffalse := uart_deserializer_out_counter;
     -- BIN_OP_AND[uart_mac_c_l26_c548_a455] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_c_l26_c548_a455_left <= VAR_BIN_OP_AND_uart_mac_c_l26_c548_a455_left;
     BIN_OP_AND_uart_mac_c_l26_c548_a455_right <= VAR_BIN_OP_AND_uart_mac_c_l26_c548_a455_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_c_l26_c548_a455_return_output := BIN_OP_AND_uart_mac_c_l26_c548_a455_return_output;

     -- FOR_uart_mac_c_l26_c731_4460_ITER_2_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d[uart_mac_c_l26_c791_b901] LATENCY=0
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_2_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_c_l26_c791_b901_return_output := uart_deserializer_out_buffer(3);

     -- FOR_uart_mac_c_l26_c731_4460_ITER_5_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d[uart_mac_c_l26_c791_b901] LATENCY=0
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_5_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_c_l26_c791_b901_return_output := uart_deserializer_out_buffer(6);

     -- FOR_uart_mac_c_l26_c731_4460_ITER_1_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d[uart_mac_c_l26_c791_b901] LATENCY=0
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_1_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_c_l26_c791_b901_return_output := uart_deserializer_out_buffer(2);

     -- FOR_uart_mac_c_l26_c731_4460_ITER_0_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d[uart_mac_c_l26_c791_b901] LATENCY=0
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_0_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_c_l26_c791_b901_return_output := uart_deserializer_out_buffer(1);

     -- FOR_uart_mac_c_l26_c731_4460_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d[uart_mac_c_l26_c791_b901] LATENCY=0
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_c_l26_c791_b901_return_output := uart_deserializer_out_buffer(7);

     -- FOR_uart_mac_c_l26_c731_4460_ITER_3_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d[uart_mac_c_l26_c791_b901] LATENCY=0
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_3_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_c_l26_c791_b901_return_output := uart_deserializer_out_buffer(4);

     -- UNARY_OP_NOT[uart_mac_c_l26_c409_b739] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_c_l26_c409_b739_expr <= VAR_UNARY_OP_NOT_uart_mac_c_l26_c409_b739_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_c_l26_c409_b739_return_output := UNARY_OP_NOT_uart_mac_c_l26_c409_b739_return_output;

     -- FOR_uart_mac_c_l26_c731_4460_ITER_4_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d[uart_mac_c_l26_c791_b901] LATENCY=0
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_4_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_c_l26_c791_b901_return_output := uart_deserializer_out_buffer(5);

     -- Submodule level 1
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_cond := VAR_BIN_OP_AND_uart_mac_c_l26_c548_a455_return_output;
     VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_cond := VAR_BIN_OP_AND_uart_mac_c_l26_c548_a455_return_output;
     VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_left := VAR_UNARY_OP_NOT_uart_mac_c_l26_c409_b739_return_output;
     -- CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b[uart_mac_c_l26_c1000_dbed] LATENCY=0
     VAR_CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b_uart_mac_c_l26_c1000_dbed_return_output := CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b(
     VAR_UNARY_OP_NOT_uart_mac_c_l26_c409_b739_return_output,
     uart_deserializer_out_buffer,
     uart_deserializer_out_buffer_valid);

     -- uart_deserializer_out_buffer_valid_MUX[uart_mac_c_l26_c545_6da4] LATENCY=0
     -- Inputs
     uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_cond <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_cond;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iftrue <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iftrue;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iffalse <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_return_output := uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_return_output;

     -- uart_deserializer_out_buffer_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8[uart_mac_c_l26_c680_aea8] LATENCY=0
     VAR_uart_deserializer_out_buffer_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_c_l26_c680_aea8_return_output := CONST_REF_RD_uint1_t_8_uint1_t_8_52b8(
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_0_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_c_l26_c791_b901_return_output,
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_1_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_c_l26_c791_b901_return_output,
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_2_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_c_l26_c791_b901_return_output,
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_3_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_c_l26_c791_b901_return_output,
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_4_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_c_l26_c791_b901_return_output,
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_5_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_c_l26_c791_b901_return_output,
     VAR_FOR_uart_mac_c_l26_c731_4460_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_c_l26_c791_b901_return_output,
     VAR_in_data);

     -- BIN_OP_AND[uart_mac_c_l26_c683_1959] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_c_l26_c683_1959_left <= VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_left;
     BIN_OP_AND_uart_mac_c_l26_c683_1959_right <= VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_return_output := BIN_OP_AND_uart_mac_c_l26_c683_1959_return_output;

     -- uart_deserializer_out_counter_MUX[uart_mac_c_l26_c545_6da4] LATENCY=0
     -- Inputs
     uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_cond <= VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_cond;
     uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iftrue <= VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iftrue;
     uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iffalse <= VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_return_output := uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_return_output;

     -- Submodule level 2
     VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_cond := VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_return_output;
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_cond := VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_return_output;
     VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_cond := VAR_BIN_OP_AND_uart_mac_c_l26_c683_1959_return_output;
     VAR_return_output := VAR_CONST_REF_RD_uart_deserializer_o_t_uart_deserializer_o_t_5e5b_uart_mac_c_l26_c1000_dbed_return_output;
     VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iftrue := VAR_uart_deserializer_out_buffer_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_52b8_uart_mac_c_l26_c680_aea8_return_output;
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iffalse := VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_return_output;
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iffalse := VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c545_6da4_return_output;
     VAR_BIN_OP_PLUS_uart_mac_c_l26_c874_4480_left := VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_return_output;
     VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iffalse := VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c545_6da4_return_output;
     -- uart_deserializer_out_buffer_MUX[uart_mac_c_l26_c680_aea8] LATENCY=0
     -- Inputs
     uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_cond <= VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_cond;
     uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iftrue <= VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iftrue;
     uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iffalse <= VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_return_output := uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_return_output;

     -- BIN_OP_PLUS[uart_mac_c_l26_c874_4480] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_c_l26_c874_4480_left <= VAR_BIN_OP_PLUS_uart_mac_c_l26_c874_4480_left;
     BIN_OP_PLUS_uart_mac_c_l26_c874_4480_right <= VAR_BIN_OP_PLUS_uart_mac_c_l26_c874_4480_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_c_l26_c874_4480_return_output := BIN_OP_PLUS_uart_mac_c_l26_c874_4480_return_output;

     -- Submodule level 3
     VAR_uart_deserializer_out_counter_uart_mac_c_l26_c874_4877 := resize(VAR_BIN_OP_PLUS_uart_mac_c_l26_c874_4480_return_output, 32);
     REG_VAR_uart_deserializer_out_buffer := VAR_uart_deserializer_out_buffer_MUX_uart_mac_c_l26_c680_aea8_return_output;
     VAR_BIN_OP_EQ_uart_mac_c_l26_c913_2c56_left := VAR_uart_deserializer_out_counter_uart_mac_c_l26_c874_4877;
     VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iftrue := VAR_uart_deserializer_out_counter_uart_mac_c_l26_c874_4877;
     -- uart_deserializer_out_counter_MUX[uart_mac_c_l26_c680_aea8] LATENCY=0
     -- Inputs
     uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_cond <= VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_cond;
     uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iftrue <= VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iftrue;
     uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iffalse <= VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_return_output := uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_return_output;

     -- BIN_OP_EQ[uart_mac_c_l26_c913_2c56] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l26_c913_2c56_left <= VAR_BIN_OP_EQ_uart_mac_c_l26_c913_2c56_left;
     BIN_OP_EQ_uart_mac_c_l26_c913_2c56_right <= VAR_BIN_OP_EQ_uart_mac_c_l26_c913_2c56_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l26_c913_2c56_return_output := BIN_OP_EQ_uart_mac_c_l26_c913_2c56_return_output;

     -- Submodule level 4
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_cond := VAR_BIN_OP_EQ_uart_mac_c_l26_c913_2c56_return_output;
     REG_VAR_uart_deserializer_out_counter := VAR_uart_deserializer_out_counter_MUX_uart_mac_c_l26_c680_aea8_return_output;
     -- uart_deserializer_out_buffer_valid_MUX[uart_mac_c_l26_c910_d333] LATENCY=0
     -- Inputs
     uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_cond <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_cond;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iftrue <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iftrue;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iffalse <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_return_output := uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_return_output;

     -- Submodule level 5
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iftrue := VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c910_d333_return_output;
     -- uart_deserializer_out_buffer_valid_MUX[uart_mac_c_l26_c680_aea8] LATENCY=0
     -- Inputs
     uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_cond <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_cond;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iftrue <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iftrue;
     uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iffalse <= VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_iffalse;
     -- Outputs
     VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_return_output := uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_return_output;

     -- Submodule level 6
     REG_VAR_uart_deserializer_out_buffer_valid := VAR_uart_deserializer_out_buffer_valid_MUX_uart_mac_c_l26_c680_aea8_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_uart_deserializer_out_buffer_valid <= REG_VAR_uart_deserializer_out_buffer_valid;
REG_COMB_uart_deserializer_out_counter <= REG_VAR_uart_deserializer_out_counter;
REG_COMB_uart_deserializer_out_buffer <= REG_VAR_uart_deserializer_out_buffer;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     uart_deserializer_out_buffer_valid <= REG_COMB_uart_deserializer_out_buffer_valid;
     uart_deserializer_out_counter <= REG_COMB_uart_deserializer_out_counter;
     uart_deserializer_out_buffer <= REG_COMB_uart_deserializer_out_buffer;
 end if;
 end if;
end process;

end arch;
