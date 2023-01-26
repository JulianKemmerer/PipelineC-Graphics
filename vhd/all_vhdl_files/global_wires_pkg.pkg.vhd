
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.c_structs_pkg.all; -- User types
-- Clock crossings
package global_wires_pkg is

  type vga_timing_global_to_module_t is record
         vga_req_stall : unsigned(0 downto 0);

  end record;

  type ext_vga_global_to_module_t is record
         external_vga_timing_feedback_READ_return_output : vga_signals_t_array_1_t;

  end record;

  type dvi_red_DEBUG_global_to_module_t is record
         dvi_red : unsigned(7 downto 0);

  end record;

  type dvi_green_DEBUG_global_to_module_t is record
         dvi_green : unsigned(7 downto 0);

  end record;

  type dvi_blue_DEBUG_global_to_module_t is record
         dvi_blue : unsigned(7 downto 0);

  end record;

  type vsync_DEBUG_global_to_module_t is record
         vsync : unsigned(0 downto 0);

  end record;

  type hsync_DEBUG_global_to_module_t is record
         hsync : unsigned(0 downto 0);

  end record;

  type dvi_active_DEBUG_global_to_module_t is record
         dvi_active : unsigned(0 downto 0);

  end record;

  type dvi_x_DEBUG_global_to_module_t is record
         dvi_x : unsigned(11 downto 0);

  end record;

  type dvi_y_DEBUG_global_to_module_t is record
         dvi_y : unsigned(11 downto 0);

  end record;

  type sphere_effect_global_to_module_t is record
         state : full_state_t;

  end record;

  type plane_effect_global_to_module_t is record
         state : full_state_t;

  end record;

  type cast_ray_nested_global_to_module_t is record
         state : full_state_t;

    plane_effect_tr_pipelinec_gen_c_l358_c34_cb9c : plane_effect_global_to_module_t;
  end record;

  type shade_global_to_module_t is record
         state : full_state_t;

    cast_ray_nested_tr_pipelinec_gen_c_l378_c28_f218 : cast_ray_nested_global_to_module_t;
  end record;

  type cast_ray_global_to_module_t is record
         state : full_state_t;

    sphere_effect_tr_pipelinec_gen_c_l403_c35_2c9a : sphere_effect_global_to_module_t;
    plane_effect_tr_pipelinec_gen_c_l407_c33_016d : plane_effect_global_to_module_t;
    shade_tr_pipelinec_gen_c_l413_c19_debe : shade_global_to_module_t;
  end record;

  type render_pixel_internal_global_to_module_t is record
         state : full_state_t;

    cast_ray_tr_pipelinec_gen_c_l425_c10_8f9f : cast_ray_global_to_module_t;
  end record;

  type render_pixel_global_to_module_t is record
         state : full_state_t;

    render_pixel_internal_tr_pipelinec_gen_c_l550_c16_85da : render_pixel_internal_global_to_module_t;
  end record;

  type frame_clock_global_to_module_t is record
         frame_clock : unsigned(0 downto 0);

  end record;

  type uart_module_global_to_module_t is record
         uart_data_out : unsigned(0 downto 0);

  end record;

  type read_uart_input_wire_global_to_module_t is record
         uart_data_in : unsigned(0 downto 0);

  end record;

  type uart_rx_mac_global_to_module_t is record
         uart_data_in : unsigned(0 downto 0);
     uart_rx_mac_out_ready : unsigned(0 downto 0);

  end record;

  type uart_tx_mac_global_to_module_t is record
         uart_tx_mac_word_in : uart_mac_s;

  end record;

  type uart_buttons_rx_global_to_module_t is record
         uart_rx_mac_word_out : uart_mac_s;

  end record;

  type uart_buttons_tx_global_to_module_t is record
         frame_clock_rising_edge : unsigned(0 downto 0);
     frame_clock_falling_edge : unsigned(0 downto 0);
     buttons : unsigned(3 downto 0);
     uart_buttons : unsigned(3 downto 0);

  end record;

  type get_user_input_global_to_module_t is record
         buttons_or_uart : unsigned(3 downto 0);

  end record;

  type frame_logic_global_to_module_t is record
    
    get_user_input_pipelinec_app_c_l181_c21_69d9 : get_user_input_global_to_module_t;
  end record;

  type pixel_logic_global_to_module_t is record
    
    vga_timing_pipelinec_app_c_l193_c31_5469 : vga_timing_global_to_module_t;
    render_pixel_pipelinec_app_c_l200_c20_6dd9 : render_pixel_global_to_module_t;
  end record;

  type buttons_module_module_to_global_t is record
         buttons : unsigned(3 downto 0);

  end record;
  

  type ext_vga_module_to_global_t is record
         vga_req_stall : unsigned(0 downto 0);

  end record;
  

  type pmod_register_outputs_module_to_global_t is record
         external_vga_timing_feedback_WRITE_CLOCK_ENABLE : unsigned(0 downto 0);
     external_vga_timing_feedback_WRITE_in_data : vga_signals_t_array_1_t;
     vsync : unsigned(0 downto 0);
     hsync : unsigned(0 downto 0);
     dvi_red : unsigned(7 downto 0);
     dvi_green : unsigned(7 downto 0);
     dvi_blue : unsigned(7 downto 0);
     dvi_active : unsigned(0 downto 0);
     dvi_x : unsigned(11 downto 0);
     dvi_y : unsigned(11 downto 0);

  end record;
  

  type frame_clock_logic_module_to_global_t is record
         frame_clock : unsigned(0 downto 0);
     frame_clock_rising_edge : unsigned(0 downto 0);
     frame_clock_falling_edge : unsigned(0 downto 0);

  end record;
  

  type pixel_module_to_global_t is record
         pixel_clock : unsigned(0 downto 0);

  end record;
  

  type uart_module_module_to_global_t is record
         uart_data_in : unsigned(0 downto 0);

  end record;
  

  type uart_rx_mac_module_to_global_t is record
         uart_rx_mac_word_out : uart_mac_s;

  end record;
  

  type uart_tx_mac_module_to_global_t is record
         uart_data_out : unsigned(0 downto 0);

  end record;
  

  type uart_buttons_rx_module_to_global_t is record
         uart_buttons : unsigned(3 downto 0);
     uart_rx_mac_out_ready : unsigned(0 downto 0);

  end record;
  

  type uart_buttons_tx_module_to_global_t is record
         buttons_or_uart : unsigned(3 downto 0);
     uart_tx_mac_word_in : uart_mac_s;

  end record;
  

  type frame_logic_module_to_global_t is record
         state : full_state_t;

  end record;
  

  type pixel_logic_module_to_global_t is record
    
    frame_clock_logic_pipelinec_app_c_l196_c3_76c1 : frame_clock_logic_module_to_global_t;
    pmod_register_outputs_pipelinec_app_c_l203_c3_57cc : pmod_register_outputs_module_to_global_t;
  end record;
  
type global_to_module_t is record
    ext_vga : ext_vga_global_to_module_t;
    dvi_red_DEBUG : dvi_red_DEBUG_global_to_module_t;
    dvi_green_DEBUG : dvi_green_DEBUG_global_to_module_t;
    dvi_blue_DEBUG : dvi_blue_DEBUG_global_to_module_t;
    vsync_DEBUG : vsync_DEBUG_global_to_module_t;
    hsync_DEBUG : hsync_DEBUG_global_to_module_t;
    dvi_active_DEBUG : dvi_active_DEBUG_global_to_module_t;
    dvi_x_DEBUG : dvi_x_DEBUG_global_to_module_t;
    dvi_y_DEBUG : dvi_y_DEBUG_global_to_module_t;
    frame_clock : frame_clock_global_to_module_t;
    uart_module : uart_module_global_to_module_t;
    uart_rx_mac : uart_rx_mac_global_to_module_t;
    uart_tx_mac : uart_tx_mac_global_to_module_t;
    uart_buttons_rx : uart_buttons_rx_global_to_module_t;
    uart_buttons_tx : uart_buttons_tx_global_to_module_t;
    frame_logic : frame_logic_global_to_module_t;
    pixel_logic : pixel_logic_global_to_module_t;
  end record;
  
  type module_to_global_t is record
    buttons_module : buttons_module_module_to_global_t;
    ext_vga : ext_vga_module_to_global_t;
    pixel : pixel_module_to_global_t;
    uart_module : uart_module_module_to_global_t;
    uart_rx_mac : uart_rx_mac_module_to_global_t;
    uart_tx_mac : uart_tx_mac_module_to_global_t;
    uart_buttons_rx : uart_buttons_rx_module_to_global_t;
    uart_buttons_tx : uart_buttons_tx_module_to_global_t;
    frame_logic : frame_logic_module_to_global_t;
    pixel_logic : pixel_logic_module_to_global_t;
  end record;
  
  
end global_wires_pkg;
