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
-- Submodules: 1
entity uart_module_0CLK_380ecc95 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in uart_module_global_to_module_t;
 module_to_global : out uart_module_module_to_global_t;
 data_in : in unsigned(0 downto 0);
 return_output : out unsigned(0 downto 0));
end uart_module_0CLK_380ecc95;
architecture arch of uart_module_0CLK_380ecc95 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal in_cdc_registers : uint1_t_2 := (others => to_unsigned(0, 1));
signal REG_COMB_in_cdc_registers : uint1_t_2;

-- Each function instance gets signals
function CONST_REF_RD_uint1_t_2_uint1_t_2_90b8( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return uint1_t_2 is
 
  variable base : uint1_t_2; 
  variable return_output : uint1_t_2;
begin
      base(0) := ref_toks_0;
      base(1) := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 


-- Combinatorial process for pipeline stages
process (
 CLOCK_ENABLE,
 -- Inputs
 data_in,
 -- Registers
 in_cdc_registers,
 -- Clock cross input
 global_to_module)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_data_in : unsigned(0 downto 0);
 variable VAR_uart_data_in : unsigned(0 downto 0);
 variable VAR_uart_data_out : unsigned(0 downto 0);
 variable VAR_data_in_registered : unsigned(0 downto 0);
 variable VAR_in_cdc_i : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_2_0_d41d_uart_ports_c_l39_c76_6112_return_output : unsigned(0 downto 0);
 variable VAR_FOR_uart_ports_c_l39_c96_5179_ITER_0_CONST_REF_RD_uint1_t_uint1_t_2_1_d41d_uart_ports_c_l39_c170_74d2_return_output : unsigned(0 downto 0);
 variable VAR_data_out : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_2_uint1_t_2_90b8_uart_ports_c_l35_c9_879b_return_output : uint1_t_2;
 -- State registers comb logic variables
variable REG_VAR_in_cdc_registers : uint1_t_2;
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_in_cdc_registers := in_cdc_registers;
 -- Reads from global variables
     VAR_uart_data_out := global_to_module.uart_data_out;
     -- Submodule level 0
     VAR_return_output := VAR_uart_data_out;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;
     -- Mux in inputs
     VAR_data_in := data_in;

     -- Submodule level 0
     -- FOR_uart_ports_c_l39_c96_5179_ITER_0_CONST_REF_RD_uint1_t_uint1_t_2_1_d41d[uart_ports_c_l39_c170_74d2] LATENCY=0
     VAR_FOR_uart_ports_c_l39_c96_5179_ITER_0_CONST_REF_RD_uint1_t_uint1_t_2_1_d41d_uart_ports_c_l39_c170_74d2_return_output := in_cdc_registers(1);

     -- CONST_REF_RD_uint1_t_uint1_t_2_0_d41d[uart_ports_c_l39_c76_6112] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_2_0_d41d_uart_ports_c_l39_c76_6112_return_output := in_cdc_registers(0);

     -- Submodule level 1
     VAR_uart_data_in := VAR_CONST_REF_RD_uint1_t_uint1_t_2_0_d41d_uart_ports_c_l39_c76_6112_return_output;
     -- CONST_REF_RD_uint1_t_2_uint1_t_2_90b8[uart_ports_c_l35_c9_879b] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_2_uint1_t_2_90b8_uart_ports_c_l35_c9_879b_return_output := CONST_REF_RD_uint1_t_2_uint1_t_2_90b8(
     VAR_FOR_uart_ports_c_l39_c96_5179_ITER_0_CONST_REF_RD_uint1_t_uint1_t_2_1_d41d_uart_ports_c_l39_c170_74d2_return_output,
     VAR_data_in);

     -- Submodule level 2
     REG_VAR_in_cdc_registers := VAR_CONST_REF_RD_uint1_t_2_uint1_t_2_90b8_uart_ports_c_l35_c9_879b_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_in_cdc_registers <= REG_VAR_in_cdc_registers;
     -- Global wires driven various places in pipeline
     module_to_global.uart_data_in <= VAR_uart_data_in;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     in_cdc_registers <= REG_COMB_in_cdc_registers;
 end if;
 end if;
end process;

end arch;
