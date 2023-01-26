-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.029958702545125223, 0.10288773530302099, 0.17581676806092256, 0.2487458008188187, 0.32167483357671545, 0.3946038663346158, 0.4675328990925151, 0.5404619318504141, 0.6133909646083121, 0.6863199973662063, 0.759249030124106, 0.8321780628820059, 0.9051070956399003, 0.978036128397798]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 3
entity normalize_30CLK_dd685f50 is
port(
 clk : in std_logic;
 v : in float3;
 return_output : out float3);
end normalize_30CLK_dd685f50;
architecture arch of normalize_30CLK_dd685f50 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 30;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 1
signal REG_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 2
signal REG_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 3
signal REG_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 4
signal REG_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 5
signal REG_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 6
signal REG_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 7
signal REG_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 8
signal REG_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 9
signal REG_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 10
signal REG_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 11
signal REG_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 12
signal REG_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 13
signal REG_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 14
signal REG_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 15
signal REG_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 16
signal REG_STAGE16_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE16_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 17
signal REG_STAGE17_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE17_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 18
signal REG_STAGE18_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE18_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 19
signal REG_STAGE19_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE19_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 20
signal REG_STAGE20_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE20_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 21
signal REG_STAGE21_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE21_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 22
signal REG_STAGE22_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE22_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 23
signal REG_STAGE23_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE23_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 24
signal REG_STAGE24_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE24_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 25
signal REG_STAGE25_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE25_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 26
signal REG_STAGE26_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal COMB_STAGE26_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
-- Stage 27
-- Stage 28
-- Stage 29
-- Each function instance gets signals
-- dot[tr_pipelinec_gen_c_l151_c42_5790]
signal dot_tr_pipelinec_gen_c_l151_c42_5790_a : float3;
signal dot_tr_pipelinec_gen_c_l151_c42_5790_b : float3;
signal dot_tr_pipelinec_gen_c_l151_c42_5790_return_output : std_logic_vector(22 downto 0);

-- float_rsqrt[tr_pipelinec_gen_c_l151_c30_d7d0]
signal float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_number : std_logic_vector(22 downto 0);
signal float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_return_output : std_logic_vector(22 downto 0);

-- float3_mul_float[tr_pipelinec_gen_c_l151_c10_5170]
signal float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
signal float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_right : std_logic_vector(22 downto 0);
signal float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_return_output : float3;


begin

-- SUBMODULE INSTANCES 
-- dot_tr_pipelinec_gen_c_l151_c42_5790
dot_tr_pipelinec_gen_c_l151_c42_5790 : entity work.dot_14CLK_df312d50 port map (
clk,
dot_tr_pipelinec_gen_c_l151_c42_5790_a,
dot_tr_pipelinec_gen_c_l151_c42_5790_b,
dot_tr_pipelinec_gen_c_l151_c42_5790_return_output);

-- float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0
float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0 : entity work.float_rsqrt_13CLK_902e4797 port map (
clk,
float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_number,
float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_return_output);

-- float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170
float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170 : entity work.float3_mul_float_3CLK_f8bfc33d port map (
clk,
float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_right,
float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 v,
 -- Registers
 -- Stage 0
 REG_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 1
 REG_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 2
 REG_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 3
 REG_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 4
 REG_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 5
 REG_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 6
 REG_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 7
 REG_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 8
 REG_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 9
 REG_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 10
 REG_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 11
 REG_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 12
 REG_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 13
 REG_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 14
 REG_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 15
 REG_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 16
 REG_STAGE16_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 17
 REG_STAGE17_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 18
 REG_STAGE18_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 19
 REG_STAGE19_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 20
 REG_STAGE20_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 21
 REG_STAGE21_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 22
 REG_STAGE22_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 23
 REG_STAGE23_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 24
 REG_STAGE24_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 25
 REG_STAGE25_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 26
 REG_STAGE26_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left,
 -- Stage 27
 -- Stage 28
 -- Stage 29
 -- All submodule outputs
 dot_tr_pipelinec_gen_c_l151_c42_5790_return_output,
 float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_return_output,
 float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : float3;
 variable VAR_v : float3;
 variable VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left : float3;
 variable VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_right : std_logic_vector(22 downto 0);
 variable VAR_float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_number : std_logic_vector(22 downto 0);
 variable VAR_dot_tr_pipelinec_gen_c_l151_c42_5790_a : float3;
 variable VAR_dot_tr_pipelinec_gen_c_l151_c42_5790_b : float3;
 variable VAR_dot_tr_pipelinec_gen_c_l151_c42_5790_return_output : std_logic_vector(22 downto 0);
 variable VAR_float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_return_output : std_logic_vector(22 downto 0);
 variable VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_return_output : float3;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_v := v;

     -- Submodule level 0
     VAR_dot_tr_pipelinec_gen_c_l151_c42_5790_a := VAR_v;
     VAR_dot_tr_pipelinec_gen_c_l151_c42_5790_b := VAR_v;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := VAR_v;
     -- dot[tr_pipelinec_gen_c_l151_c42_5790] LATENCY=14
     -- Inputs
     dot_tr_pipelinec_gen_c_l151_c42_5790_a <= VAR_dot_tr_pipelinec_gen_c_l151_c42_5790_a;
     dot_tr_pipelinec_gen_c_l151_c42_5790_b <= VAR_dot_tr_pipelinec_gen_c_l151_c42_5790_b;

     -- Write to comb signals
     COMB_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 2 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 3 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 6 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 7 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 8 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 9 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 10 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 11 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 12 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 13 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 14 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Submodule outputs
     VAR_dot_tr_pipelinec_gen_c_l151_c42_5790_return_output := dot_tr_pipelinec_gen_c_l151_c42_5790_return_output;

     -- Submodule level 0
     VAR_float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_number := VAR_dot_tr_pipelinec_gen_c_l151_c42_5790_return_output;
     -- float_rsqrt[tr_pipelinec_gen_c_l151_c30_d7d0] LATENCY=13
     -- Inputs
     float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_number <= VAR_float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_number;

     -- Write to comb signals
     COMB_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 15 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 16 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE16_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 17 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE16_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE17_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 18 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE17_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE18_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 19 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE18_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE19_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 20 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE19_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE20_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 21 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE20_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE21_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 22 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE21_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE22_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 23 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE22_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE23_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 24 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE23_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE24_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 25 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE24_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE25_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 26 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE25_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;

     -- Write to comb signals
     COMB_STAGE26_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
   elsif STAGE = 27 then
     -- Read from prev stage
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left := REG_STAGE26_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Submodule outputs
     VAR_float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_return_output := float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_return_output;

     -- Submodule level 0
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_right := VAR_float_rsqrt_tr_pipelinec_gen_c_l151_c30_d7d0_return_output;
     -- float3_mul_float[tr_pipelinec_gen_c_l151_c10_5170] LATENCY=3
     -- Inputs
     float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_right <= VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_right;

     -- Write to comb signals
   elsif STAGE = 28 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 29 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 30 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_return_output := float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_return_output;
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
     REG_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 1
     REG_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 2
     REG_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 3
     REG_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 4
     REG_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 5
     REG_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 6
     REG_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 7
     REG_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 8
     REG_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 9
     REG_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 10
     REG_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 11
     REG_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 12
     REG_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 13
     REG_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 14
     REG_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 15
     REG_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 16
     REG_STAGE16_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE16_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 17
     REG_STAGE17_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE17_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 18
     REG_STAGE18_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE18_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 19
     REG_STAGE19_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE19_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 20
     REG_STAGE20_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE20_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 21
     REG_STAGE21_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE21_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 22
     REG_STAGE22_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE22_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 23
     REG_STAGE23_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE23_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 24
     REG_STAGE24_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE24_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 25
     REG_STAGE25_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE25_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 26
     REG_STAGE26_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left <= COMB_STAGE26_float3_mul_float_tr_pipelinec_gen_c_l151_c10_5170_left;
     -- Stage 27
     -- Stage 28
     -- Stage 29
 end if;
end process;

end arch;
