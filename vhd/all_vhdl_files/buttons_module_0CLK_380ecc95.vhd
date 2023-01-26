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
entity buttons_module_0CLK_380ecc95 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 module_to_global : out buttons_module_module_to_global_t;
 btn : in unsigned(3 downto 0));
end buttons_module_0CLK_380ecc95;
architecture arch of buttons_module_0CLK_380ecc95 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal btn_cdc_registers : uint4_t_2 := (others => to_unsigned(0, 4));
signal REG_COMB_btn_cdc_registers : uint4_t_2;

-- Each function instance gets signals
function CONST_REF_RD_uint4_t_2_uint4_t_2_90b8( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return uint4_t_2 is
 
  variable base : uint4_t_2; 
  variable return_output : uint4_t_2;
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
 btn,
 -- Registers
 btn_cdc_registers)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_btn : unsigned(3 downto 0);
 variable VAR_buttons : unsigned(3 downto 0);
 variable VAR_registered : unsigned(3 downto 0);
 variable VAR_btn_cdc_i : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint4_t_uint4_t_2_0_d41d_buttons_c_l23_c70_9689_return_output : unsigned(3 downto 0);
 variable VAR_FOR_buttons_c_l23_c91_fa8b_ITER_0_CONST_REF_RD_uint4_t_uint4_t_2_1_d41d_buttons_c_l23_c170_fea4_return_output : unsigned(3 downto 0);
 variable VAR_CONST_REF_RD_uint4_t_2_uint4_t_2_90b8_buttons_c_l14_c6_6bce_return_output : uint4_t_2;
 -- State registers comb logic variables
variable REG_VAR_btn_cdc_registers : uint4_t_2;
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_btn_cdc_registers := btn_cdc_registers;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE := CLOCK_ENABLE;
     -- Mux in inputs
     VAR_btn := btn;

     -- Submodule level 0
     -- CONST_REF_RD_uint4_t_uint4_t_2_0_d41d[buttons_c_l23_c70_9689] LATENCY=0
     VAR_CONST_REF_RD_uint4_t_uint4_t_2_0_d41d_buttons_c_l23_c70_9689_return_output := btn_cdc_registers(0);

     -- FOR_buttons_c_l23_c91_fa8b_ITER_0_CONST_REF_RD_uint4_t_uint4_t_2_1_d41d[buttons_c_l23_c170_fea4] LATENCY=0
     VAR_FOR_buttons_c_l23_c91_fa8b_ITER_0_CONST_REF_RD_uint4_t_uint4_t_2_1_d41d_buttons_c_l23_c170_fea4_return_output := btn_cdc_registers(1);

     -- Submodule level 1
     VAR_buttons := VAR_CONST_REF_RD_uint4_t_uint4_t_2_0_d41d_buttons_c_l23_c70_9689_return_output;
     -- CONST_REF_RD_uint4_t_2_uint4_t_2_90b8[buttons_c_l14_c6_6bce] LATENCY=0
     VAR_CONST_REF_RD_uint4_t_2_uint4_t_2_90b8_buttons_c_l14_c6_6bce_return_output := CONST_REF_RD_uint4_t_2_uint4_t_2_90b8(
     VAR_FOR_buttons_c_l23_c91_fa8b_ITER_0_CONST_REF_RD_uint4_t_uint4_t_2_1_d41d_buttons_c_l23_c170_fea4_return_output,
     VAR_btn);

     -- Submodule level 2
     REG_VAR_btn_cdc_registers := VAR_CONST_REF_RD_uint4_t_2_uint4_t_2_90b8_buttons_c_l14_c6_6bce_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_btn_cdc_registers <= REG_VAR_btn_cdc_registers;
     -- Global wires driven various places in pipeline
     module_to_global.buttons <= VAR_buttons;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if CLOCK_ENABLE(0)='1' then
     btn_cdc_registers <= REG_COMB_btn_cdc_registers;
 end if;
 end if;
end process;

end arch;
