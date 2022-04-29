library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.c_structs_pkg.all;

entity top_glue_no_struct is
port(
    videoclk : in std_logic;
    video_active : in std_logic;
    video_x : in unsigned(15 downto 0);
    video_y : in unsigned(15 downto 0);
    reset : in unsigned(0 downto 0);
    jump_pressed : in unsigned(0 downto 0);
    pixel_a : out unsigned(7 downto 0);
    pixel_r : out unsigned(7 downto 0);
    pixel_g : out unsigned(7 downto 0);
    pixel_b : out unsigned(7 downto 0)
);
end top_glue_no_struct;

architecture arch of top_glue_no_struct is 

-- Unused
signal vga_timing : vga_signals_t;

begin

top_inst : entity work.top 
port map(
    clk_25p0 => videoclk,
    buttons_module_btn(0) => jump_pressed(0),
    buttons_module_btn(1) => '0',
    buttons_module_btn(2) => '0',
    buttons_module_btn(3) => reset(0),
    ext_vga_active(0) => video_active,
    ext_vga_x => video_x,
    ext_vga_y => video_y,
    vga_return_output.color.a => pixel_a,
    vga_return_output.color.r => pixel_r,
    vga_return_output.color.g => pixel_g,
    vga_return_output.color.b => pixel_b,
    vga_return_output.vga_timing => vga_timing -- Unused but cannot be OPEN
);

end arch;
