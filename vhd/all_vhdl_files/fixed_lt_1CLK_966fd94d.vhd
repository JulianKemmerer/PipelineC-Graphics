-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.2021440656073785]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 1
entity fixed_lt_1CLK_966fd94d is
port(
 clk : in std_logic;
 left : in fixed;
 right : in fixed;
 return_output : out unsigned(0 downto 0));
end fixed_lt_1CLK_966fd94d;
architecture arch of fixed_lt_1CLK_966fd94d is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;
-- All of the wires/regs in function
-- Stage 0
-- Each function instance gets signals
-- BIN_OP_LT[fixed_type_h_l206_c56_680b]
signal BIN_OP_LT_fixed_type_h_l206_c56_680b_left : signed(21 downto 0);
signal BIN_OP_LT_fixed_type_h_l206_c56_680b_right : signed(21 downto 0);
signal BIN_OP_LT_fixed_type_h_l206_c56_680b_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_LT_fixed_type_h_l206_c56_680b
BIN_OP_LT_fixed_type_h_l206_c56_680b : entity work.BIN_OP_LT_int22_t_int22_t_1CLK_9adc70c6 port map (
clk,
BIN_OP_LT_fixed_type_h_l206_c56_680b_left,
BIN_OP_LT_fixed_type_h_l206_c56_680b_right,
BIN_OP_LT_fixed_type_h_l206_c56_680b_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- Registers
 -- Stage 0
 -- All submodule outputs
 BIN_OP_LT_fixed_type_h_l206_c56_680b_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left : fixed;
 variable VAR_right : fixed;
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l206_c56_e064_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_LT_fixed_type_h_l206_c56_680b_left : signed(21 downto 0);
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l206_c65_1a9f_return_output : signed(21 downto 0);
 variable VAR_BIN_OP_LT_fixed_type_h_l206_c56_680b_right : signed(21 downto 0);
 variable VAR_BIN_OP_LT_fixed_type_h_l206_c56_680b_return_output : unsigned(0 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l206_c65_1a9f] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l206_c65_1a9f_return_output := VAR_right.f;

     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l206_c56_e064] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l206_c56_e064_return_output := VAR_left.f;

     -- Submodule level 1
     VAR_BIN_OP_LT_fixed_type_h_l206_c56_680b_left := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l206_c56_e064_return_output;
     VAR_BIN_OP_LT_fixed_type_h_l206_c56_680b_right := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l206_c65_1a9f_return_output;
     -- BIN_OP_LT[fixed_type_h_l206_c56_680b] LATENCY=1
     -- Inputs
     BIN_OP_LT_fixed_type_h_l206_c56_680b_left <= VAR_BIN_OP_LT_fixed_type_h_l206_c56_680b_left;
     BIN_OP_LT_fixed_type_h_l206_c56_680b_right <= VAR_BIN_OP_LT_fixed_type_h_l206_c56_680b_right;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_LT_fixed_type_h_l206_c56_680b_return_output := BIN_OP_LT_fixed_type_h_l206_c56_680b_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_BIN_OP_LT_fixed_type_h_l206_c56_680b_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
     -- Stage 0
 end if;
end process;

end arch;
