library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.c_structs_pkg.all;
use work.global_wires_pkg.all;

  entity top is
port(
clk_148p5_out : out std_logic;
clk_60p0hz_out : out std_logic;

-- IO for each main func
buttons_module_btn : in unsigned(3 downto 0);
ext_vga_x : in unsigned(15 downto 0);
ext_vga_y : in unsigned(15 downto 0);
dvi_red_DEBUG_return_output : out unsigned(7 downto 0);
dvi_green_DEBUG_return_output : out unsigned(7 downto 0);
dvi_blue_DEBUG_return_output : out unsigned(7 downto 0);
vsync_DEBUG_return_output : out unsigned(0 downto 0);
hsync_DEBUG_return_output : out unsigned(0 downto 0);
dvi_active_DEBUG_return_output : out unsigned(0 downto 0);
dvi_x_DEBUG_return_output : out unsigned(11 downto 0);
dvi_y_DEBUG_return_output : out unsigned(11 downto 0);
frame_clock_return_output : out unsigned(0 downto 0);
pixel_clock : in unsigned(0 downto 0);
uart_module_data_in : in unsigned(0 downto 0);
uart_module_return_output : out unsigned(0 downto 0)
  );
end top;
architecture arch of top is

attribute syn_keep : boolean;
attribute keep : string;
attribute dont_touch : string;

-- User defined clocks
signal clk_148p5 : std_logic;
attribute syn_keep of clk_148p5: signal is true;
attribute keep of clk_148p5: signal is "true";
attribute dont_touch of clk_148p5: signal is "true";
signal clk_60p0hz : std_logic;
attribute syn_keep of clk_60p0hz: signal is true;
attribute keep of clk_60p0hz: signal is "true";
attribute dont_touch of clk_60p0hz: signal is "true";

-- Global/clock crossing wires from modules to global area
signal module_to_global : module_to_global_t;
-- Global/clock crossing wires from the global area to modules
signal global_to_module : global_to_module_t;
signal clk_cross_external_vga_timing_feedback_return_output : vga_signals_t_array_1_t;

begin
-- User defined clocks
clk_60p0hz <= module_to_global.pixel_logic.frame_clock_logic_pipelinec_app_c_l196_c3_76c1.frame_clock(0);
clk_60p0hz_out <= clk_60p0hz;
clk_148p5 <= module_to_global.pixel.pixel_clock(0);
clk_148p5_out <= clk_148p5;

-- Instantiate each main
-- main functions are always clock enabled, always running
buttons_module_0CLK_380ecc95 : entity work.buttons_module_0CLK_380ecc95 port map (
clk_148p5,
to_unsigned(1,1),
module_to_global.buttons_module,
buttons_module_btn);

ext_vga_0CLK_83e31706 : entity work.ext_vga_0CLK_83e31706 port map (
clk_148p5,
to_unsigned(1,1),
global_to_module.ext_vga,
module_to_global.ext_vga,
ext_vga_x,
ext_vga_y);

dvi_red_DEBUG_0CLK_de264c78 : entity work.dvi_red_DEBUG_0CLK_de264c78 port map (
global_to_module.dvi_red_DEBUG,
dvi_red_DEBUG_return_output);

dvi_green_DEBUG_0CLK_de264c78 : entity work.dvi_green_DEBUG_0CLK_de264c78 port map (
global_to_module.dvi_green_DEBUG,
dvi_green_DEBUG_return_output);

dvi_blue_DEBUG_0CLK_de264c78 : entity work.dvi_blue_DEBUG_0CLK_de264c78 port map (
global_to_module.dvi_blue_DEBUG,
dvi_blue_DEBUG_return_output);

vsync_DEBUG_0CLK_de264c78 : entity work.vsync_DEBUG_0CLK_de264c78 port map (
global_to_module.vsync_DEBUG,
vsync_DEBUG_return_output);

hsync_DEBUG_0CLK_de264c78 : entity work.hsync_DEBUG_0CLK_de264c78 port map (
global_to_module.hsync_DEBUG,
hsync_DEBUG_return_output);

dvi_active_DEBUG_0CLK_de264c78 : entity work.dvi_active_DEBUG_0CLK_de264c78 port map (
global_to_module.dvi_active_DEBUG,
dvi_active_DEBUG_return_output);

dvi_x_DEBUG_0CLK_de264c78 : entity work.dvi_x_DEBUG_0CLK_de264c78 port map (
global_to_module.dvi_x_DEBUG,
dvi_x_DEBUG_return_output);

dvi_y_DEBUG_0CLK_de264c78 : entity work.dvi_y_DEBUG_0CLK_de264c78 port map (
global_to_module.dvi_y_DEBUG,
dvi_y_DEBUG_return_output);

frame_clock_0CLK_de264c78 : entity work.frame_clock_0CLK_de264c78 port map (
global_to_module.frame_clock,
frame_clock_return_output);

pixel_0CLK_de264c78 : entity work.pixel_0CLK_de264c78 port map (
module_to_global.pixel,
pixel_clock);

uart_module_0CLK_380ecc95 : entity work.uart_module_0CLK_380ecc95 port map (
clk_148p5,
to_unsigned(1,1),
global_to_module.uart_module,
module_to_global.uart_module,
uart_module_data_in,
uart_module_return_output);

uart_rx_mac_0CLK_b7ac2955 : entity work.uart_rx_mac_0CLK_b7ac2955 port map (
clk_148p5,
to_unsigned(1,1),
global_to_module.uart_rx_mac,
module_to_global.uart_rx_mac);

uart_tx_mac_0CLK_1172510e : entity work.uart_tx_mac_0CLK_1172510e port map (
clk_148p5,
to_unsigned(1,1),
global_to_module.uart_tx_mac,
module_to_global.uart_tx_mac);

uart_buttons_rx_0CLK_380ecc95 : entity work.uart_buttons_rx_0CLK_380ecc95 port map (
clk_148p5,
to_unsigned(1,1),
global_to_module.uart_buttons_rx,
module_to_global.uart_buttons_rx);

uart_buttons_tx_0CLK_380ecc95 : entity work.uart_buttons_tx_0CLK_380ecc95 port map (
clk_148p5,
to_unsigned(1,1),
global_to_module.uart_buttons_tx,
module_to_global.uart_buttons_tx);

frame_logic_0CLK_3b45510c : entity work.frame_logic_0CLK_3b45510c port map (
clk_60p0hz,
to_unsigned(1,1),
global_to_module.frame_logic,
module_to_global.frame_logic);

pixel_logic_368CLK_e22c77be : entity work.pixel_logic_368CLK_e22c77be port map (
clk_148p5,
to_unsigned(1,1),
global_to_module.pixel_logic,
module_to_global.pixel_logic);


-- Instantiate each unidirectional data clock crossing
external_vga_timing_feedback : entity work.clk_cross_external_vga_timing_feedback port map
(
in_clk => clk_148p5,
in_clk_en => module_to_global.pixel_logic.pmod_register_outputs_pipelinec_app_c_l203_c3_57cc.external_vga_timing_feedback_WRITE_CLOCK_ENABLE,
in_data => module_to_global.pixel_logic.pmod_register_outputs_pipelinec_app_c_l203_c3_57cc.external_vga_timing_feedback_WRITE_in_data,
out_clk => clk_148p5,
rd_return_output => clk_cross_external_vga_timing_feedback_return_output
);
global_to_module.ext_vga.external_vga_timing_feedback_READ_return_output <= clk_cross_external_vga_timing_feedback_return_output;


-- Directly connected global register read wires
global_to_module.dvi_red_DEBUG.dvi_red <= module_to_global.pixel_logic.pmod_register_outputs_pipelinec_app_c_l203_c3_57cc.dvi_red;

global_to_module.dvi_y_DEBUG.dvi_y <= module_to_global.pixel_logic.pmod_register_outputs_pipelinec_app_c_l203_c3_57cc.dvi_y;

global_to_module.frame_clock.frame_clock <= module_to_global.pixel_logic.frame_clock_logic_pipelinec_app_c_l196_c3_76c1.frame_clock;

global_to_module.uart_buttons_tx.frame_clock_rising_edge <= module_to_global.pixel_logic.frame_clock_logic_pipelinec_app_c_l196_c3_76c1.frame_clock_rising_edge;

global_to_module.uart_buttons_rx.uart_rx_mac_word_out <= module_to_global.uart_rx_mac.uart_rx_mac_word_out;

global_to_module.dvi_blue_DEBUG.dvi_blue <= module_to_global.pixel_logic.pmod_register_outputs_pipelinec_app_c_l203_c3_57cc.dvi_blue;

global_to_module.pixel_logic.render_pixel_pipelinec_app_c_l200_c20_6dd9.render_pixel_internal_tr_pipelinec_gen_c_l550_c16_85da.state <= module_to_global.frame_logic.state;
global_to_module.pixel_logic.render_pixel_pipelinec_app_c_l200_c20_6dd9.render_pixel_internal_tr_pipelinec_gen_c_l550_c16_85da.cast_ray_tr_pipelinec_gen_c_l425_c10_8f9f.plane_effect_tr_pipelinec_gen_c_l407_c33_016d.state <= module_to_global.frame_logic.state;
global_to_module.pixel_logic.render_pixel_pipelinec_app_c_l200_c20_6dd9.render_pixel_internal_tr_pipelinec_gen_c_l550_c16_85da.cast_ray_tr_pipelinec_gen_c_l425_c10_8f9f.sphere_effect_tr_pipelinec_gen_c_l403_c35_2c9a.state <= module_to_global.frame_logic.state;
global_to_module.pixel_logic.render_pixel_pipelinec_app_c_l200_c20_6dd9.render_pixel_internal_tr_pipelinec_gen_c_l550_c16_85da.cast_ray_tr_pipelinec_gen_c_l425_c10_8f9f.shade_tr_pipelinec_gen_c_l413_c19_debe.state <= module_to_global.frame_logic.state;
global_to_module.pixel_logic.render_pixel_pipelinec_app_c_l200_c20_6dd9.state <= module_to_global.frame_logic.state;
global_to_module.pixel_logic.render_pixel_pipelinec_app_c_l200_c20_6dd9.render_pixel_internal_tr_pipelinec_gen_c_l550_c16_85da.cast_ray_tr_pipelinec_gen_c_l425_c10_8f9f.shade_tr_pipelinec_gen_c_l413_c19_debe.cast_ray_nested_tr_pipelinec_gen_c_l378_c28_f218.plane_effect_tr_pipelinec_gen_c_l358_c34_cb9c.state <= module_to_global.frame_logic.state;
global_to_module.pixel_logic.render_pixel_pipelinec_app_c_l200_c20_6dd9.render_pixel_internal_tr_pipelinec_gen_c_l550_c16_85da.cast_ray_tr_pipelinec_gen_c_l425_c10_8f9f.shade_tr_pipelinec_gen_c_l413_c19_debe.cast_ray_nested_tr_pipelinec_gen_c_l378_c28_f218.state <= module_to_global.frame_logic.state;
global_to_module.pixel_logic.render_pixel_pipelinec_app_c_l200_c20_6dd9.render_pixel_internal_tr_pipelinec_gen_c_l550_c16_85da.cast_ray_tr_pipelinec_gen_c_l425_c10_8f9f.state <= module_to_global.frame_logic.state;

global_to_module.uart_tx_mac.uart_tx_mac_word_in <= module_to_global.uart_buttons_tx.uart_tx_mac_word_in;

global_to_module.pixel_logic.vga_timing_pipelinec_app_c_l193_c31_5469.vga_req_stall <= module_to_global.ext_vga.vga_req_stall;

global_to_module.hsync_DEBUG.hsync <= module_to_global.pixel_logic.pmod_register_outputs_pipelinec_app_c_l203_c3_57cc.hsync;

global_to_module.uart_module.uart_data_out <= module_to_global.uart_tx_mac.uart_data_out;

global_to_module.dvi_x_DEBUG.dvi_x <= module_to_global.pixel_logic.pmod_register_outputs_pipelinec_app_c_l203_c3_57cc.dvi_x;

global_to_module.uart_buttons_tx.frame_clock_falling_edge <= module_to_global.pixel_logic.frame_clock_logic_pipelinec_app_c_l196_c3_76c1.frame_clock_falling_edge;


global_to_module.frame_logic.get_user_input_pipelinec_app_c_l181_c21_69d9.buttons_or_uart <= module_to_global.uart_buttons_tx.buttons_or_uart;

global_to_module.uart_buttons_tx.buttons <= module_to_global.buttons_module.buttons;

global_to_module.vsync_DEBUG.vsync <= module_to_global.pixel_logic.pmod_register_outputs_pipelinec_app_c_l203_c3_57cc.vsync;

global_to_module.dvi_active_DEBUG.dvi_active <= module_to_global.pixel_logic.pmod_register_outputs_pipelinec_app_c_l203_c3_57cc.dvi_active;

global_to_module.uart_buttons_tx.uart_buttons <= module_to_global.uart_buttons_rx.uart_buttons;

global_to_module.uart_rx_mac.uart_data_in <= module_to_global.uart_module.uart_data_in;

global_to_module.uart_rx_mac.uart_rx_mac_out_ready <= module_to_global.uart_buttons_rx.uart_rx_mac_out_ready;

global_to_module.dvi_green_DEBUG.dvi_green <= module_to_global.pixel_logic.pmod_register_outputs_pipelinec_app_c_l203_c3_57cc.dvi_green;


end arch;
