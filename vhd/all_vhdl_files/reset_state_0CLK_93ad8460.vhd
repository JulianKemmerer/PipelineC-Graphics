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
-- Submodules: 57
entity reset_state_0CLK_93ad8460 is
port(
 score : in unsigned(15 downto 0);
 return_output : out full_state_t);
end reset_state_0CLK_93ad8460;
architecture arch of reset_state_0CLK_93ad8460 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- fixed_make_from_double[tr_pipelinec_gen_c_l432_c37_1290]
signal fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l432_c144_b196]
signal fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l432_c251_4e87]
signal fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l432_c25_306b]
signal fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l433_c37_1ed0]
signal fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l433_c163_0ac4]
signal fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l433_c289_15b5]
signal fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l433_c25_3472]
signal fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l435_c47_8d7a]
signal fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l435_c89_31c0]
signal fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l435_c131_790a]
signal fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l435_c35_0ece]
signal fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l436_c47_62b2]
signal fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l436_c90_ca85]
signal fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l436_c133_b765]
signal fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l436_c35_2f97]
signal fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l437_c43_86a7]
signal fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l437_c90_4494]
signal fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l437_c132_8b6d]
signal fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l437_c31_93d6]
signal fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l439_c43_0642]
signal fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l439_c85_7543]
signal fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l439_c127_ba4e]
signal fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l439_c31_2f5d]
signal fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l440_c43_d57e]
signal fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l440_c85_ed74]
signal fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l440_c127_dbb7]
signal fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l440_c31_b3f8]
signal fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l441_c44_6cba]
signal fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l441_c88_a892]
signal fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l441_c131_0a06]
signal fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l441_c32_95ca]
signal fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l443_c29_3b1b]
signal fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l444_c37_e19e]
signal fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l444_c79_c72e]
signal fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l444_c122_7e9c]
signal fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l444_c25_c12f]
signal fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l447_c34_fe7f]
signal fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l447_c77_08a4]
signal fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l447_c120_bff5]
signal fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l447_c22_d300]
signal fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l453_c35_2c94]
signal fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l453_c120_3d01]
signal fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l453_c204_7b17]
signal fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_return_output : fixed;

-- fixed3_make[tr_pipelinec_gen_c_l453_c23_c86c]
signal fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_x : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_y : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_z : fixed;
signal fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_return_output : fixed3;

-- fixed_make_from_double[tr_pipelinec_gen_c_l458_c19_ac99]
signal fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l459_c23_0306]
signal fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l460_c23_cd48]
signal fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_return_output : fixed;

function CONST_REF_RD_material_t_material_t_20c2( ref_toks_0 : fixed3;
 ref_toks_1 : fixed3) return material_t is
 
  variable base : material_t; 
  variable return_output : material_t;
begin
      base.diffuse_color := ref_toks_0;
      base.reflect_color := ref_toks_1;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_fixed_full_state_t_scene_plane_center_y_scene_plane_center_15a8( ref_toks_0 : fixed3) return fixed is
 
  variable base : full_state_t; 
  variable return_output : fixed;
begin
      base.scene.plane.center := ref_toks_0;

      return_output := base.scene.plane.center.y;
      return return_output; 
end function;

function CONST_REF_RD_fixed_full_state_t_scene_sphere_center_x_scene_sphere_center_ef99( ref_toks_0 : fixed3) return fixed is
 
  variable base : full_state_t; 
  variable return_output : fixed;
begin
      base.scene.sphere.center := ref_toks_0;

      return_output := base.scene.sphere.center.x;
      return return_output; 
end function;

function CONST_REF_RD_fixed_full_state_t_scene_sphere_center_z_scene_sphere_center_ef99( ref_toks_0 : fixed3) return fixed is
 
  variable base : full_state_t; 
  variable return_output : fixed;
begin
      base.scene.sphere.center := ref_toks_0;

      return_output := base.scene.sphere.center.z;
      return return_output; 
end function;

function CONST_REF_RD_fixed_full_state_t_scene_sphere_center_y_scene_sphere_center_ef99( ref_toks_0 : fixed3) return fixed is
 
  variable base : full_state_t; 
  variable return_output : fixed;
begin
      base.scene.sphere.center := ref_toks_0;

      return_output := base.scene.sphere.center.y;
      return return_output; 
end function;

function CONST_REF_RD_fixed_full_state_t_scene_camera_y_scene_camera_bb05( ref_toks_0 : fixed3) return fixed is
 
  variable base : full_state_t; 
  variable return_output : fixed;
begin
      base.scene.camera := ref_toks_0;

      return_output := base.scene.camera.y;
      return return_output; 
end function;

function CONST_REF_RD_fixed_full_state_t_scene_camera_z_scene_camera_bb05( ref_toks_0 : fixed3) return fixed is
 
  variable base : full_state_t; 
  variable return_output : fixed;
begin
      base.scene.camera := ref_toks_0;

      return_output := base.scene.camera.z;
      return return_output; 
end function;

function CONST_REF_RD_full_state_t_full_state_t_eb50( ref_toks_0 : full_state_t;
 ref_toks_1 : fixed3;
 ref_toks_2 : material_t;
 ref_toks_3 : fixed3;
 ref_toks_4 : fixed3;
 ref_toks_5 : fixed3;
 ref_toks_6 : material_t;
 ref_toks_7 : fixed;
 ref_toks_8 : fixed3;
 ref_toks_9 : unsigned;
 ref_toks_10 : unsigned;
 ref_toks_11 : fixed3;
 ref_toks_12 : fixed;
 ref_toks_13 : fixed;
 ref_toks_14 : fixed;
 ref_toks_15 : fixed3;
 ref_toks_16 : fixed3;
 ref_toks_17 : fixed3;
 ref_toks_18 : fixed;
 ref_toks_19 : fixed;
 ref_toks_20 : fixed;
 ref_toks_21 : fixed;
 ref_toks_22 : fixed;
 ref_toks_23 : fixed;
 ref_toks_24 : fixed;
 ref_toks_25 : unsigned;
 ref_toks_26 : unsigned) return full_state_t is
 
  variable base : full_state_t; 
  variable return_output : full_state_t;
begin
      base := ref_toks_0;
      base.scene.plane.center := ref_toks_1;
      base.scene.plane.material := ref_toks_2;
      base.scene.plane.color1 := ref_toks_3;
      base.scene.plane.color2 := ref_toks_4;
      base.scene.sphere.center := ref_toks_5;
      base.scene.sphere.material := ref_toks_6;
      base.scene.sphere.heat := ref_toks_7;
      base.scene.camera := ref_toks_8;
      base.scene.frame := ref_toks_9;
      base.scene.scorebar := ref_toks_10;
      base.scene.fog := ref_toks_11;
      base.plane_y := ref_toks_12;
      base.sphere_x := ref_toks_13;
      base.sphere_z := ref_toks_14;
      base.gold_color := ref_toks_15;
      base.gold_reflect_color := ref_toks_16;
      base.lava_color := ref_toks_17;
      base.sphere_y := ref_toks_18;
      base.heat := ref_toks_19;
      base.camera_y := ref_toks_20;
      base.camera_z := ref_toks_21;
      base.plane_x := ref_toks_22;
      base.sphere_xvel := ref_toks_23;
      base.sphere_yvel := ref_toks_24;
      base.won := ref_toks_25;
      base.score := ref_toks_26;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290
fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_a,
fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196
fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_a,
fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87
fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_a,
fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l432_c25_306b
fixed3_make_tr_pipelinec_gen_c_l432_c25_306b : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_x,
fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_y,
fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_z,
fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0
fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_a,
fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4
fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_a,
fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5
fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_a,
fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l433_c25_3472
fixed3_make_tr_pipelinec_gen_c_l433_c25_3472 : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_x,
fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_y,
fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_z,
fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a
fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_a,
fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0
fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_a,
fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a
fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_a,
fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece
fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_x,
fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_y,
fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_z,
fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2
fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_a,
fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85
fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_a,
fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765
fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_a,
fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97
fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97 : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_x,
fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_y,
fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_z,
fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7
fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_a,
fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494
fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_a,
fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d
fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_a,
fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6
fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6 : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_x,
fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_y,
fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_z,
fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642
fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_a,
fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543
fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_a,
fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e
fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_a,
fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d
fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_x,
fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_y,
fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_z,
fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e
fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_a,
fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74
fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_a,
fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7
fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_a,
fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8
fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8 : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_x,
fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_y,
fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_z,
fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba
fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_a,
fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892
fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_a,
fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06
fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_a,
fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca
fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_x,
fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_y,
fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_z,
fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b
fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_a,
fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e
fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_a,
fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e
fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_a,
fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c
fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_a,
fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f
fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_x,
fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_y,
fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_z,
fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f
fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_a,
fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4
fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_a,
fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5
fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_a,
fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l447_c22_d300
fixed3_make_tr_pipelinec_gen_c_l447_c22_d300 : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_x,
fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_y,
fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_z,
fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94
fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_a,
fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01
fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_a,
fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17
fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_a,
fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_return_output);

-- fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c
fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c : entity work.fixed3_make_0CLK_b45f1687 port map (
fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_x,
fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_y,
fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_z,
fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99
fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_a,
fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306
fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_a,
fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48
fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_a,
fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 score,
 -- All submodule outputs
 fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_return_output,
 fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_return_output,
 fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_return_output,
 fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_return_output,
 fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_return_output,
 fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_return_output,
 fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_return_output,
 fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_return_output,
 fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_return_output,
 fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_return_output,
 fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_return_output,
 fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : full_state_t;
 variable VAR_score : unsigned(15 downto 0);
 variable VAR_state : full_state_t;
 variable VAR_gold : material_t;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_return_output : fixed3;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_return_output : fixed3;
 variable VAR_floor_material : material_t;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_return_output : fixed3;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_return_output : fixed3;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_return_output : fixed3;
 variable VAR_CONST_REF_RD_material_t_material_t_20c2_tr_pipelinec_gen_c_l438_c32_9bd3_return_output : material_t;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_return_output : fixed3;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_return_output : fixed3;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_return_output : fixed3;
 variable VAR_CONST_REF_RD_material_t_material_t_20c2_tr_pipelinec_gen_c_l442_c33_6587_return_output : material_t;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_return_output : fixed3;
 variable VAR_state_scene_frame_tr_pipelinec_gen_c_l445_c3_dbf6 : unsigned(15 downto 0);
 variable VAR_state_scene_scorebar_tr_pipelinec_gen_c_l446_c3_1b95 : unsigned(15 downto 0);
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_return_output : fixed3;
 variable VAR_CONST_REF_RD_fixed_full_state_t_scene_plane_center_y_scene_plane_center_15a8_tr_pipelinec_gen_c_l448_c19_0e10_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_scene_sphere_center_x_scene_sphere_center_ef99_tr_pipelinec_gen_c_l449_c20_987f_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_scene_sphere_center_z_scene_sphere_center_ef99_tr_pipelinec_gen_c_l450_c20_ca24_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_x : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_y : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_z : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_return_output : fixed;
 variable VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_return_output : fixed3;
 variable VAR_CONST_REF_RD_fixed_full_state_t_scene_sphere_center_y_scene_sphere_center_ef99_tr_pipelinec_gen_c_l454_c20_5e79_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_scene_camera_y_scene_camera_bb05_tr_pipelinec_gen_c_l456_c20_ea0c_return_output : fixed;
 variable VAR_CONST_REF_RD_fixed_full_state_t_scene_camera_z_scene_camera_bb05_tr_pipelinec_gen_c_l457_c20_cad1_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_return_output : fixed;
 variable VAR_CONST_REF_RD_full_state_t_full_state_t_eb50_tr_pipelinec_gen_c_l463_c10_cf03_return_output : full_state_t;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_a := resize_float_e_m_t(to_slv(to_float(0.141328125, 8, 23)),8,23,8,14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_a := resize_float_e_m_t(to_slv(to_float(0.41015625, 8, 23)),8,23,8,14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_a := to_slv(to_float(0.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_a := resize_float_e_m_t(to_slv(to_float(0.073125, 8, 23)),8,23,8,14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_a := to_slv(to_float(-32.0, 8, 14));
     VAR_state_scene_scorebar_tr_pipelinec_gen_c_l446_c3_1b95 := resize(to_unsigned(0, 1), 16);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_a := to_slv(to_float(1.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_a := resize_float_e_m_t(to_slv(to_float(0.17085937499999998, 8, 23)),8,23,8,14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_a := to_slv(to_float(0.8, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_a := to_slv(to_float(1.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_a := to_slv(to_float(0.8, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_a := to_slv(to_float(0.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_a := to_slv(to_float(30.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_a := to_slv(to_float(0.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_a := to_slv(to_float(-20.0, 8, 14));
     VAR_state_scene_frame_tr_pipelinec_gen_c_l445_c3_dbf6 := resize(to_unsigned(0, 1), 16);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_a := to_slv(to_float(0.25, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_a := resize_float_e_m_t(to_slv(to_float(1.9921875, 8, 23)),8,23,8,14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_a := to_slv(to_float(30.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_a := to_slv(to_float(0.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_a := to_slv(to_float(0.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_a := to_slv(to_float(0.01, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_a := to_slv(to_float(-110.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_a := resize_float_e_m_t(to_slv(to_float(0.1875, 8, 23)),8,23,8,14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_a := resize_float_e_m_t(to_slv(to_float(1.21025390625, 8, 23)),8,23,8,14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_a := to_slv(to_float(0.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_a := to_slv(to_float(1.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_a := to_slv(to_float(0.25, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_a := to_slv(to_float(0.1, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_a := to_slv(to_float(0.8, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_a := to_slv(to_float(0.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_a := to_slv(to_float(40.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_a := to_slv(to_float(0.1, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_a := to_slv(to_float(-110.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_a := resize_float_e_m_t(to_slv(to_float(1.00107421875, 8, 23)),8,23,8,14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_a := to_slv(to_float(0.01, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_a := to_slv(to_float(0.25, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_a := resize_float_e_m_t(to_slv(to_float(0.51796875, 8, 23)),8,23,8,14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_a := to_slv(to_float(0.0, 8, 14));
     -- fixed_make_from_double[tr_pipelinec_gen_c_l436_c133_b765] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l435_c47_8d7a] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l439_c85_7543] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l436_c47_62b2] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l432_c144_b196] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l458_c19_ac99] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l453_c204_7b17] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l447_c34_fe7f] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l433_c163_0ac4] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l437_c90_4494] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l437_c43_86a7] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l439_c43_0642] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l441_c44_6cba] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l435_c89_31c0] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l444_c79_c72e] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l440_c43_d57e] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l453_c120_3d01] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l433_c289_15b5] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l432_c37_1290] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l444_c37_e19e] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l440_c127_dbb7] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l441_c88_a892] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l460_c23_cd48] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l444_c122_7e9c] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l437_c132_8b6d] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l439_c127_ba4e] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l441_c131_0a06] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l433_c37_1ed0] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l432_c251_4e87] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l447_c77_08a4] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l440_c85_ed74] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l453_c35_2c94] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l459_c23_0306] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l443_c29_3b1b] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l436_c90_ca85] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l435_c131_790a] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l447_c120_bff5] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_return_output;

     -- Submodule level 1
     VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c131_790a_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c204_7b17_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c127_ba4e_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c120_bff5_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c127_dbb7_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c43_0642_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c144_b196_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c251_4e87_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c122_7e9c_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c79_c72e_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c85_ed74_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c133_b765_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c34_fe7f_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c132_8b6d_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l447_c77_08a4_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c47_8d7a_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c43_86a7_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l432_c37_1290_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l439_c85_7543_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c35_2c94_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c289_15b5_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c88_a892_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c47_62b2_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l437_c90_4494_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_z := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c131_0a06_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l453_c120_3d01_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l440_c43_d57e_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l441_c44_6cba_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l444_c37_e19e_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l435_c89_31c0_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c163_0ac4_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_y := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l436_c90_ca85_return_output;
     VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_x := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l433_c37_1ed0_return_output;
     -- fixed3_make[tr_pipelinec_gen_c_l437_c31_93d6] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_x;
     fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_y;
     fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_return_output := fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_return_output;

     -- fixed3_make[tr_pipelinec_gen_c_l435_c35_0ece] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_x;
     fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_y;
     fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_return_output := fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_return_output;

     -- fixed3_make[tr_pipelinec_gen_c_l444_c25_c12f] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_x;
     fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_y;
     fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_return_output := fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_return_output;

     -- fixed3_make[tr_pipelinec_gen_c_l439_c31_2f5d] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_x;
     fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_y;
     fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_return_output := fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_return_output;

     -- fixed3_make[tr_pipelinec_gen_c_l432_c25_306b] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_x;
     fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_y;
     fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_return_output := fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_return_output;

     -- fixed3_make[tr_pipelinec_gen_c_l447_c22_d300] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_x;
     fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_y;
     fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_return_output := fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_return_output;

     -- fixed3_make[tr_pipelinec_gen_c_l441_c32_95ca] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_x;
     fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_y;
     fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_return_output := fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_return_output;

     -- fixed3_make[tr_pipelinec_gen_c_l433_c25_3472] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_x;
     fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_y;
     fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_return_output := fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_return_output;

     -- fixed3_make[tr_pipelinec_gen_c_l453_c23_c86c] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_x;
     fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_y;
     fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_return_output := fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_return_output;

     -- fixed3_make[tr_pipelinec_gen_c_l436_c35_2f97] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_x;
     fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_y;
     fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_return_output := fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_return_output;

     -- fixed3_make[tr_pipelinec_gen_c_l440_c31_b3f8] LATENCY=0
     -- Inputs
     fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_x <= VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_x;
     fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_y <= VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_y;
     fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_z <= VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_z;
     -- Outputs
     VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_return_output := fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_return_output;

     -- Submodule level 2
     -- CONST_REF_RD_fixed_full_state_t_scene_sphere_center_z_scene_sphere_center_ef99[tr_pipelinec_gen_c_l450_c20_ca24] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_scene_sphere_center_z_scene_sphere_center_ef99_tr_pipelinec_gen_c_l450_c20_ca24_return_output := CONST_REF_RD_fixed_full_state_t_scene_sphere_center_z_scene_sphere_center_ef99(
     VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_return_output);

     -- CONST_REF_RD_fixed_full_state_t_scene_camera_y_scene_camera_bb05[tr_pipelinec_gen_c_l456_c20_ea0c] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_scene_camera_y_scene_camera_bb05_tr_pipelinec_gen_c_l456_c20_ea0c_return_output := CONST_REF_RD_fixed_full_state_t_scene_camera_y_scene_camera_bb05(
     VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_return_output);

     -- CONST_REF_RD_fixed_full_state_t_scene_sphere_center_x_scene_sphere_center_ef99[tr_pipelinec_gen_c_l449_c20_987f] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_scene_sphere_center_x_scene_sphere_center_ef99_tr_pipelinec_gen_c_l449_c20_987f_return_output := CONST_REF_RD_fixed_full_state_t_scene_sphere_center_x_scene_sphere_center_ef99(
     VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_return_output);

     -- CONST_REF_RD_fixed_full_state_t_scene_sphere_center_y_scene_sphere_center_ef99[tr_pipelinec_gen_c_l454_c20_5e79] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_scene_sphere_center_y_scene_sphere_center_ef99_tr_pipelinec_gen_c_l454_c20_5e79_return_output := CONST_REF_RD_fixed_full_state_t_scene_sphere_center_y_scene_sphere_center_ef99(
     VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_return_output);

     -- CONST_REF_RD_fixed_full_state_t_scene_plane_center_y_scene_plane_center_15a8[tr_pipelinec_gen_c_l448_c19_0e10] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_scene_plane_center_y_scene_plane_center_15a8_tr_pipelinec_gen_c_l448_c19_0e10_return_output := CONST_REF_RD_fixed_full_state_t_scene_plane_center_y_scene_plane_center_15a8(
     VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_return_output);

     -- CONST_REF_RD_material_t_material_t_20c2[tr_pipelinec_gen_c_l438_c32_9bd3] LATENCY=0
     VAR_CONST_REF_RD_material_t_material_t_20c2_tr_pipelinec_gen_c_l438_c32_9bd3_return_output := CONST_REF_RD_material_t_material_t_20c2(
     VAR_fixed3_make_tr_pipelinec_gen_c_l435_c35_0ece_return_output,
     VAR_fixed3_make_tr_pipelinec_gen_c_l436_c35_2f97_return_output);

     -- CONST_REF_RD_material_t_material_t_20c2[tr_pipelinec_gen_c_l442_c33_6587] LATENCY=0
     VAR_CONST_REF_RD_material_t_material_t_20c2_tr_pipelinec_gen_c_l442_c33_6587_return_output := CONST_REF_RD_material_t_material_t_20c2(
     VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_return_output,
     VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_return_output);

     -- CONST_REF_RD_fixed_full_state_t_scene_camera_z_scene_camera_bb05[tr_pipelinec_gen_c_l457_c20_cad1] LATENCY=0
     VAR_CONST_REF_RD_fixed_full_state_t_scene_camera_z_scene_camera_bb05_tr_pipelinec_gen_c_l457_c20_cad1_return_output := CONST_REF_RD_fixed_full_state_t_scene_camera_z_scene_camera_bb05(
     VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_return_output);

     -- Submodule level 3

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_score := score;

     -- Submodule level 0
     -- CONST_REF_RD_full_state_t_full_state_t_eb50[tr_pipelinec_gen_c_l463_c10_cf03] LATENCY=0
     VAR_CONST_REF_RD_full_state_t_full_state_t_eb50_tr_pipelinec_gen_c_l463_c10_cf03_return_output := CONST_REF_RD_full_state_t_full_state_t_eb50(
     full_state_t_NULL,
     VAR_fixed3_make_tr_pipelinec_gen_c_l437_c31_93d6_return_output,
     VAR_CONST_REF_RD_material_t_material_t_20c2_tr_pipelinec_gen_c_l438_c32_9bd3_return_output,
     VAR_fixed3_make_tr_pipelinec_gen_c_l439_c31_2f5d_return_output,
     VAR_fixed3_make_tr_pipelinec_gen_c_l440_c31_b3f8_return_output,
     VAR_fixed3_make_tr_pipelinec_gen_c_l441_c32_95ca_return_output,
     VAR_CONST_REF_RD_material_t_material_t_20c2_tr_pipelinec_gen_c_l442_c33_6587_return_output,
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_return_output,
     VAR_fixed3_make_tr_pipelinec_gen_c_l444_c25_c12f_return_output,
     VAR_state_scene_frame_tr_pipelinec_gen_c_l445_c3_dbf6,
     VAR_state_scene_scorebar_tr_pipelinec_gen_c_l446_c3_1b95,
     VAR_fixed3_make_tr_pipelinec_gen_c_l447_c22_d300_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_scene_plane_center_y_scene_plane_center_15a8_tr_pipelinec_gen_c_l448_c19_0e10_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_scene_sphere_center_x_scene_sphere_center_ef99_tr_pipelinec_gen_c_l449_c20_987f_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_scene_sphere_center_z_scene_sphere_center_ef99_tr_pipelinec_gen_c_l450_c20_ca24_return_output,
     VAR_fixed3_make_tr_pipelinec_gen_c_l432_c25_306b_return_output,
     VAR_fixed3_make_tr_pipelinec_gen_c_l433_c25_3472_return_output,
     VAR_fixed3_make_tr_pipelinec_gen_c_l453_c23_c86c_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_scene_sphere_center_y_scene_sphere_center_ef99_tr_pipelinec_gen_c_l454_c20_5e79_return_output,
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l443_c29_3b1b_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_scene_camera_y_scene_camera_bb05_tr_pipelinec_gen_c_l456_c20_ea0c_return_output,
     VAR_CONST_REF_RD_fixed_full_state_t_scene_camera_z_scene_camera_bb05_tr_pipelinec_gen_c_l457_c20_cad1_return_output,
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l458_c19_ac99_return_output,
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l459_c23_0306_return_output,
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l460_c23_cd48_return_output,
     to_unsigned(0, 1),
     VAR_score);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_full_state_t_full_state_t_eb50_tr_pipelinec_gen_c_l463_c10_cf03_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
