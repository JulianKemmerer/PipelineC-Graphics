-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.008456782911803344, 0.06585525664642498, 0.12325373038104742, 0.18065220411566746, 0.2380506778502899, 0.29544915158491153, 0.35284762531953323, 0.41024609905415566, 0.4676445727887764, 0.525043046523399, 0.5824415202580213, 0.6398399939926406, 0.6972384677272637, 0.7546369414618854, 0.8120354151965088, 0.8694338889311312, 0.9268323626657503, 0.9842308364003712]
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
entity reflect_26CLK_48b4560d is
port(
 clk : in std_logic;
 I : in float3;
 N : in float3;
 return_output : out float3);
end reflect_26CLK_48b4560d;
architecture arch of reflect_26CLK_48b4560d is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 26;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE0_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 1
signal REG_STAGE1_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE1_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 2
signal REG_STAGE2_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE2_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 3
signal REG_STAGE3_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE3_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 4
signal REG_STAGE4_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE4_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 5
signal REG_STAGE5_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE5_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 6
signal REG_STAGE6_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE6_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 7
signal REG_STAGE7_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE7_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 8
signal REG_STAGE8_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE8_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 9
signal REG_STAGE9_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE9_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 10
signal REG_STAGE10_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE10_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 11
signal REG_STAGE11_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE11_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 12
signal REG_STAGE12_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE12_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 13
signal REG_STAGE13_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE13_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 14
signal REG_STAGE14_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE14_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 15
signal REG_STAGE15_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal REG_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal COMB_STAGE15_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
-- Stage 16
signal REG_STAGE16_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE16_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
-- Stage 17
signal REG_STAGE17_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE17_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
-- Stage 18
signal REG_STAGE18_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal COMB_STAGE18_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
-- Stage 19
-- Stage 20
-- Stage 21
-- Stage 22
-- Stage 23
-- Stage 24
-- Stage 25
-- Each function instance gets signals
-- dot[tr_pipelinec_gen_c_l146_c46_580f]
signal dot_tr_pipelinec_gen_c_l146_c46_580f_a : float3;
signal dot_tr_pipelinec_gen_c_l146_c46_580f_b : float3;
signal dot_tr_pipelinec_gen_c_l146_c46_580f_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_SL[tr_pipelinec_gen_c_l146_c46_53e7]
signal BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_left : std_logic_vector(22 downto 0);
signal BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_right : unsigned(0 downto 0);
signal BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_return_output : std_logic_vector(22 downto 0);

-- float3_mul_float[tr_pipelinec_gen_c_l146_c24_5c5c]
signal float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
signal float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_right : std_logic_vector(22 downto 0);
signal float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_return_output : float3;

-- float3_sub[tr_pipelinec_gen_c_l146_c10_f25e]
signal float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
signal float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_right : float3;
signal float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_return_output : float3;


begin

-- SUBMODULE INSTANCES 
-- dot_tr_pipelinec_gen_c_l146_c46_580f
dot_tr_pipelinec_gen_c_l146_c46_580f : entity work.dot_15CLK_8a2d9ff3 port map (
clk,
dot_tr_pipelinec_gen_c_l146_c46_580f_a,
dot_tr_pipelinec_gen_c_l146_c46_580f_b,
dot_tr_pipelinec_gen_c_l146_c46_580f_return_output);

-- BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7
BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7 : entity work.BIN_OP_SL_float_8_14_t_uint1_t_1CLK_fce1fa37 port map (
clk,
BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_left,
BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_right,
BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_return_output);

-- float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c
float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c : entity work.float3_mul_float_3CLK_201c64b4 port map (
clk,
float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_right,
float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_return_output);

-- float3_sub_tr_pipelinec_gen_c_l146_c10_f25e
float3_sub_tr_pipelinec_gen_c_l146_c10_f25e : entity work.float3_sub_7CLK_8157f68a port map (
clk,
float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_right,
float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 I,
 N,
 -- Registers
 -- Stage 0
 REG_STAGE0_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 1
 REG_STAGE1_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 2
 REG_STAGE2_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 3
 REG_STAGE3_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 4
 REG_STAGE4_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 5
 REG_STAGE5_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 6
 REG_STAGE6_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 7
 REG_STAGE7_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 8
 REG_STAGE8_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 9
 REG_STAGE9_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 10
 REG_STAGE10_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 11
 REG_STAGE11_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 12
 REG_STAGE12_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 13
 REG_STAGE13_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 14
 REG_STAGE14_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 15
 REG_STAGE15_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 REG_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left,
 -- Stage 16
 REG_STAGE16_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 -- Stage 17
 REG_STAGE17_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 -- Stage 18
 REG_STAGE18_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left,
 -- Stage 19
 -- Stage 20
 -- Stage 21
 -- Stage 22
 -- Stage 23
 -- Stage 24
 -- Stage 25
 -- All submodule outputs
 dot_tr_pipelinec_gen_c_l146_c46_580f_return_output,
 BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_return_output,
 float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_return_output,
 float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : float3;
 variable VAR_I : float3;
 variable VAR_N : float3;
 variable VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left : float3;
 variable VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_right : float3;
 variable VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left : float3;
 variable VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_right : std_logic_vector(22 downto 0);
 variable VAR_dot_tr_pipelinec_gen_c_l146_c46_580f_a : float3;
 variable VAR_dot_tr_pipelinec_gen_c_l146_c46_580f_b : float3;
 variable VAR_BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_left : std_logic_vector(22 downto 0);
 variable VAR_dot_tr_pipelinec_gen_c_l146_c46_580f_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_return_output : std_logic_vector(22 downto 0);
 variable VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_return_output : float3;
 variable VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_return_output : float3;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_right := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_I := I;
     VAR_N := N;

     -- Submodule level 0
     VAR_dot_tr_pipelinec_gen_c_l146_c46_580f_a := VAR_I;
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := VAR_I;
     VAR_dot_tr_pipelinec_gen_c_l146_c46_580f_b := VAR_N;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := VAR_N;
     -- dot[tr_pipelinec_gen_c_l146_c46_580f] LATENCY=15
     -- Inputs
     dot_tr_pipelinec_gen_c_l146_c46_580f_a <= VAR_dot_tr_pipelinec_gen_c_l146_c46_580f_a;
     dot_tr_pipelinec_gen_c_l146_c46_580f_b <= VAR_dot_tr_pipelinec_gen_c_l146_c46_580f_b;

     -- Write to comb signals
     COMB_STAGE0_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE0_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE1_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 2 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE1_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE2_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 3 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE2_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE3_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE3_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE4_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE4_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE5_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 6 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE5_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE6_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 7 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE6_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE7_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 8 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE7_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE8_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 9 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE8_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE9_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 10 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE9_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE10_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 11 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE10_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE11_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 12 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE11_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE12_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 13 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE12_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE13_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 14 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE13_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;

     -- Write to comb signals
     COMB_STAGE14_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 15 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE14_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Submodule outputs
     VAR_dot_tr_pipelinec_gen_c_l146_c46_580f_return_output := dot_tr_pipelinec_gen_c_l146_c46_580f_return_output;

     -- Submodule level 0
     VAR_BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_left := VAR_dot_tr_pipelinec_gen_c_l146_c46_580f_return_output;
     -- BIN_OP_SL[tr_pipelinec_gen_c_l146_c46_53e7] LATENCY=1
     -- Inputs
     BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_left <= VAR_BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_left;
     BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_right <= VAR_BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_right;

     -- Write to comb signals
     COMB_STAGE15_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     COMB_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
   elsif STAGE = 16 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE15_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left := REG_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Submodule outputs
     VAR_BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_return_output := BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_return_output;

     -- Submodule level 0
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_right := VAR_BIN_OP_SL_tr_pipelinec_gen_c_l146_c46_53e7_return_output;
     -- float3_mul_float[tr_pipelinec_gen_c_l146_c24_5c5c] LATENCY=3
     -- Inputs
     float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_right <= VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_right;

     -- Write to comb signals
     COMB_STAGE16_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
   elsif STAGE = 17 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE16_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;

     -- Write to comb signals
     COMB_STAGE17_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
   elsif STAGE = 18 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE17_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;

     -- Write to comb signals
     COMB_STAGE18_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
   elsif STAGE = 19 then
     -- Read from prev stage
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left := REG_STAGE18_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     -- Submodule outputs
     VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_return_output := float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_return_output;

     -- Submodule level 0
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_right := VAR_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_return_output;
     -- float3_sub[tr_pipelinec_gen_c_l146_c10_f25e] LATENCY=7
     -- Inputs
     float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_right <= VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_right;

     -- Write to comb signals
   elsif STAGE = 20 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 21 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 22 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 23 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 24 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 25 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 26 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_return_output := float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_return_output;
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
     REG_STAGE0_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE0_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE0_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 1
     REG_STAGE1_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE1_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE1_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 2
     REG_STAGE2_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE2_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE2_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 3
     REG_STAGE3_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE3_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE3_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 4
     REG_STAGE4_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE4_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE4_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 5
     REG_STAGE5_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE5_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE5_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 6
     REG_STAGE6_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE6_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE6_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 7
     REG_STAGE7_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE7_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE7_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 8
     REG_STAGE8_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE8_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE8_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 9
     REG_STAGE9_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE9_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE9_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 10
     REG_STAGE10_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE10_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE10_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 11
     REG_STAGE11_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE11_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE11_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 12
     REG_STAGE12_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE12_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE12_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 13
     REG_STAGE13_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE13_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE13_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 14
     REG_STAGE14_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE14_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE14_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 15
     REG_STAGE15_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE15_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     REG_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left <= COMB_STAGE15_float3_mul_float_tr_pipelinec_gen_c_l146_c24_5c5c_left;
     -- Stage 16
     REG_STAGE16_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE16_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     -- Stage 17
     REG_STAGE17_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE17_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     -- Stage 18
     REG_STAGE18_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left <= COMB_STAGE18_float3_sub_tr_pipelinec_gen_c_l146_c10_f25e_left;
     -- Stage 19
     -- Stage 20
     -- Stage 21
     -- Stage 22
     -- Stage 23
     -- Stage 24
     -- Stage 25
 end if;
end process;

end arch;
