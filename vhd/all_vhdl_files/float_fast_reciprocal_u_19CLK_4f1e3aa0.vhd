-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.06225430091523479, 0.166300549666875, 0.27034679841851383, 0.37439304717015337, 0.47843929592179285, 0.5824855446734326, 0.6865317934250721, 0.7905780421767112, 0.894624290928351, 0.9986705396799905]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 7
entity float_fast_reciprocal_u_19CLK_4f1e3aa0 is
port(
 clk : in std_logic;
 x : in std_logic_vector(22 downto 0);
 return_output : out std_logic_vector(22 downto 0));
end float_fast_reciprocal_u_19CLK_4f1e3aa0;
architecture arch of float_fast_reciprocal_u_19CLK_4f1e3aa0 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 19;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE0_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 1
signal REG_STAGE1_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE1_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 2
signal REG_STAGE2_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE2_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 3
signal REG_STAGE3_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE3_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 4
signal REG_STAGE4_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE4_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 5
signal REG_STAGE5_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE5_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 6
signal REG_STAGE6_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE6_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 7
signal REG_STAGE7_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE7_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 8
signal REG_STAGE8_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE8_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 9
signal REG_STAGE9_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE9_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 10
signal REG_STAGE10_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE10_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 11
signal REG_STAGE11_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE11_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 12
signal REG_STAGE12_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE12_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 13
signal REG_STAGE13_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE13_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 14
signal REG_STAGE14_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE14_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 15
signal REG_STAGE15_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE15_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 16
signal REG_STAGE16_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE16_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 17
signal REG_STAGE17_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal COMB_STAGE17_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
-- Stage 18
-- Each function instance gets signals
-- UNARY_OP_NEGATE[tr_pipelinec_gen_c_l115_c39_db69]
signal UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_expr : std_logic_vector(22 downto 0);
signal UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_return_output : std_logic_vector(22 downto 0);

-- MUX[tr_pipelinec_gen_c_l115_c32_a5bf]
signal MUX_tr_pipelinec_gen_c_l115_c32_a5bf_cond : unsigned(0 downto 0);
signal MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iftrue : std_logic_vector(22 downto 0);
signal MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iffalse : std_logic_vector(22 downto 0);
signal MUX_tr_pipelinec_gen_c_l115_c32_a5bf_return_output : std_logic_vector(22 downto 0);

-- float_rsqrt[tr_pipelinec_gen_c_l115_c20_5b06]
signal float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_number : std_logic_vector(22 downto 0);
signal float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l116_c7_2926]
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_return_output : std_logic_vector(22 downto 0);

-- UNARY_OP_NEGATE[tr_pipelinec_gen_c_l117_c17_b1bc]
signal UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_expr : std_logic_vector(22 downto 0);
signal UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_return_output : std_logic_vector(22 downto 0);

-- MUX[tr_pipelinec_gen_c_l117_c10_b211]
signal MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
signal MUX_tr_pipelinec_gen_c_l117_c10_b211_iftrue : std_logic_vector(22 downto 0);
signal MUX_tr_pipelinec_gen_c_l117_c10_b211_iffalse : std_logic_vector(22 downto 0);
signal MUX_tr_pipelinec_gen_c_l117_c10_b211_return_output : std_logic_vector(22 downto 0);

function float_8_14_t_sign( x : std_logic_vector) return unsigned is

  --variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(0 downto 0);

begin

    return_output(0) := x(x'left); -- left most sign bit
    return return_output;

end function;


begin

-- SUBMODULE INSTANCES 
-- UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69
UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69 : entity work.UNARY_OP_NEGATE_float_8_14_t_0CLK_de264c78 port map (
UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_expr,
UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_return_output);

-- MUX_tr_pipelinec_gen_c_l115_c32_a5bf
MUX_tr_pipelinec_gen_c_l115_c32_a5bf : entity work.MUX_uint1_t_float_8_14_t_float_8_14_t_0CLK_de264c78 port map (
MUX_tr_pipelinec_gen_c_l115_c32_a5bf_cond,
MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iftrue,
MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iffalse,
MUX_tr_pipelinec_gen_c_l115_c32_a5bf_return_output);

-- float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06
float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06 : entity work.float_rsqrt_15CLK_3bd7a4c1 port map (
clk,
float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_number,
float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_return_output);

-- BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926 : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_3CLK_9878c1a3 port map (
clk,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_left,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_right,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_return_output);

-- UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc
UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc : entity work.UNARY_OP_NEGATE_float_8_14_t_0CLK_de264c78 port map (
UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_expr,
UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_return_output);

-- MUX_tr_pipelinec_gen_c_l117_c10_b211
MUX_tr_pipelinec_gen_c_l117_c10_b211 : entity work.MUX_uint1_t_float_8_14_t_float_8_14_t_1CLK_5718387d port map (
clk,
MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
MUX_tr_pipelinec_gen_c_l117_c10_b211_iftrue,
MUX_tr_pipelinec_gen_c_l117_c10_b211_iffalse,
MUX_tr_pipelinec_gen_c_l117_c10_b211_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- Registers
 -- Stage 0
 REG_STAGE0_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 1
 REG_STAGE1_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 2
 REG_STAGE2_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 3
 REG_STAGE3_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 4
 REG_STAGE4_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 5
 REG_STAGE5_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 6
 REG_STAGE6_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 7
 REG_STAGE7_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 8
 REG_STAGE8_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 9
 REG_STAGE9_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 10
 REG_STAGE10_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 11
 REG_STAGE11_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 12
 REG_STAGE12_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 13
 REG_STAGE13_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 14
 REG_STAGE14_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 15
 REG_STAGE15_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 16
 REG_STAGE16_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 17
 REG_STAGE17_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond,
 -- Stage 18
 -- All submodule outputs
 UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_return_output,
 MUX_tr_pipelinec_gen_c_l115_c32_a5bf_return_output,
 float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_return_output,
 BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_return_output,
 UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_return_output,
 MUX_tr_pipelinec_gen_c_l117_c10_b211_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : std_logic_vector(22 downto 0);
 variable VAR_x : std_logic_vector(22 downto 0);
 variable VAR_neg : unsigned(0 downto 0);
 variable VAR_float_8_14_t_sign_tr_pipelinec_gen_c_l114_c17_5b3e_return_output : unsigned(0 downto 0);
 variable VAR_y : std_logic_vector(22 downto 0);
 variable VAR_float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_number : std_logic_vector(22 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_cond : unsigned(0 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iftrue : std_logic_vector(22 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iffalse : std_logic_vector(22 downto 0);
 variable VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_expr : std_logic_vector(22 downto 0);
 variable VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_return_output : std_logic_vector(22 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_return_output : std_logic_vector(22 downto 0);
 variable VAR_float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_return_output : std_logic_vector(22 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond : unsigned(0 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_iftrue : std_logic_vector(22 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_iffalse : std_logic_vector(22 downto 0);
 variable VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_expr : std_logic_vector(22 downto 0);
 variable VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_return_output : std_logic_vector(22 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_return_output : std_logic_vector(22 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iffalse := VAR_x;
     VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_expr := VAR_x;
     -- UNARY_OP_NEGATE[tr_pipelinec_gen_c_l115_c39_db69] LATENCY=0
     -- Inputs
     UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_expr <= VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_expr;
     -- Outputs
     VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_return_output := UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_return_output;

     -- float_8_14_t_sign[tr_pipelinec_gen_c_l114_c17_5b3e] LATENCY=0
     VAR_float_8_14_t_sign_tr_pipelinec_gen_c_l114_c17_5b3e_return_output := float_8_14_t_sign(
     VAR_x);

     -- Submodule level 1
     VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iftrue := VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l115_c39_db69_return_output;
     VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_cond := VAR_float_8_14_t_sign_tr_pipelinec_gen_c_l114_c17_5b3e_return_output;
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := VAR_float_8_14_t_sign_tr_pipelinec_gen_c_l114_c17_5b3e_return_output;
     -- MUX[tr_pipelinec_gen_c_l115_c32_a5bf] LATENCY=0
     -- Inputs
     MUX_tr_pipelinec_gen_c_l115_c32_a5bf_cond <= VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_cond;
     MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iftrue <= VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iftrue;
     MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iffalse <= VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_iffalse;
     -- Outputs
     VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_return_output := MUX_tr_pipelinec_gen_c_l115_c32_a5bf_return_output;

     -- Submodule level 2
     VAR_float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_number := VAR_MUX_tr_pipelinec_gen_c_l115_c32_a5bf_return_output;
     -- float_rsqrt[tr_pipelinec_gen_c_l115_c20_5b06] LATENCY=15
     -- Inputs
     float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_number <= VAR_float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_number;

     -- Write to comb signals
     COMB_STAGE0_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE0_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE1_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 2 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE1_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE2_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 3 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE2_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE3_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE3_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE4_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE4_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE5_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 6 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE5_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE6_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 7 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE6_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE7_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 8 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE7_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE8_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 9 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE8_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE9_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 10 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE9_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE10_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 11 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE10_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE11_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 12 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE11_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE12_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 13 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE12_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE13_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 14 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE13_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE14_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 15 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE14_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Submodule outputs
     VAR_float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_return_output := float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_return_output;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_left := VAR_float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_return_output;
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_right := VAR_float_rsqrt_tr_pipelinec_gen_c_l115_c20_5b06_return_output;
     -- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l116_c7_2926] LATENCY=3
     -- Inputs
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_left;
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_right <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_right;

     -- Write to comb signals
     COMB_STAGE15_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 16 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE15_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE16_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 17 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE16_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;

     -- Write to comb signals
     COMB_STAGE17_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
   elsif STAGE = 18 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond := REG_STAGE17_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Submodule outputs
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_return_output := BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_return_output;

     -- Submodule level 0
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_iffalse := VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_return_output;
     VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_expr := VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l116_c7_2926_return_output;
     -- UNARY_OP_NEGATE[tr_pipelinec_gen_c_l117_c17_b1bc] LATENCY=0
     -- Inputs
     UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_expr <= VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_expr;
     -- Outputs
     VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_return_output := UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_return_output;

     -- Submodule level 1
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_iftrue := VAR_UNARY_OP_NEGATE_tr_pipelinec_gen_c_l117_c17_b1bc_return_output;
     -- MUX[tr_pipelinec_gen_c_l117_c10_b211] LATENCY=1
     -- Inputs
     MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     MUX_tr_pipelinec_gen_c_l117_c10_b211_iftrue <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_iftrue;
     MUX_tr_pipelinec_gen_c_l117_c10_b211_iffalse <= VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_iffalse;

     -- Write to comb signals
   elsif STAGE = 19 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_return_output := MUX_tr_pipelinec_gen_c_l117_c10_b211_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_MUX_tr_pipelinec_gen_c_l117_c10_b211_return_output;
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
     REG_STAGE0_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE0_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 1
     REG_STAGE1_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE1_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 2
     REG_STAGE2_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE2_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 3
     REG_STAGE3_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE3_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 4
     REG_STAGE4_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE4_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 5
     REG_STAGE5_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE5_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 6
     REG_STAGE6_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE6_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 7
     REG_STAGE7_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE7_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 8
     REG_STAGE8_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE8_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 9
     REG_STAGE9_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE9_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 10
     REG_STAGE10_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE10_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 11
     REG_STAGE11_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE11_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 12
     REG_STAGE12_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE12_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 13
     REG_STAGE13_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE13_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 14
     REG_STAGE14_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE14_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 15
     REG_STAGE15_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE15_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 16
     REG_STAGE16_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE16_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 17
     REG_STAGE17_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond <= COMB_STAGE17_MUX_tr_pipelinec_gen_c_l117_c10_b211_cond;
     -- Stage 18
 end if;
end process;

end arch;
