-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.37082542491358367, 0.8936818894140469]
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
entity object_coord_to_float3_4CLK_50bc2401 is
port(
 clk : in std_logic;
 a : in fixed3;
 return_output : out float3);
end object_coord_to_float3_4CLK_50bc2401;
architecture arch of object_coord_to_float3_4CLK_50bc2401 is
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
-- fixed_to_float[tr_pipelinec_gen_c_l76_c15_525c]
signal fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_a : fixed;
signal fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_return_output : std_logic_vector(22 downto 0);

-- fixed_to_float[tr_pipelinec_gen_c_l76_c36_8ac1]
signal fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_a : fixed;
signal fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_return_output : std_logic_vector(22 downto 0);

-- fixed_to_float[tr_pipelinec_gen_c_l76_c57_118d]
signal fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_a : fixed;
signal fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_return_output : std_logic_vector(22 downto 0);

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
-- fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c
fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c : entity work.fixed_to_float_4CLK_9e6fce61 port map (
clk,
fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_a,
fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_return_output);

-- fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1
fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1 : entity work.fixed_to_float_4CLK_9e6fce61 port map (
clk,
fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_a,
fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_return_output);

-- fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d
fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d : entity work.fixed_to_float_4CLK_9e6fce61 port map (
clk,
fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_a,
fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_return_output);



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
 fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_return_output,
 fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_return_output,
 fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : float3;
 variable VAR_a : fixed3;
 variable VAR_r : float3;
 variable VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_a : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_x_d41d_tr_pipelinec_gen_c_l76_c30_1198_return_output : fixed;
 variable VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_return_output : std_logic_vector(22 downto 0);
 variable VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_a : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_y_d41d_tr_pipelinec_gen_c_l76_c51_1fe6_return_output : fixed;
 variable VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_return_output : std_logic_vector(22 downto 0);
 variable VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_a : fixed;
 variable VAR_CONST_REF_RD_fixed_fixed3_z_d41d_tr_pipelinec_gen_c_l76_c72_54a0_return_output : fixed;
 variable VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_return_output : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float3_float3_7d4c_tr_pipelinec_gen_c_l77_c10_f193_return_output : float3;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_a := a;

     -- Submodule level 0
     -- CONST_REF_RD_fixed_fixed3_y_d41d[tr_pipelinec_gen_c_l76_c51_1fe6] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_y_d41d_tr_pipelinec_gen_c_l76_c51_1fe6_return_output := VAR_a.y;

     -- CONST_REF_RD_fixed_fixed3_z_d41d[tr_pipelinec_gen_c_l76_c72_54a0] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_z_d41d_tr_pipelinec_gen_c_l76_c72_54a0_return_output := VAR_a.z;

     -- CONST_REF_RD_fixed_fixed3_x_d41d[tr_pipelinec_gen_c_l76_c30_1198] LATENCY=0
     VAR_CONST_REF_RD_fixed_fixed3_x_d41d_tr_pipelinec_gen_c_l76_c30_1198_return_output := VAR_a.x;

     -- Submodule level 1
     VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_a := VAR_CONST_REF_RD_fixed_fixed3_x_d41d_tr_pipelinec_gen_c_l76_c30_1198_return_output;
     VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_a := VAR_CONST_REF_RD_fixed_fixed3_y_d41d_tr_pipelinec_gen_c_l76_c51_1fe6_return_output;
     VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_a := VAR_CONST_REF_RD_fixed_fixed3_z_d41d_tr_pipelinec_gen_c_l76_c72_54a0_return_output;
     -- fixed_to_float[tr_pipelinec_gen_c_l76_c57_118d] LATENCY=4
     -- Inputs
     fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_a <= VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_a;

     -- fixed_to_float[tr_pipelinec_gen_c_l76_c15_525c] LATENCY=4
     -- Inputs
     fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_a <= VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_a;

     -- fixed_to_float[tr_pipelinec_gen_c_l76_c36_8ac1] LATENCY=4
     -- Inputs
     fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_a <= VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_a;

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
     -- Submodule outputs
     VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_return_output := fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_return_output;
     VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_return_output := fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_return_output;
     VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_return_output := fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_return_output;

     -- Submodule level 0
     -- CONST_REF_RD_float3_float3_7d4c[tr_pipelinec_gen_c_l77_c10_f193] LATENCY=0
     VAR_CONST_REF_RD_float3_float3_7d4c_tr_pipelinec_gen_c_l77_c10_f193_return_output := CONST_REF_RD_float3_float3_7d4c(
     VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c15_525c_return_output,
     VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c36_8ac1_return_output,
     VAR_fixed_to_float_tr_pipelinec_gen_c_l76_c57_118d_return_output);

     -- Submodule level 1
     VAR_return_output := VAR_CONST_REF_RD_float3_float3_7d4c_tr_pipelinec_gen_c_l77_c10_f193_return_output;
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
