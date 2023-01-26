-- Timing params:
--   Fixed?: False
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
-- Submodules: 80
entity full_update_0CLK_1832bdba is
port(
 state : in full_state_t;
 reset : in unsigned(0 downto 0);
 button_state : in unsigned(0 downto 0);
 return_output : out full_state_t);
end full_update_0CLK_1832bdba;
architecture arch of full_update_0CLK_1832bdba is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- score_MUX[tr_pipelinec_gen_c_l470_c3_6e99]
signal score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_cond : unsigned(0 downto 0);
signal score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iftrue : unsigned(15 downto 0);
signal score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iffalse : unsigned(15 downto 0);
signal score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_return_output : unsigned(15 downto 0);

-- fixed_add[tr_pipelinec_gen_c_l471_c19_8357]
signal fixed_add_tr_pipelinec_gen_c_l471_c19_8357_left : fixed;
signal fixed_add_tr_pipelinec_gen_c_l471_c19_8357_right : fixed;
signal fixed_add_tr_pipelinec_gen_c_l471_c19_8357_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l472_c52_7e90]
signal fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_return_output : fixed;

-- fixed_add[tr_pipelinec_gen_c_l472_c23_b4ba]
signal fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_left : fixed;
signal fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_right : fixed;
signal fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l473_c20_2e50]
signal fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l474_c60_a63e]
signal fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l474_c34_14f3]
signal fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l474_c105_56a5]
signal fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l474_c23_81f0]
signal fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_return_output : fixed;

-- state_sphere_yvel_MUX[tr_pipelinec_gen_c_l476_c3_8ad9]
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_cond : unsigned(0 downto 0);
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iftrue : fixed;
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iffalse : fixed;
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_return_output : fixed;

-- fixed_shr[tr_pipelinec_gen_c_l476_c37_534e]
signal fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_a : fixed;
signal fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_shift : signed(5 downto 0);
signal fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_return_output : fixed;

-- state_sphere_yvel_MUX[tr_pipelinec_gen_c_l478_c3_563e]
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : fixed;
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : fixed;
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : fixed;

-- state_won_MUX[tr_pipelinec_gen_c_l478_c3_563e]
signal state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : unsigned(0 downto 0);

-- state_sphere_xvel_MUX[tr_pipelinec_gen_c_l478_c3_563e]
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : fixed;
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : fixed;
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : fixed;

-- state_score_MUX[tr_pipelinec_gen_c_l478_c3_563e]
signal state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
signal state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : unsigned(15 downto 0);
signal state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : unsigned(15 downto 0);
signal state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : unsigned(15 downto 0);

-- state_heat_MUX[tr_pipelinec_gen_c_l478_c3_563e]
signal state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
signal state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : fixed;
signal state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : fixed;
signal state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : fixed;

-- state_camera_z_MUX[tr_pipelinec_gen_c_l478_c3_563e]
signal state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
signal state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : fixed;
signal state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : fixed;
signal state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l479_c54_5ea4]
signal fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l479_c25_dab5]
signal fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l480_c21_3214]
signal fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l481_c21_326a]
signal fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_return_output : fixed;

-- fixed_gt[tr_pipelinec_gen_c_l482_c23_45da]
signal fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_left : fixed;
signal fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_right : fixed;
signal fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_return_output : unsigned(0 downto 0);

-- BIN_OP_NEQ[tr_pipelinec_gen_c_l484_c10_a16b]
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_left : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_right : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[tr_pipelinec_gen_c_l484_c27_da3b]
signal BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_left : unsigned(0 downto 0);
signal BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_right : unsigned(0 downto 0);
signal BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_return_output : unsigned(0 downto 0);

-- BIN_OP_NEQ[tr_pipelinec_gen_c_l484_c27_2b82]
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_left : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_right : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[tr_pipelinec_gen_c_l484_c10_c280]
signal BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_left : unsigned(0 downto 0);
signal BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_right : unsigned(0 downto 0);
signal BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output : unsigned(0 downto 0);

-- state_sphere_yvel_MUX[tr_pipelinec_gen_c_l484_c5_f0bc]
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : fixed;
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : fixed;
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : fixed;

-- state_won_MUX[tr_pipelinec_gen_c_l484_c5_f0bc]
signal state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : unsigned(0 downto 0);

-- state_sphere_xvel_MUX[tr_pipelinec_gen_c_l484_c5_f0bc]
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : fixed;
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : fixed;
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : fixed;

-- state_score_MUX[tr_pipelinec_gen_c_l484_c5_f0bc]
signal state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
signal state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : unsigned(15 downto 0);
signal state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : unsigned(15 downto 0);
signal state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : unsigned(15 downto 0);

-- state_heat_MUX[tr_pipelinec_gen_c_l484_c5_f0bc]
signal state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
signal state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : fixed;
signal state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : fixed;
signal state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : fixed;

-- state_camera_z_MUX[tr_pipelinec_gen_c_l484_c5_f0bc]
signal state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
signal state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : fixed;
signal state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : fixed;
signal state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l485_c42_cf78]
signal fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_return_output : fixed;

-- fixed_add[tr_pipelinec_gen_c_l485_c20_7e74]
signal fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_left : fixed;
signal fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_right : fixed;
signal fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_return_output : fixed;

-- plane_has_hole[tr_pipelinec_gen_c_l487_c19_4e97]
signal plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_x : fixed;
signal plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_z : fixed;
signal plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l487_c53_9a56]
signal fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_return_output : fixed;

-- fixed_gt[tr_pipelinec_gen_c_l487_c10_1594]
signal fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_left : fixed;
signal fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_right : fixed;
signal fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_return_output : unsigned(0 downto 0);

-- state_sphere_yvel_MUX[tr_pipelinec_gen_c_l487_c7_b1f0]
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond : unsigned(0 downto 0);
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue : fixed;
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse : fixed;
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output : fixed;

-- state_won_MUX[tr_pipelinec_gen_c_l487_c7_b1f0]
signal state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output : unsigned(0 downto 0);

-- state_sphere_xvel_MUX[tr_pipelinec_gen_c_l487_c7_b1f0]
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond : unsigned(0 downto 0);
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue : fixed;
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse : fixed;
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output : fixed;

-- state_score_MUX[tr_pipelinec_gen_c_l487_c7_b1f0]
signal state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond : unsigned(0 downto 0);
signal state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue : unsigned(15 downto 0);
signal state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse : unsigned(15 downto 0);
signal state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output : unsigned(15 downto 0);

-- BIN_OP_PLUS[tr_pipelinec_gen_c_l488_c23_2f0e]
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[tr_pipelinec_gen_c_l490_c14_dfc7]
signal BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_left : unsigned(15 downto 0);
signal BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_right : unsigned(13 downto 0);
signal BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_return_output : unsigned(0 downto 0);

-- BIN_OP_NEQ[tr_pipelinec_gen_c_l490_c14_49a6]
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_left : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_right : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_return_output : unsigned(0 downto 0);

-- BIN_OP_NEQ[tr_pipelinec_gen_c_l490_c44_c68b]
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_left : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_right : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_return_output : unsigned(0 downto 0);

-- BIN_OP_NEQ[tr_pipelinec_gen_c_l490_c44_61e1]
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_left : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_right : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[tr_pipelinec_gen_c_l490_c14_4830]
signal BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_left : unsigned(0 downto 0);
signal BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_right : unsigned(0 downto 0);
signal BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_return_output : unsigned(0 downto 0);

-- state_won_MUX[tr_pipelinec_gen_c_l490_c9_9d92]
signal state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_cond : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iftrue : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iffalse : unsigned(0 downto 0);
signal state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_return_output : unsigned(0 downto 0);

-- state_sphere_yvel_MUX[tr_pipelinec_gen_c_l492_c9_d841]
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond : unsigned(0 downto 0);
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue : fixed;
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse : fixed;
signal state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output : fixed;

-- state_sphere_xvel_MUX[tr_pipelinec_gen_c_l492_c9_d841]
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond : unsigned(0 downto 0);
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue : fixed;
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse : fixed;
signal state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l493_c31_f0e1]
signal fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l494_c31_8d2f]
signal fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l496_c34_3118]
signal fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_return_output : fixed;

-- fixed_shr[tr_pipelinec_gen_c_l500_c50_8af0]
signal fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_a : fixed;
signal fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_shift : signed(5 downto 0);
signal fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l500_c24_bee4]
signal fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l503_c56_048f]
signal fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_return_output : fixed;

-- fixed_shr[tr_pipelinec_gen_c_l503_c46_58b5]
signal fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_a : fixed;
signal fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_shift : signed(5 downto 0);
signal fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_return_output : fixed;

-- fixed_add[tr_pipelinec_gen_c_l503_c20_cf76]
signal fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_left : fixed;
signal fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_right : fixed;
signal fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_return_output : fixed;

-- fixed_shr[tr_pipelinec_gen_c_l504_c38_d775]
signal fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_a : fixed;
signal fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_shift : signed(5 downto 0);
signal fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l504_c16_f4ec]
signal fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_return_output : fixed;

-- BIN_OP_NEQ[tr_pipelinec_gen_c_l505_c18_77d5]
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_left : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_right : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_return_output : unsigned(0 downto 0);

-- fixed_to_short[tr_pipelinec_gen_c_l505_c61_a7e4]
signal fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_a : fixed;
signal fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_return_output : signed(15 downto 0);

-- UNARY_OP_NEGATE[tr_pipelinec_gen_c_l505_c61_0878]
signal UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_expr : signed(15 downto 0);
signal UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_return_output : signed(16 downto 0);

-- CONST_SR_10[tr_pipelinec_gen_c_l505_c61_7edb]
signal CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_x : signed(16 downto 0);
signal CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_return_output : signed(16 downto 0);

-- BIN_OP_NEQ[tr_pipelinec_gen_c_l505_c61_ccb5]
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_left : signed(16 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_right : signed(1 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_return_output : unsigned(0 downto 0);

-- BIN_OP_NEQ[tr_pipelinec_gen_c_l505_c61_cf79]
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_left : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_right : unsigned(0 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[tr_pipelinec_gen_c_l505_c18_50d8]
signal BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_left : unsigned(0 downto 0);
signal BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_right : unsigned(0 downto 0);
signal BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_return_output : unsigned(0 downto 0);

-- color_select[tr_pipelinec_gen_c_l506_c25_1e4a]
signal color_select_tr_pipelinec_gen_c_l506_c25_1e4a_x : fixed;
signal color_select_tr_pipelinec_gen_c_l506_c25_1e4a_a : fixed3;
signal color_select_tr_pipelinec_gen_c_l506_c25_1e4a_b : fixed3;
signal color_select_tr_pipelinec_gen_c_l506_c25_1e4a_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l507_c79_e6b0]
signal fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_return_output : fixed;

-- fixed_shr[tr_pipelinec_gen_c_l507_c121_74cb]
signal fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_a : fixed;
signal fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_shift : signed(5 downto 0);
signal fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l507_c69_3780]
signal fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_return_output : fixed;

-- fixed3_mul_fixed[tr_pipelinec_gen_c_l507_c25_daf2]
signal fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_left : fixed3;
signal fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_right : fixed;
signal fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_return_output : fixed3;

-- MUX[tr_pipelinec_gen_c_l508_c20_d0ec]
signal MUX_tr_pipelinec_gen_c_l508_c20_d0ec_cond : unsigned(0 downto 0);
signal MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iftrue : unsigned(15 downto 0);
signal MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iffalse : unsigned(15 downto 0);
signal MUX_tr_pipelinec_gen_c_l508_c20_d0ec_return_output : unsigned(15 downto 0);

-- reset_MUX[tr_pipelinec_gen_c_l510_c3_e0ab]
signal reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_cond : unsigned(0 downto 0);
signal reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iftrue : unsigned(0 downto 0);
signal reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iffalse : unsigned(0 downto 0);
signal reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_return_output : unsigned(0 downto 0);

-- state_MUX[tr_pipelinec_gen_c_l512_c3_fd1f]
signal state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_cond : unsigned(0 downto 0);
signal state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iftrue : full_state_t;
signal state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iffalse : full_state_t;
signal state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output : full_state_t;

-- reset_state[tr_pipelinec_gen_c_l512_c21_8a58]
signal reset_state_tr_pipelinec_gen_c_l512_c21_8a58_score : unsigned(15 downto 0);
signal reset_state_tr_pipelinec_gen_c_l512_c21_8a58_return_output : full_state_t;

-- BIN_OP_PLUS[tr_pipelinec_gen_c_l523_c23_3bba]
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_return_output : unsigned(16 downto 0);

-- fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac
signal fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_x : fixed;
signal fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output : unsigned(0 downto 0);

function CONST_REF_RD_full_state_t_full_state_t_ebdb( ref_toks_0 : full_state_t;
 ref_toks_1 : fixed;
 ref_toks_2 : fixed;
 ref_toks_3 : fixed;
 ref_toks_4 : unsigned;
 ref_toks_5 : fixed;
 ref_toks_6 : unsigned;
 ref_toks_7 : fixed;
 ref_toks_8 : fixed;
 ref_toks_9 : fixed;
 ref_toks_10 : unsigned;
 ref_toks_11 : fixed3;
 ref_toks_12 : fixed3;
 ref_toks_13 : unsigned) return full_state_t is
 
  variable base : full_state_t; 
  variable return_output : full_state_t;
begin
      base := ref_toks_0;
      base.plane_x := ref_toks_1;
      base.sphere_y := ref_toks_2;
      base.sphere_yvel := ref_toks_3;
      base.won := ref_toks_4;
      base.sphere_xvel := ref_toks_5;
      base.score := ref_toks_6;
      base.camera_z := ref_toks_7;
      base.camera_y := ref_toks_8;
      base.heat := ref_toks_9;
      base.lose := ref_toks_10;
      base.diffuse_color := ref_toks_11;
      base.reflect_color := ref_toks_12;
      base.scorebar := ref_toks_13;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_full_state_t_full_state_t_564a( ref_toks_0 : full_state_t;
 ref_toks_1 : fixed;
 ref_toks_2 : fixed;
 ref_toks_3 : fixed;
 ref_toks_4 : fixed;
 ref_toks_5 : fixed;
 ref_toks_6 : fixed;
 ref_toks_7 : fixed3;
 ref_toks_8 : fixed3;
 ref_toks_9 : fixed;
 ref_toks_10 : unsigned;
 ref_toks_11 : unsigned) return full_state_t is
 
  variable base : full_state_t; 
  variable return_output : full_state_t;
begin
      base := ref_toks_0;
      base.scene.sphere.center.y := ref_toks_1;
      base.scene.sphere.heat := ref_toks_2;
      base.scene.camera.y := ref_toks_3;
      base.scene.camera.z := ref_toks_4;
      base.scene.plane.center.x := ref_toks_5;
      base.scene.plane.center.z := ref_toks_6;
      base.scene.sphere.material.diffuse_color := ref_toks_7;
      base.scene.sphere.material.reflect_color := ref_toks_8;
      base.scene.sphere.yvel := ref_toks_9;
      base.scene.scorebar := ref_toks_10;
      base.scene.frame := ref_toks_11;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- score_MUX_tr_pipelinec_gen_c_l470_c3_6e99
score_MUX_tr_pipelinec_gen_c_l470_c3_6e99 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_cond,
score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iftrue,
score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iffalse,
score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_return_output);

-- fixed_add_tr_pipelinec_gen_c_l471_c19_8357
fixed_add_tr_pipelinec_gen_c_l471_c19_8357 : entity work.fixed_add_0CLK_6f2c5aad port map (
fixed_add_tr_pipelinec_gen_c_l471_c19_8357_left,
fixed_add_tr_pipelinec_gen_c_l471_c19_8357_right,
fixed_add_tr_pipelinec_gen_c_l471_c19_8357_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90
fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_a,
fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_return_output);

-- fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba
fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba : entity work.fixed_add_0CLK_6f2c5aad port map (
fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_left,
fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_right,
fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50
fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50 : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_left,
fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_right,
fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e
fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_a,
fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3
fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3 : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_left,
fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_right,
fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5
fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_a,
fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0
fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0 : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_left,
fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_right,
fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_return_output);

-- state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9 : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_cond,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iftrue,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iffalse,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_return_output);

-- fixed_shr_tr_pipelinec_gen_c_l476_c37_534e
fixed_shr_tr_pipelinec_gen_c_l476_c37_534e : entity work.fixed_shr_0CLK_6a3d4cae port map (
fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_a,
fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_shift,
fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_return_output);

-- state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output);

-- state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e
state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond,
state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue,
state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse,
state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output);

-- state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output);

-- state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e
state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond,
state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue,
state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse,
state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output);

-- state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e
state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond,
state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue,
state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse,
state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output);

-- state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e
state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond,
state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue,
state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse,
state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4
fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_a,
fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5
fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5 : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_left,
fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_right,
fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l480_c21_3214
fixed_sub_tr_pipelinec_gen_c_l480_c21_3214 : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_left,
fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_right,
fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l481_c21_326a
fixed_sub_tr_pipelinec_gen_c_l481_c21_326a : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_left,
fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_right,
fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_return_output);

-- fixed_gt_tr_pipelinec_gen_c_l482_c23_45da
fixed_gt_tr_pipelinec_gen_c_l482_c23_45da : entity work.fixed_gt_0CLK_380ecc95 port map (
fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_left,
fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_right,
fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_return_output);

-- BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b
BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b : entity work.BIN_OP_NEQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_left,
BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_right,
BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_return_output);

-- BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b
BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_left,
BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_right,
BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_return_output);

-- BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82
BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82 : entity work.BIN_OP_NEQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_left,
BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_right,
BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_return_output);

-- BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280
BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_left,
BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_right,
BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output);

-- state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output);

-- state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc
state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond,
state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue,
state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse,
state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output);

-- state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output);

-- state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc
state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond,
state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue,
state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse,
state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output);

-- state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc
state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond,
state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue,
state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse,
state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output);

-- state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc
state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond,
state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue,
state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse,
state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78
fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_a,
fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_return_output);

-- fixed_add_tr_pipelinec_gen_c_l485_c20_7e74
fixed_add_tr_pipelinec_gen_c_l485_c20_7e74 : entity work.fixed_add_0CLK_6f2c5aad port map (
fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_left,
fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_right,
fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_return_output);

-- plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97
plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97 : entity work.plane_has_hole_0CLK_20e09e5a port map (
plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_x,
plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_z,
plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56
fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_a,
fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_return_output);

-- fixed_gt_tr_pipelinec_gen_c_l487_c10_1594
fixed_gt_tr_pipelinec_gen_c_l487_c10_1594 : entity work.fixed_gt_0CLK_380ecc95 port map (
fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_left,
fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_right,
fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_return_output);

-- state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0 : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output);

-- state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0
state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond,
state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue,
state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse,
state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output);

-- state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0 : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output);

-- state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0
state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond,
state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue,
state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse,
state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output);

-- BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e
BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_left,
BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_right,
BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_return_output);

-- BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7
BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7 : entity work.BIN_OP_GTE_uint16_t_uint14_t_0CLK_de264c78 port map (
BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_left,
BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_right,
BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_return_output);

-- BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6 : entity work.BIN_OP_NEQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_left,
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_right,
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_return_output);

-- BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b : entity work.BIN_OP_NEQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_left,
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_right,
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_return_output);

-- BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1 : entity work.BIN_OP_NEQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_left,
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_right,
BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_return_output);

-- BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830
BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_left,
BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_right,
BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_return_output);

-- state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92
state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_cond,
state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iftrue,
state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iffalse,
state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_return_output);

-- state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841 : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse,
state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output);

-- state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841 : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse,
state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1
fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_a,
fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f
fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_a,
fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118
fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_a,
fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_return_output);

-- fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0
fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0 : entity work.fixed_shr_0CLK_6a3d4cae port map (
fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_a,
fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_shift,
fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4
fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4 : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_left,
fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_right,
fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l503_c56_048f
fixed_sub_tr_pipelinec_gen_c_l503_c56_048f : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_left,
fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_right,
fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_return_output);

-- fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5
fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5 : entity work.fixed_shr_0CLK_6a3d4cae port map (
fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_a,
fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_shift,
fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_return_output);

-- fixed_add_tr_pipelinec_gen_c_l503_c20_cf76
fixed_add_tr_pipelinec_gen_c_l503_c20_cf76 : entity work.fixed_add_0CLK_6f2c5aad port map (
fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_left,
fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_right,
fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_return_output);

-- fixed_shr_tr_pipelinec_gen_c_l504_c38_d775
fixed_shr_tr_pipelinec_gen_c_l504_c38_d775 : entity work.fixed_shr_0CLK_6a3d4cae port map (
fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_a,
fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_shift,
fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec
fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_left,
fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_right,
fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_return_output);

-- BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5 : entity work.BIN_OP_NEQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_left,
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_right,
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_return_output);

-- fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4
fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4 : entity work.fixed_to_short_0CLK_380ecc95 port map (
fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_a,
fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_return_output);

-- UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878
UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878 : entity work.UNARY_OP_NEGATE_int16_t_0CLK_23f04728 port map (
UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_expr,
UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_return_output);

-- CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb
CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb : entity work.CONST_SR_10_int17_t_0CLK_de264c78 port map (
CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_x,
CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_return_output);

-- BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5 : entity work.BIN_OP_NEQ_int17_t_int2_t_0CLK_de264c78 port map (
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_left,
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_right,
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_return_output);

-- BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79 : entity work.BIN_OP_NEQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_left,
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_right,
BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_return_output);

-- BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8
BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_left,
BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_right,
BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_return_output);

-- color_select_tr_pipelinec_gen_c_l506_c25_1e4a
color_select_tr_pipelinec_gen_c_l506_c25_1e4a : entity work.color_select_0CLK_bd739e88 port map (
color_select_tr_pipelinec_gen_c_l506_c25_1e4a_x,
color_select_tr_pipelinec_gen_c_l506_c25_1e4a_a,
color_select_tr_pipelinec_gen_c_l506_c25_1e4a_b,
color_select_tr_pipelinec_gen_c_l506_c25_1e4a_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0
fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_a,
fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_return_output);

-- fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb
fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb : entity work.fixed_shr_0CLK_6a3d4cae port map (
fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_a,
fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_shift,
fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l507_c69_3780
fixed_sub_tr_pipelinec_gen_c_l507_c69_3780 : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_left,
fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_right,
fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_return_output);

-- fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2
fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2 : entity work.fixed3_mul_fixed_0CLK_4f51ce12 port map (
fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_left,
fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_right,
fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_return_output);

-- MUX_tr_pipelinec_gen_c_l508_c20_d0ec
MUX_tr_pipelinec_gen_c_l508_c20_d0ec : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
MUX_tr_pipelinec_gen_c_l508_c20_d0ec_cond,
MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iftrue,
MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iffalse,
MUX_tr_pipelinec_gen_c_l508_c20_d0ec_return_output);

-- reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab
reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_cond,
reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iftrue,
reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iffalse,
reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_return_output);

-- state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f
state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f : entity work.MUX_uint1_t_full_state_t_full_state_t_0CLK_de264c78 port map (
state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_cond,
state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iftrue,
state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iffalse,
state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output);

-- reset_state_tr_pipelinec_gen_c_l512_c21_8a58
reset_state_tr_pipelinec_gen_c_l512_c21_8a58 : entity work.reset_state_0CLK_93ad8460 port map (
reset_state_tr_pipelinec_gen_c_l512_c21_8a58_score,
reset_state_tr_pipelinec_gen_c_l512_c21_8a58_return_output);

-- BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba
BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_left,
BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_right,
BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_return_output);

-- fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac
fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac : entity work.fixed_is_negative_0CLK_23f04728 port map (
fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_x,
fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 state,
 reset,
 button_state,
 -- All submodule outputs
 score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_return_output,
 fixed_add_tr_pipelinec_gen_c_l471_c19_8357_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_return_output,
 fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_return_output,
 fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_return_output,
 fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_return_output,
 fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_return_output,
 state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_return_output,
 fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_return_output,
 state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
 state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
 state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
 state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
 state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
 state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_return_output,
 fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_return_output,
 fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_return_output,
 fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_return_output,
 fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_return_output,
 BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_return_output,
 BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_return_output,
 BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_return_output,
 BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output,
 state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output,
 state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output,
 state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output,
 state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output,
 state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output,
 state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_return_output,
 fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_return_output,
 plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_return_output,
 fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_return_output,
 state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output,
 state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output,
 state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output,
 state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output,
 BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_return_output,
 BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_return_output,
 BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_return_output,
 BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_return_output,
 BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_return_output,
 BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_return_output,
 state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_return_output,
 state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output,
 state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_return_output,
 fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_return_output,
 fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_return_output,
 fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_return_output,
 fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_return_output,
 fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_return_output,
 fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_return_output,
 fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_return_output,
 BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_return_output,
 fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_return_output,
 UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_return_output,
 CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_return_output,
 BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_return_output,
 BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_return_output,
 BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_return_output,
 color_select_tr_pipelinec_gen_c_l506_c25_1e4a_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_return_output,
 fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_return_output,
 fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_return_output,
 fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_return_output,
 MUX_tr_pipelinec_gen_c_l508_c20_d0ec_return_output,
 reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_return_output,
 state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output,
 reset_state_tr_pipelinec_gen_c_l512_c21_8a58_return_output,
 BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_return_output,
 fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : full_state_t;
 variable VAR_state : full_state_t;
 variable VAR_reset : unsigned(0 downto 0);
 variable VAR_button_state : unsigned(0 downto 0);
 variable VAR_score : unsigned(15 downto 0);
 variable VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iftrue : unsigned(15 downto 0);
 variable VAR_score_tr_pipelinec_gen_c_l470_c13_2825 : unsigned(15 downto 0);
 variable VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iffalse : unsigned(15 downto 0);
 variable VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_return_output : unsigned(15 downto 0);
 variable VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_cond : unsigned(0 downto 0);
 variable VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_left : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_right : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_plane_x_d41d_tr_pipelinec_gen_c_l471_c29_d511_return_output : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_return_output : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_left : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_right : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_sphere_yvel_d41d_tr_pipelinec_gen_c_l472_c33_3aa5_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_return_output : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_right : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_sphere_y_d41d_tr_pipelinec_gen_c_l473_c30_1ffc_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_return_output : fixed;
 variable VAR_underground : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_right : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_right : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_return_output : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iftrue : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iffalse : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_return_output : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_cond : unsigned(0 downto 0);
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_a : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_shift : signed(5 downto 0);
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_return_output : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : unsigned(15 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : unsigned(15 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : unsigned(15 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : unsigned(15 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
 variable VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : fixed;
 variable VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : fixed;
 variable VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : fixed;
 variable VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : fixed;
 variable VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
 variable VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue : fixed;
 variable VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output : fixed;
 variable VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse : fixed;
 variable VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output : fixed;
 variable VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond : unsigned(0 downto 0);
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_right : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_return_output : fixed;
 variable VAR_coord_x : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_right : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_sphere_x_d41d_tr_pipelinec_gen_c_l480_c31_2b6d_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_return_output : fixed;
 variable VAR_coord_z : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_right : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_sphere_z_d41d_tr_pipelinec_gen_c_l481_c31_3d6b_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_return_output : fixed;
 variable VAR_half_up : unsigned(0 downto 0);
 variable VAR_fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_left : fixed;
 variable VAR_fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_right : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_plane_y_d41d_tr_pipelinec_gen_c_l482_c48_dc4a_return_output : fixed;
 variable VAR_fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output : unsigned(0 downto 0);
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : unsigned(15 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output : unsigned(15 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : unsigned(15 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
 variable VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : fixed;
 variable VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : fixed;
 variable VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
 variable VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue : fixed;
 variable VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse : fixed;
 variable VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond : unsigned(0 downto 0);
 variable VAR_fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_left : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_right : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_return_output : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_return_output : fixed;
 variable VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_left : fixed;
 variable VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_right : fixed;
 variable VAR_plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_x : fixed;
 variable VAR_plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_z : fixed;
 variable VAR_plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_return_output : fixed;
 variable VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_return_output : unsigned(0 downto 0);
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_return_output : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond : unsigned(0 downto 0);
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond : unsigned(0 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue : unsigned(15 downto 0);
 variable VAR_state_score_tr_pipelinec_gen_c_l488_c9_337c : unsigned(15 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse : unsigned(15 downto 0);
 variable VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_right : unsigned(13 downto 0);
 variable VAR_BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_return_output : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iftrue : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iffalse : unsigned(0 downto 0);
 variable VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_cond : unsigned(0 downto 0);
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse : fixed;
 variable VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond : unsigned(0 downto 0);
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse : fixed;
 variable VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond : unsigned(0 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_right : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_a : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_shift : signed(5 downto 0);
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_return_output : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_left : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_right : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_a : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_shift : signed(5 downto 0);
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_right : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_return_output : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_return_output : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_right : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_a : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_shift : signed(5 downto 0);
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_return_output : fixed;
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_left : unsigned(0 downto 0);
 variable VAR_fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_a : fixed;
 variable VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_expr : signed(15 downto 0);
 variable VAR_fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_return_output : signed(15 downto 0);
 variable VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_return_output : signed(16 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_left : signed(16 downto 0);
 variable VAR_CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_return_output : signed(16 downto 0);
 variable VAR_CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_x : signed(16 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_right : signed(1 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_return_output : unsigned(0 downto 0);
 variable VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_x : fixed;
 variable VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_a : fixed3;
 variable VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_b : fixed3;
 variable VAR_CONST_REF_RD_fixed3_full_state_t_lava_color_d41d_tr_pipelinec_gen_c_l506_c50_ca09_return_output : fixed3;
 variable VAR_CONST_REF_RD_fixed3_full_state_t_gold_color_d41d_tr_pipelinec_gen_c_l506_c68_b8bb_return_output : fixed3;
 variable VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_return_output : fixed3;
 variable VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_left : fixed3;
 variable VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_right : fixed;
 variable VAR_CONST_REF_RD_fixed3_full_state_t_gold_reflect_color_d41d_tr_pipelinec_gen_c_l507_c42_b2ae_return_output : fixed3;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_right : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_return_output : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_a : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_shift : signed(5 downto 0);
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_return_output : fixed;
 variable VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_return_output : fixed3;
 variable VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_cond : unsigned(0 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iftrue : unsigned(15 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iffalse : unsigned(15 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_return_output : unsigned(15 downto 0);
 variable VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iftrue : unsigned(0 downto 0);
 variable VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iffalse : unsigned(0 downto 0);
 variable VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_return_output : unsigned(0 downto 0);
 variable VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iftrue : full_state_t;
 variable VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iffalse : full_state_t;
 variable VAR_state_FALSE_INPUT_MUX_CONST_REF_RD_full_state_t_full_state_t_ebdb_tr_pipelinec_gen_c_l512_c3_fd1f_return_output : full_state_t;
 variable VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output : full_state_t;
 variable VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_cond : unsigned(0 downto 0);
 variable VAR_reset_state_tr_pipelinec_gen_c_l512_c21_8a58_score : unsigned(15 downto 0);
 variable VAR_reset_state_tr_pipelinec_gen_c_l512_c21_8a58_return_output : full_state_t;
 variable VAR_CONST_REF_RD_fixed_full_state_t_sphere_y_d41d_tr_pipelinec_gen_c_l513_c33_9940_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_heat_d41d_tr_pipelinec_gen_c_l514_c29_6310_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_camera_y_d41d_tr_pipelinec_gen_c_l515_c26_30ad_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_camera_z_d41d_tr_pipelinec_gen_c_l516_c26_f6e7_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed3_full_state_t_diffuse_color_d41d_tr_pipelinec_gen_c_l519_c47_d5c5_return_output : fixed3;
 variable VAR_CONST_REF_RD_fixed3_full_state_t_reflect_color_d41d_tr_pipelinec_gen_c_l520_c47_ad86_return_output : fixed3;
 variable VAR_CONST_REF_RD_fixed_full_state_t_sphere_yvel_d41d_tr_pipelinec_gen_c_l521_c29_39fb_return_output : fixed;
 variable VAR_CONST_REF_RD_uint16_t_full_state_t_scorebar_d41d_tr_pipelinec_gen_c_l522_c26_0b5a_return_output : unsigned(15 downto 0);
 variable VAR_state_scene_frame_tr_pipelinec_gen_c_l523_c3_968c : unsigned(15 downto 0);
 variable VAR_CONST_REF_RD_uint16_t_full_state_t_scene_frame_d41d_tr_pipelinec_gen_c_l523_c23_e635_return_output : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_return_output : unsigned(16 downto 0);
 variable VAR_CONST_REF_RD_full_state_t_full_state_t_564a_tr_pipelinec_gen_c_l524_c10_97a8_return_output : full_state_t;
 variable VAR_CONST_REF_RD_uint16_t_full_state_t_score_d41d_tr_pipelinec_gen_c_l484_l488_l487_l478_l468_DUPLICATE_bd17_return_output : unsigned(15 downto 0);
 variable VAR_CONST_REF_RD_fixed_full_state_t_sphere_xvel_d41d_tr_pipelinec_gen_c_l471_l478_l479_DUPLICATE_ba6d_return_output : fixed;
 variable VAR_CONST_REF_RD_uint1_t_full_state_t_won_d41d_tr_pipelinec_gen_c_l487_l478_l484_l476_l490_DUPLICATE_01a8_return_output : unsigned(0 downto 0);
 variable VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_x : fixed;
 variable VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_fixed_full_state_t_heat_d41d_tr_pipelinec_gen_c_l484_l478_l485_DUPLICATE_fe7c_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_camera_z_d41d_tr_pipelinec_gen_c_l500_l478_l484_DUPLICATE_c0ba_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_camera_y_d41d_tr_pipelinec_gen_c_l503_DUPLICATE_0f78_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_plane_x_d41d_tr_pipelinec_gen_c_l518_l517_DUPLICATE_668c_return_output : fixed;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_a := to_slv(to_float(0.03, 8, 14));
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_right := signed(std_logic_vector(resize(to_unsigned(0, 1), 2)));
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_right := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_right := to_unsigned(0, 1);
     VAR_score_tr_pipelinec_gen_c_l470_c13_2825 := resize(to_unsigned(0, 1), 16);
     VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iftrue := VAR_score_tr_pipelinec_gen_c_l470_c13_2825;
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_right := to_unsigned(1, 1);
     VAR_fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_shift := signed(std_logic_vector(resize(to_unsigned(2, 2), 6)));
     VAR_fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_shift := signed(std_logic_vector(resize(to_unsigned(4, 3), 6)));
     VAR_fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_shift := signed(std_logic_vector(resize(to_unsigned(4, 3), 6)));
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_right := to_unsigned(1, 1);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_a := to_slv(to_float(0.1, 8, 14));
     VAR_fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_shift := signed(std_logic_vector(resize(to_unsigned(4, 3), 6)));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_a := to_slv(to_float(0.1, 8, 14));
     VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iftrue := resize(to_unsigned(0, 1), 16);
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_right := to_unsigned(0, 1);
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_right := to_unsigned(0, 1);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_a := to_slv(to_float(-2.0, 8, 14));
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_right := to_unsigned(0, 1);
     VAR_BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_right := to_unsigned(15000, 14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_a := to_slv(to_float(1.0, 8, 14));
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_right := to_unsigned(0, 1);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_a := to_slv(to_float(-0.5, 8, 14));
     VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_right := to_unsigned(0, 1);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_a := to_slv(to_float(-0.05, 8, 14));
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_right := to_unsigned(1, 1);
     VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iftrue := to_unsigned(1, 1);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_a := to_slv(to_float(4.5, 8, 14));
     VAR_fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_shift := signed(std_logic_vector(resize(to_unsigned(5, 3), 6)));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_a := to_slv(to_float(-0.03, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_a := to_slv(to_float(0.0, 8, 14));
     -- fixed_make_from_double[tr_pipelinec_gen_c_l507_c79_e6b0] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l472_c52_7e90] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l496_c34_3118] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l493_c31_f0e1] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l474_c60_a63e] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l479_c54_5ea4] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l494_c31_8d2f] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l487_c53_9a56] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l485_c42_cf78] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l474_c105_56a5] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_return_output;

     -- Submodule level 1
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l496_c34_3118_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l479_c54_5ea4_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l485_c42_cf78_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c105_56a5_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l472_c52_7e90_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_left := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l507_c79_e6b0_return_output;
     VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l487_c53_9a56_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l474_c60_a63e_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l493_c31_f0e1_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l494_c31_8d2f_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_state := state;
     VAR_reset := reset;
     VAR_button_state := button_state;

     -- Submodule level 0
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond := VAR_button_state;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond := VAR_button_state;
     VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iffalse := VAR_reset;
     VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_cond := VAR_reset;
     -- CONST_REF_RD_uint16_t_full_state_t_score_d41d_tr_pipelinec_gen_c_l484_l488_l487_l478_l468_DUPLICATE_bd17 LATENCY=0
     VAR_CONST_REF_RD_uint16_t_full_state_t_score_d41d_tr_pipelinec_gen_c_l484_l488_l487_l478_l468_DUPLICATE_bd17_return_output := VAR_state.score;

     -- CONST_REF_RD_fixed_full_state_t_sphere_xvel_d41d_tr_pipelinec_gen_c_l471_l478_l479_DUPLICATE_ba6d LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_sphere_xvel_d41d_tr_pipelinec_gen_c_l471_l478_l479_DUPLICATE_ba6d_return_output := VAR_state.sphere_xvel;

     -- CONST_REF_RD_fixed_full_state_t_sphere_z_d41d[tr_pipelinec_gen_c_l481_c31_3d6b] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_sphere_z_d41d_tr_pipelinec_gen_c_l481_c31_3d6b_return_output := VAR_state.sphere_z;

     -- CONST_REF_RD_fixed_full_state_t_plane_y_d41d[tr_pipelinec_gen_c_l482_c48_dc4a] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_plane_y_d41d_tr_pipelinec_gen_c_l482_c48_dc4a_return_output := VAR_state.plane_y;

     -- CONST_REF_RD_fixed_full_state_t_plane_x_d41d[tr_pipelinec_gen_c_l471_c29_d511] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_plane_x_d41d_tr_pipelinec_gen_c_l471_c29_d511_return_output := VAR_state.plane_x;

     -- CONST_REF_RD_fixed3_full_state_t_gold_color_d41d[tr_pipelinec_gen_c_l506_c68_b8bb] LATENCY=0
     VAR_CONST_REF_RD_fixed3_full_state_t_gold_color_d41d_tr_pipelinec_gen_c_l506_c68_b8bb_return_output := VAR_state.gold_color;

     -- CONST_REF_RD_fixed3_full_state_t_gold_reflect_color_d41d[tr_pipelinec_gen_c_l507_c42_b2ae] LATENCY=0
     VAR_CONST_REF_RD_fixed3_full_state_t_gold_reflect_color_d41d_tr_pipelinec_gen_c_l507_c42_b2ae_return_output := VAR_state.gold_reflect_color;

     -- CONST_REF_RD_fixed_full_state_t_sphere_x_d41d[tr_pipelinec_gen_c_l480_c31_2b6d] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_sphere_x_d41d_tr_pipelinec_gen_c_l480_c31_2b6d_return_output := VAR_state.sphere_x;

     -- CONST_REF_RD_fixed_full_state_t_camera_z_d41d_tr_pipelinec_gen_c_l500_l478_l484_DUPLICATE_c0ba LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_camera_z_d41d_tr_pipelinec_gen_c_l500_l478_l484_DUPLICATE_c0ba_return_output := VAR_state.camera_z;

     -- CONST_REF_RD_fixed_full_state_t_heat_d41d_tr_pipelinec_gen_c_l484_l478_l485_DUPLICATE_fe7c LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_heat_d41d_tr_pipelinec_gen_c_l484_l478_l485_DUPLICATE_fe7c_return_output := VAR_state.heat;

     -- CONST_REF_RD_fixed3_full_state_t_lava_color_d41d[tr_pipelinec_gen_c_l506_c50_ca09] LATENCY=0
     VAR_CONST_REF_RD_fixed3_full_state_t_lava_color_d41d_tr_pipelinec_gen_c_l506_c50_ca09_return_output := VAR_state.lava_color;

     -- CONST_REF_RD_uint1_t_full_state_t_won_d41d_tr_pipelinec_gen_c_l487_l478_l484_l476_l490_DUPLICATE_01a8 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_full_state_t_won_d41d_tr_pipelinec_gen_c_l487_l478_l484_l476_l490_DUPLICATE_01a8_return_output := VAR_state.won;

     -- CONST_REF_RD_fixed_full_state_t_camera_y_d41d_tr_pipelinec_gen_c_l503_DUPLICATE_0f78 LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_camera_y_d41d_tr_pipelinec_gen_c_l503_DUPLICATE_0f78_return_output := VAR_state.camera_y;

     -- state_sphere_yvel_MUX[tr_pipelinec_gen_c_l492_c9_d841] LATENCY=0
     -- Inputs
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond;
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue;
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse;
     -- Outputs
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output := state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output;

     -- CONST_REF_RD_fixed_full_state_t_sphere_yvel_d41d[tr_pipelinec_gen_c_l472_c33_3aa5] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_sphere_yvel_d41d_tr_pipelinec_gen_c_l472_c33_3aa5_return_output := VAR_state.sphere_yvel;

     -- CONST_REF_RD_fixed_full_state_t_sphere_y_d41d[tr_pipelinec_gen_c_l473_c30_1ffc] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_sphere_y_d41d_tr_pipelinec_gen_c_l473_c30_1ffc_return_output := VAR_state.sphere_y;

     -- Submodule level 1
     VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_b := VAR_CONST_REF_RD_fixed3_full_state_t_gold_color_d41d_tr_pipelinec_gen_c_l506_c68_b8bb_return_output;
     VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_left := VAR_CONST_REF_RD_fixed3_full_state_t_gold_reflect_color_d41d_tr_pipelinec_gen_c_l507_c42_b2ae_return_output;
     VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_a := VAR_CONST_REF_RD_fixed3_full_state_t_lava_color_d41d_tr_pipelinec_gen_c_l506_c50_ca09_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_left := VAR_CONST_REF_RD_fixed_full_state_t_camera_y_d41d_tr_pipelinec_gen_c_l503_DUPLICATE_0f78_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_right := VAR_CONST_REF_RD_fixed_full_state_t_camera_y_d41d_tr_pipelinec_gen_c_l503_DUPLICATE_0f78_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_left := VAR_CONST_REF_RD_fixed_full_state_t_camera_z_d41d_tr_pipelinec_gen_c_l500_l478_l484_DUPLICATE_c0ba_return_output;
     VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse := VAR_CONST_REF_RD_fixed_full_state_t_camera_z_d41d_tr_pipelinec_gen_c_l500_l478_l484_DUPLICATE_c0ba_return_output;
     VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue := VAR_CONST_REF_RD_fixed_full_state_t_camera_z_d41d_tr_pipelinec_gen_c_l500_l478_l484_DUPLICATE_c0ba_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_left := VAR_CONST_REF_RD_fixed_full_state_t_heat_d41d_tr_pipelinec_gen_c_l484_l478_l485_DUPLICATE_fe7c_return_output;
     VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse := VAR_CONST_REF_RD_fixed_full_state_t_heat_d41d_tr_pipelinec_gen_c_l484_l478_l485_DUPLICATE_fe7c_return_output;
     VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse := VAR_CONST_REF_RD_fixed_full_state_t_heat_d41d_tr_pipelinec_gen_c_l484_l478_l485_DUPLICATE_fe7c_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_left := VAR_CONST_REF_RD_fixed_full_state_t_plane_x_d41d_tr_pipelinec_gen_c_l471_c29_d511_return_output;
     VAR_fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_right := VAR_CONST_REF_RD_fixed_full_state_t_plane_y_d41d_tr_pipelinec_gen_c_l482_c48_dc4a_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_left := VAR_CONST_REF_RD_fixed_full_state_t_sphere_x_d41d_tr_pipelinec_gen_c_l480_c31_2b6d_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_right := VAR_CONST_REF_RD_fixed_full_state_t_sphere_xvel_d41d_tr_pipelinec_gen_c_l471_l478_l479_DUPLICATE_ba6d_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_left := VAR_CONST_REF_RD_fixed_full_state_t_sphere_xvel_d41d_tr_pipelinec_gen_c_l471_l478_l479_DUPLICATE_ba6d_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse := VAR_CONST_REF_RD_fixed_full_state_t_sphere_xvel_d41d_tr_pipelinec_gen_c_l471_l478_l479_DUPLICATE_ba6d_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_left := VAR_CONST_REF_RD_fixed_full_state_t_sphere_y_d41d_tr_pipelinec_gen_c_l473_c30_1ffc_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_left := VAR_CONST_REF_RD_fixed_full_state_t_sphere_yvel_d41d_tr_pipelinec_gen_c_l472_c33_3aa5_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_left := VAR_CONST_REF_RD_fixed_full_state_t_sphere_z_d41d_tr_pipelinec_gen_c_l481_c31_3d6b_return_output;
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_left := VAR_CONST_REF_RD_uint16_t_full_state_t_score_d41d_tr_pipelinec_gen_c_l484_l488_l487_l478_l468_DUPLICATE_bd17_return_output;
     VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iffalse := VAR_CONST_REF_RD_uint16_t_full_state_t_score_d41d_tr_pipelinec_gen_c_l484_l488_l487_l478_l468_DUPLICATE_bd17_return_output;
     VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse := VAR_CONST_REF_RD_uint16_t_full_state_t_score_d41d_tr_pipelinec_gen_c_l484_l488_l487_l478_l468_DUPLICATE_bd17_return_output;
     VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse := VAR_CONST_REF_RD_uint16_t_full_state_t_score_d41d_tr_pipelinec_gen_c_l484_l488_l487_l478_l468_DUPLICATE_bd17_return_output;
     VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse := VAR_CONST_REF_RD_uint16_t_full_state_t_score_d41d_tr_pipelinec_gen_c_l484_l488_l487_l478_l468_DUPLICATE_bd17_return_output;
     VAR_BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_left := VAR_CONST_REF_RD_uint1_t_full_state_t_won_d41d_tr_pipelinec_gen_c_l487_l478_l484_l476_l490_DUPLICATE_01a8_return_output;
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_left := VAR_CONST_REF_RD_uint1_t_full_state_t_won_d41d_tr_pipelinec_gen_c_l487_l478_l484_l476_l490_DUPLICATE_01a8_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_cond := VAR_CONST_REF_RD_uint1_t_full_state_t_won_d41d_tr_pipelinec_gen_c_l487_l478_l484_l476_l490_DUPLICATE_01a8_return_output;
     VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse := VAR_CONST_REF_RD_uint1_t_full_state_t_won_d41d_tr_pipelinec_gen_c_l487_l478_l484_l476_l490_DUPLICATE_01a8_return_output;
     VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse := VAR_CONST_REF_RD_uint1_t_full_state_t_won_d41d_tr_pipelinec_gen_c_l487_l478_l484_l476_l490_DUPLICATE_01a8_return_output;
     VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse := VAR_CONST_REF_RD_uint1_t_full_state_t_won_d41d_tr_pipelinec_gen_c_l487_l478_l484_l476_l490_DUPLICATE_01a8_return_output;
     VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iffalse := VAR_CONST_REF_RD_uint1_t_full_state_t_won_d41d_tr_pipelinec_gen_c_l487_l478_l484_l476_l490_DUPLICATE_01a8_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue := VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output;
     -- fixed_add[tr_pipelinec_gen_c_l471_c19_8357] LATENCY=0
     -- Inputs
     fixed_add_tr_pipelinec_gen_c_l471_c19_8357_left <= VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_left;
     fixed_add_tr_pipelinec_gen_c_l471_c19_8357_right <= VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_right;
     -- Outputs
     VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_return_output := fixed_add_tr_pipelinec_gen_c_l471_c19_8357_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l479_c25_dab5] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_left;
     fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_return_output := fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_return_output;

     -- BIN_OP_NEQ[tr_pipelinec_gen_c_l490_c44_c68b] LATENCY=0
     -- Inputs
     BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_left <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_left;
     BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_right <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_right;
     -- Outputs
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_return_output := BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_return_output;

     -- BIN_OP_EQ[tr_pipelinec_gen_c_l484_c27_da3b] LATENCY=0
     -- Inputs
     BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_left <= VAR_BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_left;
     BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_right <= VAR_BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_right;
     -- Outputs
     VAR_BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_return_output := BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_return_output;

     -- fixed_add[tr_pipelinec_gen_c_l472_c23_b4ba] LATENCY=0
     -- Inputs
     fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_left <= VAR_fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_left;
     fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_right <= VAR_fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_right;
     -- Outputs
     VAR_fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_return_output := fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_return_output;

     -- BIN_OP_PLUS[tr_pipelinec_gen_c_l488_c23_2f0e] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_left <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_left;
     BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_right;
     -- Outputs
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_return_output := BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_return_output;

     -- fixed_add[tr_pipelinec_gen_c_l485_c20_7e74] LATENCY=0
     -- Inputs
     fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_left <= VAR_fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_left;
     fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_right <= VAR_fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_right;
     -- Outputs
     VAR_fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_return_output := fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_return_output;

     -- score_MUX[tr_pipelinec_gen_c_l470_c3_6e99] LATENCY=0
     -- Inputs
     score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_cond <= VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_cond;
     score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iftrue <= VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iftrue;
     score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iffalse <= VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_iffalse;
     -- Outputs
     VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_return_output := score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_return_output;

     -- Submodule level 2
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_left := VAR_BIN_OP_EQ_tr_pipelinec_gen_c_l484_c27_da3b_return_output;
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_left := VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_c68b_return_output;
     VAR_state_score_tr_pipelinec_gen_c_l488_c9_337c := resize(VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l488_c23_2f0e_return_output, 16);
     VAR_fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_right := VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_right := VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_right := VAR_fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iffalse := VAR_fixed_add_tr_pipelinec_gen_c_l472_c23_b4ba_return_output;
     VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue := VAR_fixed_add_tr_pipelinec_gen_c_l485_c20_7e74_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse := VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse := VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse := VAR_fixed_sub_tr_pipelinec_gen_c_l479_c25_dab5_return_output;
     VAR_reset_state_tr_pipelinec_gen_c_l512_c21_8a58_score := VAR_score_MUX_tr_pipelinec_gen_c_l470_c3_6e99_return_output;
     VAR_BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_left := VAR_state_score_tr_pipelinec_gen_c_l488_c9_337c;
     VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue := VAR_state_score_tr_pipelinec_gen_c_l488_c9_337c;
     -- reset_state[tr_pipelinec_gen_c_l512_c21_8a58] LATENCY=0
     -- Inputs
     reset_state_tr_pipelinec_gen_c_l512_c21_8a58_score <= VAR_reset_state_tr_pipelinec_gen_c_l512_c21_8a58_score;
     -- Outputs
     VAR_reset_state_tr_pipelinec_gen_c_l512_c21_8a58_return_output := reset_state_tr_pipelinec_gen_c_l512_c21_8a58_return_output;

     -- BIN_OP_NEQ[tr_pipelinec_gen_c_l484_c27_2b82] LATENCY=0
     -- Inputs
     BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_left <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_left;
     BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_right <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_right;
     -- Outputs
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_return_output := BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_return_output;

     -- BIN_OP_NEQ[tr_pipelinec_gen_c_l490_c44_61e1] LATENCY=0
     -- Inputs
     BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_left <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_left;
     BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_right <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_right;
     -- Outputs
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_return_output := BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l473_c20_2e50] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_left;
     fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_return_output := fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_return_output;

     -- state_sphere_xvel_MUX[tr_pipelinec_gen_c_l492_c9_d841] LATENCY=0
     -- Inputs
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_cond;
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iftrue;
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_iffalse;
     -- Outputs
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output := state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output;

     -- BIN_OP_GTE[tr_pipelinec_gen_c_l490_c14_dfc7] LATENCY=0
     -- Inputs
     BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_left <= VAR_BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_left;
     BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_right <= VAR_BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_right;
     -- Outputs
     VAR_BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_return_output := BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l480_c21_3214] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_left;
     fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_return_output := fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l481_c21_326a] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_left;
     fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_return_output := fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_return_output;

     -- Submodule level 3
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_left := VAR_BIN_OP_GTE_tr_pipelinec_gen_c_l490_c14_dfc7_return_output;
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_right := VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c27_2b82_return_output;
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_right := VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c44_61e1_return_output;
     VAR_fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_left := VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_left := VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_left := VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_return_output;
     VAR_plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_x := VAR_fixed_sub_tr_pipelinec_gen_c_l480_c21_3214_return_output;
     VAR_plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_z := VAR_fixed_sub_tr_pipelinec_gen_c_l481_c21_326a_return_output;
     VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iftrue := VAR_reset_state_tr_pipelinec_gen_c_l512_c21_8a58_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue := VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l492_c9_d841_return_output;
     -- plane_has_hole[tr_pipelinec_gen_c_l487_c19_4e97] LATENCY=0
     -- Inputs
     plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_x <= VAR_plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_x;
     plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_z <= VAR_plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_z;
     -- Outputs
     VAR_plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_return_output := plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_return_output;

     -- BIN_OP_NEQ[tr_pipelinec_gen_c_l490_c14_49a6] LATENCY=0
     -- Inputs
     BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_left <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_left;
     BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_right <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_right;
     -- Outputs
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_return_output := BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_return_output;

     -- fixed_gt[tr_pipelinec_gen_c_l482_c23_45da] LATENCY=0
     -- Inputs
     fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_left <= VAR_fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_left;
     fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_right <= VAR_fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_right;
     -- Outputs
     VAR_fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_return_output := fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l474_c34_14f3] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_left;
     fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_return_output := fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l503_c56_048f] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_left;
     fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_return_output := fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_return_output;

     -- Submodule level 4
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_left := VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l490_c14_49a6_return_output;
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_left := VAR_fixed_gt_tr_pipelinec_gen_c_l482_c23_45da_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_left := VAR_fixed_sub_tr_pipelinec_gen_c_l474_c34_14f3_return_output;
     VAR_fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_a := VAR_fixed_sub_tr_pipelinec_gen_c_l503_c56_048f_return_output;
     VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_left := VAR_plane_has_hole_tr_pipelinec_gen_c_l487_c19_4e97_return_output;
     -- fixed_shr[tr_pipelinec_gen_c_l503_c46_58b5] LATENCY=0
     -- Inputs
     fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_a <= VAR_fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_a;
     fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_shift <= VAR_fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_shift;
     -- Outputs
     VAR_fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_return_output := fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l474_c23_81f0] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_left;
     fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_return_output := fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_return_output;

     -- fixed_gt[tr_pipelinec_gen_c_l487_c10_1594] LATENCY=0
     -- Inputs
     fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_left <= VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_left;
     fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_right <= VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_right;
     -- Outputs
     VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_return_output := fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_return_output;

     -- BIN_OP_AND[tr_pipelinec_gen_c_l490_c14_4830] LATENCY=0
     -- Inputs
     BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_left <= VAR_BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_left;
     BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_right <= VAR_BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_right;
     -- Outputs
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_return_output := BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_return_output;

     -- BIN_OP_NEQ[tr_pipelinec_gen_c_l484_c10_a16b] LATENCY=0
     -- Inputs
     BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_left <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_left;
     BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_right <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_right;
     -- Outputs
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_return_output := BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_return_output;

     -- Submodule level 5
     VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_cond := VAR_BIN_OP_AND_tr_pipelinec_gen_c_l490_c14_4830_return_output;
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_left := VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l484_c10_a16b_return_output;
     VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond := VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond := VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond := VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_return_output;
     VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond := VAR_fixed_gt_tr_pipelinec_gen_c_l487_c10_1594_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_right := VAR_fixed_shr_tr_pipelinec_gen_c_l503_c46_58b5_return_output;
     VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_x := VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_return_output;
     VAR_fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_a := VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_return_output;
     VAR_fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_a := VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_return_output;
     VAR_fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_a := VAR_fixed_sub_tr_pipelinec_gen_c_l474_c23_81f0_return_output;
     -- fixed_to_short[tr_pipelinec_gen_c_l505_c61_a7e4] LATENCY=0
     -- Inputs
     fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_a <= VAR_fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_a;
     -- Outputs
     VAR_fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_return_output := fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_return_output;

     -- state_sphere_xvel_MUX[tr_pipelinec_gen_c_l487_c7_b1f0] LATENCY=0
     -- Inputs
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond;
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue;
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse;
     -- Outputs
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output := state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output;

     -- fixed_shr[tr_pipelinec_gen_c_l476_c37_534e] LATENCY=0
     -- Inputs
     fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_a <= VAR_fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_a;
     fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_shift <= VAR_fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_shift;
     -- Outputs
     VAR_fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_return_output := fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_return_output;

     -- fixed_shr[tr_pipelinec_gen_c_l500_c50_8af0] LATENCY=0
     -- Inputs
     fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_a <= VAR_fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_a;
     fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_shift <= VAR_fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_shift;
     -- Outputs
     VAR_fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_return_output := fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_return_output;

     -- BIN_OP_AND[tr_pipelinec_gen_c_l484_c10_c280] LATENCY=0
     -- Inputs
     BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_left <= VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_left;
     BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_right <= VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_right;
     -- Outputs
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output := BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output;

     -- fixed_add[tr_pipelinec_gen_c_l503_c20_cf76] LATENCY=0
     -- Inputs
     fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_left <= VAR_fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_left;
     fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_right <= VAR_fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_right;
     -- Outputs
     VAR_fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_return_output := fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_return_output;

     -- state_won_MUX[tr_pipelinec_gen_c_l490_c9_9d92] LATENCY=0
     -- Inputs
     state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_cond <= VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_cond;
     state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iftrue <= VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iftrue;
     state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iffalse <= VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_iffalse;
     -- Outputs
     VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_return_output := state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_return_output;

     -- state_score_MUX[tr_pipelinec_gen_c_l487_c7_b1f0] LATENCY=0
     -- Inputs
     state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond <= VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond;
     state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue <= VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue;
     state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse <= VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse;
     -- Outputs
     VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output := state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output;

     -- fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac LATENCY=0
     -- Inputs
     fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_x <= VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_x;
     -- Outputs
     VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output := fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output;

     -- Submodule level 6
     VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond := VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output;
     VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond := VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output;
     VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond := VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond := VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond := VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output;
     VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond := VAR_BIN_OP_AND_tr_pipelinec_gen_c_l484_c10_c280_return_output;
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_left := VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output;
     VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond := VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output;
     VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond := VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output;
     VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond := VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond := VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond := VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output;
     VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond := VAR_fixed_is_negative_tr_pipelinec_gen_c_l505_l478_DUPLICATE_0dac_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iftrue := VAR_fixed_shr_tr_pipelinec_gen_c_l476_c37_534e_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_right := VAR_fixed_shr_tr_pipelinec_gen_c_l500_c50_8af0_return_output;
     VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_expr := VAR_fixed_to_short_tr_pipelinec_gen_c_l505_c61_a7e4_return_output;
     VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue := VAR_state_score_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue := VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output;
     VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue := VAR_state_won_MUX_tr_pipelinec_gen_c_l490_c9_9d92_return_output;
     -- fixed_sub[tr_pipelinec_gen_c_l500_c24_bee4] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_left;
     fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_return_output := fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_return_output;

     -- state_sphere_yvel_MUX[tr_pipelinec_gen_c_l476_c3_8ad9] LATENCY=0
     -- Inputs
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_cond <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_cond;
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iftrue <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iftrue;
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iffalse <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_iffalse;
     -- Outputs
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_return_output := state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_return_output;

     -- state_won_MUX[tr_pipelinec_gen_c_l487_c7_b1f0] LATENCY=0
     -- Inputs
     state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond <= VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond;
     state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue <= VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue;
     state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse <= VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse;
     -- Outputs
     VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output := state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output;

     -- state_heat_MUX[tr_pipelinec_gen_c_l484_c5_f0bc] LATENCY=0
     -- Inputs
     state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond <= VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond;
     state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue <= VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue;
     state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse <= VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse;
     -- Outputs
     VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output := state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;

     -- UNARY_OP_NEGATE[tr_pipelinec_gen_c_l505_c61_0878] LATENCY=0
     -- Inputs
     UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_expr <= VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_expr;
     -- Outputs
     VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_return_output := UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_return_output;

     -- BIN_OP_NEQ[tr_pipelinec_gen_c_l505_c18_77d5] LATENCY=0
     -- Inputs
     BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_left <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_left;
     BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_right <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_right;
     -- Outputs
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_return_output := BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_return_output;

     -- state_score_MUX[tr_pipelinec_gen_c_l484_c5_f0bc] LATENCY=0
     -- Inputs
     state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond <= VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond;
     state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue <= VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue;
     state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse <= VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse;
     -- Outputs
     VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output := state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;

     -- state_sphere_xvel_MUX[tr_pipelinec_gen_c_l484_c5_f0bc] LATENCY=0
     -- Inputs
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond;
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue;
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse;
     -- Outputs
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output := state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;

     -- Submodule level 7
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_left := VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c18_77d5_return_output;
     VAR_CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_x := VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l505_c61_0878_return_output;
     VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse := VAR_fixed_sub_tr_pipelinec_gen_c_l500_c24_bee4_return_output;
     VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue := VAR_state_heat_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;
     VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue := VAR_state_score_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue := VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse := VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse := VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse := VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l476_c3_8ad9_return_output;
     VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue := VAR_state_won_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output;
     -- CONST_SR_10[tr_pipelinec_gen_c_l505_c61_7edb] LATENCY=0
     -- Inputs
     CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_x <= VAR_CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_x;
     -- Outputs
     VAR_CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_return_output := CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_return_output;

     -- state_won_MUX[tr_pipelinec_gen_c_l484_c5_f0bc] LATENCY=0
     -- Inputs
     state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond <= VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond;
     state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue <= VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue;
     state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse <= VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse;
     -- Outputs
     VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output := state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;

     -- state_sphere_yvel_MUX[tr_pipelinec_gen_c_l487_c7_b1f0] LATENCY=0
     -- Inputs
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_cond;
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iftrue;
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_iffalse;
     -- Outputs
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output := state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output;

     -- state_camera_z_MUX[tr_pipelinec_gen_c_l484_c5_f0bc] LATENCY=0
     -- Inputs
     state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond <= VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond;
     state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue <= VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue;
     state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse <= VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse;
     -- Outputs
     VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output := state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;

     -- state_score_MUX[tr_pipelinec_gen_c_l478_c3_563e] LATENCY=0
     -- Inputs
     state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond <= VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond;
     state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue <= VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue;
     state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse <= VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse;
     -- Outputs
     VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output := state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output;

     -- state_sphere_xvel_MUX[tr_pipelinec_gen_c_l478_c3_563e] LATENCY=0
     -- Inputs
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond;
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue;
     state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse <= VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse;
     -- Outputs
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output := state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output;

     -- state_heat_MUX[tr_pipelinec_gen_c_l478_c3_563e] LATENCY=0
     -- Inputs
     state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond <= VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond;
     state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue <= VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue;
     state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse <= VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse;
     -- Outputs
     VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output := state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output;

     -- Submodule level 8
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_left := VAR_CONST_SR_10_tr_pipelinec_gen_c_l505_c61_7edb_return_output;
     VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue := VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;
     VAR_fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_a := VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_left := VAR_state_heat_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output;
     VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iffalse := VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue := VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l487_c7_b1f0_return_output;
     VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue := VAR_state_won_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;
     -- fixed_shr[tr_pipelinec_gen_c_l504_c38_d775] LATENCY=0
     -- Inputs
     fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_a <= VAR_fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_a;
     fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_shift <= VAR_fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_shift;
     -- Outputs
     VAR_fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_return_output := fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_return_output;

     -- state_won_MUX[tr_pipelinec_gen_c_l478_c3_563e] LATENCY=0
     -- Inputs
     state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond <= VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond;
     state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue <= VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue;
     state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse <= VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse;
     -- Outputs
     VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output := state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output;

     -- state_sphere_yvel_MUX[tr_pipelinec_gen_c_l484_c5_f0bc] LATENCY=0
     -- Inputs
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_cond;
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iftrue;
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_iffalse;
     -- Outputs
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output := state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;

     -- BIN_OP_NEQ[tr_pipelinec_gen_c_l505_c61_ccb5] LATENCY=0
     -- Inputs
     BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_left <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_left;
     BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_right <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_right;
     -- Outputs
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_return_output := BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_return_output;

     -- state_camera_z_MUX[tr_pipelinec_gen_c_l478_c3_563e] LATENCY=0
     -- Inputs
     state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond <= VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond;
     state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue <= VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue;
     state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse <= VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse;
     -- Outputs
     VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output := state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output;

     -- Submodule level 9
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_left := VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_ccb5_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_right := VAR_fixed_shr_tr_pipelinec_gen_c_l504_c38_d775_return_output;
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue := VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l484_c5_f0bc_return_output;
     VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_cond := VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output;
     -- state_sphere_yvel_MUX[tr_pipelinec_gen_c_l478_c3_563e] LATENCY=0
     -- Inputs
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_cond;
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iftrue;
     state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse <= VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_iffalse;
     -- Outputs
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output := state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output;

     -- BIN_OP_NEQ[tr_pipelinec_gen_c_l505_c61_cf79] LATENCY=0
     -- Inputs
     BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_left <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_left;
     BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_right <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_right;
     -- Outputs
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_return_output := BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l504_c16_f4ec] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_left;
     fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_return_output := fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_return_output;

     -- MUX[tr_pipelinec_gen_c_l508_c20_d0ec] LATENCY=0
     -- Inputs
     MUX_tr_pipelinec_gen_c_l508_c20_d0ec_cond <= VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_cond;
     MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iftrue <= VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iftrue;
     MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iffalse <= VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_iffalse;
     -- Outputs
     VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_return_output := MUX_tr_pipelinec_gen_c_l508_c20_d0ec_return_output;

     -- Submodule level 10
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_right := VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l505_c61_cf79_return_output;
     VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_x := VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_return_output;
     VAR_fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_a := VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_return_output;
     -- BIN_OP_AND[tr_pipelinec_gen_c_l505_c18_50d8] LATENCY=0
     -- Inputs
     BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_left <= VAR_BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_left;
     BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_right <= VAR_BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_right;
     -- Outputs
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_return_output := BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_return_output;

     -- color_select[tr_pipelinec_gen_c_l506_c25_1e4a] LATENCY=0
     -- Inputs
     color_select_tr_pipelinec_gen_c_l506_c25_1e4a_x <= VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_x;
     color_select_tr_pipelinec_gen_c_l506_c25_1e4a_a <= VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_a;
     color_select_tr_pipelinec_gen_c_l506_c25_1e4a_b <= VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_b;
     -- Outputs
     VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_return_output := color_select_tr_pipelinec_gen_c_l506_c25_1e4a_return_output;

     -- fixed_shr[tr_pipelinec_gen_c_l507_c121_74cb] LATENCY=0
     -- Inputs
     fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_a <= VAR_fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_a;
     fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_shift <= VAR_fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_shift;
     -- Outputs
     VAR_fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_return_output := fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_return_output;

     -- Submodule level 11
     VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_cond := VAR_BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_right := VAR_fixed_shr_tr_pipelinec_gen_c_l507_c121_74cb_return_output;
     -- reset_MUX[tr_pipelinec_gen_c_l510_c3_e0ab] LATENCY=0
     -- Inputs
     reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_cond <= VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_cond;
     reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iftrue <= VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iftrue;
     reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iffalse <= VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_iffalse;
     -- Outputs
     VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_return_output := reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l507_c69_3780] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_left;
     fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_return_output := fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_return_output;

     -- Submodule level 12
     VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_right := VAR_fixed_sub_tr_pipelinec_gen_c_l507_c69_3780_return_output;
     VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_cond := VAR_reset_MUX_tr_pipelinec_gen_c_l510_c3_e0ab_return_output;
     -- fixed3_mul_fixed[tr_pipelinec_gen_c_l507_c25_daf2] LATENCY=0
     -- Inputs
     fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_left <= VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_left;
     fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_right <= VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_right;
     -- Outputs
     VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_return_output := fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_return_output;

     -- Submodule level 13
     -- state_FALSE_INPUT_MUX_CONST_REF_RD_full_state_t_full_state_t_ebdb[tr_pipelinec_gen_c_l512_c3_fd1f] LATENCY=0
     VAR_state_FALSE_INPUT_MUX_CONST_REF_RD_full_state_t_full_state_t_ebdb_tr_pipelinec_gen_c_l512_c3_fd1f_return_output := CONST_REF_RD_full_state_t_full_state_t_ebdb(
     VAR_state,
     VAR_fixed_add_tr_pipelinec_gen_c_l471_c19_8357_return_output,
     VAR_fixed_sub_tr_pipelinec_gen_c_l473_c20_2e50_return_output,
     VAR_state_sphere_yvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
     VAR_state_won_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
     VAR_state_sphere_xvel_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
     VAR_state_score_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
     VAR_state_camera_z_MUX_tr_pipelinec_gen_c_l478_c3_563e_return_output,
     VAR_fixed_add_tr_pipelinec_gen_c_l503_c20_cf76_return_output,
     VAR_fixed_sub_tr_pipelinec_gen_c_l504_c16_f4ec_return_output,
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l505_c18_50d8_return_output,
     VAR_color_select_tr_pipelinec_gen_c_l506_c25_1e4a_return_output,
     VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l507_c25_daf2_return_output,
     VAR_MUX_tr_pipelinec_gen_c_l508_c20_d0ec_return_output);

     -- Submodule level 14
     VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iffalse := VAR_state_FALSE_INPUT_MUX_CONST_REF_RD_full_state_t_full_state_t_ebdb_tr_pipelinec_gen_c_l512_c3_fd1f_return_output;
     -- state_MUX[tr_pipelinec_gen_c_l512_c3_fd1f] LATENCY=0
     -- Inputs
     state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_cond <= VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_cond;
     state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iftrue <= VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iftrue;
     state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iffalse <= VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_iffalse;
     -- Outputs
     VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output := state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output;

     -- Submodule level 15
     -- CONST_REF_RD_fixed_full_state_t_plane_x_d41d_tr_pipelinec_gen_c_l518_l517_DUPLICATE_668c LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_plane_x_d41d_tr_pipelinec_gen_c_l518_l517_DUPLICATE_668c_return_output := VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output.plane_x;

     -- CONST_REF_RD_fixed_full_state_t_sphere_yvel_d41d[tr_pipelinec_gen_c_l521_c29_39fb] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_sphere_yvel_d41d_tr_pipelinec_gen_c_l521_c29_39fb_return_output := VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output.sphere_yvel;

     -- CONST_REF_RD_fixed3_full_state_t_reflect_color_d41d[tr_pipelinec_gen_c_l520_c47_ad86] LATENCY=0
     VAR_CONST_REF_RD_fixed3_full_state_t_reflect_color_d41d_tr_pipelinec_gen_c_l520_c47_ad86_return_output := VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output.reflect_color;

     -- CONST_REF_RD_fixed_full_state_t_camera_y_d41d[tr_pipelinec_gen_c_l515_c26_30ad] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_camera_y_d41d_tr_pipelinec_gen_c_l515_c26_30ad_return_output := VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output.camera_y;

     -- CONST_REF_RD_uint16_t_full_state_t_scene_frame_d41d[tr_pipelinec_gen_c_l523_c23_e635] LATENCY=0
     VAR_CONST_REF_RD_uint16_t_full_state_t_scene_frame_d41d_tr_pipelinec_gen_c_l523_c23_e635_return_output := VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output.scene.frame;

     -- CONST_REF_RD_fixed_full_state_t_camera_z_d41d[tr_pipelinec_gen_c_l516_c26_f6e7] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_camera_z_d41d_tr_pipelinec_gen_c_l516_c26_f6e7_return_output := VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output.camera_z;

     -- CONST_REF_RD_fixed_full_state_t_sphere_y_d41d[tr_pipelinec_gen_c_l513_c33_9940] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_sphere_y_d41d_tr_pipelinec_gen_c_l513_c33_9940_return_output := VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output.sphere_y;

     -- CONST_REF_RD_fixed3_full_state_t_diffuse_color_d41d[tr_pipelinec_gen_c_l519_c47_d5c5] LATENCY=0
     VAR_CONST_REF_RD_fixed3_full_state_t_diffuse_color_d41d_tr_pipelinec_gen_c_l519_c47_d5c5_return_output := VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output.diffuse_color;

     -- CONST_REF_RD_uint16_t_full_state_t_scorebar_d41d[tr_pipelinec_gen_c_l522_c26_0b5a] LATENCY=0
     VAR_CONST_REF_RD_uint16_t_full_state_t_scorebar_d41d_tr_pipelinec_gen_c_l522_c26_0b5a_return_output := VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output.scorebar;

     -- CONST_REF_RD_fixed_full_state_t_heat_d41d[tr_pipelinec_gen_c_l514_c29_6310] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_heat_d41d_tr_pipelinec_gen_c_l514_c29_6310_return_output := VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output.heat;

     -- Submodule level 16
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_left := VAR_CONST_REF_RD_uint16_t_full_state_t_scene_frame_d41d_tr_pipelinec_gen_c_l523_c23_e635_return_output;
     -- BIN_OP_PLUS[tr_pipelinec_gen_c_l523_c23_3bba] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_left <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_left;
     BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_right;
     -- Outputs
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_return_output := BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_return_output;

     -- Submodule level 17
     VAR_state_scene_frame_tr_pipelinec_gen_c_l523_c3_968c := resize(VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l523_c23_3bba_return_output, 16);
     -- CONST_REF_RD_full_state_t_full_state_t_564a[tr_pipelinec_gen_c_l524_c10_97a8] LATENCY=0
     VAR_CONST_REF_RD_full_state_t_full_state_t_564a_tr_pipelinec_gen_c_l524_c10_97a8_return_output := CONST_REF_RD_full_state_t_full_state_t_564a(
     VAR_state_MUX_tr_pipelinec_gen_c_l512_c3_fd1f_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_sphere_y_d41d_tr_pipelinec_gen_c_l513_c33_9940_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_heat_d41d_tr_pipelinec_gen_c_l514_c29_6310_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_camera_y_d41d_tr_pipelinec_gen_c_l515_c26_30ad_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_camera_z_d41d_tr_pipelinec_gen_c_l516_c26_f6e7_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_plane_x_d41d_tr_pipelinec_gen_c_l518_l517_DUPLICATE_668c_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_plane_x_d41d_tr_pipelinec_gen_c_l518_l517_DUPLICATE_668c_return_output,
     VAR_CONST_REF_RD_fixed3_full_state_t_diffuse_color_d41d_tr_pipelinec_gen_c_l519_c47_d5c5_return_output,
     VAR_CONST_REF_RD_fixed3_full_state_t_reflect_color_d41d_tr_pipelinec_gen_c_l520_c47_ad86_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_sphere_yvel_d41d_tr_pipelinec_gen_c_l521_c29_39fb_return_output,
     VAR_CONST_REF_RD_uint16_t_full_state_t_scorebar_d41d_tr_pipelinec_gen_c_l522_c26_0b5a_return_output,
     VAR_state_scene_frame_tr_pipelinec_gen_c_l523_c3_968c);

     -- Submodule level 18
     VAR_return_output := VAR_CONST_REF_RD_full_state_t_full_state_t_564a_tr_pipelinec_gen_c_l524_c10_97a8_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
