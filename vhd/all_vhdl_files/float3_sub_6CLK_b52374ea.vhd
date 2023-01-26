-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.0641293108396116, 0.5613184155414187]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 4
entity float3_sub_6CLK_b52374ea is
port(
 clk : in std_logic;
 left : in float3;
 right : in float3;
 return_output : out float3);
end float3_sub_6CLK_b52374ea;
architecture arch of float3_sub_6CLK_b52374ea is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 6;
-- All of the wires/regs in function
-- Stage 0
-- Stage 1
-- Stage 2
-- Stage 3
-- Stage 4
-- Stage 5
-- Each function instance gets signals
-- BIN_OP_MINUS[c_compat_h_l38_c62_6023]
signal BIN_OP_MINUS_c_compat_h_l38_c62_6023_left : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_c_compat_h_l38_c62_6023_right : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_c_compat_h_l38_c62_6023_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_MINUS[c_compat_h_l38_c80_b679]
signal BIN_OP_MINUS_c_compat_h_l38_c80_b679_left : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_c_compat_h_l38_c80_b679_right : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_c_compat_h_l38_c80_b679_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_MINUS[c_compat_h_l38_c98_e55f]
signal BIN_OP_MINUS_c_compat_h_l38_c98_e55f_left : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_c_compat_h_l38_c98_e55f_right : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_c_compat_h_l38_c98_e55f_return_output : std_logic_vector(22 downto 0);

function CONST_REF_RD_float3_float3_7d4c( ref_toks_0 : std_logic_vector;
 ref_toks_1 : std_logic_vector;
 ref_toks_2 : std_logic_vector) return float3 is
 
  variable base : float3; 
  variable return_output : float3;
begin
      base.x := ref_toks_0;
      base.y := ref_toks_1;
      base.z := ref_toks_2;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_MINUS_c_compat_h_l38_c62_6023
BIN_OP_MINUS_c_compat_h_l38_c62_6023 : entity work.BIN_OP_MINUS_float_8_14_t_float_8_14_t_6CLK_ab6afdf3 port map (
clk,
BIN_OP_MINUS_c_compat_h_l38_c62_6023_left,
BIN_OP_MINUS_c_compat_h_l38_c62_6023_right,
BIN_OP_MINUS_c_compat_h_l38_c62_6023_return_output);

-- BIN_OP_MINUS_c_compat_h_l38_c80_b679
BIN_OP_MINUS_c_compat_h_l38_c80_b679 : entity work.BIN_OP_MINUS_float_8_14_t_float_8_14_t_6CLK_ab6afdf3 port map (
clk,
BIN_OP_MINUS_c_compat_h_l38_c80_b679_left,
BIN_OP_MINUS_c_compat_h_l38_c80_b679_right,
BIN_OP_MINUS_c_compat_h_l38_c80_b679_return_output);

-- BIN_OP_MINUS_c_compat_h_l38_c98_e55f
BIN_OP_MINUS_c_compat_h_l38_c98_e55f : entity work.BIN_OP_MINUS_float_8_14_t_float_8_14_t_6CLK_ab6afdf3 port map (
clk,
BIN_OP_MINUS_c_compat_h_l38_c98_e55f_left,
BIN_OP_MINUS_c_compat_h_l38_c98_e55f_right,
BIN_OP_MINUS_c_compat_h_l38_c98_e55f_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- Registers
 -- Stage 0
 -- Stage 1
 -- Stage 2
 -- Stage 3
 -- Stage 4
 -- Stage 5
 -- All submodule outputs
 BIN_OP_MINUS_c_compat_h_l38_c62_6023_return_output,
 BIN_OP_MINUS_c_compat_h_l38_c80_b679_return_output,
 BIN_OP_MINUS_c_compat_h_l38_c98_e55f_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : float3;
 variable VAR_left : float3;
 variable VAR_right : float3;
 variable VAR_r : float3;
 variable VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_c_compat_h_l38_c62_0be2_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_c_compat_h_l38_c62_6023_left : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_c_compat_h_l38_c71_3f97_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_c_compat_h_l38_c62_6023_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_c_compat_h_l38_c62_6023_return_output : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_c_compat_h_l38_c80_380d_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_c_compat_h_l38_c80_b679_left : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_c_compat_h_l38_c89_ed13_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_c_compat_h_l38_c80_b679_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_c_compat_h_l38_c80_b679_return_output : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_c_compat_h_l38_c98_251f_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_c_compat_h_l38_c98_e55f_left : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_c_compat_h_l38_c107_ee5d_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_c_compat_h_l38_c98_e55f_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_c_compat_h_l38_c98_e55f_return_output : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float3_float3_7d4c_c_compat_h_l38_c125_b987_return_output : float3;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     -- CONST_REF_RD_float_8_14_t_float3_z_d41d[c_compat_h_l38_c107_ee5d] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_c_compat_h_l38_c107_ee5d_return_output := VAR_right.z;

     -- CONST_REF_RD_float_8_14_t_float3_x_d41d[c_compat_h_l38_c71_3f97] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_c_compat_h_l38_c71_3f97_return_output := VAR_right.x;

     -- CONST_REF_RD_float_8_14_t_float3_z_d41d[c_compat_h_l38_c98_251f] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_c_compat_h_l38_c98_251f_return_output := VAR_left.z;

     -- CONST_REF_RD_float_8_14_t_float3_x_d41d[c_compat_h_l38_c62_0be2] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_c_compat_h_l38_c62_0be2_return_output := VAR_left.x;

     -- CONST_REF_RD_float_8_14_t_float3_y_d41d[c_compat_h_l38_c89_ed13] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_c_compat_h_l38_c89_ed13_return_output := VAR_right.y;

     -- CONST_REF_RD_float_8_14_t_float3_y_d41d[c_compat_h_l38_c80_380d] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_c_compat_h_l38_c80_380d_return_output := VAR_left.y;

     -- Submodule level 1
     VAR_BIN_OP_MINUS_c_compat_h_l38_c62_6023_left := VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_c_compat_h_l38_c62_0be2_return_output;
     VAR_BIN_OP_MINUS_c_compat_h_l38_c62_6023_right := VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_c_compat_h_l38_c71_3f97_return_output;
     VAR_BIN_OP_MINUS_c_compat_h_l38_c80_b679_left := VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_c_compat_h_l38_c80_380d_return_output;
     VAR_BIN_OP_MINUS_c_compat_h_l38_c80_b679_right := VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_c_compat_h_l38_c89_ed13_return_output;
     VAR_BIN_OP_MINUS_c_compat_h_l38_c98_e55f_right := VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_c_compat_h_l38_c107_ee5d_return_output;
     VAR_BIN_OP_MINUS_c_compat_h_l38_c98_e55f_left := VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_c_compat_h_l38_c98_251f_return_output;
     -- BIN_OP_MINUS[c_compat_h_l38_c98_e55f] LATENCY=6
     -- Inputs
     BIN_OP_MINUS_c_compat_h_l38_c98_e55f_left <= VAR_BIN_OP_MINUS_c_compat_h_l38_c98_e55f_left;
     BIN_OP_MINUS_c_compat_h_l38_c98_e55f_right <= VAR_BIN_OP_MINUS_c_compat_h_l38_c98_e55f_right;

     -- BIN_OP_MINUS[c_compat_h_l38_c62_6023] LATENCY=6
     -- Inputs
     BIN_OP_MINUS_c_compat_h_l38_c62_6023_left <= VAR_BIN_OP_MINUS_c_compat_h_l38_c62_6023_left;
     BIN_OP_MINUS_c_compat_h_l38_c62_6023_right <= VAR_BIN_OP_MINUS_c_compat_h_l38_c62_6023_right;

     -- BIN_OP_MINUS[c_compat_h_l38_c80_b679] LATENCY=6
     -- Inputs
     BIN_OP_MINUS_c_compat_h_l38_c80_b679_left <= VAR_BIN_OP_MINUS_c_compat_h_l38_c80_b679_left;
     BIN_OP_MINUS_c_compat_h_l38_c80_b679_right <= VAR_BIN_OP_MINUS_c_compat_h_l38_c80_b679_right;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 2 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 3 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 4 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 5 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 6 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_MINUS_c_compat_h_l38_c62_6023_return_output := BIN_OP_MINUS_c_compat_h_l38_c62_6023_return_output;
     VAR_BIN_OP_MINUS_c_compat_h_l38_c80_b679_return_output := BIN_OP_MINUS_c_compat_h_l38_c80_b679_return_output;
     VAR_BIN_OP_MINUS_c_compat_h_l38_c98_e55f_return_output := BIN_OP_MINUS_c_compat_h_l38_c98_e55f_return_output;

     -- Submodule level 0
     -- CONST_REF_RD_float3_float3_7d4c[c_compat_h_l38_c125_b987] LATENCY=0
     VAR_CONST_REF_RD_float3_float3_7d4c_c_compat_h_l38_c125_b987_return_output := CONST_REF_RD_float3_float3_7d4c(
     VAR_BIN_OP_MINUS_c_compat_h_l38_c62_6023_return_output,
     VAR_BIN_OP_MINUS_c_compat_h_l38_c80_b679_return_output,
     VAR_BIN_OP_MINUS_c_compat_h_l38_c98_e55f_return_output);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_float3_float3_7d4c_c_compat_h_l38_c125_b987_return_output;
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
     -- Stage 4
     -- Stage 5
 end if;
end process;

end arch;
