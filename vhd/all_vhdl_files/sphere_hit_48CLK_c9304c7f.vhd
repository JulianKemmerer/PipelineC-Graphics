-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.02444732625204207, 0.05442387142483114, 0.08440041659762061, 0.11437696177041067, 0.14435350694319934, 0.17433005211598862, 0.2043065972887779, 0.23428314246156717, 0.26425968763435564, 0.2942362328071449, 0.3242127779799346, 0.35418932315272383, 0.3841658683255129, 0.4141424134983012, 0.44411895867109147, 0.4740955038438798, 0.5040720490166688, 0.534048594189459, 0.5640251393622477, 0.5940016845350377, 0.6239782297078263, 0.6539547748806158, 0.6839313200534053, 0.7139078652261939, 0.7438844103989838, 0.7738609555717725, 0.8038375007445612, 0.8338140459173506, 0.8637905910901397, 0.8937671362629288, 0.9237436814357186, 0.9537202266085077, 0.9836967717812972]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 6
entity sphere_hit_48CLK_c9304c7f is
port(
 clk : in std_logic;
 hit : in unsigned(0 downto 0);
 center : in float3;
 hitin : in point_and_dir;
 t : in std_logic_vector(22 downto 0);
 diff : in std_logic_vector(22 downto 0);
 return_output : out hit_out);
end sphere_hit_48CLK_c9304c7f;
architecture arch of sphere_hit_48CLK_c9304c7f is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 48;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_diff : std_logic_vector(22 downto 0);
signal REG_STAGE0_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE0_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left : float3;
signal REG_STAGE0_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
signal COMB_STAGE0_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE0_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE0_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left : float3;
signal COMB_STAGE0_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
-- Stage 1
signal REG_STAGE1_diff : std_logic_vector(22 downto 0);
signal REG_STAGE1_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE1_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left : float3;
signal REG_STAGE1_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
signal COMB_STAGE1_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE1_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE1_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left : float3;
signal COMB_STAGE1_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
-- Stage 2
signal REG_STAGE2_diff : std_logic_vector(22 downto 0);
signal REG_STAGE2_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE2_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left : float3;
signal REG_STAGE2_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
signal COMB_STAGE2_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE2_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE2_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left : float3;
signal COMB_STAGE2_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
-- Stage 3
signal REG_STAGE3_diff : std_logic_vector(22 downto 0);
signal REG_STAGE3_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE3_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
signal COMB_STAGE3_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE3_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE3_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
-- Stage 4
signal REG_STAGE4_diff : std_logic_vector(22 downto 0);
signal REG_STAGE4_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE4_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
signal COMB_STAGE4_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE4_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE4_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
-- Stage 5
signal REG_STAGE5_diff : std_logic_vector(22 downto 0);
signal REG_STAGE5_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE5_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
signal COMB_STAGE5_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE5_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE5_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
-- Stage 6
signal REG_STAGE6_diff : std_logic_vector(22 downto 0);
signal REG_STAGE6_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE6_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
signal COMB_STAGE6_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE6_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE6_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
-- Stage 7
signal REG_STAGE7_diff : std_logic_vector(22 downto 0);
signal REG_STAGE7_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE7_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
signal COMB_STAGE7_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE7_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE7_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
-- Stage 8
signal REG_STAGE8_diff : std_logic_vector(22 downto 0);
signal REG_STAGE8_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE8_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
signal COMB_STAGE8_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE8_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE8_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
-- Stage 9
signal REG_STAGE9_diff : std_logic_vector(22 downto 0);
signal REG_STAGE9_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE9_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE9_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE9_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE9_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 10
signal REG_STAGE10_diff : std_logic_vector(22 downto 0);
signal REG_STAGE10_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE10_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE10_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE10_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE10_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 11
signal REG_STAGE11_diff : std_logic_vector(22 downto 0);
signal REG_STAGE11_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE11_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE11_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE11_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE11_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 12
signal REG_STAGE12_diff : std_logic_vector(22 downto 0);
signal REG_STAGE12_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE12_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE12_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE12_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE12_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 13
signal REG_STAGE13_diff : std_logic_vector(22 downto 0);
signal REG_STAGE13_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE13_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE13_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE13_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE13_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 14
signal REG_STAGE14_diff : std_logic_vector(22 downto 0);
signal REG_STAGE14_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE14_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE14_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE14_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE14_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 15
signal REG_STAGE15_diff : std_logic_vector(22 downto 0);
signal REG_STAGE15_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE15_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE15_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE15_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE15_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 16
signal REG_STAGE16_diff : std_logic_vector(22 downto 0);
signal REG_STAGE16_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE16_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE16_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE16_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE16_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 17
signal REG_STAGE17_diff : std_logic_vector(22 downto 0);
signal REG_STAGE17_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE17_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE17_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE17_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE17_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 18
signal REG_STAGE18_diff : std_logic_vector(22 downto 0);
signal REG_STAGE18_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE18_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE18_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE18_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE18_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 19
signal REG_STAGE19_diff : std_logic_vector(22 downto 0);
signal REG_STAGE19_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE19_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE19_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE19_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE19_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 20
signal REG_STAGE20_diff : std_logic_vector(22 downto 0);
signal REG_STAGE20_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE20_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE20_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE20_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE20_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 21
signal REG_STAGE21_diff : std_logic_vector(22 downto 0);
signal REG_STAGE21_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE21_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE21_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE21_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE21_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 22
signal REG_STAGE22_diff : std_logic_vector(22 downto 0);
signal REG_STAGE22_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE22_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE22_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE22_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE22_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 23
signal REG_STAGE23_diff : std_logic_vector(22 downto 0);
signal REG_STAGE23_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE23_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE23_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE23_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE23_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 24
signal REG_STAGE24_diff : std_logic_vector(22 downto 0);
signal REG_STAGE24_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE24_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE24_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE24_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE24_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 25
signal REG_STAGE25_diff : std_logic_vector(22 downto 0);
signal REG_STAGE25_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE25_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE25_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE25_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE25_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 26
signal REG_STAGE26_diff : std_logic_vector(22 downto 0);
signal REG_STAGE26_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE26_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE26_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE26_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE26_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 27
signal REG_STAGE27_diff : std_logic_vector(22 downto 0);
signal REG_STAGE27_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE27_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE27_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE27_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE27_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 28
signal REG_STAGE28_diff : std_logic_vector(22 downto 0);
signal REG_STAGE28_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE28_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE28_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE28_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE28_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 29
signal REG_STAGE29_diff : std_logic_vector(22 downto 0);
signal REG_STAGE29_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE29_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE29_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE29_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE29_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 30
signal REG_STAGE30_diff : std_logic_vector(22 downto 0);
signal REG_STAGE30_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE30_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE30_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE30_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE30_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 31
signal REG_STAGE31_diff : std_logic_vector(22 downto 0);
signal REG_STAGE31_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE31_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE31_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE31_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE31_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 32
signal REG_STAGE32_diff : std_logic_vector(22 downto 0);
signal REG_STAGE32_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE32_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE32_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE32_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE32_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 33
signal REG_STAGE33_diff : std_logic_vector(22 downto 0);
signal REG_STAGE33_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE33_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE33_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE33_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE33_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 34
signal REG_STAGE34_diff : std_logic_vector(22 downto 0);
signal REG_STAGE34_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE34_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE34_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE34_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE34_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 35
signal REG_STAGE35_diff : std_logic_vector(22 downto 0);
signal REG_STAGE35_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE35_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE35_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE35_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE35_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 36
signal REG_STAGE36_diff : std_logic_vector(22 downto 0);
signal REG_STAGE36_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE36_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE36_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE36_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE36_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 37
signal REG_STAGE37_diff : std_logic_vector(22 downto 0);
signal REG_STAGE37_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE37_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE37_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE37_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE37_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 38
signal REG_STAGE38_diff : std_logic_vector(22 downto 0);
signal REG_STAGE38_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE38_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE38_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE38_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE38_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 39
signal REG_STAGE39_diff : std_logic_vector(22 downto 0);
signal REG_STAGE39_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE39_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE39_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE39_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE39_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 40
signal REG_STAGE40_diff : std_logic_vector(22 downto 0);
signal REG_STAGE40_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE40_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE40_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE40_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE40_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 41
signal REG_STAGE41_diff : std_logic_vector(22 downto 0);
signal REG_STAGE41_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE41_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE41_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE41_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE41_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 42
signal REG_STAGE42_diff : std_logic_vector(22 downto 0);
signal REG_STAGE42_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE42_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE42_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE42_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE42_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 43
signal REG_STAGE43_diff : std_logic_vector(22 downto 0);
signal REG_STAGE43_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE43_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE43_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE43_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE43_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 44
signal REG_STAGE44_diff : std_logic_vector(22 downto 0);
signal REG_STAGE44_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE44_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE44_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE44_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE44_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 45
signal REG_STAGE45_diff : std_logic_vector(22 downto 0);
signal REG_STAGE45_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE45_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE45_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE45_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE45_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 46
signal REG_STAGE46_diff : std_logic_vector(22 downto 0);
signal REG_STAGE46_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE46_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE46_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE46_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE46_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Stage 47
signal REG_STAGE47_diff : std_logic_vector(22 downto 0);
signal REG_STAGE47_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal REG_STAGE47_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
signal COMB_STAGE47_diff : std_logic_vector(22 downto 0);
signal COMB_STAGE47_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
signal COMB_STAGE47_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
-- Each function instance gets signals
-- MUX[tr_pipelinec_gen_c_l231_c17_7c9c]
signal MUX_tr_pipelinec_gen_c_l231_c17_7c9c_cond : unsigned(0 downto 0);
signal MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iftrue : std_logic_vector(22 downto 0);
signal MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iffalse : std_logic_vector(22 downto 0);
signal MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);

-- float3_mul_float[tr_pipelinec_gen_c_l233_c46_a525]
signal float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_left : float3;
signal float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_right : std_logic_vector(22 downto 0);
signal float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_return_output : float3;

-- float3_add[tr_pipelinec_gen_c_l233_c23_fde0]
signal float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left : float3;
signal float3_add_tr_pipelinec_gen_c_l233_c23_fde0_right : float3;
signal float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;

-- float3_sub[tr_pipelinec_gen_c_l234_c32_1f83]
signal float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_left : float3;
signal float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
signal float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_return_output : float3;

-- normalize[tr_pipelinec_gen_c_l234_c22_6385]
signal normalize_tr_pipelinec_gen_c_l234_c22_6385_v : float3;
signal normalize_tr_pipelinec_gen_c_l234_c22_6385_return_output : float3;

function CONST_REF_RD_hit_out_hit_out_9070( ref_toks_0 : std_logic_vector;
 ref_toks_1 : float3;
 ref_toks_2 : float3;
 ref_toks_3 : std_logic_vector) return hit_out is
 
  variable base : hit_out; 
  variable return_output : hit_out;
begin
      base.dist := ref_toks_0;
      base.hit.orig := ref_toks_1;
      base.hit.dir := ref_toks_2;
      base.borderdist := ref_toks_3;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- MUX_tr_pipelinec_gen_c_l231_c17_7c9c
MUX_tr_pipelinec_gen_c_l231_c17_7c9c : entity work.MUX_uint1_t_float_8_14_t_float_8_14_t_0CLK_de264c78 port map (
MUX_tr_pipelinec_gen_c_l231_c17_7c9c_cond,
MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iftrue,
MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iffalse,
MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output);

-- float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525
float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525 : entity work.float3_mul_float_3CLK_2dd35d55 port map (
clk,
float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_left,
float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_right,
float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_return_output);

-- float3_add_tr_pipelinec_gen_c_l233_c23_fde0
float3_add_tr_pipelinec_gen_c_l233_c23_fde0 : entity work.float3_add_6CLK_561c4913 port map (
clk,
float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left,
float3_add_tr_pipelinec_gen_c_l233_c23_fde0_right,
float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output);

-- float3_sub_tr_pipelinec_gen_c_l234_c32_1f83
float3_sub_tr_pipelinec_gen_c_l234_c32_1f83 : entity work.float3_sub_6CLK_b52374ea port map (
clk,
float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_left,
float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right,
float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_return_output);

-- normalize_tr_pipelinec_gen_c_l234_c22_6385
normalize_tr_pipelinec_gen_c_l234_c22_6385 : entity work.normalize_33CLK_80c5594a port map (
clk,
normalize_tr_pipelinec_gen_c_l234_c22_6385_v,
normalize_tr_pipelinec_gen_c_l234_c22_6385_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 hit,
 center,
 hitin,
 t,
 diff,
 -- Registers
 -- Stage 0
 REG_STAGE0_diff,
 REG_STAGE0_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE0_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left,
 REG_STAGE0_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right,
 -- Stage 1
 REG_STAGE1_diff,
 REG_STAGE1_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE1_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left,
 REG_STAGE1_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right,
 -- Stage 2
 REG_STAGE2_diff,
 REG_STAGE2_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE2_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left,
 REG_STAGE2_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right,
 -- Stage 3
 REG_STAGE3_diff,
 REG_STAGE3_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE3_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right,
 -- Stage 4
 REG_STAGE4_diff,
 REG_STAGE4_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE4_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right,
 -- Stage 5
 REG_STAGE5_diff,
 REG_STAGE5_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE5_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right,
 -- Stage 6
 REG_STAGE6_diff,
 REG_STAGE6_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE6_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right,
 -- Stage 7
 REG_STAGE7_diff,
 REG_STAGE7_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE7_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right,
 -- Stage 8
 REG_STAGE8_diff,
 REG_STAGE8_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE8_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right,
 -- Stage 9
 REG_STAGE9_diff,
 REG_STAGE9_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE9_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 10
 REG_STAGE10_diff,
 REG_STAGE10_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE10_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 11
 REG_STAGE11_diff,
 REG_STAGE11_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE11_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 12
 REG_STAGE12_diff,
 REG_STAGE12_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE12_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 13
 REG_STAGE13_diff,
 REG_STAGE13_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE13_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 14
 REG_STAGE14_diff,
 REG_STAGE14_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE14_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 15
 REG_STAGE15_diff,
 REG_STAGE15_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE15_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 16
 REG_STAGE16_diff,
 REG_STAGE16_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE16_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 17
 REG_STAGE17_diff,
 REG_STAGE17_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE17_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 18
 REG_STAGE18_diff,
 REG_STAGE18_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE18_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 19
 REG_STAGE19_diff,
 REG_STAGE19_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE19_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 20
 REG_STAGE20_diff,
 REG_STAGE20_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE20_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 21
 REG_STAGE21_diff,
 REG_STAGE21_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE21_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 22
 REG_STAGE22_diff,
 REG_STAGE22_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE22_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 23
 REG_STAGE23_diff,
 REG_STAGE23_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE23_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 24
 REG_STAGE24_diff,
 REG_STAGE24_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE24_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 25
 REG_STAGE25_diff,
 REG_STAGE25_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE25_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 26
 REG_STAGE26_diff,
 REG_STAGE26_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE26_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 27
 REG_STAGE27_diff,
 REG_STAGE27_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE27_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 28
 REG_STAGE28_diff,
 REG_STAGE28_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE28_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 29
 REG_STAGE29_diff,
 REG_STAGE29_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE29_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 30
 REG_STAGE30_diff,
 REG_STAGE30_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE30_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 31
 REG_STAGE31_diff,
 REG_STAGE31_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE31_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 32
 REG_STAGE32_diff,
 REG_STAGE32_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE32_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 33
 REG_STAGE33_diff,
 REG_STAGE33_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE33_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 34
 REG_STAGE34_diff,
 REG_STAGE34_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE34_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 35
 REG_STAGE35_diff,
 REG_STAGE35_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE35_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 36
 REG_STAGE36_diff,
 REG_STAGE36_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE36_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 37
 REG_STAGE37_diff,
 REG_STAGE37_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE37_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 38
 REG_STAGE38_diff,
 REG_STAGE38_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE38_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 39
 REG_STAGE39_diff,
 REG_STAGE39_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE39_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 40
 REG_STAGE40_diff,
 REG_STAGE40_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE40_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 41
 REG_STAGE41_diff,
 REG_STAGE41_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE41_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 42
 REG_STAGE42_diff,
 REG_STAGE42_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE42_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 43
 REG_STAGE43_diff,
 REG_STAGE43_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE43_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 44
 REG_STAGE44_diff,
 REG_STAGE44_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE44_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 45
 REG_STAGE45_diff,
 REG_STAGE45_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE45_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 46
 REG_STAGE46_diff,
 REG_STAGE46_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE46_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- Stage 47
 REG_STAGE47_diff,
 REG_STAGE47_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 REG_STAGE47_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 -- All submodule outputs
 MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
 float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_return_output,
 float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
 float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_return_output,
 normalize_tr_pipelinec_gen_c_l234_c22_6385_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : hit_out;
 variable VAR_hit : unsigned(0 downto 0);
 variable VAR_center : float3;
 variable VAR_hitin : point_and_dir;
 variable VAR_t : std_logic_vector(22 downto 0);
 variable VAR_diff : std_logic_vector(22 downto 0);
 variable VAR_hitout : hit_out;
 variable VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_cond : unsigned(0 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iftrue : std_logic_vector(22 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iffalse : std_logic_vector(22 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output : std_logic_vector(22 downto 0);
 variable VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left : float3;
 variable VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_right : float3;
 variable VAR_CONST_REF_RD_float3_point_and_dir_orig_d41d_tr_pipelinec_gen_c_l233_c34_2931_return_output : float3;
 variable VAR_float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_left : float3;
 variable VAR_float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_right : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float3_point_and_dir_dir_d41d_tr_pipelinec_gen_c_l233_c63_af29_return_output : float3;
 variable VAR_float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_return_output : float3;
 variable VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output : float3;
 variable VAR_normalize_tr_pipelinec_gen_c_l234_c22_6385_v : float3;
 variable VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_left : float3;
 variable VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right : float3;
 variable VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_return_output : float3;
 variable VAR_normalize_tr_pipelinec_gen_c_l234_c22_6385_return_output : float3;
 variable VAR_CONST_REF_RD_hit_out_hit_out_9070_tr_pipelinec_gen_c_l237_c10_d66a_return_output : hit_out;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iffalse := to_slv(to_float(1.000000e+23, 8, 14));

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_hit := hit;
     VAR_center := center;
     VAR_hitin := hitin;
     VAR_t := t;
     VAR_diff := diff;

     -- Submodule level 0
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right := VAR_center;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_cond := VAR_hit;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iftrue := VAR_t;
     -- MUX[tr_pipelinec_gen_c_l231_c17_7c9c] LATENCY=0
     -- Inputs
     MUX_tr_pipelinec_gen_c_l231_c17_7c9c_cond <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_cond;
     MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iftrue <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iftrue;
     MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iffalse <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_iffalse;
     -- Outputs
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;

     -- CONST_REF_RD_float3_point_and_dir_orig_d41d[tr_pipelinec_gen_c_l233_c34_2931] LATENCY=0
     VAR_CONST_REF_RD_float3_point_and_dir_orig_d41d_tr_pipelinec_gen_c_l233_c34_2931_return_output := VAR_hitin.orig;

     -- CONST_REF_RD_float3_point_and_dir_dir_d41d[tr_pipelinec_gen_c_l233_c63_af29] LATENCY=0
     VAR_CONST_REF_RD_float3_point_and_dir_dir_d41d_tr_pipelinec_gen_c_l233_c63_af29_return_output := VAR_hitin.dir;

     -- Submodule level 1
     VAR_float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_left := VAR_CONST_REF_RD_float3_point_and_dir_dir_d41d_tr_pipelinec_gen_c_l233_c63_af29_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left := VAR_CONST_REF_RD_float3_point_and_dir_orig_d41d_tr_pipelinec_gen_c_l233_c34_2931_return_output;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_right := VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     -- float3_mul_float[tr_pipelinec_gen_c_l233_c46_a525] LATENCY=3
     -- Inputs
     float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_left;
     float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_right <= VAR_float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_right;

     -- Write to comb signals
     COMB_STAGE0_diff <= VAR_diff;
     COMB_STAGE0_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE0_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left;
     COMB_STAGE0_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_diff := REG_STAGE0_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE0_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left := REG_STAGE0_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left;
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right := REG_STAGE0_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;

     -- Write to comb signals
     COMB_STAGE1_diff <= VAR_diff;
     COMB_STAGE1_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE1_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left;
     COMB_STAGE1_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
   elsif STAGE = 2 then
     -- Read from prev stage
     VAR_diff := REG_STAGE1_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE1_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left := REG_STAGE1_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left;
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right := REG_STAGE1_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;

     -- Write to comb signals
     COMB_STAGE2_diff <= VAR_diff;
     COMB_STAGE2_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE2_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left;
     COMB_STAGE2_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
   elsif STAGE = 3 then
     -- Read from prev stage
     VAR_diff := REG_STAGE2_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE2_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left := REG_STAGE2_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left;
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right := REG_STAGE2_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Submodule outputs
     VAR_float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_return_output := float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_return_output;

     -- Submodule level 0
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_right := VAR_float3_mul_float_tr_pipelinec_gen_c_l233_c46_a525_return_output;
     -- float3_add[tr_pipelinec_gen_c_l233_c23_fde0] LATENCY=6
     -- Inputs
     float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left;
     float3_add_tr_pipelinec_gen_c_l233_c23_fde0_right <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_right;

     -- Write to comb signals
     COMB_STAGE3_diff <= VAR_diff;
     COMB_STAGE3_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE3_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_diff := REG_STAGE3_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE3_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right := REG_STAGE3_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;

     -- Write to comb signals
     COMB_STAGE4_diff <= VAR_diff;
     COMB_STAGE4_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE4_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_diff := REG_STAGE4_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE4_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right := REG_STAGE4_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;

     -- Write to comb signals
     COMB_STAGE5_diff <= VAR_diff;
     COMB_STAGE5_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE5_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
   elsif STAGE = 6 then
     -- Read from prev stage
     VAR_diff := REG_STAGE5_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE5_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right := REG_STAGE5_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;

     -- Write to comb signals
     COMB_STAGE6_diff <= VAR_diff;
     COMB_STAGE6_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE6_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
   elsif STAGE = 7 then
     -- Read from prev stage
     VAR_diff := REG_STAGE6_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE6_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right := REG_STAGE6_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;

     -- Write to comb signals
     COMB_STAGE7_diff <= VAR_diff;
     COMB_STAGE7_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE7_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
   elsif STAGE = 8 then
     -- Read from prev stage
     VAR_diff := REG_STAGE7_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE7_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right := REG_STAGE7_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;

     -- Write to comb signals
     COMB_STAGE8_diff <= VAR_diff;
     COMB_STAGE8_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE8_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
   elsif STAGE = 9 then
     -- Read from prev stage
     VAR_diff := REG_STAGE8_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE8_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right := REG_STAGE8_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Submodule outputs
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Submodule level 0
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_left := VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- float3_sub[tr_pipelinec_gen_c_l234_c32_1f83] LATENCY=6
     -- Inputs
     float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_left <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_left;
     float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;

     -- Write to comb signals
     COMB_STAGE9_diff <= VAR_diff;
     COMB_STAGE9_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE9_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 10 then
     -- Read from prev stage
     VAR_diff := REG_STAGE9_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE9_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE9_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE10_diff <= VAR_diff;
     COMB_STAGE10_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE10_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 11 then
     -- Read from prev stage
     VAR_diff := REG_STAGE10_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE10_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE10_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE11_diff <= VAR_diff;
     COMB_STAGE11_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE11_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 12 then
     -- Read from prev stage
     VAR_diff := REG_STAGE11_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE11_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE11_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE12_diff <= VAR_diff;
     COMB_STAGE12_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE12_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 13 then
     -- Read from prev stage
     VAR_diff := REG_STAGE12_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE12_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE12_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE13_diff <= VAR_diff;
     COMB_STAGE13_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE13_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 14 then
     -- Read from prev stage
     VAR_diff := REG_STAGE13_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE13_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE13_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE14_diff <= VAR_diff;
     COMB_STAGE14_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE14_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 15 then
     -- Read from prev stage
     VAR_diff := REG_STAGE14_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE14_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE14_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Submodule outputs
     VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_return_output := float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_return_output;

     -- Submodule level 0
     VAR_normalize_tr_pipelinec_gen_c_l234_c22_6385_v := VAR_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_return_output;
     -- normalize[tr_pipelinec_gen_c_l234_c22_6385] LATENCY=33
     -- Inputs
     normalize_tr_pipelinec_gen_c_l234_c22_6385_v <= VAR_normalize_tr_pipelinec_gen_c_l234_c22_6385_v;

     -- Write to comb signals
     COMB_STAGE15_diff <= VAR_diff;
     COMB_STAGE15_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE15_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 16 then
     -- Read from prev stage
     VAR_diff := REG_STAGE15_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE15_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE15_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE16_diff <= VAR_diff;
     COMB_STAGE16_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE16_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 17 then
     -- Read from prev stage
     VAR_diff := REG_STAGE16_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE16_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE16_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE17_diff <= VAR_diff;
     COMB_STAGE17_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE17_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 18 then
     -- Read from prev stage
     VAR_diff := REG_STAGE17_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE17_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE17_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE18_diff <= VAR_diff;
     COMB_STAGE18_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE18_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 19 then
     -- Read from prev stage
     VAR_diff := REG_STAGE18_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE18_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE18_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE19_diff <= VAR_diff;
     COMB_STAGE19_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE19_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 20 then
     -- Read from prev stage
     VAR_diff := REG_STAGE19_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE19_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE19_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE20_diff <= VAR_diff;
     COMB_STAGE20_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE20_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 21 then
     -- Read from prev stage
     VAR_diff := REG_STAGE20_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE20_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE20_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE21_diff <= VAR_diff;
     COMB_STAGE21_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE21_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 22 then
     -- Read from prev stage
     VAR_diff := REG_STAGE21_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE21_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE21_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE22_diff <= VAR_diff;
     COMB_STAGE22_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE22_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 23 then
     -- Read from prev stage
     VAR_diff := REG_STAGE22_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE22_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE22_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE23_diff <= VAR_diff;
     COMB_STAGE23_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE23_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 24 then
     -- Read from prev stage
     VAR_diff := REG_STAGE23_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE23_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE23_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE24_diff <= VAR_diff;
     COMB_STAGE24_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE24_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 25 then
     -- Read from prev stage
     VAR_diff := REG_STAGE24_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE24_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE24_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE25_diff <= VAR_diff;
     COMB_STAGE25_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE25_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 26 then
     -- Read from prev stage
     VAR_diff := REG_STAGE25_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE25_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE25_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE26_diff <= VAR_diff;
     COMB_STAGE26_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE26_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 27 then
     -- Read from prev stage
     VAR_diff := REG_STAGE26_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE26_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE26_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE27_diff <= VAR_diff;
     COMB_STAGE27_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE27_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 28 then
     -- Read from prev stage
     VAR_diff := REG_STAGE27_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE27_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE27_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE28_diff <= VAR_diff;
     COMB_STAGE28_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE28_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 29 then
     -- Read from prev stage
     VAR_diff := REG_STAGE28_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE28_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE28_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE29_diff <= VAR_diff;
     COMB_STAGE29_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE29_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 30 then
     -- Read from prev stage
     VAR_diff := REG_STAGE29_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE29_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE29_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE30_diff <= VAR_diff;
     COMB_STAGE30_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE30_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 31 then
     -- Read from prev stage
     VAR_diff := REG_STAGE30_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE30_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE30_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE31_diff <= VAR_diff;
     COMB_STAGE31_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE31_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 32 then
     -- Read from prev stage
     VAR_diff := REG_STAGE31_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE31_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE31_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE32_diff <= VAR_diff;
     COMB_STAGE32_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE32_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 33 then
     -- Read from prev stage
     VAR_diff := REG_STAGE32_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE32_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE32_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE33_diff <= VAR_diff;
     COMB_STAGE33_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE33_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 34 then
     -- Read from prev stage
     VAR_diff := REG_STAGE33_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE33_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE33_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE34_diff <= VAR_diff;
     COMB_STAGE34_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE34_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 35 then
     -- Read from prev stage
     VAR_diff := REG_STAGE34_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE34_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE34_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE35_diff <= VAR_diff;
     COMB_STAGE35_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE35_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 36 then
     -- Read from prev stage
     VAR_diff := REG_STAGE35_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE35_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE35_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE36_diff <= VAR_diff;
     COMB_STAGE36_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE36_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 37 then
     -- Read from prev stage
     VAR_diff := REG_STAGE36_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE36_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE36_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE37_diff <= VAR_diff;
     COMB_STAGE37_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE37_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 38 then
     -- Read from prev stage
     VAR_diff := REG_STAGE37_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE37_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE37_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE38_diff <= VAR_diff;
     COMB_STAGE38_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE38_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 39 then
     -- Read from prev stage
     VAR_diff := REG_STAGE38_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE38_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE38_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE39_diff <= VAR_diff;
     COMB_STAGE39_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE39_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 40 then
     -- Read from prev stage
     VAR_diff := REG_STAGE39_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE39_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE39_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE40_diff <= VAR_diff;
     COMB_STAGE40_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE40_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 41 then
     -- Read from prev stage
     VAR_diff := REG_STAGE40_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE40_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE40_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE41_diff <= VAR_diff;
     COMB_STAGE41_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE41_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 42 then
     -- Read from prev stage
     VAR_diff := REG_STAGE41_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE41_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE41_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE42_diff <= VAR_diff;
     COMB_STAGE42_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE42_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 43 then
     -- Read from prev stage
     VAR_diff := REG_STAGE42_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE42_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE42_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE43_diff <= VAR_diff;
     COMB_STAGE43_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE43_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 44 then
     -- Read from prev stage
     VAR_diff := REG_STAGE43_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE43_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE43_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE44_diff <= VAR_diff;
     COMB_STAGE44_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE44_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 45 then
     -- Read from prev stage
     VAR_diff := REG_STAGE44_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE44_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE44_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE45_diff <= VAR_diff;
     COMB_STAGE45_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE45_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 46 then
     -- Read from prev stage
     VAR_diff := REG_STAGE45_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE45_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE45_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE46_diff <= VAR_diff;
     COMB_STAGE46_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE46_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 47 then
     -- Read from prev stage
     VAR_diff := REG_STAGE46_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE46_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE46_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;

     -- Write to comb signals
     COMB_STAGE47_diff <= VAR_diff;
     COMB_STAGE47_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     COMB_STAGE47_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
   elsif STAGE = 48 then
     -- Read from prev stage
     VAR_diff := REG_STAGE47_diff;
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output := REG_STAGE47_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output := REG_STAGE47_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Submodule outputs
     VAR_normalize_tr_pipelinec_gen_c_l234_c22_6385_return_output := normalize_tr_pipelinec_gen_c_l234_c22_6385_return_output;

     -- Submodule level 0
     -- CONST_REF_RD_hit_out_hit_out_9070[tr_pipelinec_gen_c_l237_c10_d66a] LATENCY=0
     VAR_CONST_REF_RD_hit_out_hit_out_9070_tr_pipelinec_gen_c_l237_c10_d66a_return_output := CONST_REF_RD_hit_out_hit_out_9070(
     VAR_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output,
     VAR_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output,
     VAR_normalize_tr_pipelinec_gen_c_l234_c22_6385_return_output,
     VAR_diff);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_hit_out_hit_out_9070_tr_pipelinec_gen_c_l237_c10_d66a_return_output;
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
     REG_STAGE0_diff <= COMB_STAGE0_diff;
     REG_STAGE0_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE0_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE0_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left <= COMB_STAGE0_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left;
     REG_STAGE0_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= COMB_STAGE0_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Stage 1
     REG_STAGE1_diff <= COMB_STAGE1_diff;
     REG_STAGE1_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE1_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE1_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left <= COMB_STAGE1_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left;
     REG_STAGE1_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= COMB_STAGE1_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Stage 2
     REG_STAGE2_diff <= COMB_STAGE2_diff;
     REG_STAGE2_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE2_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE2_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left <= COMB_STAGE2_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_left;
     REG_STAGE2_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= COMB_STAGE2_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Stage 3
     REG_STAGE3_diff <= COMB_STAGE3_diff;
     REG_STAGE3_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE3_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE3_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= COMB_STAGE3_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Stage 4
     REG_STAGE4_diff <= COMB_STAGE4_diff;
     REG_STAGE4_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE4_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE4_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= COMB_STAGE4_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Stage 5
     REG_STAGE5_diff <= COMB_STAGE5_diff;
     REG_STAGE5_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE5_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE5_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= COMB_STAGE5_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Stage 6
     REG_STAGE6_diff <= COMB_STAGE6_diff;
     REG_STAGE6_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE6_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE6_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= COMB_STAGE6_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Stage 7
     REG_STAGE7_diff <= COMB_STAGE7_diff;
     REG_STAGE7_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE7_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE7_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= COMB_STAGE7_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Stage 8
     REG_STAGE8_diff <= COMB_STAGE8_diff;
     REG_STAGE8_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE8_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE8_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right <= COMB_STAGE8_float3_sub_tr_pipelinec_gen_c_l234_c32_1f83_right;
     -- Stage 9
     REG_STAGE9_diff <= COMB_STAGE9_diff;
     REG_STAGE9_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE9_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE9_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE9_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 10
     REG_STAGE10_diff <= COMB_STAGE10_diff;
     REG_STAGE10_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE10_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE10_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE10_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 11
     REG_STAGE11_diff <= COMB_STAGE11_diff;
     REG_STAGE11_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE11_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE11_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE11_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 12
     REG_STAGE12_diff <= COMB_STAGE12_diff;
     REG_STAGE12_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE12_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE12_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE12_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 13
     REG_STAGE13_diff <= COMB_STAGE13_diff;
     REG_STAGE13_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE13_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE13_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE13_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 14
     REG_STAGE14_diff <= COMB_STAGE14_diff;
     REG_STAGE14_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE14_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE14_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE14_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 15
     REG_STAGE15_diff <= COMB_STAGE15_diff;
     REG_STAGE15_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE15_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE15_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE15_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 16
     REG_STAGE16_diff <= COMB_STAGE16_diff;
     REG_STAGE16_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE16_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE16_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE16_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 17
     REG_STAGE17_diff <= COMB_STAGE17_diff;
     REG_STAGE17_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE17_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE17_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE17_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 18
     REG_STAGE18_diff <= COMB_STAGE18_diff;
     REG_STAGE18_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE18_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE18_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE18_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 19
     REG_STAGE19_diff <= COMB_STAGE19_diff;
     REG_STAGE19_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE19_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE19_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE19_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 20
     REG_STAGE20_diff <= COMB_STAGE20_diff;
     REG_STAGE20_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE20_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE20_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE20_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 21
     REG_STAGE21_diff <= COMB_STAGE21_diff;
     REG_STAGE21_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE21_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE21_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE21_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 22
     REG_STAGE22_diff <= COMB_STAGE22_diff;
     REG_STAGE22_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE22_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE22_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE22_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 23
     REG_STAGE23_diff <= COMB_STAGE23_diff;
     REG_STAGE23_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE23_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE23_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE23_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 24
     REG_STAGE24_diff <= COMB_STAGE24_diff;
     REG_STAGE24_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE24_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE24_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE24_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 25
     REG_STAGE25_diff <= COMB_STAGE25_diff;
     REG_STAGE25_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE25_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE25_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE25_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 26
     REG_STAGE26_diff <= COMB_STAGE26_diff;
     REG_STAGE26_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE26_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE26_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE26_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 27
     REG_STAGE27_diff <= COMB_STAGE27_diff;
     REG_STAGE27_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE27_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE27_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE27_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 28
     REG_STAGE28_diff <= COMB_STAGE28_diff;
     REG_STAGE28_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE28_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE28_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE28_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 29
     REG_STAGE29_diff <= COMB_STAGE29_diff;
     REG_STAGE29_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE29_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE29_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE29_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 30
     REG_STAGE30_diff <= COMB_STAGE30_diff;
     REG_STAGE30_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE30_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE30_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE30_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 31
     REG_STAGE31_diff <= COMB_STAGE31_diff;
     REG_STAGE31_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE31_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE31_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE31_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 32
     REG_STAGE32_diff <= COMB_STAGE32_diff;
     REG_STAGE32_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE32_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE32_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE32_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 33
     REG_STAGE33_diff <= COMB_STAGE33_diff;
     REG_STAGE33_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE33_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE33_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE33_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 34
     REG_STAGE34_diff <= COMB_STAGE34_diff;
     REG_STAGE34_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE34_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE34_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE34_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 35
     REG_STAGE35_diff <= COMB_STAGE35_diff;
     REG_STAGE35_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE35_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE35_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE35_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 36
     REG_STAGE36_diff <= COMB_STAGE36_diff;
     REG_STAGE36_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE36_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE36_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE36_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 37
     REG_STAGE37_diff <= COMB_STAGE37_diff;
     REG_STAGE37_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE37_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE37_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE37_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 38
     REG_STAGE38_diff <= COMB_STAGE38_diff;
     REG_STAGE38_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE38_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE38_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE38_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 39
     REG_STAGE39_diff <= COMB_STAGE39_diff;
     REG_STAGE39_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE39_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE39_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE39_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 40
     REG_STAGE40_diff <= COMB_STAGE40_diff;
     REG_STAGE40_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE40_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE40_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE40_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 41
     REG_STAGE41_diff <= COMB_STAGE41_diff;
     REG_STAGE41_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE41_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE41_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE41_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 42
     REG_STAGE42_diff <= COMB_STAGE42_diff;
     REG_STAGE42_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE42_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE42_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE42_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 43
     REG_STAGE43_diff <= COMB_STAGE43_diff;
     REG_STAGE43_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE43_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE43_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE43_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 44
     REG_STAGE44_diff <= COMB_STAGE44_diff;
     REG_STAGE44_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE44_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE44_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE44_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 45
     REG_STAGE45_diff <= COMB_STAGE45_diff;
     REG_STAGE45_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE45_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE45_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE45_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 46
     REG_STAGE46_diff <= COMB_STAGE46_diff;
     REG_STAGE46_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE46_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE46_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE46_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
     -- Stage 47
     REG_STAGE47_diff <= COMB_STAGE47_diff;
     REG_STAGE47_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output <= COMB_STAGE47_MUX_tr_pipelinec_gen_c_l231_c17_7c9c_return_output;
     REG_STAGE47_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output <= COMB_STAGE47_float3_add_tr_pipelinec_gen_c_l233_c23_fde0_return_output;
 end if;
end process;

end arch;
