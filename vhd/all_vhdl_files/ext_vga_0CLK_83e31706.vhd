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
-- Submodules: 22
entity ext_vga_0CLK_83e31706 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in ext_vga_global_to_module_t;
 module_to_global : out ext_vga_module_to_global_t;
 x : in unsigned(15 downto 0);
 y : in unsigned(15 downto 0));
end ext_vga_0CLK_83e31706;
architecture arch of ext_vga_0CLK_83e31706 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal state : ext_vga_state_t := ext_vga_state_t'left;
signal REG_COMB_state : ext_vga_state_t;

-- Each function instance gets signals
-- BIN_OP_AND[external_vga_timing_c_l43_c26_5224]
signal BIN_OP_AND_external_vga_timing_c_l43_c26_5224_left : unsigned(0 downto 0);
signal BIN_OP_AND_external_vga_timing_c_l43_c26_5224_right : unsigned(0 downto 0);
signal BIN_OP_AND_external_vga_timing_c_l43_c26_5224_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[external_vga_timing_c_l45_c27_0a93]
signal BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_left : unsigned(15 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_right : unsigned(0 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[external_vga_timing_c_l45_c38_ac1d]
signal BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_left : unsigned(15 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_right : unsigned(0 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[external_vga_timing_c_l45_c27_975c]
signal BIN_OP_AND_external_vga_timing_c_l45_c27_975c_left : unsigned(0 downto 0);
signal BIN_OP_AND_external_vga_timing_c_l45_c27_975c_right : unsigned(0 downto 0);
signal BIN_OP_AND_external_vga_timing_c_l45_c27_975c_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[external_vga_timing_c_l50_c6_8d80]
signal BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_left : unsigned(1 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_right : unsigned(1 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_return_output : unsigned(0 downto 0);

-- state_MUX[external_vga_timing_c_l50_c3_ac41]
signal state_MUX_external_vga_timing_c_l50_c3_ac41_cond : unsigned(0 downto 0);
signal state_MUX_external_vga_timing_c_l50_c3_ac41_iftrue : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l50_c3_ac41_iffalse : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l50_c3_ac41_return_output : ext_vga_state_t;

-- stall_req_MUX[external_vga_timing_c_l50_c3_ac41]
signal stall_req_MUX_external_vga_timing_c_l50_c3_ac41_cond : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iftrue : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iffalse : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l50_c3_ac41_return_output : unsigned(0 downto 0);

-- state_MUX[external_vga_timing_c_l53_c5_a3e7]
signal state_MUX_external_vga_timing_c_l53_c5_a3e7_cond : unsigned(0 downto 0);
signal state_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l53_c5_a3e7_return_output : ext_vga_state_t;

-- stall_req_MUX[external_vga_timing_c_l53_c5_a3e7]
signal stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_cond : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[external_vga_timing_c_l61_c11_6853]
signal BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_left : unsigned(1 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_right : unsigned(1 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_return_output : unsigned(0 downto 0);

-- state_MUX[external_vga_timing_c_l61_c8_a034]
signal state_MUX_external_vga_timing_c_l61_c8_a034_cond : unsigned(0 downto 0);
signal state_MUX_external_vga_timing_c_l61_c8_a034_iftrue : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l61_c8_a034_iffalse : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l61_c8_a034_return_output : ext_vga_state_t;

-- stall_req_MUX[external_vga_timing_c_l61_c8_a034]
signal stall_req_MUX_external_vga_timing_c_l61_c8_a034_cond : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l61_c8_a034_iftrue : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l61_c8_a034_iffalse : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l61_c8_a034_return_output : unsigned(0 downto 0);

-- state_MUX[external_vga_timing_c_l65_c5_881d]
signal state_MUX_external_vga_timing_c_l65_c5_881d_cond : unsigned(0 downto 0);
signal state_MUX_external_vga_timing_c_l65_c5_881d_iftrue : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l65_c5_881d_iffalse : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l65_c5_881d_return_output : ext_vga_state_t;

-- stall_req_MUX[external_vga_timing_c_l65_c5_881d]
signal stall_req_MUX_external_vga_timing_c_l65_c5_881d_cond : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l65_c5_881d_iftrue : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l65_c5_881d_iffalse : unsigned(0 downto 0);
signal stall_req_MUX_external_vga_timing_c_l65_c5_881d_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[external_vga_timing_c_l73_c11_1a4b]
signal BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_left : unsigned(1 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_right : unsigned(1 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_return_output : unsigned(0 downto 0);

-- state_MUX[external_vga_timing_c_l73_c8_4c36]
signal state_MUX_external_vga_timing_c_l73_c8_4c36_cond : unsigned(0 downto 0);
signal state_MUX_external_vga_timing_c_l73_c8_4c36_iftrue : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l73_c8_4c36_iffalse : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l73_c8_4c36_return_output : ext_vga_state_t;

-- state_MUX[external_vga_timing_c_l76_c5_6b87]
signal state_MUX_external_vga_timing_c_l76_c5_6b87_cond : unsigned(0 downto 0);
signal state_MUX_external_vga_timing_c_l76_c5_6b87_iftrue : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l76_c5_6b87_iffalse : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l76_c5_6b87_return_output : ext_vga_state_t;

-- BIN_OP_EQ[external_vga_timing_c_l81_c11_addc]
signal BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_left : unsigned(1 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_right : unsigned(1 downto 0);
signal BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_return_output : unsigned(0 downto 0);

-- state_MUX[external_vga_timing_c_l81_c8_6534]
signal state_MUX_external_vga_timing_c_l81_c8_6534_cond : unsigned(0 downto 0);
signal state_MUX_external_vga_timing_c_l81_c8_6534_iftrue : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l81_c8_6534_iffalse : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l81_c8_6534_return_output : ext_vga_state_t;

-- BIN_OP_NEQ[external_vga_timing_c_l84_c8_1cf4]
signal BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_left : unsigned(0 downto 0);
signal BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_right : unsigned(0 downto 0);
signal BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_return_output : unsigned(0 downto 0);

-- state_MUX[external_vga_timing_c_l84_c5_34b0]
signal state_MUX_external_vga_timing_c_l84_c5_34b0_cond : unsigned(0 downto 0);
signal state_MUX_external_vga_timing_c_l84_c5_34b0_iftrue : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l84_c5_34b0_iffalse : ext_vga_state_t;
signal state_MUX_external_vga_timing_c_l84_c5_34b0_return_output : ext_vga_state_t;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_AND_external_vga_timing_c_l43_c26_5224
BIN_OP_AND_external_vga_timing_c_l43_c26_5224 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_external_vga_timing_c_l43_c26_5224_left,
BIN_OP_AND_external_vga_timing_c_l43_c26_5224_right,
BIN_OP_AND_external_vga_timing_c_l43_c26_5224_return_output);

-- BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93
BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93 : entity work.BIN_OP_EQ_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_left,
BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_right,
BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_return_output);

-- BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d
BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d : entity work.BIN_OP_EQ_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_left,
BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_right,
BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_return_output);

-- BIN_OP_AND_external_vga_timing_c_l45_c27_975c
BIN_OP_AND_external_vga_timing_c_l45_c27_975c : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_external_vga_timing_c_l45_c27_975c_left,
BIN_OP_AND_external_vga_timing_c_l45_c27_975c_right,
BIN_OP_AND_external_vga_timing_c_l45_c27_975c_return_output);

-- BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80
BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_left,
BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_right,
BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_return_output);

-- state_MUX_external_vga_timing_c_l50_c3_ac41
state_MUX_external_vga_timing_c_l50_c3_ac41 : entity work.MUX_uint1_t_ext_vga_state_t_ext_vga_state_t_0CLK_de264c78 port map (
state_MUX_external_vga_timing_c_l50_c3_ac41_cond,
state_MUX_external_vga_timing_c_l50_c3_ac41_iftrue,
state_MUX_external_vga_timing_c_l50_c3_ac41_iffalse,
state_MUX_external_vga_timing_c_l50_c3_ac41_return_output);

-- stall_req_MUX_external_vga_timing_c_l50_c3_ac41
stall_req_MUX_external_vga_timing_c_l50_c3_ac41 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
stall_req_MUX_external_vga_timing_c_l50_c3_ac41_cond,
stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iftrue,
stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iffalse,
stall_req_MUX_external_vga_timing_c_l50_c3_ac41_return_output);

-- state_MUX_external_vga_timing_c_l53_c5_a3e7
state_MUX_external_vga_timing_c_l53_c5_a3e7 : entity work.MUX_uint1_t_ext_vga_state_t_ext_vga_state_t_0CLK_de264c78 port map (
state_MUX_external_vga_timing_c_l53_c5_a3e7_cond,
state_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue,
state_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse,
state_MUX_external_vga_timing_c_l53_c5_a3e7_return_output);

-- stall_req_MUX_external_vga_timing_c_l53_c5_a3e7
stall_req_MUX_external_vga_timing_c_l53_c5_a3e7 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_cond,
stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue,
stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse,
stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_return_output);

-- BIN_OP_EQ_external_vga_timing_c_l61_c11_6853
BIN_OP_EQ_external_vga_timing_c_l61_c11_6853 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_left,
BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_right,
BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_return_output);

-- state_MUX_external_vga_timing_c_l61_c8_a034
state_MUX_external_vga_timing_c_l61_c8_a034 : entity work.MUX_uint1_t_ext_vga_state_t_ext_vga_state_t_0CLK_de264c78 port map (
state_MUX_external_vga_timing_c_l61_c8_a034_cond,
state_MUX_external_vga_timing_c_l61_c8_a034_iftrue,
state_MUX_external_vga_timing_c_l61_c8_a034_iffalse,
state_MUX_external_vga_timing_c_l61_c8_a034_return_output);

-- stall_req_MUX_external_vga_timing_c_l61_c8_a034
stall_req_MUX_external_vga_timing_c_l61_c8_a034 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
stall_req_MUX_external_vga_timing_c_l61_c8_a034_cond,
stall_req_MUX_external_vga_timing_c_l61_c8_a034_iftrue,
stall_req_MUX_external_vga_timing_c_l61_c8_a034_iffalse,
stall_req_MUX_external_vga_timing_c_l61_c8_a034_return_output);

-- state_MUX_external_vga_timing_c_l65_c5_881d
state_MUX_external_vga_timing_c_l65_c5_881d : entity work.MUX_uint1_t_ext_vga_state_t_ext_vga_state_t_0CLK_de264c78 port map (
state_MUX_external_vga_timing_c_l65_c5_881d_cond,
state_MUX_external_vga_timing_c_l65_c5_881d_iftrue,
state_MUX_external_vga_timing_c_l65_c5_881d_iffalse,
state_MUX_external_vga_timing_c_l65_c5_881d_return_output);

-- stall_req_MUX_external_vga_timing_c_l65_c5_881d
stall_req_MUX_external_vga_timing_c_l65_c5_881d : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
stall_req_MUX_external_vga_timing_c_l65_c5_881d_cond,
stall_req_MUX_external_vga_timing_c_l65_c5_881d_iftrue,
stall_req_MUX_external_vga_timing_c_l65_c5_881d_iffalse,
stall_req_MUX_external_vga_timing_c_l65_c5_881d_return_output);

-- BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b
BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_left,
BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_right,
BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_return_output);

-- state_MUX_external_vga_timing_c_l73_c8_4c36
state_MUX_external_vga_timing_c_l73_c8_4c36 : entity work.MUX_uint1_t_ext_vga_state_t_ext_vga_state_t_0CLK_de264c78 port map (
state_MUX_external_vga_timing_c_l73_c8_4c36_cond,
state_MUX_external_vga_timing_c_l73_c8_4c36_iftrue,
state_MUX_external_vga_timing_c_l73_c8_4c36_iffalse,
state_MUX_external_vga_timing_c_l73_c8_4c36_return_output);

-- state_MUX_external_vga_timing_c_l76_c5_6b87
state_MUX_external_vga_timing_c_l76_c5_6b87 : entity work.MUX_uint1_t_ext_vga_state_t_ext_vga_state_t_0CLK_de264c78 port map (
state_MUX_external_vga_timing_c_l76_c5_6b87_cond,
state_MUX_external_vga_timing_c_l76_c5_6b87_iftrue,
state_MUX_external_vga_timing_c_l76_c5_6b87_iffalse,
state_MUX_external_vga_timing_c_l76_c5_6b87_return_output);

-- BIN_OP_EQ_external_vga_timing_c_l81_c11_addc
BIN_OP_EQ_external_vga_timing_c_l81_c11_addc : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_left,
BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_right,
BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_return_output);

-- state_MUX_external_vga_timing_c_l81_c8_6534
state_MUX_external_vga_timing_c_l81_c8_6534 : entity work.MUX_uint1_t_ext_vga_state_t_ext_vga_state_t_0CLK_de264c78 port map (
state_MUX_external_vga_timing_c_l81_c8_6534_cond,
state_MUX_external_vga_timing_c_l81_c8_6534_iftrue,
state_MUX_external_vga_timing_c_l81_c8_6534_iffalse,
state_MUX_external_vga_timing_c_l81_c8_6534_return_output);

-- BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4
BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4 : entity work.BIN_OP_NEQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_left,
BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_right,
BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_return_output);

-- state_MUX_external_vga_timing_c_l84_c5_34b0
state_MUX_external_vga_timing_c_l84_c5_34b0 : entity work.MUX_uint1_t_ext_vga_state_t_ext_vga_state_t_0CLK_de264c78 port map (
state_MUX_external_vga_timing_c_l84_c5_34b0_cond,
state_MUX_external_vga_timing_c_l84_c5_34b0_iftrue,
state_MUX_external_vga_timing_c_l84_c5_34b0_iffalse,
state_MUX_external_vga_timing_c_l84_c5_34b0_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Inputs
 x,
 y,
 -- Registers
 state,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 BIN_OP_AND_external_vga_timing_c_l43_c26_5224_return_output,
 BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_return_output,
 BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_return_output,
 BIN_OP_AND_external_vga_timing_c_l45_c27_975c_return_output,
 BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_return_output,
 state_MUX_external_vga_timing_c_l50_c3_ac41_return_output,
 stall_req_MUX_external_vga_timing_c_l50_c3_ac41_return_output,
 state_MUX_external_vga_timing_c_l53_c5_a3e7_return_output,
 stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_return_output,
 BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_return_output,
 state_MUX_external_vga_timing_c_l61_c8_a034_return_output,
 stall_req_MUX_external_vga_timing_c_l61_c8_a034_return_output,
 state_MUX_external_vga_timing_c_l65_c5_881d_return_output,
 stall_req_MUX_external_vga_timing_c_l65_c5_881d_return_output,
 BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_return_output,
 state_MUX_external_vga_timing_c_l73_c8_4c36_return_output,
 state_MUX_external_vga_timing_c_l76_c5_6b87_return_output,
 BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_return_output,
 state_MUX_external_vga_timing_c_l81_c8_6534_return_output,
 BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_return_output,
 state_MUX_external_vga_timing_c_l84_c5_34b0_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_x : unsigned(15 downto 0);
 variable VAR_y : unsigned(15 downto 0);
 variable VAR_vga_req_stall : unsigned(0 downto 0);
 variable VAR_vga_timing_feedback : vga_signals_t;
 variable VAR_external_vga_timing_feedback_clk_cross_read_array : vga_signals_t_array_1_t;
 variable VAR_external_vga_timing_feedback_READ_external_vga_timing_c_l40_c79_59cb_return_output : vga_signals_t_array_1_t;
 variable VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_array_1_t_data_0_d41d_external_vga_timing_c_l40_c138_7381_return_output : vga_signals_t;
 variable VAR_feedback_sof : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_vga_signals_t_active_d41d_external_vga_timing_c_l43_c26_d847_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_left : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_vga_signals_t_start_of_frame_d41d_external_vga_timing_c_l43_c55_4ea0_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_return_output : unsigned(0 downto 0);
 variable VAR_external_sof : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_return_output : unsigned(0 downto 0);
 variable VAR_stall_req : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_iftrue : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_return_output : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_iffalse : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l61_c8_a034_return_output : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_return_output : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_cond : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iftrue : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_return_output : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iffalse : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_return_output : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_return_output : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_cond : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_external_vga_timing_c_l61_c8_a034_iftrue : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l65_c5_881d_return_output : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l61_c8_a034_iffalse : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_return_output : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l61_c8_a034_cond : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_iftrue : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_return_output : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_iffalse : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_external_vga_timing_c_l65_c5_881d_iftrue : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l65_c5_881d_iffalse : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l65_c5_881d_cond : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_iftrue : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_iffalse : unsigned(0 downto 0);
 variable VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_iftrue : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_return_output : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_iffalse : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l81_c8_6534_return_output : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_iftrue : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_iffalse : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_external_vga_timing_c_l81_c8_6534_iftrue : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_return_output : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l81_c8_6534_iffalse : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l81_c8_6534_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_iftrue : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_iffalse : ext_vga_state_t;
 variable VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_cond : unsigned(0 downto 0);
 -- State registers comb logic variables
variable REG_VAR_state : ext_vga_state_t;
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_state := state;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_state_MUX_external_vga_timing_c_l65_c5_881d_iftrue := WAIT_PIPELINE_FLUSH;
     VAR_BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_right := to_unsigned(ext_vga_state_t_to_integer(MONITOR_ALIGNMENT) ,2);
     VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue := START_AT_EXTERNAL_SOF;
     VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse := to_unsigned(0, 1);
     VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_iffalse := to_unsigned(0, 1);
     VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue := to_unsigned(1, 1);
     VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_iffalse := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_right := to_unsigned(ext_vga_state_t_to_integer(STALL_AT_FEEDBACK_SOF) ,2);
     VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_iftrue := to_unsigned(0, 1);
     VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_iftrue := MONITOR_ALIGNMENT;
     VAR_BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_right := to_unsigned(ext_vga_state_t_to_integer(START_AT_EXTERNAL_SOF) ,2);
     VAR_BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_right := to_unsigned(ext_vga_state_t_to_integer(WAIT_PIPELINE_FLUSH) ,2);
     VAR_BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_right := to_unsigned(0, 1);
     VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_iftrue := STALL_AT_FEEDBACK_SOF;
     VAR_BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_right := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;
     -- Mux in inputs
     VAR_x := x;
     VAR_y := y;

     -- Submodule level 0
     VAR_BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_left := to_unsigned(ext_vga_state_t_to_integer(state) ,2);
     VAR_BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_left := to_unsigned(ext_vga_state_t_to_integer(state) ,2);
     VAR_BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_left := to_unsigned(ext_vga_state_t_to_integer(state) ,2);
     VAR_BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_left := to_unsigned(ext_vga_state_t_to_integer(state) ,2);
     VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse := state;
     VAR_state_MUX_external_vga_timing_c_l65_c5_881d_iffalse := state;
     VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_iffalse := state;
     VAR_state_MUX_external_vga_timing_c_l81_c8_6534_iffalse := state;
     VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_iffalse := state;
     VAR_BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_left := VAR_x;
     VAR_BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_left := VAR_y;
     -- BIN_OP_EQ[external_vga_timing_c_l73_c11_1a4b] LATENCY=0
     -- Inputs
     BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_left <= VAR_BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_left;
     BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_right <= VAR_BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_right;
     -- Outputs
     VAR_BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_return_output := BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_return_output;

     -- BIN_OP_EQ[external_vga_timing_c_l45_c38_ac1d] LATENCY=0
     -- Inputs
     BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_left <= VAR_BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_left;
     BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_right <= VAR_BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_right;
     -- Outputs
     VAR_BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_return_output := BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_return_output;

     -- BIN_OP_EQ[external_vga_timing_c_l50_c6_8d80] LATENCY=0
     -- Inputs
     BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_left <= VAR_BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_left;
     BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_right <= VAR_BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_right;
     -- Outputs
     VAR_BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_return_output := BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_return_output;

     -- external_vga_timing_feedback_READ[external_vga_timing_c_l40_c79_59cb] LATENCY=0
     -- Outputs
     VAR_external_vga_timing_feedback_READ_external_vga_timing_c_l40_c79_59cb_return_output := global_to_module.external_vga_timing_feedback_READ_return_output;

     -- BIN_OP_EQ[external_vga_timing_c_l45_c27_0a93] LATENCY=0
     -- Inputs
     BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_left <= VAR_BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_left;
     BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_right <= VAR_BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_right;
     -- Outputs
     VAR_BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_return_output := BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_return_output;

     -- BIN_OP_EQ[external_vga_timing_c_l61_c11_6853] LATENCY=0
     -- Inputs
     BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_left <= VAR_BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_left;
     BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_right <= VAR_BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_right;
     -- Outputs
     VAR_BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_return_output := BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_return_output;

     -- BIN_OP_EQ[external_vga_timing_c_l81_c11_addc] LATENCY=0
     -- Inputs
     BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_left <= VAR_BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_left;
     BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_right <= VAR_BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_right;
     -- Outputs
     VAR_BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_return_output := BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_left := VAR_BIN_OP_EQ_external_vga_timing_c_l45_c27_0a93_return_output;
     VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_right := VAR_BIN_OP_EQ_external_vga_timing_c_l45_c38_ac1d_return_output;
     VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_cond := VAR_BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_return_output;
     VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_cond := VAR_BIN_OP_EQ_external_vga_timing_c_l50_c6_8d80_return_output;
     VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_cond := VAR_BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_return_output;
     VAR_state_MUX_external_vga_timing_c_l61_c8_a034_cond := VAR_BIN_OP_EQ_external_vga_timing_c_l61_c11_6853_return_output;
     VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_cond := VAR_BIN_OP_EQ_external_vga_timing_c_l73_c11_1a4b_return_output;
     VAR_state_MUX_external_vga_timing_c_l81_c8_6534_cond := VAR_BIN_OP_EQ_external_vga_timing_c_l81_c11_addc_return_output;
     -- CONST_REF_RD_vga_signals_t_vga_signals_t_array_1_t_data_0_d41d[external_vga_timing_c_l40_c138_7381] LATENCY=0
     VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_array_1_t_data_0_d41d_external_vga_timing_c_l40_c138_7381_return_output := VAR_external_vga_timing_feedback_READ_external_vga_timing_c_l40_c79_59cb_return_output.data(0);

     -- BIN_OP_AND[external_vga_timing_c_l45_c27_975c] LATENCY=0
     -- Inputs
     BIN_OP_AND_external_vga_timing_c_l45_c27_975c_left <= VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_left;
     BIN_OP_AND_external_vga_timing_c_l45_c27_975c_right <= VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_right;
     -- Outputs
     VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_return_output := BIN_OP_AND_external_vga_timing_c_l45_c27_975c_return_output;

     -- Submodule level 2
     VAR_BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_left := VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_return_output;
     VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_cond := VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_return_output;
     VAR_state_MUX_external_vga_timing_c_l65_c5_881d_cond := VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_return_output;
     VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_cond := VAR_BIN_OP_AND_external_vga_timing_c_l45_c27_975c_return_output;
     -- state_MUX[external_vga_timing_c_l76_c5_6b87] LATENCY=0
     -- Inputs
     state_MUX_external_vga_timing_c_l76_c5_6b87_cond <= VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_cond;
     state_MUX_external_vga_timing_c_l76_c5_6b87_iftrue <= VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_iftrue;
     state_MUX_external_vga_timing_c_l76_c5_6b87_iffalse <= VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_iffalse;
     -- Outputs
     VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_return_output := state_MUX_external_vga_timing_c_l76_c5_6b87_return_output;

     -- CONST_REF_RD_uint1_t_vga_signals_t_active_d41d[external_vga_timing_c_l43_c26_d847] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_vga_signals_t_active_d41d_external_vga_timing_c_l43_c26_d847_return_output := VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_array_1_t_data_0_d41d_external_vga_timing_c_l40_c138_7381_return_output.active;

     -- state_MUX[external_vga_timing_c_l65_c5_881d] LATENCY=0
     -- Inputs
     state_MUX_external_vga_timing_c_l65_c5_881d_cond <= VAR_state_MUX_external_vga_timing_c_l65_c5_881d_cond;
     state_MUX_external_vga_timing_c_l65_c5_881d_iftrue <= VAR_state_MUX_external_vga_timing_c_l65_c5_881d_iftrue;
     state_MUX_external_vga_timing_c_l65_c5_881d_iffalse <= VAR_state_MUX_external_vga_timing_c_l65_c5_881d_iffalse;
     -- Outputs
     VAR_state_MUX_external_vga_timing_c_l65_c5_881d_return_output := state_MUX_external_vga_timing_c_l65_c5_881d_return_output;

     -- stall_req_MUX[external_vga_timing_c_l65_c5_881d] LATENCY=0
     -- Inputs
     stall_req_MUX_external_vga_timing_c_l65_c5_881d_cond <= VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_cond;
     stall_req_MUX_external_vga_timing_c_l65_c5_881d_iftrue <= VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_iftrue;
     stall_req_MUX_external_vga_timing_c_l65_c5_881d_iffalse <= VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_iffalse;
     -- Outputs
     VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_return_output := stall_req_MUX_external_vga_timing_c_l65_c5_881d_return_output;

     -- CONST_REF_RD_uint1_t_vga_signals_t_start_of_frame_d41d[external_vga_timing_c_l43_c55_4ea0] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_vga_signals_t_start_of_frame_d41d_external_vga_timing_c_l43_c55_4ea0_return_output := VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_array_1_t_data_0_d41d_external_vga_timing_c_l40_c138_7381_return_output.start_of_frame;

     -- Submodule level 3
     VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_left := VAR_CONST_REF_RD_uint1_t_vga_signals_t_active_d41d_external_vga_timing_c_l43_c26_d847_return_output;
     VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_right := VAR_CONST_REF_RD_uint1_t_vga_signals_t_start_of_frame_d41d_external_vga_timing_c_l43_c55_4ea0_return_output;
     VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_iftrue := VAR_stall_req_MUX_external_vga_timing_c_l65_c5_881d_return_output;
     VAR_state_MUX_external_vga_timing_c_l61_c8_a034_iftrue := VAR_state_MUX_external_vga_timing_c_l65_c5_881d_return_output;
     VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_iftrue := VAR_state_MUX_external_vga_timing_c_l76_c5_6b87_return_output;
     -- stall_req_MUX[external_vga_timing_c_l61_c8_a034] LATENCY=0
     -- Inputs
     stall_req_MUX_external_vga_timing_c_l61_c8_a034_cond <= VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_cond;
     stall_req_MUX_external_vga_timing_c_l61_c8_a034_iftrue <= VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_iftrue;
     stall_req_MUX_external_vga_timing_c_l61_c8_a034_iffalse <= VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_iffalse;
     -- Outputs
     VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_return_output := stall_req_MUX_external_vga_timing_c_l61_c8_a034_return_output;

     -- BIN_OP_AND[external_vga_timing_c_l43_c26_5224] LATENCY=0
     -- Inputs
     BIN_OP_AND_external_vga_timing_c_l43_c26_5224_left <= VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_left;
     BIN_OP_AND_external_vga_timing_c_l43_c26_5224_right <= VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_right;
     -- Outputs
     VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_return_output := BIN_OP_AND_external_vga_timing_c_l43_c26_5224_return_output;

     -- Submodule level 4
     VAR_BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_right := VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_return_output;
     VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_cond := VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_return_output;
     VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_cond := VAR_BIN_OP_AND_external_vga_timing_c_l43_c26_5224_return_output;
     VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iffalse := VAR_stall_req_MUX_external_vga_timing_c_l61_c8_a034_return_output;
     -- state_MUX[external_vga_timing_c_l53_c5_a3e7] LATENCY=0
     -- Inputs
     state_MUX_external_vga_timing_c_l53_c5_a3e7_cond <= VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_cond;
     state_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue <= VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue;
     state_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse <= VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse;
     -- Outputs
     VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_return_output := state_MUX_external_vga_timing_c_l53_c5_a3e7_return_output;

     -- stall_req_MUX[external_vga_timing_c_l53_c5_a3e7] LATENCY=0
     -- Inputs
     stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_cond <= VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_cond;
     stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue <= VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iftrue;
     stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse <= VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_iffalse;
     -- Outputs
     VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_return_output := stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_return_output;

     -- BIN_OP_NEQ[external_vga_timing_c_l84_c8_1cf4] LATENCY=0
     -- Inputs
     BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_left <= VAR_BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_left;
     BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_right <= VAR_BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_right;
     -- Outputs
     VAR_BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_return_output := BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_return_output;

     -- Submodule level 5
     VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_cond := VAR_BIN_OP_NEQ_external_vga_timing_c_l84_c8_1cf4_return_output;
     VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iftrue := VAR_stall_req_MUX_external_vga_timing_c_l53_c5_a3e7_return_output;
     VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_iftrue := VAR_state_MUX_external_vga_timing_c_l53_c5_a3e7_return_output;
     -- stall_req_MUX[external_vga_timing_c_l50_c3_ac41] LATENCY=0
     -- Inputs
     stall_req_MUX_external_vga_timing_c_l50_c3_ac41_cond <= VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_cond;
     stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iftrue <= VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iftrue;
     stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iffalse <= VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_iffalse;
     -- Outputs
     VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_return_output := stall_req_MUX_external_vga_timing_c_l50_c3_ac41_return_output;

     -- state_MUX[external_vga_timing_c_l84_c5_34b0] LATENCY=0
     -- Inputs
     state_MUX_external_vga_timing_c_l84_c5_34b0_cond <= VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_cond;
     state_MUX_external_vga_timing_c_l84_c5_34b0_iftrue <= VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_iftrue;
     state_MUX_external_vga_timing_c_l84_c5_34b0_iffalse <= VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_iffalse;
     -- Outputs
     VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_return_output := state_MUX_external_vga_timing_c_l84_c5_34b0_return_output;

     -- Submodule level 6
     VAR_vga_req_stall := VAR_stall_req_MUX_external_vga_timing_c_l50_c3_ac41_return_output;
     VAR_state_MUX_external_vga_timing_c_l81_c8_6534_iftrue := VAR_state_MUX_external_vga_timing_c_l84_c5_34b0_return_output;
     -- state_MUX[external_vga_timing_c_l81_c8_6534] LATENCY=0
     -- Inputs
     state_MUX_external_vga_timing_c_l81_c8_6534_cond <= VAR_state_MUX_external_vga_timing_c_l81_c8_6534_cond;
     state_MUX_external_vga_timing_c_l81_c8_6534_iftrue <= VAR_state_MUX_external_vga_timing_c_l81_c8_6534_iftrue;
     state_MUX_external_vga_timing_c_l81_c8_6534_iffalse <= VAR_state_MUX_external_vga_timing_c_l81_c8_6534_iffalse;
     -- Outputs
     VAR_state_MUX_external_vga_timing_c_l81_c8_6534_return_output := state_MUX_external_vga_timing_c_l81_c8_6534_return_output;

     -- Submodule level 7
     VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_iffalse := VAR_state_MUX_external_vga_timing_c_l81_c8_6534_return_output;
     -- state_MUX[external_vga_timing_c_l73_c8_4c36] LATENCY=0
     -- Inputs
     state_MUX_external_vga_timing_c_l73_c8_4c36_cond <= VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_cond;
     state_MUX_external_vga_timing_c_l73_c8_4c36_iftrue <= VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_iftrue;
     state_MUX_external_vga_timing_c_l73_c8_4c36_iffalse <= VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_iffalse;
     -- Outputs
     VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_return_output := state_MUX_external_vga_timing_c_l73_c8_4c36_return_output;

     -- Submodule level 8
     VAR_state_MUX_external_vga_timing_c_l61_c8_a034_iffalse := VAR_state_MUX_external_vga_timing_c_l73_c8_4c36_return_output;
     -- state_MUX[external_vga_timing_c_l61_c8_a034] LATENCY=0
     -- Inputs
     state_MUX_external_vga_timing_c_l61_c8_a034_cond <= VAR_state_MUX_external_vga_timing_c_l61_c8_a034_cond;
     state_MUX_external_vga_timing_c_l61_c8_a034_iftrue <= VAR_state_MUX_external_vga_timing_c_l61_c8_a034_iftrue;
     state_MUX_external_vga_timing_c_l61_c8_a034_iffalse <= VAR_state_MUX_external_vga_timing_c_l61_c8_a034_iffalse;
     -- Outputs
     VAR_state_MUX_external_vga_timing_c_l61_c8_a034_return_output := state_MUX_external_vga_timing_c_l61_c8_a034_return_output;

     -- Submodule level 9
     VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_iffalse := VAR_state_MUX_external_vga_timing_c_l61_c8_a034_return_output;
     -- state_MUX[external_vga_timing_c_l50_c3_ac41] LATENCY=0
     -- Inputs
     state_MUX_external_vga_timing_c_l50_c3_ac41_cond <= VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_cond;
     state_MUX_external_vga_timing_c_l50_c3_ac41_iftrue <= VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_iftrue;
     state_MUX_external_vga_timing_c_l50_c3_ac41_iffalse <= VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_iffalse;
     -- Outputs
     VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_return_output := state_MUX_external_vga_timing_c_l50_c3_ac41_return_output;

     -- Submodule level 10
     REG_VAR_state := VAR_state_MUX_external_vga_timing_c_l50_c3_ac41_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_state <= REG_VAR_state;
     -- Global wires driven various places in pipeline
     module_to_global.vga_req_stall <= VAR_vga_req_stall;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     state <= REG_COMB_state;
 end if;
 end if;
end process;

end arch;
