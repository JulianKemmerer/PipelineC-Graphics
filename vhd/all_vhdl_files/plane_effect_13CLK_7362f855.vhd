-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.03366014299567514, 0.1348823214352034, 0.23610449987473098, 0.33732667831425783, 0.43854885675378824, 0.5397710351933165, 0.6409932136328448, 0.7422153920723737, 0.8434375705119034, 0.9446597489514296]
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
-- Submodules: 16
entity plane_effect_13CLK_7362f855 is
port(
 clk : in std_logic;
 global_to_module : in plane_effect_global_to_module_t;
 hit : in hit_out;
 return_output : out fixed3);
end plane_effect_13CLK_7362f855;
architecture arch of plane_effect_13CLK_7362f855 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 13;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left : std_logic_vector(22 downto 0);
signal REG_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left : std_logic_vector(22 downto 0);
signal COMB_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left : std_logic_vector(22 downto 0);
signal COMB_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left : std_logic_vector(22 downto 0);
-- Stage 1
signal REG_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left : std_logic_vector(22 downto 0);
signal REG_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left : std_logic_vector(22 downto 0);
signal REG_STAGE1_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left : std_logic_vector(22 downto 0);
signal COMB_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left : std_logic_vector(22 downto 0);
signal COMB_STAGE1_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 2
signal REG_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left : std_logic_vector(22 downto 0);
signal REG_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left : std_logic_vector(22 downto 0);
signal REG_STAGE2_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left : std_logic_vector(22 downto 0);
signal COMB_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left : std_logic_vector(22 downto 0);
signal COMB_STAGE2_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 3
signal REG_STAGE3_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE3_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 4
signal REG_STAGE4_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE4_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 5
signal REG_STAGE5_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE5_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 6
signal REG_STAGE6_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE6_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 7
signal REG_STAGE7_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE7_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 8
signal REG_STAGE8_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE8_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 9
signal REG_STAGE9_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE9_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 10
signal REG_STAGE10_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE10_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 11
signal REG_STAGE11_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE11_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Stage 12
signal REG_STAGE12_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal COMB_STAGE12_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
-- Each function instance gets signals
-- scene_colors[tr_pipelinec_gen_c_l312_c27_62b4]
signal scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_scene : scene_t;
signal scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_return_output : scene_colors_t;

-- object_coord_to_float3[tr_pipelinec_gen_c_l315_c25_4b5c]
signal object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_a : fixed3;
signal object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_return_output : float3;

-- BIN_OP_MINUS[tr_pipelinec_gen_c_l316_c23_1457]
signal BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_right : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_MINUS[tr_pipelinec_gen_c_l317_c23_e589]
signal BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_right : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_SL[tr_pipelinec_gen_c_l318_c23_aae2]
signal BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_left : std_logic_vector(22 downto 0);
signal BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_right : signed(2 downto 0);
signal BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_SL[tr_pipelinec_gen_c_l319_c23_d71b]
signal BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_left : std_logic_vector(22 downto 0);
signal BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_right : signed(2 downto 0);
signal BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_return_output : std_logic_vector(22 downto 0);

-- fixed_make_from_float[tr_pipelinec_gen_c_l320_c24_10ac]
signal fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_a : std_logic_vector(22 downto 0);
signal fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_return_output : fixed;

-- round16[tr_pipelinec_gen_c_l320_c16_49b5]
signal round16_tr_pipelinec_gen_c_l320_c16_49b5_x : fixed;
signal round16_tr_pipelinec_gen_c_l320_c16_49b5_return_output : signed(15 downto 0);

-- fixed_make_from_float[tr_pipelinec_gen_c_l321_c24_3d27]
signal fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_a : std_logic_vector(22 downto 0);
signal fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_return_output : fixed;

-- round16[tr_pipelinec_gen_c_l321_c16_80f5]
signal round16_tr_pipelinec_gen_c_l321_c16_80f5_x : fixed;
signal round16_tr_pipelinec_gen_c_l321_c16_80f5_return_output : signed(15 downto 0);

-- BIN_OP_XOR[tr_pipelinec_gen_c_l324_c14_3e0a]
signal BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_left : signed(15 downto 0);
signal BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_right : signed(15 downto 0);
signal BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_return_output : signed(15 downto 0);

-- BIN_OP_AND[tr_pipelinec_gen_c_l324_c14_2d4f]
signal BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_left : signed(15 downto 0);
signal BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_right : signed(1 downto 0);
signal BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_return_output : signed(15 downto 0);

-- BIN_OP_NEQ[tr_pipelinec_gen_c_l324_c14_76ed]
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_left : signed(15 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_right : signed(1 downto 0);
signal BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_return_output : unsigned(0 downto 0);

-- MUX[tr_pipelinec_gen_c_l324_c14_e531]
signal MUX_tr_pipelinec_gen_c_l324_c14_e531_cond : unsigned(0 downto 0);
signal MUX_tr_pipelinec_gen_c_l324_c14_e531_iftrue : fixed3;
signal MUX_tr_pipelinec_gen_c_l324_c14_e531_iffalse : fixed3;
signal MUX_tr_pipelinec_gen_c_l324_c14_e531_return_output : fixed3;

-- BIN_OP_LT[tr_pipelinec_gen_c_l326_c6_f231]
signal BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_left : std_logic_vector(22 downto 0);
signal BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_right : std_logic_vector(22 downto 0);
signal BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_return_output : unsigned(0 downto 0);

-- rcolor_MUX[tr_pipelinec_gen_c_l326_c3_9b04]
signal rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
signal rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iftrue : fixed3;
signal rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iffalse : fixed3;
signal rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_return_output : fixed3;


begin

-- SUBMODULE INSTANCES 
-- scene_colors_tr_pipelinec_gen_c_l312_c27_62b4
scene_colors_tr_pipelinec_gen_c_l312_c27_62b4 : entity work.scene_colors_0CLK_5af1a430 port map (
scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_scene,
scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_return_output);

-- object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c
object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c : entity work.object_coord_to_float3_3CLK_9d26212c port map (
clk,
object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_a,
object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_return_output);

-- BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457
BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457 : entity work.BIN_OP_MINUS_float_8_14_t_float_8_14_t_6CLK_ab6afdf3 port map (
clk,
BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left,
BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_right,
BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_return_output);

-- BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589
BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589 : entity work.BIN_OP_MINUS_float_8_14_t_float_8_14_t_6CLK_ab6afdf3 port map (
clk,
BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left,
BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_right,
BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_return_output);

-- BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2
BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2 : entity work.BIN_OP_SL_float_8_14_t_int3_t_0CLK_e595f783 port map (
BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_left,
BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_right,
BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_return_output);

-- BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b
BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b : entity work.BIN_OP_SL_float_8_14_t_int3_t_0CLK_e595f783 port map (
BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_left,
BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_right,
BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_return_output);

-- fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac
fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac : entity work.fixed_make_from_float_2CLK_c0caf0ba port map (
clk,
fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_a,
fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_return_output);

-- round16_tr_pipelinec_gen_c_l320_c16_49b5
round16_tr_pipelinec_gen_c_l320_c16_49b5 : entity work.round16_0CLK_a193dced port map (
round16_tr_pipelinec_gen_c_l320_c16_49b5_x,
round16_tr_pipelinec_gen_c_l320_c16_49b5_return_output);

-- fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27
fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27 : entity work.fixed_make_from_float_2CLK_c0caf0ba port map (
clk,
fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_a,
fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_return_output);

-- round16_tr_pipelinec_gen_c_l321_c16_80f5
round16_tr_pipelinec_gen_c_l321_c16_80f5 : entity work.round16_0CLK_a193dced port map (
round16_tr_pipelinec_gen_c_l321_c16_80f5_x,
round16_tr_pipelinec_gen_c_l321_c16_80f5_return_output);

-- BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a
BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a : entity work.BIN_OP_XOR_int16_t_int16_t_0CLK_de264c78 port map (
BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_left,
BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_right,
BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_return_output);

-- BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f
BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f : entity work.BIN_OP_AND_int16_t_int2_t_1CLK_882ca8ab port map (
clk,
BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_left,
BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_right,
BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_return_output);

-- BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed
BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed : entity work.BIN_OP_NEQ_int16_t_int2_t_0CLK_de264c78 port map (
BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_left,
BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_right,
BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_return_output);

-- MUX_tr_pipelinec_gen_c_l324_c14_e531
MUX_tr_pipelinec_gen_c_l324_c14_e531 : entity work.MUX_uint1_t_fixed3_fixed3_1CLK_43022cd0 port map (
clk,
MUX_tr_pipelinec_gen_c_l324_c14_e531_cond,
MUX_tr_pipelinec_gen_c_l324_c14_e531_iftrue,
MUX_tr_pipelinec_gen_c_l324_c14_e531_iffalse,
MUX_tr_pipelinec_gen_c_l324_c14_e531_return_output);

-- BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231
BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231 : entity work.BIN_OP_LT_float_8_14_t_float_8_14_t_1CLK_c48f5a28 port map (
clk,
BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_left,
BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_right,
BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_return_output);

-- rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04
rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04 : entity work.MUX_uint1_t_fixed3_fixed3_0CLK_de264c78 port map (
rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iftrue,
rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iffalse,
rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 hit,
 -- Registers
 -- Stage 0
 REG_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left,
 REG_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left,
 -- Stage 1
 REG_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left,
 REG_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left,
 REG_STAGE1_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 2
 REG_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left,
 REG_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left,
 REG_STAGE2_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 3
 REG_STAGE3_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 4
 REG_STAGE4_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 5
 REG_STAGE5_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 6
 REG_STAGE6_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 7
 REG_STAGE7_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 8
 REG_STAGE8_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 9
 REG_STAGE9_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 10
 REG_STAGE10_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 11
 REG_STAGE11_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Stage 12
 REG_STAGE12_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond,
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_return_output,
 object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_return_output,
 BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_return_output,
 BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_return_output,
 BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_return_output,
 BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_return_output,
 fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_return_output,
 round16_tr_pipelinec_gen_c_l320_c16_49b5_return_output,
 fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_return_output,
 round16_tr_pipelinec_gen_c_l321_c16_80f5_return_output,
 BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_return_output,
 BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_return_output,
 BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_return_output,
 MUX_tr_pipelinec_gen_c_l324_c14_e531_return_output,
 BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_return_output,
 rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed3;
 variable VAR_hit : hit_out;
 variable VAR_state : full_state_t;
 variable VAR_scene : scene_t;
 variable VAR_CONST_REF_RD_scene_t_full_state_t_scene_d41d_tr_pipelinec_gen_c_l311_c19_a245_return_output : scene_t;
 variable VAR_colors : scene_colors_t;
 variable VAR_scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_scene : scene_t;
 variable VAR_scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_return_output : scene_colors_t;
 variable VAR_plane : plane_t;
 variable VAR_CONST_REF_RD_plane_t_scene_t_plane_d41d_tr_pipelinec_gen_c_l313_c19_16c6_return_output : plane_t;
 variable VAR_rcolor : fixed3;
 variable VAR_plane_center : float3;
 variable VAR_object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_a : fixed3;
 variable VAR_CONST_REF_RD_fixed3_plane_t_center_d41d_tr_pipelinec_gen_c_l315_c48_6cf3_return_output : fixed3;
 variable VAR_object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_return_output : float3;
 variable VAR_hitx : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_hit_out_hit_orig_x_d41d_tr_pipelinec_gen_c_l316_c23_9cc6_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l316_c40_1d2b_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_return_output : std_logic_vector(22 downto 0);
 variable VAR_hitz : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_hit_out_hit_orig_z_d41d_tr_pipelinec_gen_c_l317_c23_8ffb_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l317_c40_8833_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_return_output : std_logic_vector(22 downto 0);
 variable VAR_ox : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_right : signed(2 downto 0);
 variable VAR_BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_return_output : std_logic_vector(22 downto 0);
 variable VAR_oz : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_right : signed(2 downto 0);
 variable VAR_BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_return_output : std_logic_vector(22 downto 0);
 variable VAR_ix : signed(15 downto 0);
 variable VAR_round16_tr_pipelinec_gen_c_l320_c16_49b5_x : fixed;
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_return_output : fixed;
 variable VAR_round16_tr_pipelinec_gen_c_l320_c16_49b5_return_output : signed(15 downto 0);
 variable VAR_iz : signed(15 downto 0);
 variable VAR_round16_tr_pipelinec_gen_c_l321_c16_80f5_x : fixed;
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_return_output : fixed;
 variable VAR_round16_tr_pipelinec_gen_c_l321_c16_80f5_return_output : signed(15 downto 0);
 variable VAR_color2 : fixed3;
 variable VAR_CONST_REF_RD_fixed3_scene_colors_t_plane_color2_d41d_tr_pipelinec_gen_c_l323_c19_508c_return_output : fixed3;
 variable VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_cond : unsigned(0 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_iftrue : fixed3;
 variable VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_iffalse : fixed3;
 variable VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_left : signed(15 downto 0);
 variable VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_right : signed(15 downto 0);
 variable VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_return_output : signed(15 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_left : signed(15 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_right : signed(1 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_return_output : signed(15 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_left : signed(15 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_right : signed(1 downto 0);
 variable VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_fixed3_scene_colors_t_plane_color1_d41d_tr_pipelinec_gen_c_l324_c35_3343_return_output : fixed3;
 variable VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_return_output : fixed3;
 variable VAR_CONST_REF_RD_float_8_14_t_hit_out_borderdist_d41d_tr_pipelinec_gen_c_l326_c6_23d8_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_return_output : unsigned(0 downto 0);
 variable VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iftrue : fixed3;
 variable VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iffalse : fixed3;
 variable VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_return_output : fixed3;
 variable VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_fixed3_scene_colors_t_plane_diffuse_color_d41d_tr_pipelinec_gen_c_l327_c14_5ac7_return_output : fixed3;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_right := to_signed(-3, 3);
     VAR_BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_right := to_signed(-3, 3);
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_right := signed(std_logic_vector(resize(to_unsigned(0, 1), 2)));
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_right := signed(std_logic_vector(resize(to_unsigned(1, 1), 2)));
     VAR_BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_right := to_slv(to_float(0.1, 8, 14));
 -- Reads from global variables
     VAR_state := global_to_module.state;
     -- Submodule level 0
     -- CONST_REF_RD_scene_t_full_state_t_scene_d41d[tr_pipelinec_gen_c_l311_c19_a245] LATENCY=0
     VAR_CONST_REF_RD_scene_t_full_state_t_scene_d41d_tr_pipelinec_gen_c_l311_c19_a245_return_output := VAR_state.scene;

     -- Submodule level 1
     VAR_scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_scene := VAR_CONST_REF_RD_scene_t_full_state_t_scene_d41d_tr_pipelinec_gen_c_l311_c19_a245_return_output;
     -- scene_colors[tr_pipelinec_gen_c_l312_c27_62b4] LATENCY=0
     -- Inputs
     scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_scene <= VAR_scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_scene;
     -- Outputs
     VAR_scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_return_output := scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_return_output;

     -- CONST_REF_RD_plane_t_scene_t_plane_d41d[tr_pipelinec_gen_c_l313_c19_16c6] LATENCY=0
     VAR_CONST_REF_RD_plane_t_scene_t_plane_d41d_tr_pipelinec_gen_c_l313_c19_16c6_return_output := VAR_CONST_REF_RD_scene_t_full_state_t_scene_d41d_tr_pipelinec_gen_c_l311_c19_a245_return_output.plane;

     -- Submodule level 2
     -- CONST_REF_RD_fixed3_scene_colors_t_plane_color1_d41d[tr_pipelinec_gen_c_l324_c35_3343] LATENCY=0
     VAR_CONST_REF_RD_fixed3_scene_colors_t_plane_color1_d41d_tr_pipelinec_gen_c_l324_c35_3343_return_output := VAR_scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_return_output.plane_color1;

     -- CONST_REF_RD_fixed3_scene_colors_t_plane_diffuse_color_d41d[tr_pipelinec_gen_c_l327_c14_5ac7] LATENCY=0
     VAR_CONST_REF_RD_fixed3_scene_colors_t_plane_diffuse_color_d41d_tr_pipelinec_gen_c_l327_c14_5ac7_return_output := VAR_scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_return_output.plane.diffuse_color;

     -- CONST_REF_RD_fixed3_scene_colors_t_plane_color2_d41d[tr_pipelinec_gen_c_l323_c19_508c] LATENCY=0
     VAR_CONST_REF_RD_fixed3_scene_colors_t_plane_color2_d41d_tr_pipelinec_gen_c_l323_c19_508c_return_output := VAR_scene_colors_tr_pipelinec_gen_c_l312_c27_62b4_return_output.plane_color2;

     -- CONST_REF_RD_fixed3_plane_t_center_d41d[tr_pipelinec_gen_c_l315_c48_6cf3] LATENCY=0
     VAR_CONST_REF_RD_fixed3_plane_t_center_d41d_tr_pipelinec_gen_c_l315_c48_6cf3_return_output := VAR_CONST_REF_RD_plane_t_scene_t_plane_d41d_tr_pipelinec_gen_c_l313_c19_16c6_return_output.center;

     -- Submodule level 3
     VAR_object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_a := VAR_CONST_REF_RD_fixed3_plane_t_center_d41d_tr_pipelinec_gen_c_l315_c48_6cf3_return_output;
     VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_iffalse := VAR_CONST_REF_RD_fixed3_scene_colors_t_plane_color2_d41d_tr_pipelinec_gen_c_l323_c19_508c_return_output;
     VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_iftrue := VAR_CONST_REF_RD_fixed3_scene_colors_t_plane_color1_d41d_tr_pipelinec_gen_c_l324_c35_3343_return_output;
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iftrue := VAR_CONST_REF_RD_fixed3_scene_colors_t_plane_diffuse_color_d41d_tr_pipelinec_gen_c_l327_c14_5ac7_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_hit := hit;

     -- Submodule level 0
     -- CONST_REF_RD_float_8_14_t_hit_out_hit_orig_z_d41d[tr_pipelinec_gen_c_l317_c23_8ffb] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_hit_out_hit_orig_z_d41d_tr_pipelinec_gen_c_l317_c23_8ffb_return_output := VAR_hit.hit.orig.z;

     -- CONST_REF_RD_float_8_14_t_hit_out_borderdist_d41d[tr_pipelinec_gen_c_l326_c6_23d8] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_hit_out_borderdist_d41d_tr_pipelinec_gen_c_l326_c6_23d8_return_output := VAR_hit.borderdist;

     -- CONST_REF_RD_float_8_14_t_hit_out_hit_orig_x_d41d[tr_pipelinec_gen_c_l316_c23_9cc6] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_hit_out_hit_orig_x_d41d_tr_pipelinec_gen_c_l316_c23_9cc6_return_output := VAR_hit.hit.orig.x;

     -- object_coord_to_float3[tr_pipelinec_gen_c_l315_c25_4b5c] LATENCY=3
     -- Inputs
     object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_a <= VAR_object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_a;

     -- Submodule level 1
     VAR_BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_left := VAR_CONST_REF_RD_float_8_14_t_hit_out_borderdist_d41d_tr_pipelinec_gen_c_l326_c6_23d8_return_output;
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left := VAR_CONST_REF_RD_float_8_14_t_hit_out_hit_orig_x_d41d_tr_pipelinec_gen_c_l316_c23_9cc6_return_output;
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left := VAR_CONST_REF_RD_float_8_14_t_hit_out_hit_orig_z_d41d_tr_pipelinec_gen_c_l317_c23_8ffb_return_output;
     -- BIN_OP_LT[tr_pipelinec_gen_c_l326_c6_f231] LATENCY=1
     -- Inputs
     BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_left <= VAR_BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_left;
     BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_right <= VAR_BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_right;

     -- Write to comb signals
     COMB_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left <= VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left;
     COMB_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left <= VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left := REG_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left;
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left := REG_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left;
     -- Submodule outputs
     VAR_BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_return_output := BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_return_output;

     -- Submodule level 0
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := VAR_BIN_OP_LT_tr_pipelinec_gen_c_l326_c6_f231_return_output;
     -- Write to comb signals
     COMB_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left <= VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left;
     COMB_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left <= VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left;
     COMB_STAGE1_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 2 then
     -- Read from prev stage
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left := REG_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left;
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left := REG_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left;
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE1_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;

     -- Write to comb signals
     COMB_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left <= VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left;
     COMB_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left <= VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left;
     COMB_STAGE2_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 3 then
     -- Read from prev stage
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left := REG_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left;
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left := REG_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left;
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE2_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Submodule outputs
     VAR_object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_return_output := object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_return_output;

     -- Submodule level 0
     -- CONST_REF_RD_float_8_14_t_float3_z_d41d[tr_pipelinec_gen_c_l317_c40_8833] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l317_c40_8833_return_output := VAR_object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_return_output.z;

     -- CONST_REF_RD_float_8_14_t_float3_x_d41d[tr_pipelinec_gen_c_l316_c40_1d2b] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l316_c40_1d2b_return_output := VAR_object_coord_to_float3_tr_pipelinec_gen_c_l315_c25_4b5c_return_output.x;

     -- Submodule level 1
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_right := VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l316_c40_1d2b_return_output;
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_right := VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l317_c40_8833_return_output;
     -- BIN_OP_MINUS[tr_pipelinec_gen_c_l317_c23_e589] LATENCY=6
     -- Inputs
     BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left <= VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left;
     BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_right <= VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_right;

     -- BIN_OP_MINUS[tr_pipelinec_gen_c_l316_c23_1457] LATENCY=6
     -- Inputs
     BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left <= VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left;
     BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_right <= VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_right;

     -- Write to comb signals
     COMB_STAGE3_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE3_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;

     -- Write to comb signals
     COMB_STAGE4_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE4_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;

     -- Write to comb signals
     COMB_STAGE5_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 6 then
     -- Read from prev stage
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE5_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;

     -- Write to comb signals
     COMB_STAGE6_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 7 then
     -- Read from prev stage
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE6_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;

     -- Write to comb signals
     COMB_STAGE7_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 8 then
     -- Read from prev stage
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE7_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;

     -- Write to comb signals
     COMB_STAGE8_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 9 then
     -- Read from prev stage
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE8_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Submodule outputs
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_return_output := BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_return_output;
     VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_return_output := BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_return_output;

     -- Submodule level 0
     VAR_BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_left := VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_return_output;
     VAR_BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_left := VAR_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_return_output;
     -- BIN_OP_SL[tr_pipelinec_gen_c_l318_c23_aae2] LATENCY=0
     -- Inputs
     BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_left <= VAR_BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_left;
     BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_right <= VAR_BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_right;
     -- Outputs
     VAR_BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_return_output := BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_return_output;

     -- BIN_OP_SL[tr_pipelinec_gen_c_l319_c23_d71b] LATENCY=0
     -- Inputs
     BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_left <= VAR_BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_left;
     BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_right <= VAR_BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_right;
     -- Outputs
     VAR_BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_return_output := BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_return_output;

     -- Submodule level 1
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_a := VAR_BIN_OP_SL_tr_pipelinec_gen_c_l318_c23_aae2_return_output;
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_a := VAR_BIN_OP_SL_tr_pipelinec_gen_c_l319_c23_d71b_return_output;
     -- fixed_make_from_float[tr_pipelinec_gen_c_l321_c24_3d27] LATENCY=2
     -- Inputs
     fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_a <= VAR_fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_a;

     -- fixed_make_from_float[tr_pipelinec_gen_c_l320_c24_10ac] LATENCY=2
     -- Inputs
     fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_a <= VAR_fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_a;

     -- Write to comb signals
     COMB_STAGE9_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 10 then
     -- Read from prev stage
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE9_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;

     -- Write to comb signals
     COMB_STAGE10_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 11 then
     -- Read from prev stage
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE10_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Submodule outputs
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_return_output := fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_return_output;
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_return_output := fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_return_output;

     -- Submodule level 0
     VAR_round16_tr_pipelinec_gen_c_l320_c16_49b5_x := VAR_fixed_make_from_float_tr_pipelinec_gen_c_l320_c24_10ac_return_output;
     VAR_round16_tr_pipelinec_gen_c_l321_c16_80f5_x := VAR_fixed_make_from_float_tr_pipelinec_gen_c_l321_c24_3d27_return_output;
     -- round16[tr_pipelinec_gen_c_l320_c16_49b5] LATENCY=0
     -- Inputs
     round16_tr_pipelinec_gen_c_l320_c16_49b5_x <= VAR_round16_tr_pipelinec_gen_c_l320_c16_49b5_x;
     -- Outputs
     VAR_round16_tr_pipelinec_gen_c_l320_c16_49b5_return_output := round16_tr_pipelinec_gen_c_l320_c16_49b5_return_output;

     -- round16[tr_pipelinec_gen_c_l321_c16_80f5] LATENCY=0
     -- Inputs
     round16_tr_pipelinec_gen_c_l321_c16_80f5_x <= VAR_round16_tr_pipelinec_gen_c_l321_c16_80f5_x;
     -- Outputs
     VAR_round16_tr_pipelinec_gen_c_l321_c16_80f5_return_output := round16_tr_pipelinec_gen_c_l321_c16_80f5_return_output;

     -- Submodule level 1
     VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_left := VAR_round16_tr_pipelinec_gen_c_l320_c16_49b5_return_output;
     VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_right := VAR_round16_tr_pipelinec_gen_c_l321_c16_80f5_return_output;
     -- BIN_OP_XOR[tr_pipelinec_gen_c_l324_c14_3e0a] LATENCY=0
     -- Inputs
     BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_left <= VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_left;
     BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_right <= VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_right;
     -- Outputs
     VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_return_output := BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_return_output;

     -- Submodule level 2
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_left := VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l324_c14_3e0a_return_output;
     -- BIN_OP_AND[tr_pipelinec_gen_c_l324_c14_2d4f] LATENCY=1
     -- Inputs
     BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_left <= VAR_BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_left;
     BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_right <= VAR_BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_right;

     -- Write to comb signals
     COMB_STAGE11_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 12 then
     -- Read from prev stage
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE11_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Submodule outputs
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_return_output := BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_return_output;

     -- Submodule level 0
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_left := VAR_BIN_OP_AND_tr_pipelinec_gen_c_l324_c14_2d4f_return_output;
     -- BIN_OP_NEQ[tr_pipelinec_gen_c_l324_c14_76ed] LATENCY=0
     -- Inputs
     BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_left <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_left;
     BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_right <= VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_right;
     -- Outputs
     VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_return_output := BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_return_output;

     -- Submodule level 1
     VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_cond := VAR_BIN_OP_NEQ_tr_pipelinec_gen_c_l324_c14_76ed_return_output;
     -- MUX[tr_pipelinec_gen_c_l324_c14_e531] LATENCY=1
     -- Inputs
     MUX_tr_pipelinec_gen_c_l324_c14_e531_cond <= VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_cond;
     MUX_tr_pipelinec_gen_c_l324_c14_e531_iftrue <= VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_iftrue;
     MUX_tr_pipelinec_gen_c_l324_c14_e531_iffalse <= VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_iffalse;

     -- Write to comb signals
     COMB_STAGE12_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
   elsif STAGE = 13 then
     -- Read from prev stage
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond := REG_STAGE12_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Submodule outputs
     VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_return_output := MUX_tr_pipelinec_gen_c_l324_c14_e531_return_output;

     -- Submodule level 0
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iffalse := VAR_MUX_tr_pipelinec_gen_c_l324_c14_e531_return_output;
     -- rcolor_MUX[tr_pipelinec_gen_c_l326_c3_9b04] LATENCY=0
     -- Inputs
     rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iftrue <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iftrue;
     rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iffalse <= VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_iffalse;
     -- Outputs
     VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_return_output := rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_return_output;

     -- Submodule level 1
     VAR_return_output := VAR_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
     -- Stage 0
     REG_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left <= COMB_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left;
     REG_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left <= COMB_STAGE0_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left;
     -- Stage 1
     REG_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left <= COMB_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left;
     REG_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left <= COMB_STAGE1_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left;
     REG_STAGE1_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE1_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 2
     REG_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left <= COMB_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l316_c23_1457_left;
     REG_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left <= COMB_STAGE2_BIN_OP_MINUS_tr_pipelinec_gen_c_l317_c23_e589_left;
     REG_STAGE2_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE2_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 3
     REG_STAGE3_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE3_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 4
     REG_STAGE4_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE4_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 5
     REG_STAGE5_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE5_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 6
     REG_STAGE6_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE6_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 7
     REG_STAGE7_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE7_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 8
     REG_STAGE8_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE8_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 9
     REG_STAGE9_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE9_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 10
     REG_STAGE10_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE10_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 11
     REG_STAGE11_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE11_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
     -- Stage 12
     REG_STAGE12_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond <= COMB_STAGE12_rcolor_MUX_tr_pipelinec_gen_c_l326_c3_9b04_cond;
 end if;
end process;

end arch;
