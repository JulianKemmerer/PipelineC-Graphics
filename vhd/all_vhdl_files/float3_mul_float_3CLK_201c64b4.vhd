-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.4830442918381466]
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
entity float3_mul_float_3CLK_201c64b4 is
port(
 clk : in std_logic;
 left : in float3;
 right : in std_logic_vector(22 downto 0);
 return_output : out float3);
end float3_mul_float_3CLK_201c64b4;
architecture arch of float3_mul_float_3CLK_201c64b4 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 3;
-- All of the wires/regs in function
-- Stage 0
-- Stage 1
-- Stage 2
-- Each function instance gets signals
-- BIN_OP_INFERRED_MULT[c_compat_h_l40_c74_3c61]
signal BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_INFERRED_MULT[c_compat_h_l40_c90_154c]
signal BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_INFERRED_MULT[c_compat_h_l40_c106_e8c8]
signal BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_return_output : std_logic_vector(22 downto 0);

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
-- BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61
BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61 : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_3CLK_21487fd1 port map (
clk,
BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_left,
BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_right,
BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_return_output);

-- BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c
BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_3CLK_21487fd1 port map (
clk,
BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_left,
BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_right,
BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_return_output);

-- BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8
BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8 : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_3CLK_21487fd1 port map (
clk,
BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_left,
BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_right,
BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- Registers
 -- Stage 0
 -- Stage 1
 -- Stage 2
 -- All submodule outputs
 BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_return_output,
 BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_return_output,
 BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : float3;
 variable VAR_left : float3;
 variable VAR_right : std_logic_vector(22 downto 0);
 variable VAR_r : float3;
 variable VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_c_compat_h_l40_c74_d127_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_return_output : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_c_compat_h_l40_c90_0db5_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_return_output : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_c_compat_h_l40_c106_1a67_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_return_output : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float3_float3_7d4c_c_compat_h_l40_c131_657f_return_output : float3;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_right := VAR_right;
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_right := VAR_right;
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_right := VAR_right;
     -- CONST_REF_RD_float_8_14_t_float3_x_d41d[c_compat_h_l40_c74_d127] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_c_compat_h_l40_c74_d127_return_output := VAR_left.x;

     -- CONST_REF_RD_float_8_14_t_float3_z_d41d[c_compat_h_l40_c106_1a67] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_c_compat_h_l40_c106_1a67_return_output := VAR_left.z;

     -- CONST_REF_RD_float_8_14_t_float3_y_d41d[c_compat_h_l40_c90_0db5] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_c_compat_h_l40_c90_0db5_return_output := VAR_left.y;

     -- Submodule level 1
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_left := VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_c_compat_h_l40_c74_d127_return_output;
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_left := VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_c_compat_h_l40_c90_0db5_return_output;
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_left := VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_c_compat_h_l40_c106_1a67_return_output;
     -- BIN_OP_INFERRED_MULT[c_compat_h_l40_c90_154c] LATENCY=3
     -- Inputs
     BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_left <= VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_left;
     BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_right <= VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_right;

     -- BIN_OP_INFERRED_MULT[c_compat_h_l40_c74_3c61] LATENCY=3
     -- Inputs
     BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_left <= VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_left;
     BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_right <= VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_right;

     -- BIN_OP_INFERRED_MULT[c_compat_h_l40_c106_e8c8] LATENCY=3
     -- Inputs
     BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_left <= VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_left;
     BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_right <= VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_right;

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
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_return_output := BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_return_output;
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_return_output := BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_return_output;
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_return_output := BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_return_output;

     -- Submodule level 0
     -- CONST_REF_RD_float3_float3_7d4c[c_compat_h_l40_c131_657f] LATENCY=0
     VAR_CONST_REF_RD_float3_float3_7d4c_c_compat_h_l40_c131_657f_return_output := CONST_REF_RD_float3_float3_7d4c(
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c74_3c61_return_output,
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c90_154c_return_output,
     VAR_BIN_OP_INFERRED_MULT_c_compat_h_l40_c106_e8c8_return_output);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_float3_float3_7d4c_c_compat_h_l40_c131_657f_return_output;
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
 end if;
end process;

end arch;
