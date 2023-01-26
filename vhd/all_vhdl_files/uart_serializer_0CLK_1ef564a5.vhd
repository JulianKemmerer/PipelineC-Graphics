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
-- Submodules: 18
entity uart_serializer_0CLK_1ef564a5 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 in_data : in uint1_t_8;
 in_data_valid : in unsigned(0 downto 0);
 out_data_ready : in unsigned(0 downto 0);
 return_output : out uart_serializer_o_t);
end uart_serializer_0CLK_1ef564a5;
architecture arch of uart_serializer_0CLK_1ef564a5 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal uart_serializer_in_buffer : uint1_t_8 := (others => to_unsigned(0, 1));
signal uart_serializer_out_counter : unsigned(31 downto 0) := to_unsigned(0, 32);
signal uart_serializer_in_buffer_valid : unsigned(0 downto 0) := to_unsigned(0, 1);
signal REG_COMB_uart_serializer_in_buffer : uint1_t_8;
signal REG_COMB_uart_serializer_out_counter : unsigned(31 downto 0);
signal REG_COMB_uart_serializer_in_buffer_valid : unsigned(0 downto 0);

-- Each function instance gets signals
-- UNARY_OP_NOT[uart_mac_c_l131_c488_f6bd]
signal UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_return_output : unsigned(0 downto 0);

-- uart_serializer_out_counter_MUX[uart_mac_c_l131_c521_36fb]
signal uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
signal uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(31 downto 0);
signal uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(31 downto 0);
signal uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(31 downto 0);

-- uart_serializer_in_buffer_valid_MUX[uart_mac_c_l131_c521_36fb]
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);

-- uart_serializer_in_buffer_2_MUX[uart_mac_c_l131_c521_36fb]
signal uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
signal uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
signal uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);

-- uart_serializer_in_buffer_4_MUX[uart_mac_c_l131_c521_36fb]
signal uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
signal uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
signal uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);

-- uart_serializer_in_buffer_5_MUX[uart_mac_c_l131_c521_36fb]
signal uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
signal uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
signal uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);

-- uart_serializer_in_buffer_0_MUX[uart_mac_c_l131_c521_36fb]
signal uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
signal uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
signal uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);

-- uart_serializer_in_buffer_3_MUX[uart_mac_c_l131_c521_36fb]
signal uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
signal uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
signal uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);

-- uart_serializer_in_buffer_6_MUX[uart_mac_c_l131_c521_36fb]
signal uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
signal uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
signal uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);

-- uart_serializer_in_buffer_1_MUX[uart_mac_c_l131_c521_36fb]
signal uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
signal uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
signal uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);

-- BIN_OP_PLUS[uart_mac_c_l131_c645_b748]
signal BIN_OP_PLUS_uart_mac_c_l131_c645_b748_left : unsigned(31 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l131_c645_b748_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_c_l131_c645_b748_return_output : unsigned(32 downto 0);

-- BIN_OP_EQ[uart_mac_c_l131_c682_796a]
signal BIN_OP_EQ_uart_mac_c_l131_c682_796a_left : unsigned(31 downto 0);
signal BIN_OP_EQ_uart_mac_c_l131_c682_796a_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_c_l131_c682_796a_return_output : unsigned(0 downto 0);

-- uart_serializer_in_buffer_valid_MUX[uart_mac_c_l131_c679_435e]
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iftrue : unsigned(0 downto 0);
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iffalse : unsigned(0 downto 0);
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_return_output : unsigned(0 downto 0);

-- uart_serializer_out_counter_MUX[uart_mac_c_l131_c757_dc80]
signal uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_cond : unsigned(0 downto 0);
signal uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iftrue : unsigned(31 downto 0);
signal uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iffalse : unsigned(31 downto 0);
signal uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_return_output : unsigned(31 downto 0);

-- uart_serializer_in_buffer_valid_MUX[uart_mac_c_l131_c757_dc80]
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iftrue : unsigned(0 downto 0);
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iffalse : unsigned(0 downto 0);
signal uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_return_output : unsigned(0 downto 0);

-- uart_serializer_in_buffer_MUX[uart_mac_c_l131_c757_dc80]
signal uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_cond : unsigned(0 downto 0);
signal uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iftrue : uint1_t_8;
signal uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iffalse : uint1_t_8;
signal uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_return_output : uint1_t_8;

function CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4( ref_toks_0 : uint1_t_8;
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
      base := ref_toks_0;
      base(2) := ref_toks_1;
      base(4) := ref_toks_2;
      base(5) := ref_toks_3;
      base(0) := ref_toks_4;
      base(3) := ref_toks_5;
      base(6) := ref_toks_6;
      base(1) := ref_toks_7;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return uart_serializer_o_t is
 
  variable base : uart_serializer_o_t; 
  variable return_output : uart_serializer_o_t;
begin
      base.out_data := ref_toks_0;
      base.out_data_valid := ref_toks_1;
      base.in_data_ready := ref_toks_2;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd
UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_expr,
UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_return_output);

-- uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb
uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_cond,
uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iftrue,
uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iffalse,
uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_return_output);

-- uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_cond,
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iftrue,
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iffalse,
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_return_output);

-- uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb
uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_cond,
uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iftrue,
uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iffalse,
uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_return_output);

-- uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb
uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_cond,
uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iftrue,
uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iffalse,
uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_return_output);

-- uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb
uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_cond,
uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iftrue,
uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iffalse,
uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_return_output);

-- uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb
uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_cond,
uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iftrue,
uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iffalse,
uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_return_output);

-- uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb
uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_cond,
uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iftrue,
uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iffalse,
uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_return_output);

-- uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb
uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_cond,
uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iftrue,
uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iffalse,
uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_return_output);

-- uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb
uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_cond,
uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iftrue,
uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iffalse,
uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_return_output);

-- BIN_OP_PLUS_uart_mac_c_l131_c645_b748
BIN_OP_PLUS_uart_mac_c_l131_c645_b748 : entity work.BIN_OP_PLUS_uint32_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_c_l131_c645_b748_left,
BIN_OP_PLUS_uart_mac_c_l131_c645_b748_right,
BIN_OP_PLUS_uart_mac_c_l131_c645_b748_return_output);

-- BIN_OP_EQ_uart_mac_c_l131_c682_796a
BIN_OP_EQ_uart_mac_c_l131_c682_796a : entity work.BIN_OP_EQ_uint32_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_c_l131_c682_796a_left,
BIN_OP_EQ_uart_mac_c_l131_c682_796a_right,
BIN_OP_EQ_uart_mac_c_l131_c682_796a_return_output);

-- uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_cond,
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iftrue,
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iffalse,
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_return_output);

-- uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80
uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_cond,
uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iftrue,
uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iffalse,
uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_return_output);

-- uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_cond,
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iftrue,
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iffalse,
uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_return_output);

-- uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80
uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80 : entity work.MUX_uint1_t_uint1_t_8_uint1_t_8_0CLK_de264c78 port map (
uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_cond,
uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iftrue,
uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iffalse,
uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Inputs
 in_data,
 in_data_valid,
 out_data_ready,
 -- Registers
 uart_serializer_in_buffer,
 uart_serializer_out_counter,
 uart_serializer_in_buffer_valid,
 -- All submodule outputs
 UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_return_output,
 uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_return_output,
 uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_return_output,
 uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_return_output,
 uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_return_output,
 uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_return_output,
 uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_return_output,
 uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_return_output,
 uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_return_output,
 uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_return_output,
 BIN_OP_PLUS_uart_mac_c_l131_c645_b748_return_output,
 BIN_OP_EQ_uart_mac_c_l131_c682_796a_return_output,
 uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_return_output,
 uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_return_output,
 uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_return_output,
 uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_serializer_o_t;
 variable VAR_in_data : uint1_t_8;
 variable VAR_in_data_valid : unsigned(0 downto 0);
 variable VAR_out_data_ready : unsigned(0 downto 0);
 variable VAR_rv : uart_serializer_o_t;
 variable VAR_UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(31 downto 0);
 variable VAR_uart_serializer_out_counter_uart_mac_c_l131_c645_6223 : unsigned(31 downto 0);
 variable VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(31 downto 0);
 variable VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(31 downto 0);
 variable VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iftrue : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iffalse : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_cond : unsigned(0 downto 0);
 variable VAR_i : unsigned(31 downto 0);
 variable VAR_FOR_uart_mac_c_l131_c554_6e0a_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_c_l131_c611_c646_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l131_c645_b748_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l131_c645_b748_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_c_l131_c645_b748_return_output : unsigned(32 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l131_c682_796a_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l131_c682_796a_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_c_l131_c682_796a_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iftrue : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iffalse : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iftrue : unsigned(31 downto 0);
 variable VAR_uart_serializer_out_counter_uart_mac_c_l131_c866_6018 : unsigned(31 downto 0);
 variable VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iffalse : unsigned(31 downto 0);
 variable VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_return_output : unsigned(31 downto 0);
 variable VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iftrue : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iffalse : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_return_output : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_cond : unsigned(0 downto 0);
 variable VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iftrue : uint1_t_8;
 variable VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iffalse : uint1_t_8;
 variable VAR_uart_serializer_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4_uart_mac_c_l131_c757_dc80_return_output : uint1_t_8;
 variable VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_return_output : uint1_t_8;
 variable VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a_uart_mac_c_l131_c908_f18c_return_output : uart_serializer_o_t;
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_c_l131_DUPLICATE_0ced_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_c_l131_DUPLICATE_64be_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_c_l131_DUPLICATE_a255_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_c_l131_DUPLICATE_4e62_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_c_l131_DUPLICATE_6611_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_c_l131_DUPLICATE_cd24_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_c_l131_DUPLICATE_dd81_return_output : unsigned(0 downto 0);
 -- State registers comb logic variables
variable REG_VAR_uart_serializer_in_buffer : uint1_t_8;
variable REG_VAR_uart_serializer_out_counter : unsigned(31 downto 0);
variable REG_VAR_uart_serializer_in_buffer_valid : unsigned(0 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_uart_serializer_in_buffer := uart_serializer_in_buffer;
  REG_VAR_uart_serializer_out_counter := uart_serializer_out_counter;
  REG_VAR_uart_serializer_in_buffer_valid := uart_serializer_in_buffer_valid;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iftrue := to_unsigned(0, 1);
     VAR_BIN_OP_PLUS_uart_mac_c_l131_c645_b748_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_c_l131_c682_796a_right := to_unsigned(8, 4);
     VAR_uart_serializer_out_counter_uart_mac_c_l131_c866_6018 := resize(to_unsigned(0, 1), 32);
     VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iftrue := VAR_uart_serializer_out_counter_uart_mac_c_l131_c866_6018;

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
     VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iftrue := VAR_in_data;
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iftrue := VAR_in_data_valid;
     VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_cond := VAR_out_data_ready;
     VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_cond := VAR_out_data_ready;
     VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_cond := VAR_out_data_ready;
     VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_cond := VAR_out_data_ready;
     VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_cond := VAR_out_data_ready;
     VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_cond := VAR_out_data_ready;
     VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_cond := VAR_out_data_ready;
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_cond := VAR_out_data_ready;
     VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_cond := VAR_out_data_ready;
     VAR_UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_expr := uart_serializer_in_buffer_valid;
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iffalse := uart_serializer_in_buffer_valid;
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iffalse := uart_serializer_in_buffer_valid;
     VAR_BIN_OP_PLUS_uart_mac_c_l131_c645_b748_left := uart_serializer_out_counter;
     VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iffalse := uart_serializer_out_counter;
     -- CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_c_l131_DUPLICATE_0ced LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_c_l131_DUPLICATE_0ced_return_output := uart_serializer_in_buffer(0);

     -- CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_c_l131_DUPLICATE_dd81 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_c_l131_DUPLICATE_dd81_return_output := uart_serializer_in_buffer(6);

     -- UNARY_OP_NOT[uart_mac_c_l131_c488_f6bd] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_expr <= VAR_UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_return_output := UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_return_output;

     -- CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_c_l131_DUPLICATE_4e62 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_c_l131_DUPLICATE_4e62_return_output := uart_serializer_in_buffer(3);

     -- FOR_uart_mac_c_l131_c554_6e0a_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d[uart_mac_c_l131_c611_c646] LATENCY=0
     VAR_FOR_uart_mac_c_l131_c554_6e0a_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_c_l131_c611_c646_return_output := uart_serializer_in_buffer(7);

     -- BIN_OP_PLUS[uart_mac_c_l131_c645_b748] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_c_l131_c645_b748_left <= VAR_BIN_OP_PLUS_uart_mac_c_l131_c645_b748_left;
     BIN_OP_PLUS_uart_mac_c_l131_c645_b748_right <= VAR_BIN_OP_PLUS_uart_mac_c_l131_c645_b748_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_c_l131_c645_b748_return_output := BIN_OP_PLUS_uart_mac_c_l131_c645_b748_return_output;

     -- CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_c_l131_DUPLICATE_a255 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_c_l131_DUPLICATE_a255_return_output := uart_serializer_in_buffer(2);

     -- CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_c_l131_DUPLICATE_64be LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_c_l131_DUPLICATE_64be_return_output := uart_serializer_in_buffer(1);

     -- CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_c_l131_DUPLICATE_cd24 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_c_l131_DUPLICATE_cd24_return_output := uart_serializer_in_buffer(5);

     -- CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_c_l131_DUPLICATE_6611 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_c_l131_DUPLICATE_6611_return_output := uart_serializer_in_buffer(4);

     -- Submodule level 1
     VAR_uart_serializer_out_counter_uart_mac_c_l131_c645_6223 := resize(VAR_BIN_OP_PLUS_uart_mac_c_l131_c645_b748_return_output, 32);
     VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_c_l131_DUPLICATE_0ced_return_output;
     VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_c_l131_DUPLICATE_64be_return_output;
     VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_c_l131_DUPLICATE_64be_return_output;
     VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_c_l131_DUPLICATE_a255_return_output;
     VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_c_l131_DUPLICATE_a255_return_output;
     VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_c_l131_DUPLICATE_4e62_return_output;
     VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_c_l131_DUPLICATE_4e62_return_output;
     VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_c_l131_DUPLICATE_6611_return_output;
     VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_c_l131_DUPLICATE_6611_return_output;
     VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_c_l131_DUPLICATE_cd24_return_output;
     VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_c_l131_DUPLICATE_cd24_return_output;
     VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_c_l131_DUPLICATE_dd81_return_output;
     VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_c_l131_DUPLICATE_dd81_return_output;
     VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iftrue := VAR_FOR_uart_mac_c_l131_c554_6e0a_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_c_l131_c611_c646_return_output;
     VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_cond := VAR_UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_return_output;
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_cond := VAR_UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_return_output;
     VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_cond := VAR_UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_return_output;
     VAR_BIN_OP_EQ_uart_mac_c_l131_c682_796a_left := VAR_uart_serializer_out_counter_uart_mac_c_l131_c645_6223;
     VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iftrue := VAR_uart_serializer_out_counter_uart_mac_c_l131_c645_6223;
     -- uart_serializer_in_buffer_1_MUX[uart_mac_c_l131_c521_36fb] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_cond <= VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_cond;
     uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iftrue <= VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iftrue;
     uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iffalse <= VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_return_output := uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_return_output;

     -- uart_serializer_in_buffer_6_MUX[uart_mac_c_l131_c521_36fb] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_cond <= VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_cond;
     uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iftrue <= VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iftrue;
     uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iffalse <= VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_return_output := uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_return_output;

     -- uart_serializer_in_buffer_3_MUX[uart_mac_c_l131_c521_36fb] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_cond <= VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_cond;
     uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iftrue <= VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iftrue;
     uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iffalse <= VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_return_output := uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_return_output;

     -- uart_serializer_in_buffer_2_MUX[uart_mac_c_l131_c521_36fb] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_cond <= VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_cond;
     uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iftrue <= VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iftrue;
     uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iffalse <= VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_return_output := uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_return_output;

     -- uart_serializer_in_buffer_4_MUX[uart_mac_c_l131_c521_36fb] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_cond <= VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_cond;
     uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iftrue <= VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iftrue;
     uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iffalse <= VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_return_output := uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_return_output;

     -- CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a[uart_mac_c_l131_c908_f18c] LATENCY=0
     VAR_CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a_uart_mac_c_l131_c908_f18c_return_output := CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a(
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_c_l131_DUPLICATE_0ced_return_output,
     uart_serializer_in_buffer_valid,
     VAR_UNARY_OP_NOT_uart_mac_c_l131_c488_f6bd_return_output);

     -- uart_serializer_in_buffer_0_MUX[uart_mac_c_l131_c521_36fb] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_cond <= VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_cond;
     uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iftrue <= VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iftrue;
     uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iffalse <= VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_return_output := uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_return_output;

     -- uart_serializer_in_buffer_5_MUX[uart_mac_c_l131_c521_36fb] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_cond <= VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_cond;
     uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iftrue <= VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iftrue;
     uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iffalse <= VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_return_output := uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_return_output;

     -- BIN_OP_EQ[uart_mac_c_l131_c682_796a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_c_l131_c682_796a_left <= VAR_BIN_OP_EQ_uart_mac_c_l131_c682_796a_left;
     BIN_OP_EQ_uart_mac_c_l131_c682_796a_right <= VAR_BIN_OP_EQ_uart_mac_c_l131_c682_796a_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_c_l131_c682_796a_return_output := BIN_OP_EQ_uart_mac_c_l131_c682_796a_return_output;

     -- uart_serializer_out_counter_MUX[uart_mac_c_l131_c521_36fb] LATENCY=0
     -- Inputs
     uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_cond <= VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_cond;
     uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iftrue <= VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iftrue;
     uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iffalse <= VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_iffalse;
     -- Outputs
     VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_return_output := uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_return_output;

     -- Submodule level 2
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_cond := VAR_BIN_OP_EQ_uart_mac_c_l131_c682_796a_return_output;
     VAR_return_output := VAR_CONST_REF_RD_uart_serializer_o_t_uart_serializer_o_t_fd4a_uart_mac_c_l131_c908_f18c_return_output;
     VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iffalse := VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c521_36fb_return_output;
     -- uart_serializer_out_counter_MUX[uart_mac_c_l131_c757_dc80] LATENCY=0
     -- Inputs
     uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_cond <= VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_cond;
     uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iftrue <= VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iftrue;
     uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iffalse <= VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_iffalse;
     -- Outputs
     VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_return_output := uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_return_output;

     -- uart_serializer_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4[uart_mac_c_l131_c757_dc80] LATENCY=0
     VAR_uart_serializer_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4_uart_mac_c_l131_c757_dc80_return_output := CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4(
     uart_serializer_in_buffer,
     VAR_uart_serializer_in_buffer_2_MUX_uart_mac_c_l131_c521_36fb_return_output,
     VAR_uart_serializer_in_buffer_4_MUX_uart_mac_c_l131_c521_36fb_return_output,
     VAR_uart_serializer_in_buffer_5_MUX_uart_mac_c_l131_c521_36fb_return_output,
     VAR_uart_serializer_in_buffer_0_MUX_uart_mac_c_l131_c521_36fb_return_output,
     VAR_uart_serializer_in_buffer_3_MUX_uart_mac_c_l131_c521_36fb_return_output,
     VAR_uart_serializer_in_buffer_6_MUX_uart_mac_c_l131_c521_36fb_return_output,
     VAR_uart_serializer_in_buffer_1_MUX_uart_mac_c_l131_c521_36fb_return_output);

     -- uart_serializer_in_buffer_valid_MUX[uart_mac_c_l131_c679_435e] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_cond <= VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_cond;
     uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iftrue <= VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iftrue;
     uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iffalse <= VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_return_output := uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_return_output;

     -- Submodule level 3
     VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iffalse := VAR_uart_serializer_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4_uart_mac_c_l131_c757_dc80_return_output;
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iftrue := VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c679_435e_return_output;
     REG_VAR_uart_serializer_out_counter := VAR_uart_serializer_out_counter_MUX_uart_mac_c_l131_c757_dc80_return_output;
     -- uart_serializer_in_buffer_MUX[uart_mac_c_l131_c757_dc80] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_cond <= VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_cond;
     uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iftrue <= VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iftrue;
     uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iffalse <= VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_return_output := uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_return_output;

     -- uart_serializer_in_buffer_valid_MUX[uart_mac_c_l131_c521_36fb] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_cond <= VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_cond;
     uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iftrue <= VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iftrue;
     uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iffalse <= VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_return_output := uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_return_output;

     -- Submodule level 4
     REG_VAR_uart_serializer_in_buffer := VAR_uart_serializer_in_buffer_MUX_uart_mac_c_l131_c757_dc80_return_output;
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iffalse := VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c521_36fb_return_output;
     -- uart_serializer_in_buffer_valid_MUX[uart_mac_c_l131_c757_dc80] LATENCY=0
     -- Inputs
     uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_cond <= VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_cond;
     uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iftrue <= VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iftrue;
     uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iffalse <= VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_iffalse;
     -- Outputs
     VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_return_output := uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_return_output;

     -- Submodule level 5
     REG_VAR_uart_serializer_in_buffer_valid := VAR_uart_serializer_in_buffer_valid_MUX_uart_mac_c_l131_c757_dc80_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_uart_serializer_in_buffer <= REG_VAR_uart_serializer_in_buffer;
REG_COMB_uart_serializer_out_counter <= REG_VAR_uart_serializer_out_counter;
REG_COMB_uart_serializer_in_buffer_valid <= REG_VAR_uart_serializer_in_buffer_valid;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     uart_serializer_in_buffer <= REG_COMB_uart_serializer_in_buffer;
     uart_serializer_out_counter <= REG_COMB_uart_serializer_out_counter;
     uart_serializer_in_buffer_valid <= REG_COMB_uart_serializer_in_buffer_valid;
 end if;
 end if;
end process;

end arch;
