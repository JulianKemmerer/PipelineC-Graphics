library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.c_structs_pkg.all;

entity top_glue_no_struct is
generic(
    pixel_logic_latency : integer := 0
);
port(
    videoclk : in std_logic;
    video_x : in unsigned(15 downto 0);
    video_y : in unsigned(15 downto 0);
    vsync : in unsigned(0 downto 0);
    reset : in unsigned(0 downto 0);
    jump_pressed : in unsigned(0 downto 0);
    pixel_a : out unsigned(7 downto 0);
    pixel_r : out unsigned(7 downto 0);
    pixel_g : out unsigned(7 downto 0);
    pixel_b : out unsigned(7 downto 0)
);
end top_glue_no_struct;

architecture arch of top_glue_no_struct is 

begin

top_inst : entity work.top 
port map(
    clk_25p0 => videoclk,
    clk_60p0hz_out => open,
    pixel_logic_x => video_x,
    pixel_logic_y => video_y,
    pixel_logic_latency => to_unsigned(pixel_logic_latency, 16),
    pixel_logic_return_output.color.a => pixel_a,
    pixel_logic_return_output.color.r => pixel_r,
    pixel_logic_return_output.color.g => pixel_g,
    pixel_logic_return_output.color.b => pixel_b,
    pixel_logic_return_output.frame_clock(0) => frame_clock,
    frame_logic_reset_pressed => reset,
    frame_logic_jump_pressed => jump_pressed
);

end arch;
