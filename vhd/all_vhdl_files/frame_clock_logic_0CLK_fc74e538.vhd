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
-- Submodules: 13
entity frame_clock_logic_0CLK_fc74e538 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 module_to_global : out frame_clock_logic_module_to_global_t;
 x : in unsigned(15 downto 0);
 y : in unsigned(15 downto 0);
 active : in unsigned(0 downto 0));
end frame_clock_logic_0CLK_fc74e538;
architecture arch of frame_clock_logic_0CLK_fc74e538 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal frame_clock_reg : unsigned(0 downto 0) := to_unsigned(0, 1);
signal REG_COMB_frame_clock_reg : unsigned(0 downto 0);

-- Each function instance gets signals
-- BIN_OP_EQ[pipelinec_app_c_l65_c7_d3a5]
signal BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_left : unsigned(15 downto 0);
signal BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_right : unsigned(10 downto 0);
signal BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pipelinec_app_c_l64_c7_1ccc]
signal BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_left : unsigned(0 downto 0);
signal BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_right : unsigned(0 downto 0);
signal BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[pipelinec_app_c_l66_c7_d446]
signal BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_left : unsigned(15 downto 0);
signal BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_right : unsigned(10 downto 0);
signal BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pipelinec_app_c_l64_c7_54e6]
signal BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_left : unsigned(0 downto 0);
signal BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_right : unsigned(0 downto 0);
signal BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_return_output : unsigned(0 downto 0);

-- frame_clock_reg_MUX[pipelinec_app_c_l64_c3_34fa]
signal frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_cond : unsigned(0 downto 0);
signal frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iftrue : unsigned(0 downto 0);
signal frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iffalse : unsigned(0 downto 0);
signal frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_return_output : unsigned(0 downto 0);

-- frame_clock_rising_edge_MUX[pipelinec_app_c_l64_c3_34fa]
signal frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond : unsigned(0 downto 0);
signal frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue : unsigned(0 downto 0);
signal frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse : unsigned(0 downto 0);
signal frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output : unsigned(0 downto 0);

-- frame_clock_falling_edge_MUX[pipelinec_app_c_l64_c3_34fa]
signal frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond : unsigned(0 downto 0);
signal frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue : unsigned(0 downto 0);
signal frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse : unsigned(0 downto 0);
signal frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[pipelinec_app_c_l73_c11_bcc4]
signal BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_left : unsigned(15 downto 0);
signal BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_right : unsigned(10 downto 0);
signal BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pipelinec_app_c_l72_c11_fdb8]
signal BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_left : unsigned(0 downto 0);
signal BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_right : unsigned(0 downto 0);
signal BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[pipelinec_app_c_l74_c11_b21c]
signal BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_left : unsigned(15 downto 0);
signal BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_right : unsigned(10 downto 0);
signal BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[pipelinec_app_c_l72_c11_986d]
signal BIN_OP_AND_pipelinec_app_c_l72_c11_986d_left : unsigned(0 downto 0);
signal BIN_OP_AND_pipelinec_app_c_l72_c11_986d_right : unsigned(0 downto 0);
signal BIN_OP_AND_pipelinec_app_c_l72_c11_986d_return_output : unsigned(0 downto 0);

-- frame_clock_reg_MUX[pipelinec_app_c_l72_c8_f973]
signal frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_cond : unsigned(0 downto 0);
signal frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iftrue : unsigned(0 downto 0);
signal frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iffalse : unsigned(0 downto 0);
signal frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_return_output : unsigned(0 downto 0);

-- frame_clock_rising_edge_MUX[pipelinec_app_c_l72_c8_f973]
signal frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_cond : unsigned(0 downto 0);
signal frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iftrue : unsigned(0 downto 0);
signal frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iffalse : unsigned(0 downto 0);
signal frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5
BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5 : entity work.BIN_OP_EQ_uint16_t_uint11_t_0CLK_de264c78 port map (
BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_left,
BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_right,
BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_return_output);

-- BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc
BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_left,
BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_right,
BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_return_output);

-- BIN_OP_EQ_pipelinec_app_c_l66_c7_d446
BIN_OP_EQ_pipelinec_app_c_l66_c7_d446 : entity work.BIN_OP_EQ_uint16_t_uint11_t_0CLK_de264c78 port map (
BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_left,
BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_right,
BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_return_output);

-- BIN_OP_AND_pipelinec_app_c_l64_c7_54e6
BIN_OP_AND_pipelinec_app_c_l64_c7_54e6 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_left,
BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_right,
BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_return_output);

-- frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa
frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_cond,
frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iftrue,
frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iffalse,
frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_return_output);

-- frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa
frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond,
frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue,
frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse,
frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output);

-- frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa
frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond,
frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue,
frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse,
frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output);

-- BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4
BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4 : entity work.BIN_OP_EQ_uint16_t_uint11_t_0CLK_de264c78 port map (
BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_left,
BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_right,
BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_return_output);

-- BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8
BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_left,
BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_right,
BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_return_output);

-- BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c
BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c : entity work.BIN_OP_EQ_uint16_t_uint11_t_0CLK_de264c78 port map (
BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_left,
BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_right,
BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_return_output);

-- BIN_OP_AND_pipelinec_app_c_l72_c11_986d
BIN_OP_AND_pipelinec_app_c_l72_c11_986d : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_pipelinec_app_c_l72_c11_986d_left,
BIN_OP_AND_pipelinec_app_c_l72_c11_986d_right,
BIN_OP_AND_pipelinec_app_c_l72_c11_986d_return_output);

-- frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973
frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_cond,
frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iftrue,
frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iffalse,
frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_return_output);

-- frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973
frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_cond,
frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iftrue,
frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iffalse,
frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Inputs
 x,
 y,
 active,
 -- Registers
 frame_clock_reg,
 -- All submodule outputs
 BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_return_output,
 BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_return_output,
 BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_return_output,
 BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_return_output,
 frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_return_output,
 frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output,
 frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output,
 BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_return_output,
 BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_return_output,
 BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_return_output,
 BIN_OP_AND_pipelinec_app_c_l72_c11_986d_return_output,
 frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_return_output,
 frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_x : unsigned(15 downto 0);
 variable VAR_y : unsigned(15 downto 0);
 variable VAR_active : unsigned(0 downto 0);
 variable VAR_frame_clock : unsigned(0 downto 0);
 variable VAR_frame_clock_rising_edge : unsigned(0 downto 0);
 variable VAR_frame_clock_falling_edge : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_right : unsigned(10 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_right : unsigned(10 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_return_output : unsigned(0 downto 0);
 variable VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iftrue : unsigned(0 downto 0);
 variable VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iffalse : unsigned(0 downto 0);
 variable VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_return_output : unsigned(0 downto 0);
 variable VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_return_output : unsigned(0 downto 0);
 variable VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_cond : unsigned(0 downto 0);
 variable VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue : unsigned(0 downto 0);
 variable VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse : unsigned(0 downto 0);
 variable VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_return_output : unsigned(0 downto 0);
 variable VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output : unsigned(0 downto 0);
 variable VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond : unsigned(0 downto 0);
 variable VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue : unsigned(0 downto 0);
 variable VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse : unsigned(0 downto 0);
 variable VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output : unsigned(0 downto 0);
 variable VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_right : unsigned(10 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_986d_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_right : unsigned(10 downto 0);
 variable VAR_BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_986d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_986d_return_output : unsigned(0 downto 0);
 variable VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iftrue : unsigned(0 downto 0);
 variable VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iffalse : unsigned(0 downto 0);
 variable VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_cond : unsigned(0 downto 0);
 variable VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iftrue : unsigned(0 downto 0);
 variable VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iffalse : unsigned(0 downto 0);
 variable VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_cond : unsigned(0 downto 0);
 -- State registers comb logic variables
variable REG_VAR_frame_clock_reg : unsigned(0 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_frame_clock_reg := frame_clock_reg;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_right := to_unsigned(1079, 11);
     VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iffalse := to_unsigned(0, 1);
     VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue := to_unsigned(0, 1);
     VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue := to_unsigned(1, 1);
     VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_right := resize(to_unsigned(960, 10), 11);
     VAR_BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_right := resize(to_unsigned(540, 10), 11);
     VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_right := to_unsigned(1919, 11);
     VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iftrue := to_unsigned(1, 1);
     VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iftrue := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;
     -- Mux in inputs
     VAR_x := x;
     VAR_y := y;
     VAR_active := active;

     -- Submodule level 0
     VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_left := VAR_active;
     VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_left := VAR_active;
     VAR_frame_clock := frame_clock_reg;
     VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iffalse := frame_clock_reg;
     VAR_BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_left := VAR_x;
     VAR_BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_left := VAR_x;
     VAR_BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_left := VAR_y;
     VAR_BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_left := VAR_y;
     -- BIN_OP_EQ[pipelinec_app_c_l65_c7_d3a5] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_left <= VAR_BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_left;
     BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_right <= VAR_BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_right;
     -- Outputs
     VAR_BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_return_output := BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_return_output;

     -- BIN_OP_EQ[pipelinec_app_c_l74_c11_b21c] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_left <= VAR_BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_left;
     BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_right <= VAR_BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_right;
     -- Outputs
     VAR_BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_return_output := BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_return_output;

     -- BIN_OP_EQ[pipelinec_app_c_l66_c7_d446] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_left <= VAR_BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_left;
     BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_right <= VAR_BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_right;
     -- Outputs
     VAR_BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_return_output := BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_return_output;

     -- BIN_OP_EQ[pipelinec_app_c_l73_c11_bcc4] LATENCY=0
     -- Inputs
     BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_left <= VAR_BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_left;
     BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_right <= VAR_BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_right;
     -- Outputs
     VAR_BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_return_output := BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_right := VAR_BIN_OP_EQ_pipelinec_app_c_l65_c7_d3a5_return_output;
     VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_right := VAR_BIN_OP_EQ_pipelinec_app_c_l66_c7_d446_return_output;
     VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_right := VAR_BIN_OP_EQ_pipelinec_app_c_l73_c11_bcc4_return_output;
     VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_986d_right := VAR_BIN_OP_EQ_pipelinec_app_c_l74_c11_b21c_return_output;
     -- BIN_OP_AND[pipelinec_app_c_l72_c11_fdb8] LATENCY=0
     -- Inputs
     BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_left <= VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_left;
     BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_right <= VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_right;
     -- Outputs
     VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_return_output := BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_return_output;

     -- BIN_OP_AND[pipelinec_app_c_l64_c7_1ccc] LATENCY=0
     -- Inputs
     BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_left <= VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_left;
     BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_right <= VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_right;
     -- Outputs
     VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_return_output := BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_left := VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_1ccc_return_output;
     VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_986d_left := VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_fdb8_return_output;
     -- BIN_OP_AND[pipelinec_app_c_l64_c7_54e6] LATENCY=0
     -- Inputs
     BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_left <= VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_left;
     BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_right <= VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_right;
     -- Outputs
     VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_return_output := BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_return_output;

     -- BIN_OP_AND[pipelinec_app_c_l72_c11_986d] LATENCY=0
     -- Inputs
     BIN_OP_AND_pipelinec_app_c_l72_c11_986d_left <= VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_986d_left;
     BIN_OP_AND_pipelinec_app_c_l72_c11_986d_right <= VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_986d_right;
     -- Outputs
     VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_986d_return_output := BIN_OP_AND_pipelinec_app_c_l72_c11_986d_return_output;

     -- Submodule level 3
     VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond := VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_return_output;
     VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_cond := VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_return_output;
     VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond := VAR_BIN_OP_AND_pipelinec_app_c_l64_c7_54e6_return_output;
     VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_cond := VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_986d_return_output;
     VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_cond := VAR_BIN_OP_AND_pipelinec_app_c_l72_c11_986d_return_output;
     -- frame_clock_falling_edge_MUX[pipelinec_app_c_l64_c3_34fa] LATENCY=0
     -- Inputs
     frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond <= VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond;
     frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue <= VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue;
     frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse <= VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse;
     -- Outputs
     VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output := frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output;

     -- frame_clock_reg_MUX[pipelinec_app_c_l72_c8_f973] LATENCY=0
     -- Inputs
     frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_cond <= VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_cond;
     frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iftrue <= VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iftrue;
     frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iffalse <= VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_iffalse;
     -- Outputs
     VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_return_output := frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_return_output;

     -- frame_clock_rising_edge_MUX[pipelinec_app_c_l72_c8_f973] LATENCY=0
     -- Inputs
     frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_cond <= VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_cond;
     frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iftrue <= VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iftrue;
     frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iffalse <= VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_iffalse;
     -- Outputs
     VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_return_output := frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_return_output;

     -- Submodule level 4
     VAR_frame_clock_falling_edge := VAR_frame_clock_falling_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output;
     VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iffalse := VAR_frame_clock_reg_MUX_pipelinec_app_c_l72_c8_f973_return_output;
     VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse := VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l72_c8_f973_return_output;
     -- frame_clock_rising_edge_MUX[pipelinec_app_c_l64_c3_34fa] LATENCY=0
     -- Inputs
     frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond <= VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_cond;
     frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue <= VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iftrue;
     frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse <= VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_iffalse;
     -- Outputs
     VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output := frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output;

     -- frame_clock_reg_MUX[pipelinec_app_c_l64_c3_34fa] LATENCY=0
     -- Inputs
     frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_cond <= VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_cond;
     frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iftrue <= VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iftrue;
     frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iffalse <= VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_iffalse;
     -- Outputs
     VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_return_output := frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_return_output;

     -- Submodule level 5
     REG_VAR_frame_clock_reg := VAR_frame_clock_reg_MUX_pipelinec_app_c_l64_c3_34fa_return_output;
     VAR_frame_clock_rising_edge := VAR_frame_clock_rising_edge_MUX_pipelinec_app_c_l64_c3_34fa_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_frame_clock_reg <= REG_VAR_frame_clock_reg;
     -- Global wires driven various places in pipeline
     module_to_global.frame_clock <= VAR_frame_clock;
     module_to_global.frame_clock_rising_edge <= VAR_frame_clock_rising_edge;
     module_to_global.frame_clock_falling_edge <= VAR_frame_clock_falling_edge;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     frame_clock_reg <= REG_COMB_frame_clock_reg;
 end if;
 end if;
end process;

end arch;
