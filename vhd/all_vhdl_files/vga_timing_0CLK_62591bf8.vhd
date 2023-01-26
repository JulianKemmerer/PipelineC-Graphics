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
-- Submodules: 34
entity vga_timing_0CLK_62591bf8 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in vga_timing_global_to_module_t;
 return_output : out vga_signals_t);
end vga_timing_0CLK_62591bf8;
architecture arch of vga_timing_0CLK_62591bf8 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal h_cntr_reg : unsigned(11 downto 0) := to_unsigned(0, 12);
signal v_cntr_reg : unsigned(11 downto 0) := to_unsigned(0, 12);
signal h_sync_reg : unsigned(0 downto 0) := to_unsigned(0, 1);
signal v_sync_reg : unsigned(0 downto 0) := to_unsigned(0, 1);
signal valid_reg : unsigned(0 downto 0) := to_unsigned(1, 1);
signal REG_COMB_h_cntr_reg : unsigned(11 downto 0);
signal REG_COMB_v_cntr_reg : unsigned(11 downto 0);
signal REG_COMB_h_sync_reg : unsigned(0 downto 0);
signal REG_COMB_v_sync_reg : unsigned(0 downto 0);
signal REG_COMB_valid_reg : unsigned(0 downto 0);

-- Each function instance gets signals
-- BIN_OP_LT[vga_timing_h_l163_c7_c889]
signal BIN_OP_LT_vga_timing_h_l163_c7_c889_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l163_c7_c889_right : unsigned(10 downto 0);
signal BIN_OP_LT_vga_timing_h_l163_c7_c889_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l163_c29_60c8]
signal BIN_OP_LT_vga_timing_h_l163_c29_60c8_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l163_c29_60c8_right : unsigned(10 downto 0);
signal BIN_OP_LT_vga_timing_h_l163_c29_60c8_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l163_c7_60e7]
signal BIN_OP_AND_vga_timing_h_l163_c7_60e7_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l163_c7_60e7_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l163_c7_60e7_return_output : unsigned(0 downto 0);

-- o_active_MUX[vga_timing_h_l163_c3_0483]
signal o_active_MUX_vga_timing_h_l163_c3_0483_cond : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l163_c3_0483_iftrue : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l163_c3_0483_iffalse : unsigned(0 downto 0);
signal o_active_MUX_vga_timing_h_l163_c3_0483_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l167_c23_89ff]
signal BIN_OP_EQ_vga_timing_h_l167_c23_89ff_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l167_c23_89ff_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l167_c23_89ff_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l167_c41_9bfc]
signal BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_right : unsigned(0 downto 0);
signal BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l167_c23_2aab]
signal BIN_OP_AND_vga_timing_h_l167_c23_2aab_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l167_c23_2aab_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l167_c23_2aab_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l168_c21_4a32]
signal BIN_OP_EQ_vga_timing_h_l168_c21_4a32_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l168_c21_4a32_right : unsigned(10 downto 0);
signal BIN_OP_EQ_vga_timing_h_l168_c21_4a32_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l168_c47_d9fe]
signal BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_right : unsigned(10 downto 0);
signal BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l168_c21_f178]
signal BIN_OP_AND_vga_timing_h_l168_c21_f178_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l168_c21_f178_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l168_c21_f178_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[vga_timing_h_l175_c20_f066]
signal UNARY_OP_NOT_vga_timing_h_l175_c20_f066_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output : unsigned(0 downto 0);

-- h_sync_reg_MUX[vga_timing_h_l176_c3_33ec]
signal h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output : unsigned(0 downto 0);

-- h_cntr_reg_MUX[vga_timing_h_l176_c3_33ec]
signal h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond : unsigned(0 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output : unsigned(11 downto 0);

-- v_sync_reg_MUX[vga_timing_h_l176_c3_33ec]
signal v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l176_c3_33ec]
signal v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output : unsigned(11 downto 0);

-- BIN_OP_GTE[vga_timing_h_l178_c9_15be]
signal BIN_OP_GTE_vga_timing_h_l178_c9_15be_left : unsigned(11 downto 0);
signal BIN_OP_GTE_vga_timing_h_l178_c9_15be_right : unsigned(11 downto 0);
signal BIN_OP_GTE_vga_timing_h_l178_c9_15be_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l178_c43_e4dc]
signal BIN_OP_LT_vga_timing_h_l178_c43_e4dc_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l178_c43_e4dc_right : unsigned(12 downto 0);
signal BIN_OP_LT_vga_timing_h_l178_c43_e4dc_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l178_c9_288d]
signal BIN_OP_AND_vga_timing_h_l178_c9_288d_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l178_c9_288d_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l178_c9_288d_return_output : unsigned(0 downto 0);

-- h_sync_reg_MUX[vga_timing_h_l178_c5_5e6a]
signal h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_cond : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iftrue : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iffalse : unsigned(0 downto 0);
signal h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_return_output : unsigned(0 downto 0);

-- BIN_OP_GTE[vga_timing_h_l187_c9_abb0]
signal BIN_OP_GTE_vga_timing_h_l187_c9_abb0_left : unsigned(11 downto 0);
signal BIN_OP_GTE_vga_timing_h_l187_c9_abb0_right : unsigned(11 downto 0);
signal BIN_OP_GTE_vga_timing_h_l187_c9_abb0_return_output : unsigned(0 downto 0);

-- BIN_OP_LT[vga_timing_h_l187_c42_ccfb]
signal BIN_OP_LT_vga_timing_h_l187_c42_ccfb_left : unsigned(11 downto 0);
signal BIN_OP_LT_vga_timing_h_l187_c42_ccfb_right : unsigned(12 downto 0);
signal BIN_OP_LT_vga_timing_h_l187_c42_ccfb_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l187_c9_1351]
signal BIN_OP_AND_vga_timing_h_l187_c9_1351_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l187_c9_1351_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l187_c9_1351_return_output : unsigned(0 downto 0);

-- v_sync_reg_MUX[vga_timing_h_l187_c5_c621]
signal v_sync_reg_MUX_vga_timing_h_l187_c5_c621_cond : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iftrue : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iffalse : unsigned(0 downto 0);
signal v_sync_reg_MUX_vga_timing_h_l187_c5_c621_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l196_c9_bd53]
signal BIN_OP_EQ_vga_timing_h_l196_c9_bd53_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l196_c9_bd53_right : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l196_c9_bd53_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[vga_timing_h_l196_c38_cb7e]
signal BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_right : unsigned(10 downto 0);
signal BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[vga_timing_h_l196_c9_12da]
signal BIN_OP_AND_vga_timing_h_l196_c9_12da_left : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l196_c9_12da_right : unsigned(0 downto 0);
signal BIN_OP_AND_vga_timing_h_l196_c9_12da_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l196_c5_0032]
signal v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_return_output : unsigned(11 downto 0);

-- BIN_OP_EQ[vga_timing_h_l200_c13_3e2e]
signal BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_right : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_return_output : unsigned(0 downto 0);

-- v_cntr_reg_MUX[vga_timing_h_l200_c10_8a7e]
signal v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_cond : unsigned(0 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iftrue : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iffalse : unsigned(11 downto 0);
signal v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l202_c20_72e2]
signal BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_return_output : unsigned(12 downto 0);

-- BIN_OP_EQ[vga_timing_h_l205_c8_b65a]
signal BIN_OP_EQ_vga_timing_h_l205_c8_b65a_left : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l205_c8_b65a_right : unsigned(11 downto 0);
signal BIN_OP_EQ_vga_timing_h_l205_c8_b65a_return_output : unsigned(0 downto 0);

-- h_cntr_reg_MUX[vga_timing_h_l205_c5_7ca2]
signal h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_cond : unsigned(0 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iftrue : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iffalse : unsigned(11 downto 0);
signal h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_return_output : unsigned(11 downto 0);

-- BIN_OP_PLUS[vga_timing_h_l211_c20_9906]
signal BIN_OP_PLUS_vga_timing_h_l211_c20_9906_left : unsigned(11 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l211_c20_9906_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_vga_timing_h_l211_c20_9906_return_output : unsigned(12 downto 0);

function CONST_REF_RD_vga_signals_t_vga_signals_t_213c( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned;
 ref_toks_4 : unsigned;
 ref_toks_5 : unsigned;
 ref_toks_6 : unsigned;
 ref_toks_7 : unsigned) return vga_signals_t is
 
  variable base : vga_signals_t; 
  variable return_output : vga_signals_t;
begin
      base.hsync := ref_toks_0;
      base.vsync := ref_toks_1;
      base.pos.x := ref_toks_2;
      base.pos.y := ref_toks_3;
      base.valid := ref_toks_4;
      base.active := ref_toks_5;
      base.start_of_frame := ref_toks_6;
      base.end_of_frame := ref_toks_7;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_LT_vga_timing_h_l163_c7_c889
BIN_OP_LT_vga_timing_h_l163_c7_c889 : entity work.BIN_OP_LT_uint12_t_uint11_t_0CLK_de264c78 port map (
BIN_OP_LT_vga_timing_h_l163_c7_c889_left,
BIN_OP_LT_vga_timing_h_l163_c7_c889_right,
BIN_OP_LT_vga_timing_h_l163_c7_c889_return_output);

-- BIN_OP_LT_vga_timing_h_l163_c29_60c8
BIN_OP_LT_vga_timing_h_l163_c29_60c8 : entity work.BIN_OP_LT_uint12_t_uint11_t_0CLK_de264c78 port map (
BIN_OP_LT_vga_timing_h_l163_c29_60c8_left,
BIN_OP_LT_vga_timing_h_l163_c29_60c8_right,
BIN_OP_LT_vga_timing_h_l163_c29_60c8_return_output);

-- BIN_OP_AND_vga_timing_h_l163_c7_60e7
BIN_OP_AND_vga_timing_h_l163_c7_60e7 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l163_c7_60e7_left,
BIN_OP_AND_vga_timing_h_l163_c7_60e7_right,
BIN_OP_AND_vga_timing_h_l163_c7_60e7_return_output);

-- o_active_MUX_vga_timing_h_l163_c3_0483
o_active_MUX_vga_timing_h_l163_c3_0483 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_active_MUX_vga_timing_h_l163_c3_0483_cond,
o_active_MUX_vga_timing_h_l163_c3_0483_iftrue,
o_active_MUX_vga_timing_h_l163_c3_0483_iffalse,
o_active_MUX_vga_timing_h_l163_c3_0483_return_output);

-- BIN_OP_EQ_vga_timing_h_l167_c23_89ff
BIN_OP_EQ_vga_timing_h_l167_c23_89ff : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l167_c23_89ff_left,
BIN_OP_EQ_vga_timing_h_l167_c23_89ff_right,
BIN_OP_EQ_vga_timing_h_l167_c23_89ff_return_output);

-- BIN_OP_EQ_vga_timing_h_l167_c41_9bfc
BIN_OP_EQ_vga_timing_h_l167_c41_9bfc : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_left,
BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_right,
BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_return_output);

-- BIN_OP_AND_vga_timing_h_l167_c23_2aab
BIN_OP_AND_vga_timing_h_l167_c23_2aab : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l167_c23_2aab_left,
BIN_OP_AND_vga_timing_h_l167_c23_2aab_right,
BIN_OP_AND_vga_timing_h_l167_c23_2aab_return_output);

-- BIN_OP_EQ_vga_timing_h_l168_c21_4a32
BIN_OP_EQ_vga_timing_h_l168_c21_4a32 : entity work.BIN_OP_EQ_uint12_t_uint11_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l168_c21_4a32_left,
BIN_OP_EQ_vga_timing_h_l168_c21_4a32_right,
BIN_OP_EQ_vga_timing_h_l168_c21_4a32_return_output);

-- BIN_OP_EQ_vga_timing_h_l168_c47_d9fe
BIN_OP_EQ_vga_timing_h_l168_c47_d9fe : entity work.BIN_OP_EQ_uint12_t_uint11_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_left,
BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_right,
BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_return_output);

-- BIN_OP_AND_vga_timing_h_l168_c21_f178
BIN_OP_AND_vga_timing_h_l168_c21_f178 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l168_c21_f178_left,
BIN_OP_AND_vga_timing_h_l168_c21_f178_right,
BIN_OP_AND_vga_timing_h_l168_c21_f178_return_output);

-- UNARY_OP_NOT_vga_timing_h_l175_c20_f066
UNARY_OP_NOT_vga_timing_h_l175_c20_f066 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_vga_timing_h_l175_c20_f066_expr,
UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output);

-- h_sync_reg_MUX_vga_timing_h_l176_c3_33ec
h_sync_reg_MUX_vga_timing_h_l176_c3_33ec : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond,
h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue,
h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse,
h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output);

-- h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec
h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond,
h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue,
h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse,
h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output);

-- v_sync_reg_MUX_vga_timing_h_l176_c3_33ec
v_sync_reg_MUX_vga_timing_h_l176_c3_33ec : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond,
v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue,
v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse,
v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec
v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond,
v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue,
v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse,
v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output);

-- BIN_OP_GTE_vga_timing_h_l178_c9_15be
BIN_OP_GTE_vga_timing_h_l178_c9_15be : entity work.BIN_OP_GTE_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_GTE_vga_timing_h_l178_c9_15be_left,
BIN_OP_GTE_vga_timing_h_l178_c9_15be_right,
BIN_OP_GTE_vga_timing_h_l178_c9_15be_return_output);

-- BIN_OP_LT_vga_timing_h_l178_c43_e4dc
BIN_OP_LT_vga_timing_h_l178_c43_e4dc : entity work.BIN_OP_LT_uint12_t_uint13_t_0CLK_de264c78 port map (
BIN_OP_LT_vga_timing_h_l178_c43_e4dc_left,
BIN_OP_LT_vga_timing_h_l178_c43_e4dc_right,
BIN_OP_LT_vga_timing_h_l178_c43_e4dc_return_output);

-- BIN_OP_AND_vga_timing_h_l178_c9_288d
BIN_OP_AND_vga_timing_h_l178_c9_288d : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l178_c9_288d_left,
BIN_OP_AND_vga_timing_h_l178_c9_288d_right,
BIN_OP_AND_vga_timing_h_l178_c9_288d_return_output);

-- h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a
h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_cond,
h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iftrue,
h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iffalse,
h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_return_output);

-- BIN_OP_GTE_vga_timing_h_l187_c9_abb0
BIN_OP_GTE_vga_timing_h_l187_c9_abb0 : entity work.BIN_OP_GTE_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_GTE_vga_timing_h_l187_c9_abb0_left,
BIN_OP_GTE_vga_timing_h_l187_c9_abb0_right,
BIN_OP_GTE_vga_timing_h_l187_c9_abb0_return_output);

-- BIN_OP_LT_vga_timing_h_l187_c42_ccfb
BIN_OP_LT_vga_timing_h_l187_c42_ccfb : entity work.BIN_OP_LT_uint12_t_uint13_t_0CLK_de264c78 port map (
BIN_OP_LT_vga_timing_h_l187_c42_ccfb_left,
BIN_OP_LT_vga_timing_h_l187_c42_ccfb_right,
BIN_OP_LT_vga_timing_h_l187_c42_ccfb_return_output);

-- BIN_OP_AND_vga_timing_h_l187_c9_1351
BIN_OP_AND_vga_timing_h_l187_c9_1351 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l187_c9_1351_left,
BIN_OP_AND_vga_timing_h_l187_c9_1351_right,
BIN_OP_AND_vga_timing_h_l187_c9_1351_return_output);

-- v_sync_reg_MUX_vga_timing_h_l187_c5_c621
v_sync_reg_MUX_vga_timing_h_l187_c5_c621 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
v_sync_reg_MUX_vga_timing_h_l187_c5_c621_cond,
v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iftrue,
v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iffalse,
v_sync_reg_MUX_vga_timing_h_l187_c5_c621_return_output);

-- BIN_OP_EQ_vga_timing_h_l196_c9_bd53
BIN_OP_EQ_vga_timing_h_l196_c9_bd53 : entity work.BIN_OP_EQ_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l196_c9_bd53_left,
BIN_OP_EQ_vga_timing_h_l196_c9_bd53_right,
BIN_OP_EQ_vga_timing_h_l196_c9_bd53_return_output);

-- BIN_OP_EQ_vga_timing_h_l196_c38_cb7e
BIN_OP_EQ_vga_timing_h_l196_c38_cb7e : entity work.BIN_OP_EQ_uint12_t_uint11_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_left,
BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_right,
BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_return_output);

-- BIN_OP_AND_vga_timing_h_l196_c9_12da
BIN_OP_AND_vga_timing_h_l196_c9_12da : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_vga_timing_h_l196_c9_12da_left,
BIN_OP_AND_vga_timing_h_l196_c9_12da_right,
BIN_OP_AND_vga_timing_h_l196_c9_12da_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l196_c5_0032
v_cntr_reg_MUX_vga_timing_h_l196_c5_0032 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_cond,
v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iftrue,
v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iffalse,
v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_return_output);

-- BIN_OP_EQ_vga_timing_h_l200_c13_3e2e
BIN_OP_EQ_vga_timing_h_l200_c13_3e2e : entity work.BIN_OP_EQ_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_left,
BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_right,
BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_return_output);

-- v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e
v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_cond,
v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iftrue,
v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iffalse,
v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_return_output);

-- BIN_OP_PLUS_vga_timing_h_l202_c20_72e2
BIN_OP_PLUS_vga_timing_h_l202_c20_72e2 : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_left,
BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_right,
BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_return_output);

-- BIN_OP_EQ_vga_timing_h_l205_c8_b65a
BIN_OP_EQ_vga_timing_h_l205_c8_b65a : entity work.BIN_OP_EQ_uint12_t_uint12_t_0CLK_de264c78 port map (
BIN_OP_EQ_vga_timing_h_l205_c8_b65a_left,
BIN_OP_EQ_vga_timing_h_l205_c8_b65a_right,
BIN_OP_EQ_vga_timing_h_l205_c8_b65a_return_output);

-- h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2
h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2 : entity work.MUX_uint1_t_uint12_t_uint12_t_0CLK_de264c78 port map (
h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_cond,
h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iftrue,
h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iffalse,
h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_return_output);

-- BIN_OP_PLUS_vga_timing_h_l211_c20_9906
BIN_OP_PLUS_vga_timing_h_l211_c20_9906 : entity work.BIN_OP_PLUS_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_vga_timing_h_l211_c20_9906_left,
BIN_OP_PLUS_vga_timing_h_l211_c20_9906_right,
BIN_OP_PLUS_vga_timing_h_l211_c20_9906_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Registers
 h_cntr_reg,
 v_cntr_reg,
 h_sync_reg,
 v_sync_reg,
 valid_reg,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 BIN_OP_LT_vga_timing_h_l163_c7_c889_return_output,
 BIN_OP_LT_vga_timing_h_l163_c29_60c8_return_output,
 BIN_OP_AND_vga_timing_h_l163_c7_60e7_return_output,
 o_active_MUX_vga_timing_h_l163_c3_0483_return_output,
 BIN_OP_EQ_vga_timing_h_l167_c23_89ff_return_output,
 BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_return_output,
 BIN_OP_AND_vga_timing_h_l167_c23_2aab_return_output,
 BIN_OP_EQ_vga_timing_h_l168_c21_4a32_return_output,
 BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_return_output,
 BIN_OP_AND_vga_timing_h_l168_c21_f178_return_output,
 UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output,
 h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output,
 h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output,
 v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output,
 v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output,
 BIN_OP_GTE_vga_timing_h_l178_c9_15be_return_output,
 BIN_OP_LT_vga_timing_h_l178_c43_e4dc_return_output,
 BIN_OP_AND_vga_timing_h_l178_c9_288d_return_output,
 h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_return_output,
 BIN_OP_GTE_vga_timing_h_l187_c9_abb0_return_output,
 BIN_OP_LT_vga_timing_h_l187_c42_ccfb_return_output,
 BIN_OP_AND_vga_timing_h_l187_c9_1351_return_output,
 v_sync_reg_MUX_vga_timing_h_l187_c5_c621_return_output,
 BIN_OP_EQ_vga_timing_h_l196_c9_bd53_return_output,
 BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_return_output,
 BIN_OP_AND_vga_timing_h_l196_c9_12da_return_output,
 v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_return_output,
 BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_return_output,
 v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_return_output,
 BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_return_output,
 BIN_OP_EQ_vga_timing_h_l205_c8_b65a_return_output,
 h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_return_output,
 BIN_OP_PLUS_vga_timing_h_l211_c20_9906_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : vga_signals_t;
 variable VAR_vga_req_stall : unsigned(0 downto 0);
 variable VAR_o : vga_signals_t;
 variable VAR_BIN_OP_LT_vga_timing_h_l163_c7_c889_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l163_c7_c889_right : unsigned(10 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l163_c7_c889_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l163_c7_60e7_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l163_c29_60c8_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l163_c29_60c8_right : unsigned(10 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l163_c29_60c8_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l163_c7_60e7_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l163_c7_60e7_return_output : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l163_c3_0483_iftrue : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l163_c3_0483_iffalse : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l163_c3_0483_return_output : unsigned(0 downto 0);
 variable VAR_o_active_MUX_vga_timing_h_l163_c3_0483_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l167_c23_89ff_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l167_c23_89ff_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l167_c23_89ff_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l167_c23_2aab_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l167_c23_2aab_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l167_c23_2aab_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l168_c21_4a32_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l168_c21_4a32_right : unsigned(10 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l168_c21_4a32_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l168_c21_f178_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_right : unsigned(10 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l168_c21_f178_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l168_c21_f178_return_output : unsigned(0 downto 0);
 variable VAR_stall_req : unsigned(0 downto 0);
 variable VAR_valid : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_vga_timing_h_l175_c20_f066_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond : unsigned(0 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_return_output : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l178_c9_15be_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l178_c9_15be_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l178_c9_15be_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l178_c9_288d_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l178_c43_e4dc_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l178_c43_e4dc_right : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l178_c43_e4dc_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l178_c9_288d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l178_c9_288d_return_output : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iftrue : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iffalse : unsigned(0 downto 0);
 variable VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l187_c9_abb0_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l187_c9_abb0_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_GTE_vga_timing_h_l187_c9_abb0_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l187_c9_1351_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l187_c42_ccfb_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l187_c42_ccfb_right : unsigned(12 downto 0);
 variable VAR_BIN_OP_LT_vga_timing_h_l187_c42_ccfb_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l187_c9_1351_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l187_c9_1351_return_output : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iftrue : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iffalse : unsigned(0 downto 0);
 variable VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l196_c9_bd53_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l196_c9_bd53_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l196_c9_bd53_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l196_c9_12da_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_right : unsigned(10 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l196_c9_12da_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_vga_timing_h_l196_c9_12da_return_output : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_vga_timing_h_l198_c7_ef98 : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_return_output : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_return_output : unsigned(0 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iftrue : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_vga_timing_h_l202_c7_e127 : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iffalse : unsigned(11 downto 0);
 variable VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c8_b65a_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c8_b65a_right : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_vga_timing_h_l205_c8_b65a_return_output : unsigned(0 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iftrue : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_vga_timing_h_l207_c7_91f8 : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iffalse : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_vga_timing_h_l211_c7_9a0d : unsigned(11 downto 0);
 variable VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l211_c20_9906_left : unsigned(11 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l211_c20_9906_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_vga_timing_h_l211_c20_9906_return_output : unsigned(12 downto 0);
 variable VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_213c_vga_timing_h_l216_c10_edf3_return_output : vga_signals_t;
 -- State registers comb logic variables
variable REG_VAR_h_cntr_reg : unsigned(11 downto 0);
variable REG_VAR_v_cntr_reg : unsigned(11 downto 0);
variable REG_VAR_h_sync_reg : unsigned(0 downto 0);
variable REG_VAR_v_sync_reg : unsigned(0 downto 0);
variable REG_VAR_valid_reg : unsigned(0 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_h_cntr_reg := h_cntr_reg;
  REG_VAR_v_cntr_reg := v_cntr_reg;
  REG_VAR_h_sync_reg := h_sync_reg;
  REG_VAR_v_sync_reg := v_sync_reg;
  REG_VAR_valid_reg := valid_reg;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_v_cntr_reg_vga_timing_h_l198_c7_ef98 := resize(to_unsigned(0, 1), 12);
     VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iftrue := VAR_v_cntr_reg_vga_timing_h_l198_c7_ef98;
     VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iffalse := to_unsigned(0, 1);
     VAR_h_cntr_reg_vga_timing_h_l207_c7_91f8 := resize(to_unsigned(0, 1), 12);
     VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iftrue := VAR_h_cntr_reg_vga_timing_h_l207_c7_91f8;
     VAR_BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_right := to_unsigned(2199, 12);
     VAR_BIN_OP_EQ_vga_timing_h_l205_c8_b65a_right := to_unsigned(2199, 12);
     VAR_BIN_OP_EQ_vga_timing_h_l167_c23_89ff_right := to_unsigned(0, 1);
     VAR_BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_right := to_unsigned(1079, 11);
     VAR_BIN_OP_GTE_vga_timing_h_l178_c9_15be_right := resize(to_unsigned(2007, 11), 12);
     VAR_BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_right := to_unsigned(0, 1);
     VAR_o_active_MUX_vga_timing_h_l163_c3_0483_iffalse := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l168_c21_4a32_right := to_unsigned(1919, 11);
     VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iffalse := to_unsigned(0, 1);
     VAR_BIN_OP_LT_vga_timing_h_l163_c29_60c8_right := to_unsigned(1080, 11);
     VAR_BIN_OP_LT_vga_timing_h_l178_c43_e4dc_right := resize(to_unsigned(2051, 12), 13);
     VAR_BIN_OP_GTE_vga_timing_h_l187_c9_abb0_right := resize(to_unsigned(1083, 11), 12);
     VAR_o_active_MUX_vga_timing_h_l163_c3_0483_iftrue := to_unsigned(1, 1);
     VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_LT_vga_timing_h_l187_c42_ccfb_right := resize(to_unsigned(1088, 11), 13);
     VAR_BIN_OP_LT_vga_timing_h_l163_c7_c889_right := to_unsigned(1920, 11);
     VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_vga_timing_h_l196_c9_bd53_right := to_unsigned(2199, 12);
     VAR_BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_right := to_unsigned(1124, 11);
     VAR_BIN_OP_PLUS_vga_timing_h_l211_c20_9906_right := to_unsigned(1, 1);
 -- Reads from global variables
     VAR_vga_req_stall := global_to_module.vga_req_stall;
     -- Submodule level 0
     VAR_UNARY_OP_NOT_vga_timing_h_l175_c20_f066_expr := VAR_vga_req_stall;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;

     -- Submodule level 0
     VAR_BIN_OP_EQ_vga_timing_h_l167_c23_89ff_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l168_c21_4a32_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l196_c9_bd53_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_left := h_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l205_c8_b65a_left := h_cntr_reg;
     VAR_BIN_OP_GTE_vga_timing_h_l178_c9_15be_left := h_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l163_c7_c889_left := h_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l178_c43_e4dc_left := h_cntr_reg;
     VAR_BIN_OP_PLUS_vga_timing_h_l211_c20_9906_left := h_cntr_reg;
     VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse := h_cntr_reg;
     VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse := h_sync_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_left := v_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_left := v_cntr_reg;
     VAR_BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_left := v_cntr_reg;
     VAR_BIN_OP_GTE_vga_timing_h_l187_c9_abb0_left := v_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l163_c29_60c8_left := v_cntr_reg;
     VAR_BIN_OP_LT_vga_timing_h_l187_c42_ccfb_left := v_cntr_reg;
     VAR_BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_left := v_cntr_reg;
     VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse := v_cntr_reg;
     VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iffalse := v_cntr_reg;
     VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse := v_sync_reg;
     -- BIN_OP_LT[vga_timing_h_l163_c29_60c8] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l163_c29_60c8_left <= VAR_BIN_OP_LT_vga_timing_h_l163_c29_60c8_left;
     BIN_OP_LT_vga_timing_h_l163_c29_60c8_right <= VAR_BIN_OP_LT_vga_timing_h_l163_c29_60c8_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l163_c29_60c8_return_output := BIN_OP_LT_vga_timing_h_l163_c29_60c8_return_output;

     -- BIN_OP_EQ[vga_timing_h_l167_c23_89ff] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l167_c23_89ff_left <= VAR_BIN_OP_EQ_vga_timing_h_l167_c23_89ff_left;
     BIN_OP_EQ_vga_timing_h_l167_c23_89ff_right <= VAR_BIN_OP_EQ_vga_timing_h_l167_c23_89ff_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l167_c23_89ff_return_output := BIN_OP_EQ_vga_timing_h_l167_c23_89ff_return_output;

     -- BIN_OP_EQ[vga_timing_h_l196_c38_cb7e] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_left <= VAR_BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_left;
     BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_right <= VAR_BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_return_output := BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_return_output;

     -- BIN_OP_EQ[vga_timing_h_l200_c13_3e2e] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_left <= VAR_BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_left;
     BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_right <= VAR_BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_return_output := BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_return_output;

     -- BIN_OP_EQ[vga_timing_h_l167_c41_9bfc] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_left <= VAR_BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_left;
     BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_right <= VAR_BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_return_output := BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l211_c20_9906] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l211_c20_9906_left <= VAR_BIN_OP_PLUS_vga_timing_h_l211_c20_9906_left;
     BIN_OP_PLUS_vga_timing_h_l211_c20_9906_right <= VAR_BIN_OP_PLUS_vga_timing_h_l211_c20_9906_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l211_c20_9906_return_output := BIN_OP_PLUS_vga_timing_h_l211_c20_9906_return_output;

     -- BIN_OP_EQ[vga_timing_h_l196_c9_bd53] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l196_c9_bd53_left <= VAR_BIN_OP_EQ_vga_timing_h_l196_c9_bd53_left;
     BIN_OP_EQ_vga_timing_h_l196_c9_bd53_right <= VAR_BIN_OP_EQ_vga_timing_h_l196_c9_bd53_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l196_c9_bd53_return_output := BIN_OP_EQ_vga_timing_h_l196_c9_bd53_return_output;

     -- BIN_OP_LT[vga_timing_h_l178_c43_e4dc] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l178_c43_e4dc_left <= VAR_BIN_OP_LT_vga_timing_h_l178_c43_e4dc_left;
     BIN_OP_LT_vga_timing_h_l178_c43_e4dc_right <= VAR_BIN_OP_LT_vga_timing_h_l178_c43_e4dc_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l178_c43_e4dc_return_output := BIN_OP_LT_vga_timing_h_l178_c43_e4dc_return_output;

     -- BIN_OP_GTE[vga_timing_h_l187_c9_abb0] LATENCY=0
     -- Inputs
     BIN_OP_GTE_vga_timing_h_l187_c9_abb0_left <= VAR_BIN_OP_GTE_vga_timing_h_l187_c9_abb0_left;
     BIN_OP_GTE_vga_timing_h_l187_c9_abb0_right <= VAR_BIN_OP_GTE_vga_timing_h_l187_c9_abb0_right;
     -- Outputs
     VAR_BIN_OP_GTE_vga_timing_h_l187_c9_abb0_return_output := BIN_OP_GTE_vga_timing_h_l187_c9_abb0_return_output;

     -- BIN_OP_EQ[vga_timing_h_l205_c8_b65a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l205_c8_b65a_left <= VAR_BIN_OP_EQ_vga_timing_h_l205_c8_b65a_left;
     BIN_OP_EQ_vga_timing_h_l205_c8_b65a_right <= VAR_BIN_OP_EQ_vga_timing_h_l205_c8_b65a_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l205_c8_b65a_return_output := BIN_OP_EQ_vga_timing_h_l205_c8_b65a_return_output;

     -- BIN_OP_LT[vga_timing_h_l163_c7_c889] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l163_c7_c889_left <= VAR_BIN_OP_LT_vga_timing_h_l163_c7_c889_left;
     BIN_OP_LT_vga_timing_h_l163_c7_c889_right <= VAR_BIN_OP_LT_vga_timing_h_l163_c7_c889_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l163_c7_c889_return_output := BIN_OP_LT_vga_timing_h_l163_c7_c889_return_output;

     -- BIN_OP_LT[vga_timing_h_l187_c42_ccfb] LATENCY=0
     -- Inputs
     BIN_OP_LT_vga_timing_h_l187_c42_ccfb_left <= VAR_BIN_OP_LT_vga_timing_h_l187_c42_ccfb_left;
     BIN_OP_LT_vga_timing_h_l187_c42_ccfb_right <= VAR_BIN_OP_LT_vga_timing_h_l187_c42_ccfb_right;
     -- Outputs
     VAR_BIN_OP_LT_vga_timing_h_l187_c42_ccfb_return_output := BIN_OP_LT_vga_timing_h_l187_c42_ccfb_return_output;

     -- BIN_OP_EQ[vga_timing_h_l168_c47_d9fe] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_left <= VAR_BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_left;
     BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_right <= VAR_BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_return_output := BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_return_output;

     -- BIN_OP_GTE[vga_timing_h_l178_c9_15be] LATENCY=0
     -- Inputs
     BIN_OP_GTE_vga_timing_h_l178_c9_15be_left <= VAR_BIN_OP_GTE_vga_timing_h_l178_c9_15be_left;
     BIN_OP_GTE_vga_timing_h_l178_c9_15be_right <= VAR_BIN_OP_GTE_vga_timing_h_l178_c9_15be_right;
     -- Outputs
     VAR_BIN_OP_GTE_vga_timing_h_l178_c9_15be_return_output := BIN_OP_GTE_vga_timing_h_l178_c9_15be_return_output;

     -- BIN_OP_EQ[vga_timing_h_l168_c21_4a32] LATENCY=0
     -- Inputs
     BIN_OP_EQ_vga_timing_h_l168_c21_4a32_left <= VAR_BIN_OP_EQ_vga_timing_h_l168_c21_4a32_left;
     BIN_OP_EQ_vga_timing_h_l168_c21_4a32_right <= VAR_BIN_OP_EQ_vga_timing_h_l168_c21_4a32_right;
     -- Outputs
     VAR_BIN_OP_EQ_vga_timing_h_l168_c21_4a32_return_output := BIN_OP_EQ_vga_timing_h_l168_c21_4a32_return_output;

     -- BIN_OP_PLUS[vga_timing_h_l202_c20_72e2] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_left <= VAR_BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_left;
     BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_right <= VAR_BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_right;
     -- Outputs
     VAR_BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_return_output := BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_return_output;

     -- UNARY_OP_NOT[vga_timing_h_l175_c20_f066] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_vga_timing_h_l175_c20_f066_expr <= VAR_UNARY_OP_NOT_vga_timing_h_l175_c20_f066_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output := UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_vga_timing_h_l167_c23_2aab_left := VAR_BIN_OP_EQ_vga_timing_h_l167_c23_89ff_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l167_c23_2aab_right := VAR_BIN_OP_EQ_vga_timing_h_l167_c41_9bfc_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l168_c21_f178_left := VAR_BIN_OP_EQ_vga_timing_h_l168_c21_4a32_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l168_c21_f178_right := VAR_BIN_OP_EQ_vga_timing_h_l168_c47_d9fe_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l196_c9_12da_right := VAR_BIN_OP_EQ_vga_timing_h_l196_c38_cb7e_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l196_c9_12da_left := VAR_BIN_OP_EQ_vga_timing_h_l196_c9_bd53_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_cond := VAR_BIN_OP_EQ_vga_timing_h_l200_c13_3e2e_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_cond := VAR_BIN_OP_EQ_vga_timing_h_l205_c8_b65a_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l178_c9_288d_left := VAR_BIN_OP_GTE_vga_timing_h_l178_c9_15be_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l187_c9_1351_left := VAR_BIN_OP_GTE_vga_timing_h_l187_c9_abb0_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l163_c7_60e7_right := VAR_BIN_OP_LT_vga_timing_h_l163_c29_60c8_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l163_c7_60e7_left := VAR_BIN_OP_LT_vga_timing_h_l163_c7_c889_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l178_c9_288d_right := VAR_BIN_OP_LT_vga_timing_h_l178_c43_e4dc_return_output;
     VAR_BIN_OP_AND_vga_timing_h_l187_c9_1351_right := VAR_BIN_OP_LT_vga_timing_h_l187_c42_ccfb_return_output;
     VAR_v_cntr_reg_vga_timing_h_l202_c7_e127 := resize(VAR_BIN_OP_PLUS_vga_timing_h_l202_c20_72e2_return_output, 12);
     VAR_h_cntr_reg_vga_timing_h_l211_c7_9a0d := resize(VAR_BIN_OP_PLUS_vga_timing_h_l211_c20_9906_return_output, 12);
     VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond := VAR_UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond := VAR_UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond := VAR_UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond := VAR_UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output;
     REG_VAR_valid_reg := VAR_UNARY_OP_NOT_vga_timing_h_l175_c20_f066_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iffalse := VAR_h_cntr_reg_vga_timing_h_l211_c7_9a0d;
     VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iftrue := VAR_v_cntr_reg_vga_timing_h_l202_c7_e127;
     -- BIN_OP_AND[vga_timing_h_l168_c21_f178] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l168_c21_f178_left <= VAR_BIN_OP_AND_vga_timing_h_l168_c21_f178_left;
     BIN_OP_AND_vga_timing_h_l168_c21_f178_right <= VAR_BIN_OP_AND_vga_timing_h_l168_c21_f178_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l168_c21_f178_return_output := BIN_OP_AND_vga_timing_h_l168_c21_f178_return_output;

     -- BIN_OP_AND[vga_timing_h_l187_c9_1351] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l187_c9_1351_left <= VAR_BIN_OP_AND_vga_timing_h_l187_c9_1351_left;
     BIN_OP_AND_vga_timing_h_l187_c9_1351_right <= VAR_BIN_OP_AND_vga_timing_h_l187_c9_1351_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l187_c9_1351_return_output := BIN_OP_AND_vga_timing_h_l187_c9_1351_return_output;

     -- v_cntr_reg_MUX[vga_timing_h_l200_c10_8a7e] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_cond;
     v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_return_output := v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_return_output;

     -- BIN_OP_AND[vga_timing_h_l196_c9_12da] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l196_c9_12da_left <= VAR_BIN_OP_AND_vga_timing_h_l196_c9_12da_left;
     BIN_OP_AND_vga_timing_h_l196_c9_12da_right <= VAR_BIN_OP_AND_vga_timing_h_l196_c9_12da_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l196_c9_12da_return_output := BIN_OP_AND_vga_timing_h_l196_c9_12da_return_output;

     -- h_cntr_reg_MUX[vga_timing_h_l205_c5_7ca2] LATENCY=0
     -- Inputs
     h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_cond <= VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_cond;
     h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iftrue <= VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iftrue;
     h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iffalse <= VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_iffalse;
     -- Outputs
     VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_return_output := h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_return_output;

     -- BIN_OP_AND[vga_timing_h_l163_c7_60e7] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l163_c7_60e7_left <= VAR_BIN_OP_AND_vga_timing_h_l163_c7_60e7_left;
     BIN_OP_AND_vga_timing_h_l163_c7_60e7_right <= VAR_BIN_OP_AND_vga_timing_h_l163_c7_60e7_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l163_c7_60e7_return_output := BIN_OP_AND_vga_timing_h_l163_c7_60e7_return_output;

     -- BIN_OP_AND[vga_timing_h_l167_c23_2aab] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l167_c23_2aab_left <= VAR_BIN_OP_AND_vga_timing_h_l167_c23_2aab_left;
     BIN_OP_AND_vga_timing_h_l167_c23_2aab_right <= VAR_BIN_OP_AND_vga_timing_h_l167_c23_2aab_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l167_c23_2aab_return_output := BIN_OP_AND_vga_timing_h_l167_c23_2aab_return_output;

     -- BIN_OP_AND[vga_timing_h_l178_c9_288d] LATENCY=0
     -- Inputs
     BIN_OP_AND_vga_timing_h_l178_c9_288d_left <= VAR_BIN_OP_AND_vga_timing_h_l178_c9_288d_left;
     BIN_OP_AND_vga_timing_h_l178_c9_288d_right <= VAR_BIN_OP_AND_vga_timing_h_l178_c9_288d_right;
     -- Outputs
     VAR_BIN_OP_AND_vga_timing_h_l178_c9_288d_return_output := BIN_OP_AND_vga_timing_h_l178_c9_288d_return_output;

     -- Submodule level 2
     VAR_o_active_MUX_vga_timing_h_l163_c3_0483_cond := VAR_BIN_OP_AND_vga_timing_h_l163_c7_60e7_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_cond := VAR_BIN_OP_AND_vga_timing_h_l178_c9_288d_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_cond := VAR_BIN_OP_AND_vga_timing_h_l187_c9_1351_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_cond := VAR_BIN_OP_AND_vga_timing_h_l196_c9_12da_return_output;
     VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue := VAR_h_cntr_reg_MUX_vga_timing_h_l205_c5_7ca2_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iffalse := VAR_v_cntr_reg_MUX_vga_timing_h_l200_c10_8a7e_return_output;
     -- h_cntr_reg_MUX[vga_timing_h_l176_c3_33ec] LATENCY=0
     -- Inputs
     h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond <= VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond;
     h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue <= VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue;
     h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse <= VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse;
     -- Outputs
     VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output := h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output;

     -- h_sync_reg_MUX[vga_timing_h_l178_c5_5e6a] LATENCY=0
     -- Inputs
     h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_cond <= VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_cond;
     h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iftrue <= VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iftrue;
     h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iffalse <= VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_iffalse;
     -- Outputs
     VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_return_output := h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_return_output;

     -- v_cntr_reg_MUX[vga_timing_h_l196_c5_0032] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_cond;
     v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_return_output := v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_return_output;

     -- v_sync_reg_MUX[vga_timing_h_l187_c5_c621] LATENCY=0
     -- Inputs
     v_sync_reg_MUX_vga_timing_h_l187_c5_c621_cond <= VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_cond;
     v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iftrue <= VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iftrue;
     v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iffalse <= VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_iffalse;
     -- Outputs
     VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_return_output := v_sync_reg_MUX_vga_timing_h_l187_c5_c621_return_output;

     -- o_active_MUX[vga_timing_h_l163_c3_0483] LATENCY=0
     -- Inputs
     o_active_MUX_vga_timing_h_l163_c3_0483_cond <= VAR_o_active_MUX_vga_timing_h_l163_c3_0483_cond;
     o_active_MUX_vga_timing_h_l163_c3_0483_iftrue <= VAR_o_active_MUX_vga_timing_h_l163_c3_0483_iftrue;
     o_active_MUX_vga_timing_h_l163_c3_0483_iffalse <= VAR_o_active_MUX_vga_timing_h_l163_c3_0483_iffalse;
     -- Outputs
     VAR_o_active_MUX_vga_timing_h_l163_c3_0483_return_output := o_active_MUX_vga_timing_h_l163_c3_0483_return_output;

     -- Submodule level 3
     REG_VAR_h_cntr_reg := VAR_h_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output;
     VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue := VAR_h_sync_reg_MUX_vga_timing_h_l178_c5_5e6a_return_output;
     VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue := VAR_v_cntr_reg_MUX_vga_timing_h_l196_c5_0032_return_output;
     VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue := VAR_v_sync_reg_MUX_vga_timing_h_l187_c5_c621_return_output;
     -- v_cntr_reg_MUX[vga_timing_h_l176_c3_33ec] LATENCY=0
     -- Inputs
     v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond <= VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_cond;
     v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue <= VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue;
     v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse <= VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse;
     -- Outputs
     VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output := v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output;

     -- h_sync_reg_MUX[vga_timing_h_l176_c3_33ec] LATENCY=0
     -- Inputs
     h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond <= VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond;
     h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue <= VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue;
     h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse <= VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse;
     -- Outputs
     VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output := h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output;

     -- CONST_REF_RD_vga_signals_t_vga_signals_t_213c[vga_timing_h_l216_c10_edf3] LATENCY=0
     VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_213c_vga_timing_h_l216_c10_edf3_return_output := CONST_REF_RD_vga_signals_t_vga_signals_t_213c(
     h_sync_reg,
     v_sync_reg,
     h_cntr_reg,
     v_cntr_reg,
     valid_reg,
     VAR_o_active_MUX_vga_timing_h_l163_c3_0483_return_output,
     VAR_BIN_OP_AND_vga_timing_h_l167_c23_2aab_return_output,
     VAR_BIN_OP_AND_vga_timing_h_l168_c21_f178_return_output);

     -- v_sync_reg_MUX[vga_timing_h_l176_c3_33ec] LATENCY=0
     -- Inputs
     v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond <= VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_cond;
     v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue <= VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iftrue;
     v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse <= VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_iffalse;
     -- Outputs
     VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output := v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_CONST_REF_RD_vga_signals_t_vga_signals_t_213c_vga_timing_h_l216_c10_edf3_return_output;
     REG_VAR_h_sync_reg := VAR_h_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output;
     REG_VAR_v_cntr_reg := VAR_v_cntr_reg_MUX_vga_timing_h_l176_c3_33ec_return_output;
     REG_VAR_v_sync_reg := VAR_v_sync_reg_MUX_vga_timing_h_l176_c3_33ec_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_h_cntr_reg <= REG_VAR_h_cntr_reg;
REG_COMB_v_cntr_reg <= REG_VAR_v_cntr_reg;
REG_COMB_h_sync_reg <= REG_VAR_h_sync_reg;
REG_COMB_v_sync_reg <= REG_VAR_v_sync_reg;
REG_COMB_valid_reg <= REG_VAR_valid_reg;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     h_cntr_reg <= REG_COMB_h_cntr_reg;
     v_cntr_reg <= REG_COMB_v_cntr_reg;
     h_sync_reg <= REG_COMB_h_sync_reg;
     v_sync_reg <= REG_COMB_v_sync_reg;
     valid_reg <= REG_COMB_valid_reg;
 end if;
 end if;
end process;

end arch;
