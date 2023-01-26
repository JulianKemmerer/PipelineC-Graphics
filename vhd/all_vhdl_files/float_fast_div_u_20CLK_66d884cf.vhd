-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.11381088160251153, 0.25389350838969316, 0.3939761351768783, 0.5340587619640561, 0.6741413887512382, 0.8142240155384237, 0.954306642325605]
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
entity float_fast_div_u_20CLK_66d884cf is
port(
 clk : in std_logic;
 a : in std_logic_vector(22 downto 0);
 b : in std_logic_vector(22 downto 0);
 return_output : out std_logic_vector(22 downto 0));
end float_fast_div_u_20CLK_66d884cf;
architecture arch of float_fast_div_u_20CLK_66d884cf is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 20;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 1
signal REG_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 2
signal REG_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 3
signal REG_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 4
signal REG_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 5
signal REG_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 6
signal REG_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 7
signal REG_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 8
signal REG_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 9
signal REG_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 10
signal REG_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 11
signal REG_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 12
signal REG_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 13
signal REG_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 14
signal REG_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 15
signal REG_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 16
signal REG_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal COMB_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
-- Stage 17
-- Stage 18
-- Stage 19
-- Each function instance gets signals
-- float_fast_reciprocal_u[tr_pipelinec_gen_c_l122_c14_62f9]
signal float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_x : std_logic_vector(22 downto 0);
signal float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l122_c10_0feb]
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_return_output : std_logic_vector(22 downto 0);


begin

-- SUBMODULE INSTANCES 
-- float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9
float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9 : entity work.float_fast_reciprocal_u_17CLK_a45512a3 port map (
clk,
float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_x,
float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_return_output);

-- BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_3CLK_e4db71ea port map (
clk,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_right,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 a,
 b,
 -- Registers
 -- Stage 0
 REG_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 1
 REG_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 2
 REG_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 3
 REG_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 4
 REG_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 5
 REG_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 6
 REG_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 7
 REG_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 8
 REG_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 9
 REG_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 10
 REG_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 11
 REG_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 12
 REG_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 13
 REG_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 14
 REG_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 15
 REG_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 16
 REG_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left,
 -- Stage 17
 -- Stage 18
 -- Stage 19
 -- All submodule outputs
 float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_return_output,
 BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : std_logic_vector(22 downto 0);
 variable VAR_a : std_logic_vector(22 downto 0);
 variable VAR_b : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left : std_logic_vector(22 downto 0);
 variable VAR_float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_x : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_right : std_logic_vector(22 downto 0);
 variable VAR_float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_return_output : std_logic_vector(22 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_a := a;
     VAR_b := b;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := VAR_a;
     VAR_float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_x := VAR_b;
     -- float_fast_reciprocal_u[tr_pipelinec_gen_c_l122_c14_62f9] LATENCY=17
     -- Inputs
     float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_x <= VAR_float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_x;

     -- Write to comb signals
     COMB_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 2 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 3 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 6 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 7 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 8 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 9 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 10 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 11 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 12 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 13 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 14 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 15 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 16 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;

     -- Write to comb signals
     COMB_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
   elsif STAGE = 17 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left := REG_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Submodule outputs
     VAR_float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_return_output := float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_return_output;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_right := VAR_float_fast_reciprocal_u_tr_pipelinec_gen_c_l122_c14_62f9_return_output;
     -- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l122_c10_0feb] LATENCY=3
     -- Inputs
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_right <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_right;

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
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_return_output := BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_return_output;
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
     REG_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE0_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 1
     REG_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE1_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 2
     REG_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE2_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 3
     REG_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE3_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 4
     REG_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE4_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 5
     REG_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE5_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 6
     REG_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE6_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 7
     REG_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE7_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 8
     REG_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE8_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 9
     REG_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE9_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 10
     REG_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE10_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 11
     REG_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE11_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 12
     REG_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE12_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 13
     REG_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE13_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 14
     REG_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE14_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 15
     REG_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE15_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 16
     REG_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left <= COMB_STAGE16_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l122_c10_0feb_left;
     -- Stage 17
     -- Stage 18
     -- Stage 19
 end if;
end process;

end arch;
