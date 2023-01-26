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
-- Submodules: 3
entity pmod_register_outputs_0CLK_25d197a7 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 module_to_global : out pmod_register_outputs_module_to_global_t;
 vga : in vga_signals_t;
 color : in pixel_t);
end pmod_register_outputs_0CLK_25d197a7;
architecture arch of pmod_register_outputs_0CLK_25d197a7 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal dvi_red_reg : unsigned(7 downto 0) := to_unsigned(0, 8);
signal dvi_green_reg : unsigned(7 downto 0) := to_unsigned(0, 8);
signal dvi_blue_reg : unsigned(7 downto 0) := to_unsigned(0, 8);
signal vga_reg : vga_signals_t := vga_signals_t_NULL;
signal REG_COMB_dvi_red_reg : unsigned(7 downto 0);
signal REG_COMB_dvi_green_reg : unsigned(7 downto 0);
signal REG_COMB_dvi_blue_reg : unsigned(7 downto 0);
signal REG_COMB_vga_reg : vga_signals_t;

-- Each function instance gets signals
-- active_color_MUX[external_vga_output_c_l54_c3_71c2]
signal active_color_MUX_external_vga_output_c_l54_c3_71c2_cond : unsigned(0 downto 0);
signal active_color_MUX_external_vga_output_c_l54_c3_71c2_iftrue : pixel_t;
signal active_color_MUX_external_vga_output_c_l54_c3_71c2_iffalse : pixel_t;
signal active_color_MUX_external_vga_output_c_l54_c3_71c2_return_output : pixel_t;

function CONST_REF_RD_vga_signals_t_array_1_t_vga_signals_t_array_1_t_5b41( ref_toks_0 : vga_signals_t) return vga_signals_t_array_1_t is
 
  variable base : vga_signals_t_array_1_t; 
  variable return_output : vga_signals_t_array_1_t;
begin
      base.data(0) := ref_toks_0;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- active_color_MUX_external_vga_output_c_l54_c3_71c2
active_color_MUX_external_vga_output_c_l54_c3_71c2 : entity work.MUX_uint1_t_pixel_t_pixel_t_0CLK_de264c78 port map (
active_color_MUX_external_vga_output_c_l54_c3_71c2_cond,
active_color_MUX_external_vga_output_c_l54_c3_71c2_iftrue,
active_color_MUX_external_vga_output_c_l54_c3_71c2_iffalse,
active_color_MUX_external_vga_output_c_l54_c3_71c2_return_output);



-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Inputs
 vga,
 color,
 -- Registers
 dvi_red_reg,
 dvi_green_reg,
 dvi_blue_reg,
 vga_reg,
 -- All submodule outputs
 active_color_MUX_external_vga_output_c_l54_c3_71c2_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_vga : vga_signals_t;
 variable VAR_color : pixel_t;
 variable VAR_vsync : unsigned(0 downto 0);
 variable VAR_hsync : unsigned(0 downto 0);
 variable VAR_dvi_red : unsigned(7 downto 0);
 variable VAR_dvi_green : unsigned(7 downto 0);
 variable VAR_dvi_blue : unsigned(7 downto 0);
 variable VAR_dvi_active : unsigned(0 downto 0);
 variable VAR_dvi_x : unsigned(11 downto 0);
 variable VAR_dvi_y : unsigned(11 downto 0);
 variable VAR_external_vga_timing_feedback_clk_cross_write_array : vga_signals_t_array_1_t;
 variable VAR_external_vga_timing_feedback_WRITE_external_vga_output_c_l38_c149_25a5_in_data : vga_signals_t_array_1_t;
 variable VAR_CONST_REF_RD_vga_signals_t_array_1_t_vga_signals_t_array_1_t_5b41_external_vga_output_c_l38_c184_df0f_return_output : vga_signals_t_array_1_t;
 variable VAR_external_vga_timing_feedback_WRITE_external_vga_output_c_l38_c149_25a5_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_vga_signals_t_vsync_d41d_external_vga_output_c_l42_c11_f5d6_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_vga_signals_t_hsync_d41d_external_vga_output_c_l43_c11_8b70_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_vga_signals_t_active_d41d_external_vga_output_c_l47_c16_f80c_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_signals_t_pos_x_d41d_external_vga_output_c_l48_c11_6813_return_output : unsigned(11 downto 0);
 variable VAR_CONST_REF_RD_uint12_t_vga_signals_t_pos_y_d41d_external_vga_output_c_l49_c11_6a82_return_output : unsigned(11 downto 0);
 variable VAR_active_color : pixel_t;
 variable VAR_CONST_REF_RD_uint1_t_vga_signals_t_active_d41d_external_vga_output_c_l54_c6_d271_return_output : unsigned(0 downto 0);
 variable VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_iftrue : pixel_t;
 variable VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_iffalse : pixel_t;
 variable VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_return_output : pixel_t;
 variable VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_pixel_t_r_d41d_external_vga_output_c_l58_c17_eab5_return_output : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_pixel_t_g_d41d_external_vga_output_c_l59_c19_d855_return_output : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_pixel_t_b_d41d_external_vga_output_c_l60_c18_c373_return_output : unsigned(7 downto 0);
 -- State registers comb logic variables
variable REG_VAR_dvi_red_reg : unsigned(7 downto 0);
variable REG_VAR_dvi_green_reg : unsigned(7 downto 0);
variable REG_VAR_dvi_blue_reg : unsigned(7 downto 0);
variable REG_VAR_vga_reg : vga_signals_t;
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_dvi_red_reg := dvi_red_reg;
  REG_VAR_dvi_green_reg := dvi_green_reg;
  REG_VAR_dvi_blue_reg := dvi_blue_reg;
  REG_VAR_vga_reg := vga_reg;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_iffalse := pixel_t_NULL;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;
     -- Mux in inputs
     VAR_vga := vga;
     VAR_color := color;

     -- Submodule level 0
     VAR_external_vga_timing_feedback_WRITE_external_vga_output_c_l38_c149_25a5_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_iftrue := VAR_color;
     VAR_dvi_blue := dvi_blue_reg;
     VAR_dvi_green := dvi_green_reg;
     VAR_dvi_red := dvi_red_reg;
     REG_VAR_vga_reg := VAR_vga;
     -- CONST_REF_RD_vga_signals_t_array_1_t_vga_signals_t_array_1_t_5b41[external_vga_output_c_l38_c184_df0f] LATENCY=0
     VAR_CONST_REF_RD_vga_signals_t_array_1_t_vga_signals_t_array_1_t_5b41_external_vga_output_c_l38_c184_df0f_return_output := CONST_REF_RD_vga_signals_t_array_1_t_vga_signals_t_array_1_t_5b41(
     vga_reg);

     -- CONST_REF_RD_uint1_t_vga_signals_t_hsync_d41d[external_vga_output_c_l43_c11_8b70] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_vga_signals_t_hsync_d41d_external_vga_output_c_l43_c11_8b70_return_output := vga_reg.hsync;

     -- CONST_REF_RD_uint1_t_vga_signals_t_vsync_d41d[external_vga_output_c_l42_c11_f5d6] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_vga_signals_t_vsync_d41d_external_vga_output_c_l42_c11_f5d6_return_output := vga_reg.vsync;

     -- CONST_REF_RD_uint1_t_vga_signals_t_active_d41d[external_vga_output_c_l47_c16_f80c] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_vga_signals_t_active_d41d_external_vga_output_c_l47_c16_f80c_return_output := vga_reg.active;

     -- CONST_REF_RD_uint12_t_vga_signals_t_pos_y_d41d[external_vga_output_c_l49_c11_6a82] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_signals_t_pos_y_d41d_external_vga_output_c_l49_c11_6a82_return_output := vga_reg.pos.y;

     -- CONST_REF_RD_uint12_t_vga_signals_t_pos_x_d41d[external_vga_output_c_l48_c11_6813] LATENCY=0
     VAR_CONST_REF_RD_uint12_t_vga_signals_t_pos_x_d41d_external_vga_output_c_l48_c11_6813_return_output := vga_reg.pos.x;

     -- CONST_REF_RD_uint1_t_vga_signals_t_active_d41d[external_vga_output_c_l54_c6_d271] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_vga_signals_t_active_d41d_external_vga_output_c_l54_c6_d271_return_output := VAR_vga.active;

     -- Submodule level 1
     VAR_dvi_x := VAR_CONST_REF_RD_uint12_t_vga_signals_t_pos_x_d41d_external_vga_output_c_l48_c11_6813_return_output;
     VAR_dvi_y := VAR_CONST_REF_RD_uint12_t_vga_signals_t_pos_y_d41d_external_vga_output_c_l49_c11_6a82_return_output;
     VAR_dvi_active := VAR_CONST_REF_RD_uint1_t_vga_signals_t_active_d41d_external_vga_output_c_l47_c16_f80c_return_output;
     VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_cond := VAR_CONST_REF_RD_uint1_t_vga_signals_t_active_d41d_external_vga_output_c_l54_c6_d271_return_output;
     VAR_hsync := VAR_CONST_REF_RD_uint1_t_vga_signals_t_hsync_d41d_external_vga_output_c_l43_c11_8b70_return_output;
     VAR_vsync := VAR_CONST_REF_RD_uint1_t_vga_signals_t_vsync_d41d_external_vga_output_c_l42_c11_f5d6_return_output;
     VAR_external_vga_timing_feedback_WRITE_external_vga_output_c_l38_c149_25a5_in_data := VAR_CONST_REF_RD_vga_signals_t_array_1_t_vga_signals_t_array_1_t_5b41_external_vga_output_c_l38_c184_df0f_return_output;
     -- external_vga_timing_feedback_WRITE[external_vga_output_c_l38_c149_25a5] LATENCY=0
     -- Clock enable
     module_to_global.external_vga_timing_feedback_WRITE_CLOCK_ENABLE <= VAR_external_vga_timing_feedback_WRITE_external_vga_output_c_l38_c149_25a5_CLOCK_ENABLE;
     -- Inputs
     module_to_global.external_vga_timing_feedback_WRITE_in_data <= VAR_external_vga_timing_feedback_WRITE_external_vga_output_c_l38_c149_25a5_in_data;

     -- active_color_MUX[external_vga_output_c_l54_c3_71c2] LATENCY=0
     -- Inputs
     active_color_MUX_external_vga_output_c_l54_c3_71c2_cond <= VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_cond;
     active_color_MUX_external_vga_output_c_l54_c3_71c2_iftrue <= VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_iftrue;
     active_color_MUX_external_vga_output_c_l54_c3_71c2_iffalse <= VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_iffalse;
     -- Outputs
     VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_return_output := active_color_MUX_external_vga_output_c_l54_c3_71c2_return_output;

     -- Submodule level 2
     -- CONST_REF_RD_uint8_t_pixel_t_g_d41d[external_vga_output_c_l59_c19_d855] LATENCY=0
     VAR_CONST_REF_RD_uint8_t_pixel_t_g_d41d_external_vga_output_c_l59_c19_d855_return_output := VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_return_output.g;

     -- CONST_REF_RD_uint8_t_pixel_t_r_d41d[external_vga_output_c_l58_c17_eab5] LATENCY=0
     VAR_CONST_REF_RD_uint8_t_pixel_t_r_d41d_external_vga_output_c_l58_c17_eab5_return_output := VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_return_output.r;

     -- CONST_REF_RD_uint8_t_pixel_t_b_d41d[external_vga_output_c_l60_c18_c373] LATENCY=0
     VAR_CONST_REF_RD_uint8_t_pixel_t_b_d41d_external_vga_output_c_l60_c18_c373_return_output := VAR_active_color_MUX_external_vga_output_c_l54_c3_71c2_return_output.b;

     -- Submodule level 3
     REG_VAR_dvi_blue_reg := VAR_CONST_REF_RD_uint8_t_pixel_t_b_d41d_external_vga_output_c_l60_c18_c373_return_output;
     REG_VAR_dvi_green_reg := VAR_CONST_REF_RD_uint8_t_pixel_t_g_d41d_external_vga_output_c_l59_c19_d855_return_output;
     REG_VAR_dvi_red_reg := VAR_CONST_REF_RD_uint8_t_pixel_t_r_d41d_external_vga_output_c_l58_c17_eab5_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_dvi_red_reg <= REG_VAR_dvi_red_reg;
REG_COMB_dvi_green_reg <= REG_VAR_dvi_green_reg;
REG_COMB_dvi_blue_reg <= REG_VAR_dvi_blue_reg;
REG_COMB_vga_reg <= REG_VAR_vga_reg;
     -- Global wires driven various places in pipeline
     module_to_global.vsync <= VAR_vsync;
     module_to_global.hsync <= VAR_hsync;
     module_to_global.dvi_red <= VAR_dvi_red;
     module_to_global.dvi_green <= VAR_dvi_green;
     module_to_global.dvi_blue <= VAR_dvi_blue;
     module_to_global.dvi_active <= VAR_dvi_active;
     module_to_global.dvi_x <= VAR_dvi_x;
     module_to_global.dvi_y <= VAR_dvi_y;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     dvi_red_reg <= REG_COMB_dvi_red_reg;
     dvi_green_reg <= REG_COMB_dvi_green_reg;
     dvi_blue_reg <= REG_COMB_dvi_blue_reg;
     vga_reg <= REG_COMB_vga_reg;
 end if;
 end if;
end process;

end arch;
