library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.c_structs_pkg.all;
use work.clk_cross_t_pkg.all;

entity top_glue_no_struct is
generic(
    pixel_logic_latency : integer := 0;
);
port(
    videoclk : in std_logic;
    video_x : in unsigned(15 downto 0);
    video_y : in unsigned(15 downto 0);
    jump_pressed : in unsigned(0 downto 0);
    pixel_a : out unsigned(7 downto 0);
    pixel_r : out unsigned(7 downto 0);
    pixel_g : out unsigned(7 downto 0);
    pixel_b : out unsigned(7 downto 0)
);
end top_glue_no_struct;

architecture arch of top_glue_no_struct is 

-- Clock cross wires
signal frame_clock : std_logic;
signal state : full_state_t;
signal clk_cross_to_module : clk_cross_to_module_t;

begin

-- VHDL fix to match generated hashes in code
clk_cross_to_module.pixel_logic.render_pixel_pipelinec_app_c_l94_c20_3fa4.get_scene_tr_pipelinec_gen_c_l377_c19_18d6.state_wire_READ_return_output <= state;

pixel_logic_inst : entity work.pixel_logic_NCLK_HASH_TODO
port map(
    clk => videoclk,
    CLOCK_ENABLE => to_unsigned(1,1),
    clk_cross_to_module => clk_cross_to_module.pixel_logic,
    x => video_x,
    y => video_y,
    latency => to_unsigned(pixel_logic_latency, 16),
    return_output.color.a => pixel_a,
    return_output.color.r => pixel_r,
    return_output.color.g => pixel_g,
    return_output.color.b => pixel_b,
    return_output.frame_clock(0) => frame_clock
);

frame_logic_inst : entity work.frame_logic_0CLK_HASH_TODO
port map(
    clk => frame_clock,
    CLOCK_ENABLE => to_unsigned(1,1),
    jump_pressed => jump_pressed,
    return_output => state
);

end arch;
