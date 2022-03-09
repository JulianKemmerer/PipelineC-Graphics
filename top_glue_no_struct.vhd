library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.c_structs_pkg.all;

entity top_glue_no_struct is
port(
    videoclk : in std_logic;
    render_pixel_interactive_x : in unsigned(15 downto 0);
    render_pixel_interactive_y : in unsigned(15 downto 0);
    render_pixel_interactive_reset : in unsigned(0 downto 0);
    render_pixel_interactive_vsync : in unsigned(0 downto 0);
    render_pixel_interactive_button : in unsigned(0 downto 0);
    render_pixel_interactive_return_output_a : out unsigned(7 downto 0);
    render_pixel_interactive_return_output_b : out unsigned(7 downto 0);
    render_pixel_interactive_return_output_g : out unsigned(7 downto 0);
    render_pixel_interactive_return_output_r : out unsigned(7 downto 0)
);
end top_glue_no_struct;

architecture arch of top_glue_no_struct is 
begin

top_inst : entity work.top
port map(
    clk_25p0 => videoclk,
    render_pixel_interactive_x => render_pixel_interactive_x,
    render_pixel_interactive_y => render_pixel_interactive_y,
    render_pixel_interactive_reset => render_pixel_interactive_reset,
    render_pixel_interactive_vsync => render_pixel_interactive_vsync,
    render_pixel_interactive_button => render_pixel_interactive_button,
    render_pixel_interactive_return_output.a => render_pixel_interactive_return_output_a,
    render_pixel_interactive_return_output.b => render_pixel_interactive_return_output_b,
    render_pixel_interactive_return_output.g => render_pixel_interactive_return_output_g,
    render_pixel_interactive_return_output.r => render_pixel_interactive_return_output_r
);

end arch;
