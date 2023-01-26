-- Timing params:
--   Fixed?: False
--   Pipeline Slices: []
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 22
entity plane_has_hole_0CLK_20e09e5a is
port(
 x : in fixed;
 z : in fixed;
 return_output : out fixed);
end plane_has_hole_0CLK_20e09e5a;
architecture arch of plane_has_hole_0CLK_20e09e5a is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- fixed_make_from_double[tr_pipelinec_gen_c_l197_c15_f5bf]
signal fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_return_output : fixed;

-- fixed_shr[tr_pipelinec_gen_c_l198_c7_d279]
signal fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_a : fixed;
signal fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_shift : signed(5 downto 0);
signal fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_return_output : fixed;

-- fixed_shr[tr_pipelinec_gen_c_l199_c7_aeb3]
signal fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_a : fixed;
signal fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_shift : signed(5 downto 0);
signal fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_return_output : fixed;

-- round16[tr_pipelinec_gen_c_l200_c16_d908]
signal round16_tr_pipelinec_gen_c_l200_c16_d908_x : fixed;
signal round16_tr_pipelinec_gen_c_l200_c16_d908_return_output : signed(15 downto 0);

-- round16[tr_pipelinec_gen_c_l201_c16_e9e4]
signal round16_tr_pipelinec_gen_c_l201_c16_e9e4_x : fixed;
signal round16_tr_pipelinec_gen_c_l201_c16_e9e4_return_output : signed(15 downto 0);

-- fixed_make_from_short[tr_pipelinec_gen_c_l202_c27_bc3c]
signal fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_a : signed(15 downto 0);
signal fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l202_c17_d535]
signal fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_return_output : fixed;

-- fixed_make_from_short[tr_pipelinec_gen_c_l203_c27_9c71]
signal fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_a : signed(15 downto 0);
signal fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l203_c17_0b96]
signal fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_return_output : fixed;

-- hash16[tr_pipelinec_gen_c_l204_c17_c108]
signal hash16_tr_pipelinec_gen_c_l204_c17_c108_v : unsigned(15 downto 0);
signal hash16_tr_pipelinec_gen_c_l204_c17_c108_return_output : unsigned(15 downto 0);

-- CONST_SR_5[tr_pipelinec_gen_c_l204_c17_712f]
signal CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_x : unsigned(15 downto 0);
signal CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_return_output : unsigned(15 downto 0);

-- hash16[tr_pipelinec_gen_c_l205_c17_1652]
signal hash16_tr_pipelinec_gen_c_l205_c17_1652_v : unsigned(15 downto 0);
signal hash16_tr_pipelinec_gen_c_l205_c17_1652_return_output : unsigned(15 downto 0);

-- CONST_SR_5[tr_pipelinec_gen_c_l205_c17_c6f8]
signal CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_x : unsigned(15 downto 0);
signal CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_return_output : unsigned(15 downto 0);

-- BIN_OP_XOR[tr_pipelinec_gen_c_l207_c7_37db]
signal BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_left : unsigned(15 downto 0);
signal BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_right : unsigned(15 downto 0);
signal BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_return_output : unsigned(15 downto 0);

-- BIN_OP_PLUS[tr_pipelinec_gen_c_l207_c18_6144]
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_left : signed(15 downto 0);
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_right : signed(10 downto 0);
signal BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_return_output : signed(16 downto 0);

-- BIN_OP_LT[tr_pipelinec_gen_c_l207_c7_57c3]
signal BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_left : signed(16 downto 0);
signal BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_right : signed(16 downto 0);
signal BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_return_output : unsigned(0 downto 0);

-- ret_MUX[tr_pipelinec_gen_c_l207_c3_968c]
signal ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_cond : unsigned(0 downto 0);
signal ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iftrue : fixed;
signal ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iffalse : fixed;
signal ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_return_output : fixed;

-- fixed_abs[tr_pipelinec_gen_c_l208_c16_c99f]
signal fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_x : fixed;
signal fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_return_output : fixed;

-- fixed_abs[tr_pipelinec_gen_c_l209_c16_1b88]
signal fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_x : fixed;
signal fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_return_output : fixed;

-- fixed_add[tr_pipelinec_gen_c_l210_c22_6c81]
signal fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_left : fixed;
signal fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_right : fixed;
signal fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l210_c42_025a]
signal fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l210_c11_8f79]
signal fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_return_output : fixed;


begin

-- SUBMODULE INSTANCES 
-- fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf
fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_a,
fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_return_output);

-- fixed_shr_tr_pipelinec_gen_c_l198_c7_d279
fixed_shr_tr_pipelinec_gen_c_l198_c7_d279 : entity work.fixed_shr_0CLK_6a3d4cae port map (
fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_a,
fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_shift,
fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_return_output);

-- fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3
fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3 : entity work.fixed_shr_0CLK_6a3d4cae port map (
fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_a,
fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_shift,
fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_return_output);

-- round16_tr_pipelinec_gen_c_l200_c16_d908
round16_tr_pipelinec_gen_c_l200_c16_d908 : entity work.round16_0CLK_a193dced port map (
round16_tr_pipelinec_gen_c_l200_c16_d908_x,
round16_tr_pipelinec_gen_c_l200_c16_d908_return_output);

-- round16_tr_pipelinec_gen_c_l201_c16_e9e4
round16_tr_pipelinec_gen_c_l201_c16_e9e4 : entity work.round16_0CLK_a193dced port map (
round16_tr_pipelinec_gen_c_l201_c16_e9e4_x,
round16_tr_pipelinec_gen_c_l201_c16_e9e4_return_output);

-- fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c
fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c : entity work.fixed_make_from_short_0CLK_23f04728 port map (
fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_a,
fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l202_c17_d535
fixed_sub_tr_pipelinec_gen_c_l202_c17_d535 : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_left,
fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_right,
fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_return_output);

-- fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71
fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71 : entity work.fixed_make_from_short_0CLK_23f04728 port map (
fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_a,
fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96
fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96 : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_left,
fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_right,
fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_return_output);

-- hash16_tr_pipelinec_gen_c_l204_c17_c108
hash16_tr_pipelinec_gen_c_l204_c17_c108 : entity work.hash16_0CLK_b45f1687 port map (
hash16_tr_pipelinec_gen_c_l204_c17_c108_v,
hash16_tr_pipelinec_gen_c_l204_c17_c108_return_output);

-- CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f
CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f : entity work.CONST_SR_5_uint16_t_0CLK_de264c78 port map (
CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_x,
CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_return_output);

-- hash16_tr_pipelinec_gen_c_l205_c17_1652
hash16_tr_pipelinec_gen_c_l205_c17_1652 : entity work.hash16_0CLK_b45f1687 port map (
hash16_tr_pipelinec_gen_c_l205_c17_1652_v,
hash16_tr_pipelinec_gen_c_l205_c17_1652_return_output);

-- CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8
CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8 : entity work.CONST_SR_5_uint16_t_0CLK_de264c78 port map (
CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_x,
CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_return_output);

-- BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db
BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db : entity work.BIN_OP_XOR_uint16_t_uint16_t_0CLK_de264c78 port map (
BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_left,
BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_right,
BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_return_output);

-- BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144
BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144 : entity work.BIN_OP_PLUS_int16_t_int11_t_0CLK_de264c78 port map (
BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_left,
BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_right,
BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_return_output);

-- BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3
BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3 : entity work.BIN_OP_LT_int17_t_int17_t_0CLK_de264c78 port map (
BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_left,
BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_right,
BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_return_output);

-- ret_MUX_tr_pipelinec_gen_c_l207_c3_968c
ret_MUX_tr_pipelinec_gen_c_l207_c3_968c : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_cond,
ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iftrue,
ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iffalse,
ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_return_output);

-- fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f
fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f : entity work.fixed_abs_0CLK_d57786e6 port map (
fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_x,
fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_return_output);

-- fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88
fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88 : entity work.fixed_abs_0CLK_d57786e6 port map (
fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_x,
fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_return_output);

-- fixed_add_tr_pipelinec_gen_c_l210_c22_6c81
fixed_add_tr_pipelinec_gen_c_l210_c22_6c81 : entity work.fixed_add_0CLK_6f2c5aad port map (
fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_left,
fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_right,
fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a
fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_a,
fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79
fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79 : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_left,
fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_right,
fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 z,
 -- All submodule outputs
 fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_return_output,
 fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_return_output,
 fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_return_output,
 round16_tr_pipelinec_gen_c_l200_c16_d908_return_output,
 round16_tr_pipelinec_gen_c_l201_c16_e9e4_return_output,
 fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_return_output,
 fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_return_output,
 fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_return_output,
 fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_return_output,
 hash16_tr_pipelinec_gen_c_l204_c17_c108_return_output,
 CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_return_output,
 hash16_tr_pipelinec_gen_c_l205_c17_1652_return_output,
 CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_return_output,
 BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_return_output,
 BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_return_output,
 BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_return_output,
 ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_return_output,
 fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_return_output,
 fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_return_output,
 fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_return_output,
 fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_x : fixed;
 variable VAR_z : fixed;
 variable VAR_ret : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_return_output : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_a : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_shift : signed(5 downto 0);
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_return_output : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_a : fixed;
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_shift : signed(5 downto 0);
 variable VAR_fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_return_output : fixed;
 variable VAR_ix : signed(15 downto 0);
 variable VAR_ix_tr_pipelinec_gen_c_l200_c11_36f0_0 : signed(15 downto 0);
 variable VAR_round16_tr_pipelinec_gen_c_l200_c16_d908_x : fixed;
 variable VAR_round16_tr_pipelinec_gen_c_l200_c16_d908_return_output : signed(15 downto 0);
 variable VAR_iz : signed(15 downto 0);
 variable VAR_iz_tr_pipelinec_gen_c_l201_c11_79a2_0 : signed(15 downto 0);
 variable VAR_round16_tr_pipelinec_gen_c_l201_c16_e9e4_x : fixed;
 variable VAR_round16_tr_pipelinec_gen_c_l201_c16_e9e4_return_output : signed(15 downto 0);
 variable VAR_fracx : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_right : fixed;
 variable VAR_fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_a : signed(15 downto 0);
 variable VAR_fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_return_output : fixed;
 variable VAR_fracz : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_right : fixed;
 variable VAR_fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_a : signed(15 downto 0);
 variable VAR_fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_return_output : fixed;
 variable VAR_hx : unsigned(15 downto 0);
 variable VAR_hash16_tr_pipelinec_gen_c_l204_c17_c108_v : unsigned(15 downto 0);
 variable VAR_hash16_tr_pipelinec_gen_c_l204_c17_c108_return_output : unsigned(15 downto 0);
 variable VAR_CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_return_output : unsigned(15 downto 0);
 variable VAR_CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_x : unsigned(15 downto 0);
 variable VAR_hz : unsigned(15 downto 0);
 variable VAR_hash16_tr_pipelinec_gen_c_l205_c17_1652_v : unsigned(15 downto 0);
 variable VAR_hash16_tr_pipelinec_gen_c_l205_c17_1652_return_output : unsigned(15 downto 0);
 variable VAR_CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_return_output : unsigned(15 downto 0);
 variable VAR_CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_x : unsigned(15 downto 0);
 variable VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_return_output : unsigned(15 downto 0);
 variable VAR_BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_left : signed(16 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_left : signed(15 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_right : signed(10 downto 0);
 variable VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_return_output : signed(16 downto 0);
 variable VAR_BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_right : signed(16 downto 0);
 variable VAR_BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_return_output : unsigned(0 downto 0);
 variable VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iftrue : fixed;
 variable VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iffalse : fixed;
 variable VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_return_output : fixed;
 variable VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_cond : unsigned(0 downto 0);
 variable VAR_ax : fixed;
 variable VAR_fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_x : fixed;
 variable VAR_fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_return_output : fixed;
 variable VAR_az : fixed;
 variable VAR_fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_x : fixed;
 variable VAR_fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_right : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_left : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_right : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_return_output : fixed;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_shift := signed(std_logic_vector(resize(to_unsigned(5, 3), 6)));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_a := to_slv(to_float(0.4, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_a := to_slv(to_float(1.0, 8, 14));
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_right := signed(std_logic_vector(resize(to_unsigned(600, 10), 11)));
     VAR_fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_shift := signed(std_logic_vector(resize(to_unsigned(4, 3), 6)));
     -- fixed_make_from_double[tr_pipelinec_gen_c_l197_c15_f5bf] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l210_c42_025a] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_return_output;

     -- Submodule level 1
     VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iffalse := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l197_c15_f5bf_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l210_c42_025a_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;
     VAR_z := z;

     -- Submodule level 0
     VAR_fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_a := VAR_x;
     VAR_fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_a := VAR_z;
     -- fixed_shr[tr_pipelinec_gen_c_l199_c7_aeb3] LATENCY=0
     -- Inputs
     fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_a <= VAR_fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_a;
     fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_shift <= VAR_fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_shift;
     -- Outputs
     VAR_fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_return_output := fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_return_output;

     -- fixed_shr[tr_pipelinec_gen_c_l198_c7_d279] LATENCY=0
     -- Inputs
     fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_a <= VAR_fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_a;
     fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_shift <= VAR_fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_shift;
     -- Outputs
     VAR_fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_return_output := fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_return_output;

     -- Submodule level 1
     VAR_fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_right := VAR_fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_return_output;
     VAR_round16_tr_pipelinec_gen_c_l200_c16_d908_x := VAR_fixed_shr_tr_pipelinec_gen_c_l198_c7_d279_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_right := VAR_fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_return_output;
     VAR_round16_tr_pipelinec_gen_c_l201_c16_e9e4_x := VAR_fixed_shr_tr_pipelinec_gen_c_l199_c7_aeb3_return_output;
     -- round16[tr_pipelinec_gen_c_l201_c16_e9e4] LATENCY=0
     -- Inputs
     round16_tr_pipelinec_gen_c_l201_c16_e9e4_x <= VAR_round16_tr_pipelinec_gen_c_l201_c16_e9e4_x;
     -- Outputs
     VAR_round16_tr_pipelinec_gen_c_l201_c16_e9e4_return_output := round16_tr_pipelinec_gen_c_l201_c16_e9e4_return_output;

     -- round16[tr_pipelinec_gen_c_l200_c16_d908] LATENCY=0
     -- Inputs
     round16_tr_pipelinec_gen_c_l200_c16_d908_x <= VAR_round16_tr_pipelinec_gen_c_l200_c16_d908_x;
     -- Outputs
     VAR_round16_tr_pipelinec_gen_c_l200_c16_d908_return_output := round16_tr_pipelinec_gen_c_l200_c16_d908_return_output;

     -- Submodule level 2
     VAR_ix_tr_pipelinec_gen_c_l200_c11_36f0_0 := VAR_round16_tr_pipelinec_gen_c_l200_c16_d908_return_output;
     VAR_iz_tr_pipelinec_gen_c_l201_c11_79a2_0 := VAR_round16_tr_pipelinec_gen_c_l201_c16_e9e4_return_output;
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_left := VAR_ix_tr_pipelinec_gen_c_l200_c11_36f0_0;
     VAR_fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_a := VAR_ix_tr_pipelinec_gen_c_l200_c11_36f0_0;
     VAR_hash16_tr_pipelinec_gen_c_l204_c17_c108_v := resize(unsigned(std_logic_vector(VAR_ix_tr_pipelinec_gen_c_l200_c11_36f0_0)),16);
     VAR_fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_a := VAR_iz_tr_pipelinec_gen_c_l201_c11_79a2_0;
     VAR_hash16_tr_pipelinec_gen_c_l205_c17_1652_v := resize(unsigned(std_logic_vector(VAR_iz_tr_pipelinec_gen_c_l201_c11_79a2_0)),16);
     -- fixed_make_from_short[tr_pipelinec_gen_c_l203_c27_9c71] LATENCY=0
     -- Inputs
     fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_a <= VAR_fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_a;
     -- Outputs
     VAR_fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_return_output := fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_return_output;

     -- fixed_make_from_short[tr_pipelinec_gen_c_l202_c27_bc3c] LATENCY=0
     -- Inputs
     fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_a <= VAR_fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_a;
     -- Outputs
     VAR_fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_return_output := fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_return_output;

     -- BIN_OP_PLUS[tr_pipelinec_gen_c_l207_c18_6144] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_left <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_left;
     BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_right <= VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_right;
     -- Outputs
     VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_return_output := BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_return_output;

     -- hash16[tr_pipelinec_gen_c_l204_c17_c108] LATENCY=0
     -- Inputs
     hash16_tr_pipelinec_gen_c_l204_c17_c108_v <= VAR_hash16_tr_pipelinec_gen_c_l204_c17_c108_v;
     -- Outputs
     VAR_hash16_tr_pipelinec_gen_c_l204_c17_c108_return_output := hash16_tr_pipelinec_gen_c_l204_c17_c108_return_output;

     -- hash16[tr_pipelinec_gen_c_l205_c17_1652] LATENCY=0
     -- Inputs
     hash16_tr_pipelinec_gen_c_l205_c17_1652_v <= VAR_hash16_tr_pipelinec_gen_c_l205_c17_1652_v;
     -- Outputs
     VAR_hash16_tr_pipelinec_gen_c_l205_c17_1652_return_output := hash16_tr_pipelinec_gen_c_l205_c17_1652_return_output;

     -- Submodule level 3
     VAR_BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_right := VAR_BIN_OP_PLUS_tr_pipelinec_gen_c_l207_c18_6144_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_left := VAR_fixed_make_from_short_tr_pipelinec_gen_c_l202_c27_bc3c_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_left := VAR_fixed_make_from_short_tr_pipelinec_gen_c_l203_c27_9c71_return_output;
     VAR_CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_x := VAR_hash16_tr_pipelinec_gen_c_l204_c17_c108_return_output;
     VAR_CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_x := VAR_hash16_tr_pipelinec_gen_c_l205_c17_1652_return_output;
     -- CONST_SR_5[tr_pipelinec_gen_c_l204_c17_712f] LATENCY=0
     -- Inputs
     CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_x <= VAR_CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_x;
     -- Outputs
     VAR_CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_return_output := CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l203_c17_0b96] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_left;
     fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_return_output := fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_return_output;

     -- CONST_SR_5[tr_pipelinec_gen_c_l205_c17_c6f8] LATENCY=0
     -- Inputs
     CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_x <= VAR_CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_x;
     -- Outputs
     VAR_CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_return_output := CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_return_output;

     -- fixed_sub[tr_pipelinec_gen_c_l202_c17_d535] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_left;
     fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_return_output := fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_return_output;

     -- Submodule level 4
     VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_left := VAR_CONST_SR_5_tr_pipelinec_gen_c_l204_c17_712f_return_output;
     VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_right := VAR_CONST_SR_5_tr_pipelinec_gen_c_l205_c17_c6f8_return_output;
     VAR_fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_x := VAR_fixed_sub_tr_pipelinec_gen_c_l202_c17_d535_return_output;
     VAR_fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_x := VAR_fixed_sub_tr_pipelinec_gen_c_l203_c17_0b96_return_output;
     -- BIN_OP_XOR[tr_pipelinec_gen_c_l207_c7_37db] LATENCY=0
     -- Inputs
     BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_left <= VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_left;
     BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_right <= VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_right;
     -- Outputs
     VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_return_output := BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_return_output;

     -- fixed_abs[tr_pipelinec_gen_c_l208_c16_c99f] LATENCY=0
     -- Inputs
     fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_x <= VAR_fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_x;
     -- Outputs
     VAR_fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_return_output := fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_return_output;

     -- fixed_abs[tr_pipelinec_gen_c_l209_c16_1b88] LATENCY=0
     -- Inputs
     fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_x <= VAR_fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_x;
     -- Outputs
     VAR_fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_return_output := fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_return_output;

     -- Submodule level 5
     VAR_BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_left := signed(std_logic_vector(resize(VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l207_c7_37db_return_output, 17)));
     VAR_fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_left := VAR_fixed_abs_tr_pipelinec_gen_c_l208_c16_c99f_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_right := VAR_fixed_abs_tr_pipelinec_gen_c_l209_c16_1b88_return_output;
     -- fixed_add[tr_pipelinec_gen_c_l210_c22_6c81] LATENCY=0
     -- Inputs
     fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_left <= VAR_fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_left;
     fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_right <= VAR_fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_right;
     -- Outputs
     VAR_fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_return_output := fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_return_output;

     -- BIN_OP_LT[tr_pipelinec_gen_c_l207_c7_57c3] LATENCY=0
     -- Inputs
     BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_left <= VAR_BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_left;
     BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_right <= VAR_BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_right;
     -- Outputs
     VAR_BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_return_output := BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_return_output;

     -- Submodule level 6
     VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_cond := VAR_BIN_OP_LT_tr_pipelinec_gen_c_l207_c7_57c3_return_output;
     VAR_fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_left := VAR_fixed_add_tr_pipelinec_gen_c_l210_c22_6c81_return_output;
     -- fixed_sub[tr_pipelinec_gen_c_l210_c11_8f79] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_left;
     fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_return_output := fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_return_output;

     -- Submodule level 7
     VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iftrue := VAR_fixed_sub_tr_pipelinec_gen_c_l210_c11_8f79_return_output;
     -- ret_MUX[tr_pipelinec_gen_c_l207_c3_968c] LATENCY=0
     -- Inputs
     ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_cond <= VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_cond;
     ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iftrue <= VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iftrue;
     ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iffalse <= VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_iffalse;
     -- Outputs
     VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_return_output := ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_return_output;

     -- Submodule level 8
     VAR_return_output := VAR_ret_MUX_tr_pipelinec_gen_c_l207_c3_968c_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
