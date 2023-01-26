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
-- Submodules: 1
entity scene_colors_0CLK_5af1a430 is
port(
 scene : in scene_t;
 return_output : out scene_colors_t);
end scene_colors_0CLK_5af1a430;
architecture arch of scene_colors_0CLK_5af1a430 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
function CONST_REF_RD_scene_colors_t_scene_colors_t_5a5e( ref_toks_0 : material_t;
 ref_toks_1 : material_t;
 ref_toks_2 : fixed3;
 ref_toks_3 : fixed3;
 ref_toks_4 : fixed3) return scene_colors_t is
 
  variable base : scene_colors_t; 
  variable return_output : scene_colors_t;
begin
      base.sphere := ref_toks_0;
      base.plane := ref_toks_1;
      base.plane_color1 := ref_toks_2;
      base.plane_color2 := ref_toks_3;
      base.fog := ref_toks_4;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 


-- Combinatorial process for pipeline stages
process (
 -- Inputs
 scene)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : scene_colors_t;
 variable VAR_scene : scene_t;
 variable VAR_r : scene_colors_t;
 variable VAR_CONST_REF_RD_material_t_scene_t_sphere_material_d41d_tr_pipelinec_gen_c_l218_c14_39ca_return_output : material_t;
 variable VAR_CONST_REF_RD_material_t_scene_t_plane_material_d41d_tr_pipelinec_gen_c_l219_c13_6ff3_return_output : material_t;
 variable VAR_CONST_REF_RD_fixed3_scene_t_plane_color1_d41d_tr_pipelinec_gen_c_l220_c20_e350_return_output : fixed3;
 variable VAR_CONST_REF_RD_fixed3_scene_t_plane_color2_d41d_tr_pipelinec_gen_c_l221_c20_55f1_return_output : fixed3;
 variable VAR_CONST_REF_RD_fixed3_scene_t_fog_d41d_tr_pipelinec_gen_c_l222_c11_222c_return_output : fixed3;
 variable VAR_CONST_REF_RD_scene_colors_t_scene_colors_t_5a5e_tr_pipelinec_gen_c_l223_c10_d036_return_output : scene_colors_t;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_scene := scene;

     -- Submodule level 0
     -- CONST_REF_RD_material_t_scene_t_sphere_material_d41d[tr_pipelinec_gen_c_l218_c14_39ca] LATENCY=0
     VAR_CONST_REF_RD_material_t_scene_t_sphere_material_d41d_tr_pipelinec_gen_c_l218_c14_39ca_return_output := VAR_scene.sphere.material;

     -- CONST_REF_RD_fixed3_scene_t_plane_color2_d41d[tr_pipelinec_gen_c_l221_c20_55f1] LATENCY=0
     VAR_CONST_REF_RD_fixed3_scene_t_plane_color2_d41d_tr_pipelinec_gen_c_l221_c20_55f1_return_output := VAR_scene.plane.color2;

     -- CONST_REF_RD_material_t_scene_t_plane_material_d41d[tr_pipelinec_gen_c_l219_c13_6ff3] LATENCY=0
     VAR_CONST_REF_RD_material_t_scene_t_plane_material_d41d_tr_pipelinec_gen_c_l219_c13_6ff3_return_output := VAR_scene.plane.material;

     -- CONST_REF_RD_fixed3_scene_t_fog_d41d[tr_pipelinec_gen_c_l222_c11_222c] LATENCY=0
     VAR_CONST_REF_RD_fixed3_scene_t_fog_d41d_tr_pipelinec_gen_c_l222_c11_222c_return_output := VAR_scene.fog;

     -- CONST_REF_RD_fixed3_scene_t_plane_color1_d41d[tr_pipelinec_gen_c_l220_c20_e350] LATENCY=0
     VAR_CONST_REF_RD_fixed3_scene_t_plane_color1_d41d_tr_pipelinec_gen_c_l220_c20_e350_return_output := VAR_scene.plane.color1;

     -- Submodule level 1
     -- CONST_REF_RD_scene_colors_t_scene_colors_t_5a5e[tr_pipelinec_gen_c_l223_c10_d036] LATENCY=0
     VAR_CONST_REF_RD_scene_colors_t_scene_colors_t_5a5e_tr_pipelinec_gen_c_l223_c10_d036_return_output := CONST_REF_RD_scene_colors_t_scene_colors_t_5a5e(
     VAR_CONST_REF_RD_material_t_scene_t_sphere_material_d41d_tr_pipelinec_gen_c_l218_c14_39ca_return_output,
     VAR_CONST_REF_RD_material_t_scene_t_plane_material_d41d_tr_pipelinec_gen_c_l219_c13_6ff3_return_output,
     VAR_CONST_REF_RD_fixed3_scene_t_plane_color1_d41d_tr_pipelinec_gen_c_l220_c20_e350_return_output,
     VAR_CONST_REF_RD_fixed3_scene_t_plane_color2_d41d_tr_pipelinec_gen_c_l221_c20_55f1_return_output,
     VAR_CONST_REF_RD_fixed3_scene_t_fog_d41d_tr_pipelinec_gen_c_l222_c11_222c_return_output);

     -- Submodule level 2
     VAR_return_output := VAR_CONST_REF_RD_scene_colors_t_scene_colors_t_5a5e_tr_pipelinec_gen_c_l223_c10_d036_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
