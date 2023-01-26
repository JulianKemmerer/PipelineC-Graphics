-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.02187848134261602, 0.8384576960288708]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 2
entity fixed_to_float_4CLK_4a0c67e4 is
port(
 clk : in std_logic;
 a : in fixed;
 return_output : out std_logic_vector(22 downto 0));
end fixed_to_float_4CLK_4a0c67e4;
architecture arch of fixed_to_float_4CLK_4a0c67e4 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 4;
-- All of the wires/regs in function
-- Stage 0
-- Stage 1
-- Stage 2
-- Stage 3
-- Each function instance gets signals
-- CAST_TO_float_8_14_t[fixed_type_h_l169_c49_db37]
signal CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_rhs : signed(21 downto 0);
signal CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_SL[fixed_type_h_l169_c49_27fa]
signal BIN_OP_SL_fixed_type_h_l169_c49_27fa_left : std_logic_vector(22 downto 0);
signal BIN_OP_SL_fixed_type_h_l169_c49_27fa_right : signed(4 downto 0);
signal BIN_OP_SL_fixed_type_h_l169_c49_27fa_return_output : std_logic_vector(22 downto 0);


begin

-- SUBMODULE INSTANCES 
-- CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37
CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37 : entity work.CAST_TO_float_8_14_t_int22_t_3CLK_489e4d91 port map (
clk,
CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_rhs,
CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_return_output);

-- BIN_OP_SL_fixed_type_h_l169_c49_27fa
BIN_OP_SL_fixed_type_h_l169_c49_27fa : entity work.BIN_OP_SL_float_8_14_t_int5_t_1CLK_0de31430 port map (
clk,
BIN_OP_SL_fixed_type_h_l169_c49_27fa_left,
BIN_OP_SL_fixed_type_h_l169_c49_27fa_right,
BIN_OP_SL_fixed_type_h_l169_c49_27fa_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 a,
 -- Registers
 -- Stage 0
 -- Stage 1
 -- Stage 2
 -- Stage 3
 -- All submodule outputs
 CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_return_output,
 BIN_OP_SL_fixed_type_h_l169_c49_27fa_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : std_logic_vector(22 downto 0);
 variable VAR_a : fixed;
 variable VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l169_c63_9aa4_return_output : signed(21 downto 0);
 variable VAR_CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_rhs : signed(21 downto 0);
 variable VAR_CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_fixed_type_h_l169_c49_27fa_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_fixed_type_h_l169_c49_27fa_right : signed(4 downto 0);
 variable VAR_BIN_OP_SL_fixed_type_h_l169_c49_27fa_return_output : std_logic_vector(22 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_SL_fixed_type_h_l169_c49_27fa_right := to_signed(-10, 5);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_a := a;

     -- Submodule level 0
     -- CONST_REF_RD_int22_t_fixed_f_d41d[fixed_type_h_l169_c63_9aa4] LATENCY=0
     VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l169_c63_9aa4_return_output := VAR_a.f;

     -- Submodule level 1
     VAR_CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_rhs := VAR_CONST_REF_RD_int22_t_fixed_f_d41d_fixed_type_h_l169_c63_9aa4_return_output;
     -- CAST_TO_float_8_14_t[fixed_type_h_l169_c49_db37] LATENCY=3
     -- Inputs
     CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_rhs <= VAR_CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_rhs;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 2 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 3 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_return_output := CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_return_output;

     -- Submodule level 0
     VAR_BIN_OP_SL_fixed_type_h_l169_c49_27fa_left := VAR_CAST_TO_float_8_14_t_fixed_type_h_l169_c49_db37_return_output;
     -- BIN_OP_SL[fixed_type_h_l169_c49_27fa] LATENCY=1
     -- Inputs
     BIN_OP_SL_fixed_type_h_l169_c49_27fa_left <= VAR_BIN_OP_SL_fixed_type_h_l169_c49_27fa_left;
     BIN_OP_SL_fixed_type_h_l169_c49_27fa_right <= VAR_BIN_OP_SL_fixed_type_h_l169_c49_27fa_right;

     -- Write to comb signals
   elsif STAGE = 4 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_SL_fixed_type_h_l169_c49_27fa_return_output := BIN_OP_SL_fixed_type_h_l169_c49_27fa_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_BIN_OP_SL_fixed_type_h_l169_c49_27fa_return_output;
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
     -- Stage 1
     -- Stage 2
     -- Stage 3
 end if;
end process;

end arch;
