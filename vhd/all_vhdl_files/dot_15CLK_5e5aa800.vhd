-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.03175629147131773, 0.11601075581619492, 0.20026522016107282, 0.2845196845059508, 0.36877414885082865, 0.4530286131957066, 0.5372830775405841, 0.6215375418854622, 0.70579200623034, 0.7900464705752186, 0.8743009349200965, 0.9585553992649744]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 5
entity dot_15CLK_5e5aa800 is
port(
 clk : in std_logic;
 a : in float3;
 b : in float3;
 return_output : out std_logic_vector(22 downto 0));
end dot_15CLK_5e5aa800;
architecture arch of dot_15CLK_5e5aa800 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 15;
-- All of the wires/regs in function
-- Stage 0
-- Stage 1
-- Stage 2
-- Stage 3
signal REG_STAGE3_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
signal COMB_STAGE3_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
-- Stage 4
signal REG_STAGE4_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
signal COMB_STAGE4_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
-- Stage 5
signal REG_STAGE5_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
signal COMB_STAGE5_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
-- Stage 6
signal REG_STAGE6_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
signal COMB_STAGE6_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
-- Stage 7
signal REG_STAGE7_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
signal COMB_STAGE7_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
-- Stage 8
signal REG_STAGE8_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
signal COMB_STAGE8_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
-- Stage 9
-- Stage 10
-- Stage 11
-- Stage 12
-- Stage 13
-- Stage 14
-- Each function instance gets signals
-- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l141_c10_d592]
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l141_c22_461e]
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_PLUS[tr_pipelinec_gen_c_l141_c10_0fc1]
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_left : std_logic_vector(22 downto 0);
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_right : std_logic_vector(22 downto 0);
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l141_c34_c14a]
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_PLUS[tr_pipelinec_gen_c_l141_c10_a8c8]
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_left : std_logic_vector(22 downto 0);
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_return_output : std_logic_vector(22 downto 0);


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592 : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_3CLK_f01625e3 port map (
clk,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_left,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_right,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_return_output);

-- BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_3CLK_f01625e3 port map (
clk,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_left,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_right,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_return_output);

-- BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1
BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1 : entity work.BIN_OP_PLUS_float_8_14_t_float_8_14_t_6CLK_d5d58814 port map (
clk,
BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_left,
BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_right,
BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_return_output);

-- BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_3CLK_f01625e3 port map (
clk,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_left,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_right,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_return_output);

-- BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8
BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8 : entity work.BIN_OP_PLUS_float_8_14_t_float_8_14_t_6CLK_d5d58814 port map (
clk,
BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_left,
BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right,
BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 a,
 b,
 -- Registers
 -- Stage 0
 -- Stage 1
 -- Stage 2
 -- Stage 3
 REG_STAGE3_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right,
 -- Stage 4
 REG_STAGE4_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right,
 -- Stage 5
 REG_STAGE5_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right,
 -- Stage 6
 REG_STAGE6_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right,
 -- Stage 7
 REG_STAGE7_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right,
 -- Stage 8
 REG_STAGE8_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right,
 -- Stage 9
 -- Stage 10
 -- Stage 11
 -- Stage 12
 -- Stage 13
 -- Stage 14
 -- All submodule outputs
 BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_return_output,
 BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_return_output,
 BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_return_output,
 BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_return_output,
 BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : std_logic_vector(22 downto 0);
 variable VAR_a : float3;
 variable VAR_b : float3;
 variable VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l141_c10_2133_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_left : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l141_c16_d345_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_left : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_tr_pipelinec_gen_c_l141_c22_c2ed_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_left : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_tr_pipelinec_gen_c_l141_c28_8241_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_left : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l141_c34_bd19_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_left : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l141_c40_09a4_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_return_output : std_logic_vector(22 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_a := a;
     VAR_b := b;

     -- Submodule level 0
     -- CONST_REF_RD_float_8_14_t_float3_x_d41d[tr_pipelinec_gen_c_l141_c10_2133] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l141_c10_2133_return_output := VAR_a.x;

     -- CONST_REF_RD_float_8_14_t_float3_z_d41d[tr_pipelinec_gen_c_l141_c40_09a4] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l141_c40_09a4_return_output := VAR_b.z;

     -- CONST_REF_RD_float_8_14_t_float3_y_d41d[tr_pipelinec_gen_c_l141_c28_8241] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_tr_pipelinec_gen_c_l141_c28_8241_return_output := VAR_b.y;

     -- CONST_REF_RD_float_8_14_t_float3_x_d41d[tr_pipelinec_gen_c_l141_c16_d345] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l141_c16_d345_return_output := VAR_b.x;

     -- CONST_REF_RD_float_8_14_t_float3_z_d41d[tr_pipelinec_gen_c_l141_c34_bd19] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l141_c34_bd19_return_output := VAR_a.z;

     -- CONST_REF_RD_float_8_14_t_float3_y_d41d[tr_pipelinec_gen_c_l141_c22_c2ed] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_tr_pipelinec_gen_c_l141_c22_c2ed_return_output := VAR_a.y;

     -- Submodule level 1
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_left := VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l141_c10_2133_return_output;
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_right := VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l141_c16_d345_return_output;
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_left := VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_tr_pipelinec_gen_c_l141_c22_c2ed_return_output;
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_right := VAR_CONST_REF_RD_float_8_14_t_float3_y_d41d_tr_pipelinec_gen_c_l141_c28_8241_return_output;
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_left := VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l141_c34_bd19_return_output;
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_right := VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l141_c40_09a4_return_output;
     -- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l141_c34_c14a] LATENCY=3
     -- Inputs
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_left;
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_right <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_right;

     -- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l141_c10_d592] LATENCY=3
     -- Inputs
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_left;
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_right <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_right;

     -- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l141_c22_461e] LATENCY=3
     -- Inputs
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_left;
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_right <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_right;

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
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_return_output := BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_return_output;
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_return_output := BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_return_output;
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_return_output := BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_return_output;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_left := VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c10_d592_return_output;
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_right := VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c22_461e_return_output;
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right := VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l141_c34_c14a_return_output;
     -- BIN_OP_PLUS[tr_pipelinec_gen_c_l141_c10_0fc1] LATENCY=6
     -- Inputs
     BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_left <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_left;
     BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_right;

     -- Write to comb signals
     COMB_STAGE3_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right := REG_STAGE3_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;

     -- Write to comb signals
     COMB_STAGE4_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right := REG_STAGE4_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;

     -- Write to comb signals
     COMB_STAGE5_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
   elsif STAGE = 6 then
     -- Read from prev stage
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right := REG_STAGE5_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;

     -- Write to comb signals
     COMB_STAGE6_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
   elsif STAGE = 7 then
     -- Read from prev stage
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right := REG_STAGE6_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;

     -- Write to comb signals
     COMB_STAGE7_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
   elsif STAGE = 8 then
     -- Read from prev stage
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right := REG_STAGE7_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;

     -- Write to comb signals
     COMB_STAGE8_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
   elsif STAGE = 9 then
     -- Read from prev stage
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right := REG_STAGE8_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
     -- Submodule outputs
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_return_output := BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_return_output;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_left := VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_0fc1_return_output;
     -- BIN_OP_PLUS[tr_pipelinec_gen_c_l141_c10_a8c8] LATENCY=6
     -- Inputs
     BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_left <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_left;
     BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;

     -- Write to comb signals
   elsif STAGE = 10 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 11 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 12 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 13 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 14 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 15 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_return_output := BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_return_output;
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
     REG_STAGE3_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= COMB_STAGE3_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
     -- Stage 4
     REG_STAGE4_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= COMB_STAGE4_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
     -- Stage 5
     REG_STAGE5_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= COMB_STAGE5_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
     -- Stage 6
     REG_STAGE6_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= COMB_STAGE6_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
     -- Stage 7
     REG_STAGE7_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= COMB_STAGE7_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
     -- Stage 8
     REG_STAGE8_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right <= COMB_STAGE8_BIN_OP_PLUS_tr_pipelinec_gen_c_l141_c10_a8c8_right;
     -- Stage 9
     -- Stage 10
     -- Stage 11
     -- Stage 12
     -- Stage 13
     -- Stage 14
 end if;
end process;

end arch;
