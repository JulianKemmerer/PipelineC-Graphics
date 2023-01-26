-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.011512214754001585, 0.09535965270107992, 0.1792070906481566, 0.2630545285952336, 0.34690196654231137, 0.4307494044893886, 0.5145968424364642, 0.5984442803835404, 0.6822917183306192, 0.7661391562776959, 0.8499865942247731, 0.9338340321718503]
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
entity sqrt_20CLK_2303e114 is
port(
 clk : in std_logic;
 x : in std_logic_vector(22 downto 0);
 return_output : out std_logic_vector(22 downto 0));
end sqrt_20CLK_2303e114;
architecture arch of sqrt_20CLK_2303e114 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 20;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 1
signal REG_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 2
signal REG_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 3
signal REG_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 4
signal REG_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 5
signal REG_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 6
signal REG_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 7
signal REG_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 8
signal REG_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 9
signal REG_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 10
signal REG_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 11
signal REG_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 12
signal REG_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 13
signal REG_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 14
signal REG_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 15
signal REG_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 16
signal REG_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal COMB_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
-- Stage 17
-- Stage 18
-- Stage 19
-- Each function instance gets signals
-- float_rsqrt[tr_pipelinec_gen_c_l109_c14_362b]
signal float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_number : std_logic_vector(22 downto 0);
signal float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l109_c10_1c9d]
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_return_output : std_logic_vector(22 downto 0);


begin

-- SUBMODULE INSTANCES 
-- float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b
float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b : entity work.float_rsqrt_17CLK_27cd1573 port map (
clk,
float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_number,
float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_return_output);

-- BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_3CLK_a262d211 port map (
clk,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_right,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- Registers
 -- Stage 0
 REG_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 1
 REG_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 2
 REG_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 3
 REG_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 4
 REG_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 5
 REG_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 6
 REG_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 7
 REG_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 8
 REG_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 9
 REG_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 10
 REG_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 11
 REG_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 12
 REG_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 13
 REG_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 14
 REG_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 15
 REG_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 16
 REG_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left,
 -- Stage 17
 -- Stage 18
 -- Stage 19
 -- All submodule outputs
 float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_return_output,
 BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : std_logic_vector(22 downto 0);
 variable VAR_x : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left : std_logic_vector(22 downto 0);
 variable VAR_float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_number : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_right : std_logic_vector(22 downto 0);
 variable VAR_float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_return_output : std_logic_vector(22 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := VAR_x;
     VAR_float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_number := VAR_x;
     -- float_rsqrt[tr_pipelinec_gen_c_l109_c14_362b] LATENCY=17
     -- Inputs
     float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_number <= VAR_float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_number;

     -- Write to comb signals
     COMB_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 2 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 3 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 6 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 7 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 8 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 9 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 10 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 11 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 12 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 13 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 14 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 15 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 16 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;

     -- Write to comb signals
     COMB_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
   elsif STAGE = 17 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left := REG_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Submodule outputs
     VAR_float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_return_output := float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_return_output;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_right := VAR_float_rsqrt_tr_pipelinec_gen_c_l109_c14_362b_return_output;
     -- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l109_c10_1c9d] LATENCY=3
     -- Inputs
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_right <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_right;

     -- Write to comb signals
   elsif STAGE = 18 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 19 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 20 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_return_output := BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_return_output;
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
     REG_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 1
     REG_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 2
     REG_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 3
     REG_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 4
     REG_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 5
     REG_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 6
     REG_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 7
     REG_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 8
     REG_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 9
     REG_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 10
     REG_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 11
     REG_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 12
     REG_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 13
     REG_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 14
     REG_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 15
     REG_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 16
     REG_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left <= COMB_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l109_c10_1c9d_left;
     -- Stage 17
     -- Stage 18
     -- Stage 19
 end if;
end process;

end arch;
