-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.015258014489696064, 0.1262475054741363, 0.23723699645857005, 0.3482264874430114, 0.45921597842745016, 0.570205469411892, 0.681194960396332, 0.7921844513807657, 0.903173942365203]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 9
entity float_rsqrt_14CLK_25a48b71 is
port(
 clk : in std_logic;
 number : in std_logic_vector(22 downto 0);
 return_output : out std_logic_vector(22 downto 0));
end float_rsqrt_14CLK_25a48b71;
architecture arch of float_rsqrt_14CLK_25a48b71 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 14;
-- All of the wires/regs in function
-- Stage 0
-- Stage 1
signal REG_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal REG_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right : std_logic_vector(22 downto 0);
signal COMB_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right : std_logic_vector(22 downto 0);
-- Stage 2
signal REG_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal REG_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right : std_logic_vector(22 downto 0);
signal COMB_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right : std_logic_vector(22 downto 0);
-- Stage 3
signal REG_STAGE3_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE3_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
-- Stage 4
signal REG_STAGE4_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE4_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
-- Stage 5
signal REG_STAGE5_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE5_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
-- Stage 6
signal REG_STAGE6_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE6_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
-- Stage 7
signal REG_STAGE7_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE7_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
-- Stage 8
signal REG_STAGE8_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE8_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
-- Stage 9
signal REG_STAGE9_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE9_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
-- Stage 10
signal REG_STAGE10_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE10_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
-- Stage 11
signal REG_STAGE11_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal COMB_STAGE11_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
-- Stage 12
-- Stage 13
-- Each function instance gets signals
-- BIN_OP_SL[float_e_m_t_helper_h_l129_c21_d7d0]
signal BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_left : std_logic_vector(22 downto 0);
signal BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_right : signed(1 downto 0);
signal BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_return_output : std_logic_vector(22 downto 0);

-- CONST_SR_1[float_e_m_t_helper_h_l130_c57_aa5c]
signal CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_x : unsigned(22 downto 0);
signal CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_return_output : unsigned(22 downto 0);

-- BIN_OP_MINUS[float_e_m_t_helper_h_l130_c45_80da]
signal BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_left : unsigned(21 downto 0);
signal BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_right : unsigned(22 downto 0);
signal BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_return_output : unsigned(21 downto 0);

-- BIN_OP_INFERRED_MULT[float_e_m_t_helper_h_l131_c24_91bb]
signal BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_INFERRED_MULT[float_e_m_t_helper_h_l131_c24_7b9f]
signal BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_MINUS[float_e_m_t_helper_h_l131_c18_cf5b]
signal BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_left : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_right : std_logic_vector(22 downto 0);
signal BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_return_output : std_logic_vector(22 downto 0);

-- BIN_OP_INFERRED_MULT[float_e_m_t_helper_h_l131_c10_4739]
signal BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_return_output : std_logic_vector(22 downto 0);

function float_8_14_t_22_0( x : std_logic_vector) return unsigned is
--variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(22 downto 0);
begin
return_output := unsigned(std_logic_vector(x(22 downto 0)));
return return_output;
end function;

function float_8_14_t_uint23( x : unsigned) return std_logic_vector is

  --variable x : unsigned(22 downto 0);
  variable return_output : std_logic_vector(22 downto 0);

begin

    return_output := std_logic_vector(x);
    return return_output;

end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0
BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0 : entity work.BIN_OP_SL_float_8_14_t_int2_t_1CLK_241c222a port map (
clk,
BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_left,
BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_right,
BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_return_output);

-- CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c
CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c : entity work.CONST_SR_1_uint23_t_0CLK_de264c78 port map (
CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_x,
CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_return_output);

-- BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da
BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da : entity work.BIN_OP_MINUS_uint22_t_uint23_t_1CLK_bb6b1022 port map (
clk,
BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_left,
BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_right,
BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_return_output);

-- BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_2CLK_9ae42a5f port map (
clk,
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_left,
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_right,
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_return_output);

-- BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_3CLK_cfe18897 port map (
clk,
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_left,
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right,
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_return_output);

-- BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b
BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b : entity work.BIN_OP_MINUS_float_8_14_t_float_8_14_t_6CLK_ab6afdf3 port map (
clk,
BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_left,
BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_right,
BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_return_output);

-- BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739 : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_2CLK_17fff553 port map (
clk,
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_right,
BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 number,
 -- Registers
 -- Stage 0
 -- Stage 1
 REG_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 REG_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right,
 -- Stage 2
 REG_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 REG_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right,
 -- Stage 3
 REG_STAGE3_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 -- Stage 4
 REG_STAGE4_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 -- Stage 5
 REG_STAGE5_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 -- Stage 6
 REG_STAGE6_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 -- Stage 7
 REG_STAGE7_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 -- Stage 8
 REG_STAGE8_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 -- Stage 9
 REG_STAGE9_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 -- Stage 10
 REG_STAGE10_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 -- Stage 11
 REG_STAGE11_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left,
 -- Stage 12
 -- Stage 13
 -- All submodule outputs
 BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_return_output,
 CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_return_output,
 BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_return_output,
 BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_return_output,
 BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_return_output,
 BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_return_output,
 BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : std_logic_vector(22 downto 0);
 variable VAR_number : std_logic_vector(22 downto 0);
 variable VAR_x2 : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_right : signed(1 downto 0);
 variable VAR_BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_return_output : std_logic_vector(22 downto 0);
 variable VAR_conv_f : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_left : unsigned(21 downto 0);
 variable VAR_float_8_14_t_22_0_float_e_m_t_helper_h_l130_c57_1513_return_output : unsigned(22 downto 0);
 variable VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_right : unsigned(22 downto 0);
 variable VAR_CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_return_output : unsigned(22 downto 0);
 variable VAR_CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_x : unsigned(22 downto 0);
 variable VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_return_output : unsigned(21 downto 0);
 variable VAR_float_8_14_t_uint23_float_e_m_t_helper_h_l130_c25_7760_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_return_output : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_return_output : std_logic_vector(22 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_left := resize_float_e_m_t(to_slv(to_float(1.5, 8, 23)),8,23,8,14);
     VAR_BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_right := to_signed(-1, 2);
     VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_left := to_unsigned(3120044, 22);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_number := number;

     -- Submodule level 0
     VAR_BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_left := VAR_number;
     -- float_8_14_t_22_0[float_e_m_t_helper_h_l130_c57_1513] LATENCY=0
     VAR_float_8_14_t_22_0_float_e_m_t_helper_h_l130_c57_1513_return_output := float_8_14_t_22_0(
     VAR_number);

     -- BIN_OP_SL[float_e_m_t_helper_h_l129_c21_d7d0] LATENCY=1
     -- Inputs
     BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_left <= VAR_BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_left;
     BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_right <= VAR_BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_right;

     -- Submodule level 1
     VAR_CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_x := VAR_float_8_14_t_22_0_float_e_m_t_helper_h_l130_c57_1513_return_output;
     -- CONST_SR_1[float_e_m_t_helper_h_l130_c57_aa5c] LATENCY=0
     -- Inputs
     CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_x <= VAR_CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_x;
     -- Outputs
     VAR_CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_return_output := CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_return_output;

     -- Submodule level 2
     VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_right := VAR_CONST_SR_1_float_e_m_t_helper_h_l130_c57_aa5c_return_output;
     -- BIN_OP_MINUS[float_e_m_t_helper_h_l130_c45_80da] LATENCY=1
     -- Inputs
     BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_left <= VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_left;
     BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_right <= VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_right;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_return_output := BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_return_output;
     VAR_BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_return_output := BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_return_output;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right := VAR_BIN_OP_SL_float_e_m_t_helper_h_l129_c21_d7d0_return_output;
     -- float_8_14_t_uint23[float_e_m_t_helper_h_l130_c25_7760] LATENCY=0
     VAR_float_8_14_t_uint23_float_e_m_t_helper_h_l130_c25_7760_return_output := float_8_14_t_uint23(
     resize(VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l130_c45_80da_return_output, 23));

     -- Submodule level 1
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := VAR_float_8_14_t_uint23_float_e_m_t_helper_h_l130_c25_7760_return_output;
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_left := VAR_float_8_14_t_uint23_float_e_m_t_helper_h_l130_c25_7760_return_output;
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_right := VAR_float_8_14_t_uint23_float_e_m_t_helper_h_l130_c25_7760_return_output;
     -- BIN_OP_INFERRED_MULT[float_e_m_t_helper_h_l131_c24_91bb] LATENCY=2
     -- Inputs
     BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_left;
     BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_right <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_right;

     -- Write to comb signals
     COMB_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     COMB_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right;
   elsif STAGE = 2 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right := REG_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right;

     -- Write to comb signals
     COMB_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     COMB_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right;
   elsif STAGE = 3 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right := REG_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right;
     -- Submodule outputs
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_return_output := BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_return_output;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_left := VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_91bb_return_output;
     -- BIN_OP_INFERRED_MULT[float_e_m_t_helper_h_l131_c24_7b9f] LATENCY=3
     -- Inputs
     BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_left;
     BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right;

     -- Write to comb signals
     COMB_STAGE3_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE3_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;

     -- Write to comb signals
     COMB_STAGE4_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE4_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;

     -- Write to comb signals
     COMB_STAGE5_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
   elsif STAGE = 6 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE5_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Submodule outputs
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_return_output := BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_return_output;

     -- Submodule level 0
     VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_right := VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_return_output;
     -- BIN_OP_MINUS[float_e_m_t_helper_h_l131_c18_cf5b] LATENCY=6
     -- Inputs
     BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_left <= VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_left;
     BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_right <= VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_right;

     -- Write to comb signals
     COMB_STAGE6_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
   elsif STAGE = 7 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE6_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;

     -- Write to comb signals
     COMB_STAGE7_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
   elsif STAGE = 8 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE7_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;

     -- Write to comb signals
     COMB_STAGE8_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
   elsif STAGE = 9 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE8_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;

     -- Write to comb signals
     COMB_STAGE9_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
   elsif STAGE = 10 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE9_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;

     -- Write to comb signals
     COMB_STAGE10_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
   elsif STAGE = 11 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE10_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;

     -- Write to comb signals
     COMB_STAGE11_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
   elsif STAGE = 12 then
     -- Read from prev stage
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left := REG_STAGE11_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Submodule outputs
     VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_return_output := BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_return_output;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_right := VAR_BIN_OP_MINUS_float_e_m_t_helper_h_l131_c18_cf5b_return_output;
     -- BIN_OP_INFERRED_MULT[float_e_m_t_helper_h_l131_c10_4739] LATENCY=2
     -- Inputs
     BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_right <= VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_right;

     -- Write to comb signals
   elsif STAGE = 13 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 14 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_return_output := BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_return_output;
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
     REG_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     REG_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right <= COMB_STAGE1_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right;
     -- Stage 2
     REG_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     REG_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right <= COMB_STAGE2_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c24_7b9f_right;
     -- Stage 3
     REG_STAGE3_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE3_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Stage 4
     REG_STAGE4_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE4_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Stage 5
     REG_STAGE5_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE5_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Stage 6
     REG_STAGE6_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE6_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Stage 7
     REG_STAGE7_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE7_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Stage 8
     REG_STAGE8_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE8_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Stage 9
     REG_STAGE9_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE9_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Stage 10
     REG_STAGE10_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE10_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Stage 11
     REG_STAGE11_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left <= COMB_STAGE11_BIN_OP_INFERRED_MULT_float_e_m_t_helper_h_l131_c10_4739_left;
     -- Stage 12
     -- Stage 13
 end if;
end process;

end arch;
