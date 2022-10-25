-- Wrap PipelineC top level VHDL module in another VHDL module that does not use structs
-- This is so the VHDL can be instantiated directly in Verilog (which does not support structs)
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.c_structs_pkg.all;

entity top_glue_no_struct is
port(
    videoclk : in std_logic;
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

begin

top_inst : entity work.top 
port map(
    pixel_clock(0) => videoclk,
    buttons_module_btn(0) => jump_pressed(0),
    buttons_module_btn(1) => '0',
    buttons_module_btn(2) => '0',
    buttons_module_btn(3) => reset(0),
    ext_vga_x => video_x,
    ext_vga_y => video_y,
    vga_return_output.a => pixel_a,
    vga_return_output.r => pixel_r,
    vga_return_output.g => pixel_g,
    vga_return_output.b => pixel_b,
    uart_module_data_in(0) => '0' --FIXME: export to LiteX SoC design
    --uart_module_return_output(0) => ... 
);

end arch;
