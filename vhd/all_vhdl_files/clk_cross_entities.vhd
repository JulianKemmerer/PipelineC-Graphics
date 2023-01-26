
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.c_structs_pkg.all; -- User types

    entity clk_cross_external_vga_timing_feedback is
    port(
      in_clk : in std_logic;

      in_clk_en : in unsigned(0 downto 0);

      in_data : in vga_signals_t_array_1_t;

      out_clk : in std_logic;

      rd_return_output : out vga_signals_t_array_1_t

    );
    end clk_cross_external_vga_timing_feedback;
    architecture arch of clk_cross_external_vga_timing_feedback is
    
      constant CLK_RATIO : integer := 1;
      constant CLK_RATIO_MINUS1 : integer := 0;
      
      signal clock_disabled_value_r : vga_signals_t_array_1_t := vga_signals_t_array_1_t_NULL;
    begin
       
      -- Same clock with clock disabled past value holding reg
      process(in_clk, in_clk_en) is
      begin
        if rising_edge(in_clk) and in_clk_en(0) = '1' then
          clock_disabled_value_r <= in_data;
        end if;
      end process;
      
      -- Mux current in value or past value
      process(in_data,in_clk_en,clock_disabled_value_r) is
      begin
        if in_clk_en(0) = '1' then
          rd_return_output <= in_data;
        else
          rd_return_output <= clock_disabled_value_r;
        end if;
      end process;
          
    end arch;
    