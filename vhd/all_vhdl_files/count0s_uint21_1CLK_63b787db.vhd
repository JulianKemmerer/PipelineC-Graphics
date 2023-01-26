-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.9724137931034489]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 82
entity count0s_uint21_1CLK_63b787db is
port(
 clk : in std_logic;
 x : in unsigned(20 downto 0);
 return_output : out unsigned(4 downto 0));
end count0s_uint21_1CLK_63b787db;
architecture arch of count0s_uint21_1CLK_63b787db is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;
-- All of the wires/regs in function
-- Stage 0
-- Each function instance gets signals
-- BIN_OP_EQ[bit_math_h_l70_c24_eacd]
signal BIN_OP_EQ_bit_math_h_l70_c24_eacd_left : unsigned(20 downto 0);
signal BIN_OP_EQ_bit_math_h_l70_c24_eacd_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l70_c24_eacd_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l73_c14_3049]
signal BIN_OP_EQ_bit_math_h_l73_c14_3049_left : unsigned(1 downto 0);
signal BIN_OP_EQ_bit_math_h_l73_c14_3049_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l73_c14_3049_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l80_c14_0f10]
signal BIN_OP_EQ_bit_math_h_l80_c14_0f10_left : unsigned(2 downto 0);
signal BIN_OP_EQ_bit_math_h_l80_c14_0f10_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l80_c14_0f10_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l87_c14_3207]
signal BIN_OP_EQ_bit_math_h_l87_c14_3207_left : unsigned(3 downto 0);
signal BIN_OP_EQ_bit_math_h_l87_c14_3207_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l87_c14_3207_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l94_c14_02a3]
signal BIN_OP_EQ_bit_math_h_l94_c14_02a3_left : unsigned(4 downto 0);
signal BIN_OP_EQ_bit_math_h_l94_c14_02a3_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l94_c14_02a3_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l101_c14_d66f]
signal BIN_OP_EQ_bit_math_h_l101_c14_d66f_left : unsigned(5 downto 0);
signal BIN_OP_EQ_bit_math_h_l101_c14_d66f_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l101_c14_d66f_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l108_c14_310f]
signal BIN_OP_EQ_bit_math_h_l108_c14_310f_left : unsigned(6 downto 0);
signal BIN_OP_EQ_bit_math_h_l108_c14_310f_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l108_c14_310f_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l115_c14_5040]
signal BIN_OP_EQ_bit_math_h_l115_c14_5040_left : unsigned(7 downto 0);
signal BIN_OP_EQ_bit_math_h_l115_c14_5040_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l115_c14_5040_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l122_c14_d2cd]
signal BIN_OP_EQ_bit_math_h_l122_c14_d2cd_left : unsigned(8 downto 0);
signal BIN_OP_EQ_bit_math_h_l122_c14_d2cd_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l122_c14_d2cd_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l129_c14_a382]
signal BIN_OP_EQ_bit_math_h_l129_c14_a382_left : unsigned(9 downto 0);
signal BIN_OP_EQ_bit_math_h_l129_c14_a382_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l129_c14_a382_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l136_c15_659f]
signal BIN_OP_EQ_bit_math_h_l136_c15_659f_left : unsigned(10 downto 0);
signal BIN_OP_EQ_bit_math_h_l136_c15_659f_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l136_c15_659f_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l143_c15_4da9]
signal BIN_OP_EQ_bit_math_h_l143_c15_4da9_left : unsigned(11 downto 0);
signal BIN_OP_EQ_bit_math_h_l143_c15_4da9_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l143_c15_4da9_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l150_c15_db21]
signal BIN_OP_EQ_bit_math_h_l150_c15_db21_left : unsigned(12 downto 0);
signal BIN_OP_EQ_bit_math_h_l150_c15_db21_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l150_c15_db21_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l157_c15_8afc]
signal BIN_OP_EQ_bit_math_h_l157_c15_8afc_left : unsigned(13 downto 0);
signal BIN_OP_EQ_bit_math_h_l157_c15_8afc_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l157_c15_8afc_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l164_c15_4d49]
signal BIN_OP_EQ_bit_math_h_l164_c15_4d49_left : unsigned(14 downto 0);
signal BIN_OP_EQ_bit_math_h_l164_c15_4d49_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l164_c15_4d49_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l171_c15_1913]
signal BIN_OP_EQ_bit_math_h_l171_c15_1913_left : unsigned(15 downto 0);
signal BIN_OP_EQ_bit_math_h_l171_c15_1913_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l171_c15_1913_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l178_c15_3d3f]
signal BIN_OP_EQ_bit_math_h_l178_c15_3d3f_left : unsigned(16 downto 0);
signal BIN_OP_EQ_bit_math_h_l178_c15_3d3f_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l178_c15_3d3f_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l185_c15_1444]
signal BIN_OP_EQ_bit_math_h_l185_c15_1444_left : unsigned(17 downto 0);
signal BIN_OP_EQ_bit_math_h_l185_c15_1444_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l185_c15_1444_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l192_c15_dcff]
signal BIN_OP_EQ_bit_math_h_l192_c15_dcff_left : unsigned(18 downto 0);
signal BIN_OP_EQ_bit_math_h_l192_c15_dcff_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l192_c15_dcff_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l199_c15_35d9]
signal BIN_OP_EQ_bit_math_h_l199_c15_35d9_left : unsigned(19 downto 0);
signal BIN_OP_EQ_bit_math_h_l199_c15_35d9_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l199_c15_35d9_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l206_c15_f42a]
signal BIN_OP_EQ_bit_math_h_l206_c15_f42a_left : unsigned(20 downto 0);
signal BIN_OP_EQ_bit_math_h_l206_c15_f42a_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l206_c15_f42a_return_output : unsigned(0 downto 0);

-- sum1_MUX[bit_math_h_l213_c3_67f4]
signal sum1_MUX_bit_math_h_l213_c3_67f4_cond : unsigned(0 downto 0);
signal sum1_MUX_bit_math_h_l213_c3_67f4_iftrue : unsigned(0 downto 0);
signal sum1_MUX_bit_math_h_l213_c3_67f4_iffalse : unsigned(0 downto 0);
signal sum1_MUX_bit_math_h_l213_c3_67f4_return_output : unsigned(0 downto 0);

-- sum2_MUX[bit_math_h_l223_c3_6f6d]
signal sum2_MUX_bit_math_h_l223_c3_6f6d_cond : unsigned(0 downto 0);
signal sum2_MUX_bit_math_h_l223_c3_6f6d_iftrue : unsigned(1 downto 0);
signal sum2_MUX_bit_math_h_l223_c3_6f6d_iffalse : unsigned(1 downto 0);
signal sum2_MUX_bit_math_h_l223_c3_6f6d_return_output : unsigned(1 downto 0);

-- sum3_MUX[bit_math_h_l233_c3_2960]
signal sum3_MUX_bit_math_h_l233_c3_2960_cond : unsigned(0 downto 0);
signal sum3_MUX_bit_math_h_l233_c3_2960_iftrue : unsigned(1 downto 0);
signal sum3_MUX_bit_math_h_l233_c3_2960_iffalse : unsigned(1 downto 0);
signal sum3_MUX_bit_math_h_l233_c3_2960_return_output : unsigned(1 downto 0);

-- sum4_MUX[bit_math_h_l243_c3_404a]
signal sum4_MUX_bit_math_h_l243_c3_404a_cond : unsigned(0 downto 0);
signal sum4_MUX_bit_math_h_l243_c3_404a_iftrue : unsigned(2 downto 0);
signal sum4_MUX_bit_math_h_l243_c3_404a_iffalse : unsigned(2 downto 0);
signal sum4_MUX_bit_math_h_l243_c3_404a_return_output : unsigned(2 downto 0);

-- sum5_MUX[bit_math_h_l253_c3_30a4]
signal sum5_MUX_bit_math_h_l253_c3_30a4_cond : unsigned(0 downto 0);
signal sum5_MUX_bit_math_h_l253_c3_30a4_iftrue : unsigned(2 downto 0);
signal sum5_MUX_bit_math_h_l253_c3_30a4_iffalse : unsigned(2 downto 0);
signal sum5_MUX_bit_math_h_l253_c3_30a4_return_output : unsigned(2 downto 0);

-- sum6_MUX[bit_math_h_l263_c3_3d14]
signal sum6_MUX_bit_math_h_l263_c3_3d14_cond : unsigned(0 downto 0);
signal sum6_MUX_bit_math_h_l263_c3_3d14_iftrue : unsigned(2 downto 0);
signal sum6_MUX_bit_math_h_l263_c3_3d14_iffalse : unsigned(2 downto 0);
signal sum6_MUX_bit_math_h_l263_c3_3d14_return_output : unsigned(2 downto 0);

-- sum7_MUX[bit_math_h_l273_c3_d873]
signal sum7_MUX_bit_math_h_l273_c3_d873_cond : unsigned(0 downto 0);
signal sum7_MUX_bit_math_h_l273_c3_d873_iftrue : unsigned(2 downto 0);
signal sum7_MUX_bit_math_h_l273_c3_d873_iffalse : unsigned(2 downto 0);
signal sum7_MUX_bit_math_h_l273_c3_d873_return_output : unsigned(2 downto 0);

-- sum8_MUX[bit_math_h_l283_c3_33e0]
signal sum8_MUX_bit_math_h_l283_c3_33e0_cond : unsigned(0 downto 0);
signal sum8_MUX_bit_math_h_l283_c3_33e0_iftrue : unsigned(3 downto 0);
signal sum8_MUX_bit_math_h_l283_c3_33e0_iffalse : unsigned(3 downto 0);
signal sum8_MUX_bit_math_h_l283_c3_33e0_return_output : unsigned(3 downto 0);

-- sum9_MUX[bit_math_h_l293_c3_6045]
signal sum9_MUX_bit_math_h_l293_c3_6045_cond : unsigned(0 downto 0);
signal sum9_MUX_bit_math_h_l293_c3_6045_iftrue : unsigned(3 downto 0);
signal sum9_MUX_bit_math_h_l293_c3_6045_iffalse : unsigned(3 downto 0);
signal sum9_MUX_bit_math_h_l293_c3_6045_return_output : unsigned(3 downto 0);

-- sum10_MUX[bit_math_h_l303_c3_632f]
signal sum10_MUX_bit_math_h_l303_c3_632f_cond : unsigned(0 downto 0);
signal sum10_MUX_bit_math_h_l303_c3_632f_iftrue : unsigned(3 downto 0);
signal sum10_MUX_bit_math_h_l303_c3_632f_iffalse : unsigned(3 downto 0);
signal sum10_MUX_bit_math_h_l303_c3_632f_return_output : unsigned(3 downto 0);

-- sum11_MUX[bit_math_h_l313_c3_c1aa]
signal sum11_MUX_bit_math_h_l313_c3_c1aa_cond : unsigned(0 downto 0);
signal sum11_MUX_bit_math_h_l313_c3_c1aa_iftrue : unsigned(3 downto 0);
signal sum11_MUX_bit_math_h_l313_c3_c1aa_iffalse : unsigned(3 downto 0);
signal sum11_MUX_bit_math_h_l313_c3_c1aa_return_output : unsigned(3 downto 0);

-- sum12_MUX[bit_math_h_l323_c3_fd7a]
signal sum12_MUX_bit_math_h_l323_c3_fd7a_cond : unsigned(0 downto 0);
signal sum12_MUX_bit_math_h_l323_c3_fd7a_iftrue : unsigned(3 downto 0);
signal sum12_MUX_bit_math_h_l323_c3_fd7a_iffalse : unsigned(3 downto 0);
signal sum12_MUX_bit_math_h_l323_c3_fd7a_return_output : unsigned(3 downto 0);

-- sum13_MUX[bit_math_h_l333_c3_1fc0]
signal sum13_MUX_bit_math_h_l333_c3_1fc0_cond : unsigned(0 downto 0);
signal sum13_MUX_bit_math_h_l333_c3_1fc0_iftrue : unsigned(3 downto 0);
signal sum13_MUX_bit_math_h_l333_c3_1fc0_iffalse : unsigned(3 downto 0);
signal sum13_MUX_bit_math_h_l333_c3_1fc0_return_output : unsigned(3 downto 0);

-- sum14_MUX[bit_math_h_l343_c3_8d6a]
signal sum14_MUX_bit_math_h_l343_c3_8d6a_cond : unsigned(0 downto 0);
signal sum14_MUX_bit_math_h_l343_c3_8d6a_iftrue : unsigned(3 downto 0);
signal sum14_MUX_bit_math_h_l343_c3_8d6a_iffalse : unsigned(3 downto 0);
signal sum14_MUX_bit_math_h_l343_c3_8d6a_return_output : unsigned(3 downto 0);

-- sum15_MUX[bit_math_h_l353_c3_8eb6]
signal sum15_MUX_bit_math_h_l353_c3_8eb6_cond : unsigned(0 downto 0);
signal sum15_MUX_bit_math_h_l353_c3_8eb6_iftrue : unsigned(3 downto 0);
signal sum15_MUX_bit_math_h_l353_c3_8eb6_iffalse : unsigned(3 downto 0);
signal sum15_MUX_bit_math_h_l353_c3_8eb6_return_output : unsigned(3 downto 0);

-- sum16_MUX[bit_math_h_l363_c3_6e44]
signal sum16_MUX_bit_math_h_l363_c3_6e44_cond : unsigned(0 downto 0);
signal sum16_MUX_bit_math_h_l363_c3_6e44_iftrue : unsigned(4 downto 0);
signal sum16_MUX_bit_math_h_l363_c3_6e44_iffalse : unsigned(4 downto 0);
signal sum16_MUX_bit_math_h_l363_c3_6e44_return_output : unsigned(4 downto 0);

-- sum17_MUX[bit_math_h_l373_c3_a8a1]
signal sum17_MUX_bit_math_h_l373_c3_a8a1_cond : unsigned(0 downto 0);
signal sum17_MUX_bit_math_h_l373_c3_a8a1_iftrue : unsigned(4 downto 0);
signal sum17_MUX_bit_math_h_l373_c3_a8a1_iffalse : unsigned(4 downto 0);
signal sum17_MUX_bit_math_h_l373_c3_a8a1_return_output : unsigned(4 downto 0);

-- sum18_MUX[bit_math_h_l383_c3_9c73]
signal sum18_MUX_bit_math_h_l383_c3_9c73_cond : unsigned(0 downto 0);
signal sum18_MUX_bit_math_h_l383_c3_9c73_iftrue : unsigned(4 downto 0);
signal sum18_MUX_bit_math_h_l383_c3_9c73_iffalse : unsigned(4 downto 0);
signal sum18_MUX_bit_math_h_l383_c3_9c73_return_output : unsigned(4 downto 0);

-- sum19_MUX[bit_math_h_l393_c3_92ea]
signal sum19_MUX_bit_math_h_l393_c3_92ea_cond : unsigned(0 downto 0);
signal sum19_MUX_bit_math_h_l393_c3_92ea_iftrue : unsigned(4 downto 0);
signal sum19_MUX_bit_math_h_l393_c3_92ea_iffalse : unsigned(4 downto 0);
signal sum19_MUX_bit_math_h_l393_c3_92ea_return_output : unsigned(4 downto 0);

-- sum20_MUX[bit_math_h_l403_c3_f760]
signal sum20_MUX_bit_math_h_l403_c3_f760_cond : unsigned(0 downto 0);
signal sum20_MUX_bit_math_h_l403_c3_f760_iftrue : unsigned(4 downto 0);
signal sum20_MUX_bit_math_h_l403_c3_f760_iffalse : unsigned(4 downto 0);
signal sum20_MUX_bit_math_h_l403_c3_f760_return_output : unsigned(4 downto 0);

-- sum21_MUX[bit_math_h_l413_c3_7ad1]
signal sum21_MUX_bit_math_h_l413_c3_7ad1_cond : unsigned(0 downto 0);
signal sum21_MUX_bit_math_h_l413_c3_7ad1_iftrue : unsigned(4 downto 0);
signal sum21_MUX_bit_math_h_l413_c3_7ad1_iffalse : unsigned(4 downto 0);
signal sum21_MUX_bit_math_h_l413_c3_7ad1_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l426_c22_fd01]
signal BIN_OP_OR_bit_math_h_l426_c22_fd01_left : unsigned(0 downto 0);
signal BIN_OP_OR_bit_math_h_l426_c22_fd01_right : unsigned(1 downto 0);
signal BIN_OP_OR_bit_math_h_l426_c22_fd01_return_output : unsigned(1 downto 0);

-- BIN_OP_OR[bit_math_h_l428_c22_c164]
signal BIN_OP_OR_bit_math_h_l428_c22_c164_left : unsigned(1 downto 0);
signal BIN_OP_OR_bit_math_h_l428_c22_c164_right : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l428_c22_c164_return_output : unsigned(2 downto 0);

-- BIN_OP_OR[bit_math_h_l430_c22_d205]
signal BIN_OP_OR_bit_math_h_l430_c22_d205_left : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l430_c22_d205_right : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l430_c22_d205_return_output : unsigned(2 downto 0);

-- BIN_OP_OR[bit_math_h_l432_c22_3e47]
signal BIN_OP_OR_bit_math_h_l432_c22_3e47_left : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l432_c22_3e47_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l432_c22_3e47_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l434_c22_d17e]
signal BIN_OP_OR_bit_math_h_l434_c22_d17e_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l434_c22_d17e_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l434_c22_d17e_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l436_c22_b919]
signal BIN_OP_OR_bit_math_h_l436_c22_b919_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l436_c22_b919_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l436_c22_b919_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l438_c22_49b1]
signal BIN_OP_OR_bit_math_h_l438_c22_49b1_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l438_c22_49b1_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l438_c22_49b1_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l440_c22_e37b]
signal BIN_OP_OR_bit_math_h_l440_c22_e37b_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l440_c22_e37b_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l440_c22_e37b_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l442_c22_8785]
signal BIN_OP_OR_bit_math_h_l442_c22_8785_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l442_c22_8785_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l442_c22_8785_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l444_c22_3ac4]
signal BIN_OP_OR_bit_math_h_l444_c22_3ac4_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l444_c22_3ac4_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l444_c22_3ac4_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l451_c22_d03b]
signal BIN_OP_OR_bit_math_h_l451_c22_d03b_left : unsigned(1 downto 0);
signal BIN_OP_OR_bit_math_h_l451_c22_d03b_right : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l451_c22_d03b_return_output : unsigned(2 downto 0);

-- BIN_OP_OR[bit_math_h_l453_c22_1e50]
signal BIN_OP_OR_bit_math_h_l453_c22_1e50_left : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l453_c22_1e50_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l453_c22_1e50_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l455_c22_972b]
signal BIN_OP_OR_bit_math_h_l455_c22_972b_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l455_c22_972b_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l455_c22_972b_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l457_c22_81c6]
signal BIN_OP_OR_bit_math_h_l457_c22_81c6_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l457_c22_81c6_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l457_c22_81c6_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l459_c22_e81a]
signal BIN_OP_OR_bit_math_h_l459_c22_e81a_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l459_c22_e81a_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l459_c22_e81a_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l466_c22_2bf9]
signal BIN_OP_OR_bit_math_h_l466_c22_2bf9_left : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l466_c22_2bf9_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l466_c22_2bf9_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l468_c22_542c]
signal BIN_OP_OR_bit_math_h_l468_c22_542c_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l468_c22_542c_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l468_c22_542c_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l470_c22_b85d]
signal BIN_OP_OR_bit_math_h_l470_c22_b85d_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l470_c22_b85d_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l470_c22_b85d_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l474_c22_1fc4]
signal BIN_OP_OR_bit_math_h_l474_c22_1fc4_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l474_c22_1fc4_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l474_c22_1fc4_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l481_c22_35c4]
signal BIN_OP_OR_bit_math_h_l481_c22_35c4_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l481_c22_35c4_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l481_c22_35c4_return_output : unsigned(4 downto 0);

function uint21_20_19( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(1 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 19)));
return return_output;
end function;

function uint21_20_18( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(2 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 18)));
return return_output;
end function;

function uint21_20_17( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(3 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 17)));
return return_output;
end function;

function uint21_20_16( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(4 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 16)));
return return_output;
end function;

function uint21_20_15( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(5 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 15)));
return return_output;
end function;

function uint21_20_14( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(6 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 14)));
return return_output;
end function;

function uint21_20_13( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(7 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 13)));
return return_output;
end function;

function uint21_20_12( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(8 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 12)));
return return_output;
end function;

function uint21_20_11( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(9 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 11)));
return return_output;
end function;

function uint21_20_10( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(10 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 10)));
return return_output;
end function;

function uint21_20_9( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(11 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 9)));
return return_output;
end function;

function uint21_20_8( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(12 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 8)));
return return_output;
end function;

function uint21_20_7( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(13 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 7)));
return return_output;
end function;

function uint21_20_6( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(14 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 6)));
return return_output;
end function;

function uint21_20_5( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(15 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 5)));
return return_output;
end function;

function uint21_20_4( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(16 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 4)));
return return_output;
end function;

function uint21_20_3( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(17 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 3)));
return return_output;
end function;

function uint21_20_2( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(18 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 2)));
return return_output;
end function;

function uint21_20_1( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(19 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 1)));
return return_output;
end function;

function uint21_20_0( x : unsigned) return unsigned is
--variable x : unsigned(20 downto 0);
  variable return_output : unsigned(20 downto 0);
begin
return_output := unsigned(std_logic_vector(x(20 downto 0)));
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_bit_math_h_l70_c24_eacd
BIN_OP_EQ_bit_math_h_l70_c24_eacd : entity work.BIN_OP_EQ_uint21_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l70_c24_eacd_left,
BIN_OP_EQ_bit_math_h_l70_c24_eacd_right,
BIN_OP_EQ_bit_math_h_l70_c24_eacd_return_output);

-- BIN_OP_EQ_bit_math_h_l73_c14_3049
BIN_OP_EQ_bit_math_h_l73_c14_3049 : entity work.BIN_OP_EQ_uint2_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l73_c14_3049_left,
BIN_OP_EQ_bit_math_h_l73_c14_3049_right,
BIN_OP_EQ_bit_math_h_l73_c14_3049_return_output);

-- BIN_OP_EQ_bit_math_h_l80_c14_0f10
BIN_OP_EQ_bit_math_h_l80_c14_0f10 : entity work.BIN_OP_EQ_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l80_c14_0f10_left,
BIN_OP_EQ_bit_math_h_l80_c14_0f10_right,
BIN_OP_EQ_bit_math_h_l80_c14_0f10_return_output);

-- BIN_OP_EQ_bit_math_h_l87_c14_3207
BIN_OP_EQ_bit_math_h_l87_c14_3207 : entity work.BIN_OP_EQ_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l87_c14_3207_left,
BIN_OP_EQ_bit_math_h_l87_c14_3207_right,
BIN_OP_EQ_bit_math_h_l87_c14_3207_return_output);

-- BIN_OP_EQ_bit_math_h_l94_c14_02a3
BIN_OP_EQ_bit_math_h_l94_c14_02a3 : entity work.BIN_OP_EQ_uint5_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l94_c14_02a3_left,
BIN_OP_EQ_bit_math_h_l94_c14_02a3_right,
BIN_OP_EQ_bit_math_h_l94_c14_02a3_return_output);

-- BIN_OP_EQ_bit_math_h_l101_c14_d66f
BIN_OP_EQ_bit_math_h_l101_c14_d66f : entity work.BIN_OP_EQ_uint6_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l101_c14_d66f_left,
BIN_OP_EQ_bit_math_h_l101_c14_d66f_right,
BIN_OP_EQ_bit_math_h_l101_c14_d66f_return_output);

-- BIN_OP_EQ_bit_math_h_l108_c14_310f
BIN_OP_EQ_bit_math_h_l108_c14_310f : entity work.BIN_OP_EQ_uint7_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l108_c14_310f_left,
BIN_OP_EQ_bit_math_h_l108_c14_310f_right,
BIN_OP_EQ_bit_math_h_l108_c14_310f_return_output);

-- BIN_OP_EQ_bit_math_h_l115_c14_5040
BIN_OP_EQ_bit_math_h_l115_c14_5040 : entity work.BIN_OP_EQ_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l115_c14_5040_left,
BIN_OP_EQ_bit_math_h_l115_c14_5040_right,
BIN_OP_EQ_bit_math_h_l115_c14_5040_return_output);

-- BIN_OP_EQ_bit_math_h_l122_c14_d2cd
BIN_OP_EQ_bit_math_h_l122_c14_d2cd : entity work.BIN_OP_EQ_uint9_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l122_c14_d2cd_left,
BIN_OP_EQ_bit_math_h_l122_c14_d2cd_right,
BIN_OP_EQ_bit_math_h_l122_c14_d2cd_return_output);

-- BIN_OP_EQ_bit_math_h_l129_c14_a382
BIN_OP_EQ_bit_math_h_l129_c14_a382 : entity work.BIN_OP_EQ_uint10_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l129_c14_a382_left,
BIN_OP_EQ_bit_math_h_l129_c14_a382_right,
BIN_OP_EQ_bit_math_h_l129_c14_a382_return_output);

-- BIN_OP_EQ_bit_math_h_l136_c15_659f
BIN_OP_EQ_bit_math_h_l136_c15_659f : entity work.BIN_OP_EQ_uint11_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l136_c15_659f_left,
BIN_OP_EQ_bit_math_h_l136_c15_659f_right,
BIN_OP_EQ_bit_math_h_l136_c15_659f_return_output);

-- BIN_OP_EQ_bit_math_h_l143_c15_4da9
BIN_OP_EQ_bit_math_h_l143_c15_4da9 : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l143_c15_4da9_left,
BIN_OP_EQ_bit_math_h_l143_c15_4da9_right,
BIN_OP_EQ_bit_math_h_l143_c15_4da9_return_output);

-- BIN_OP_EQ_bit_math_h_l150_c15_db21
BIN_OP_EQ_bit_math_h_l150_c15_db21 : entity work.BIN_OP_EQ_uint13_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l150_c15_db21_left,
BIN_OP_EQ_bit_math_h_l150_c15_db21_right,
BIN_OP_EQ_bit_math_h_l150_c15_db21_return_output);

-- BIN_OP_EQ_bit_math_h_l157_c15_8afc
BIN_OP_EQ_bit_math_h_l157_c15_8afc : entity work.BIN_OP_EQ_uint14_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l157_c15_8afc_left,
BIN_OP_EQ_bit_math_h_l157_c15_8afc_right,
BIN_OP_EQ_bit_math_h_l157_c15_8afc_return_output);

-- BIN_OP_EQ_bit_math_h_l164_c15_4d49
BIN_OP_EQ_bit_math_h_l164_c15_4d49 : entity work.BIN_OP_EQ_uint15_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l164_c15_4d49_left,
BIN_OP_EQ_bit_math_h_l164_c15_4d49_right,
BIN_OP_EQ_bit_math_h_l164_c15_4d49_return_output);

-- BIN_OP_EQ_bit_math_h_l171_c15_1913
BIN_OP_EQ_bit_math_h_l171_c15_1913 : entity work.BIN_OP_EQ_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l171_c15_1913_left,
BIN_OP_EQ_bit_math_h_l171_c15_1913_right,
BIN_OP_EQ_bit_math_h_l171_c15_1913_return_output);

-- BIN_OP_EQ_bit_math_h_l178_c15_3d3f
BIN_OP_EQ_bit_math_h_l178_c15_3d3f : entity work.BIN_OP_EQ_uint17_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l178_c15_3d3f_left,
BIN_OP_EQ_bit_math_h_l178_c15_3d3f_right,
BIN_OP_EQ_bit_math_h_l178_c15_3d3f_return_output);

-- BIN_OP_EQ_bit_math_h_l185_c15_1444
BIN_OP_EQ_bit_math_h_l185_c15_1444 : entity work.BIN_OP_EQ_uint18_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l185_c15_1444_left,
BIN_OP_EQ_bit_math_h_l185_c15_1444_right,
BIN_OP_EQ_bit_math_h_l185_c15_1444_return_output);

-- BIN_OP_EQ_bit_math_h_l192_c15_dcff
BIN_OP_EQ_bit_math_h_l192_c15_dcff : entity work.BIN_OP_EQ_uint19_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l192_c15_dcff_left,
BIN_OP_EQ_bit_math_h_l192_c15_dcff_right,
BIN_OP_EQ_bit_math_h_l192_c15_dcff_return_output);

-- BIN_OP_EQ_bit_math_h_l199_c15_35d9
BIN_OP_EQ_bit_math_h_l199_c15_35d9 : entity work.BIN_OP_EQ_uint20_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l199_c15_35d9_left,
BIN_OP_EQ_bit_math_h_l199_c15_35d9_right,
BIN_OP_EQ_bit_math_h_l199_c15_35d9_return_output);

-- BIN_OP_EQ_bit_math_h_l206_c15_f42a
BIN_OP_EQ_bit_math_h_l206_c15_f42a : entity work.BIN_OP_EQ_uint21_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l206_c15_f42a_left,
BIN_OP_EQ_bit_math_h_l206_c15_f42a_right,
BIN_OP_EQ_bit_math_h_l206_c15_f42a_return_output);

-- sum1_MUX_bit_math_h_l213_c3_67f4
sum1_MUX_bit_math_h_l213_c3_67f4 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
sum1_MUX_bit_math_h_l213_c3_67f4_cond,
sum1_MUX_bit_math_h_l213_c3_67f4_iftrue,
sum1_MUX_bit_math_h_l213_c3_67f4_iffalse,
sum1_MUX_bit_math_h_l213_c3_67f4_return_output);

-- sum2_MUX_bit_math_h_l223_c3_6f6d
sum2_MUX_bit_math_h_l223_c3_6f6d : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
sum2_MUX_bit_math_h_l223_c3_6f6d_cond,
sum2_MUX_bit_math_h_l223_c3_6f6d_iftrue,
sum2_MUX_bit_math_h_l223_c3_6f6d_iffalse,
sum2_MUX_bit_math_h_l223_c3_6f6d_return_output);

-- sum3_MUX_bit_math_h_l233_c3_2960
sum3_MUX_bit_math_h_l233_c3_2960 : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
sum3_MUX_bit_math_h_l233_c3_2960_cond,
sum3_MUX_bit_math_h_l233_c3_2960_iftrue,
sum3_MUX_bit_math_h_l233_c3_2960_iffalse,
sum3_MUX_bit_math_h_l233_c3_2960_return_output);

-- sum4_MUX_bit_math_h_l243_c3_404a
sum4_MUX_bit_math_h_l243_c3_404a : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
sum4_MUX_bit_math_h_l243_c3_404a_cond,
sum4_MUX_bit_math_h_l243_c3_404a_iftrue,
sum4_MUX_bit_math_h_l243_c3_404a_iffalse,
sum4_MUX_bit_math_h_l243_c3_404a_return_output);

-- sum5_MUX_bit_math_h_l253_c3_30a4
sum5_MUX_bit_math_h_l253_c3_30a4 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
sum5_MUX_bit_math_h_l253_c3_30a4_cond,
sum5_MUX_bit_math_h_l253_c3_30a4_iftrue,
sum5_MUX_bit_math_h_l253_c3_30a4_iffalse,
sum5_MUX_bit_math_h_l253_c3_30a4_return_output);

-- sum6_MUX_bit_math_h_l263_c3_3d14
sum6_MUX_bit_math_h_l263_c3_3d14 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
sum6_MUX_bit_math_h_l263_c3_3d14_cond,
sum6_MUX_bit_math_h_l263_c3_3d14_iftrue,
sum6_MUX_bit_math_h_l263_c3_3d14_iffalse,
sum6_MUX_bit_math_h_l263_c3_3d14_return_output);

-- sum7_MUX_bit_math_h_l273_c3_d873
sum7_MUX_bit_math_h_l273_c3_d873 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
sum7_MUX_bit_math_h_l273_c3_d873_cond,
sum7_MUX_bit_math_h_l273_c3_d873_iftrue,
sum7_MUX_bit_math_h_l273_c3_d873_iffalse,
sum7_MUX_bit_math_h_l273_c3_d873_return_output);

-- sum8_MUX_bit_math_h_l283_c3_33e0
sum8_MUX_bit_math_h_l283_c3_33e0 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum8_MUX_bit_math_h_l283_c3_33e0_cond,
sum8_MUX_bit_math_h_l283_c3_33e0_iftrue,
sum8_MUX_bit_math_h_l283_c3_33e0_iffalse,
sum8_MUX_bit_math_h_l283_c3_33e0_return_output);

-- sum9_MUX_bit_math_h_l293_c3_6045
sum9_MUX_bit_math_h_l293_c3_6045 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum9_MUX_bit_math_h_l293_c3_6045_cond,
sum9_MUX_bit_math_h_l293_c3_6045_iftrue,
sum9_MUX_bit_math_h_l293_c3_6045_iffalse,
sum9_MUX_bit_math_h_l293_c3_6045_return_output);

-- sum10_MUX_bit_math_h_l303_c3_632f
sum10_MUX_bit_math_h_l303_c3_632f : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum10_MUX_bit_math_h_l303_c3_632f_cond,
sum10_MUX_bit_math_h_l303_c3_632f_iftrue,
sum10_MUX_bit_math_h_l303_c3_632f_iffalse,
sum10_MUX_bit_math_h_l303_c3_632f_return_output);

-- sum11_MUX_bit_math_h_l313_c3_c1aa
sum11_MUX_bit_math_h_l313_c3_c1aa : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum11_MUX_bit_math_h_l313_c3_c1aa_cond,
sum11_MUX_bit_math_h_l313_c3_c1aa_iftrue,
sum11_MUX_bit_math_h_l313_c3_c1aa_iffalse,
sum11_MUX_bit_math_h_l313_c3_c1aa_return_output);

-- sum12_MUX_bit_math_h_l323_c3_fd7a
sum12_MUX_bit_math_h_l323_c3_fd7a : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum12_MUX_bit_math_h_l323_c3_fd7a_cond,
sum12_MUX_bit_math_h_l323_c3_fd7a_iftrue,
sum12_MUX_bit_math_h_l323_c3_fd7a_iffalse,
sum12_MUX_bit_math_h_l323_c3_fd7a_return_output);

-- sum13_MUX_bit_math_h_l333_c3_1fc0
sum13_MUX_bit_math_h_l333_c3_1fc0 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum13_MUX_bit_math_h_l333_c3_1fc0_cond,
sum13_MUX_bit_math_h_l333_c3_1fc0_iftrue,
sum13_MUX_bit_math_h_l333_c3_1fc0_iffalse,
sum13_MUX_bit_math_h_l333_c3_1fc0_return_output);

-- sum14_MUX_bit_math_h_l343_c3_8d6a
sum14_MUX_bit_math_h_l343_c3_8d6a : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum14_MUX_bit_math_h_l343_c3_8d6a_cond,
sum14_MUX_bit_math_h_l343_c3_8d6a_iftrue,
sum14_MUX_bit_math_h_l343_c3_8d6a_iffalse,
sum14_MUX_bit_math_h_l343_c3_8d6a_return_output);

-- sum15_MUX_bit_math_h_l353_c3_8eb6
sum15_MUX_bit_math_h_l353_c3_8eb6 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum15_MUX_bit_math_h_l353_c3_8eb6_cond,
sum15_MUX_bit_math_h_l353_c3_8eb6_iftrue,
sum15_MUX_bit_math_h_l353_c3_8eb6_iffalse,
sum15_MUX_bit_math_h_l353_c3_8eb6_return_output);

-- sum16_MUX_bit_math_h_l363_c3_6e44
sum16_MUX_bit_math_h_l363_c3_6e44 : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum16_MUX_bit_math_h_l363_c3_6e44_cond,
sum16_MUX_bit_math_h_l363_c3_6e44_iftrue,
sum16_MUX_bit_math_h_l363_c3_6e44_iffalse,
sum16_MUX_bit_math_h_l363_c3_6e44_return_output);

-- sum17_MUX_bit_math_h_l373_c3_a8a1
sum17_MUX_bit_math_h_l373_c3_a8a1 : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum17_MUX_bit_math_h_l373_c3_a8a1_cond,
sum17_MUX_bit_math_h_l373_c3_a8a1_iftrue,
sum17_MUX_bit_math_h_l373_c3_a8a1_iffalse,
sum17_MUX_bit_math_h_l373_c3_a8a1_return_output);

-- sum18_MUX_bit_math_h_l383_c3_9c73
sum18_MUX_bit_math_h_l383_c3_9c73 : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum18_MUX_bit_math_h_l383_c3_9c73_cond,
sum18_MUX_bit_math_h_l383_c3_9c73_iftrue,
sum18_MUX_bit_math_h_l383_c3_9c73_iffalse,
sum18_MUX_bit_math_h_l383_c3_9c73_return_output);

-- sum19_MUX_bit_math_h_l393_c3_92ea
sum19_MUX_bit_math_h_l393_c3_92ea : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum19_MUX_bit_math_h_l393_c3_92ea_cond,
sum19_MUX_bit_math_h_l393_c3_92ea_iftrue,
sum19_MUX_bit_math_h_l393_c3_92ea_iffalse,
sum19_MUX_bit_math_h_l393_c3_92ea_return_output);

-- sum20_MUX_bit_math_h_l403_c3_f760
sum20_MUX_bit_math_h_l403_c3_f760 : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum20_MUX_bit_math_h_l403_c3_f760_cond,
sum20_MUX_bit_math_h_l403_c3_f760_iftrue,
sum20_MUX_bit_math_h_l403_c3_f760_iffalse,
sum20_MUX_bit_math_h_l403_c3_f760_return_output);

-- sum21_MUX_bit_math_h_l413_c3_7ad1
sum21_MUX_bit_math_h_l413_c3_7ad1 : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum21_MUX_bit_math_h_l413_c3_7ad1_cond,
sum21_MUX_bit_math_h_l413_c3_7ad1_iftrue,
sum21_MUX_bit_math_h_l413_c3_7ad1_iffalse,
sum21_MUX_bit_math_h_l413_c3_7ad1_return_output);

-- BIN_OP_OR_bit_math_h_l426_c22_fd01
BIN_OP_OR_bit_math_h_l426_c22_fd01 : entity work.BIN_OP_OR_uint1_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l426_c22_fd01_left,
BIN_OP_OR_bit_math_h_l426_c22_fd01_right,
BIN_OP_OR_bit_math_h_l426_c22_fd01_return_output);

-- BIN_OP_OR_bit_math_h_l428_c22_c164
BIN_OP_OR_bit_math_h_l428_c22_c164 : entity work.BIN_OP_OR_uint2_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l428_c22_c164_left,
BIN_OP_OR_bit_math_h_l428_c22_c164_right,
BIN_OP_OR_bit_math_h_l428_c22_c164_return_output);

-- BIN_OP_OR_bit_math_h_l430_c22_d205
BIN_OP_OR_bit_math_h_l430_c22_d205 : entity work.BIN_OP_OR_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l430_c22_d205_left,
BIN_OP_OR_bit_math_h_l430_c22_d205_right,
BIN_OP_OR_bit_math_h_l430_c22_d205_return_output);

-- BIN_OP_OR_bit_math_h_l432_c22_3e47
BIN_OP_OR_bit_math_h_l432_c22_3e47 : entity work.BIN_OP_OR_uint3_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l432_c22_3e47_left,
BIN_OP_OR_bit_math_h_l432_c22_3e47_right,
BIN_OP_OR_bit_math_h_l432_c22_3e47_return_output);

-- BIN_OP_OR_bit_math_h_l434_c22_d17e
BIN_OP_OR_bit_math_h_l434_c22_d17e : entity work.BIN_OP_OR_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l434_c22_d17e_left,
BIN_OP_OR_bit_math_h_l434_c22_d17e_right,
BIN_OP_OR_bit_math_h_l434_c22_d17e_return_output);

-- BIN_OP_OR_bit_math_h_l436_c22_b919
BIN_OP_OR_bit_math_h_l436_c22_b919 : entity work.BIN_OP_OR_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l436_c22_b919_left,
BIN_OP_OR_bit_math_h_l436_c22_b919_right,
BIN_OP_OR_bit_math_h_l436_c22_b919_return_output);

-- BIN_OP_OR_bit_math_h_l438_c22_49b1
BIN_OP_OR_bit_math_h_l438_c22_49b1 : entity work.BIN_OP_OR_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l438_c22_49b1_left,
BIN_OP_OR_bit_math_h_l438_c22_49b1_right,
BIN_OP_OR_bit_math_h_l438_c22_49b1_return_output);

-- BIN_OP_OR_bit_math_h_l440_c22_e37b
BIN_OP_OR_bit_math_h_l440_c22_e37b : entity work.BIN_OP_OR_uint4_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l440_c22_e37b_left,
BIN_OP_OR_bit_math_h_l440_c22_e37b_right,
BIN_OP_OR_bit_math_h_l440_c22_e37b_return_output);

-- BIN_OP_OR_bit_math_h_l442_c22_8785
BIN_OP_OR_bit_math_h_l442_c22_8785 : entity work.BIN_OP_OR_uint5_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l442_c22_8785_left,
BIN_OP_OR_bit_math_h_l442_c22_8785_right,
BIN_OP_OR_bit_math_h_l442_c22_8785_return_output);

-- BIN_OP_OR_bit_math_h_l444_c22_3ac4
BIN_OP_OR_bit_math_h_l444_c22_3ac4 : entity work.BIN_OP_OR_uint5_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l444_c22_3ac4_left,
BIN_OP_OR_bit_math_h_l444_c22_3ac4_right,
BIN_OP_OR_bit_math_h_l444_c22_3ac4_return_output);

-- BIN_OP_OR_bit_math_h_l451_c22_d03b
BIN_OP_OR_bit_math_h_l451_c22_d03b : entity work.BIN_OP_OR_uint2_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l451_c22_d03b_left,
BIN_OP_OR_bit_math_h_l451_c22_d03b_right,
BIN_OP_OR_bit_math_h_l451_c22_d03b_return_output);

-- BIN_OP_OR_bit_math_h_l453_c22_1e50
BIN_OP_OR_bit_math_h_l453_c22_1e50 : entity work.BIN_OP_OR_uint3_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l453_c22_1e50_left,
BIN_OP_OR_bit_math_h_l453_c22_1e50_right,
BIN_OP_OR_bit_math_h_l453_c22_1e50_return_output);

-- BIN_OP_OR_bit_math_h_l455_c22_972b
BIN_OP_OR_bit_math_h_l455_c22_972b : entity work.BIN_OP_OR_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l455_c22_972b_left,
BIN_OP_OR_bit_math_h_l455_c22_972b_right,
BIN_OP_OR_bit_math_h_l455_c22_972b_return_output);

-- BIN_OP_OR_bit_math_h_l457_c22_81c6
BIN_OP_OR_bit_math_h_l457_c22_81c6 : entity work.BIN_OP_OR_uint4_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l457_c22_81c6_left,
BIN_OP_OR_bit_math_h_l457_c22_81c6_right,
BIN_OP_OR_bit_math_h_l457_c22_81c6_return_output);

-- BIN_OP_OR_bit_math_h_l459_c22_e81a
BIN_OP_OR_bit_math_h_l459_c22_e81a : entity work.BIN_OP_OR_uint5_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l459_c22_e81a_left,
BIN_OP_OR_bit_math_h_l459_c22_e81a_right,
BIN_OP_OR_bit_math_h_l459_c22_e81a_return_output);

-- BIN_OP_OR_bit_math_h_l466_c22_2bf9
BIN_OP_OR_bit_math_h_l466_c22_2bf9 : entity work.BIN_OP_OR_uint3_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l466_c22_2bf9_left,
BIN_OP_OR_bit_math_h_l466_c22_2bf9_right,
BIN_OP_OR_bit_math_h_l466_c22_2bf9_return_output);

-- BIN_OP_OR_bit_math_h_l468_c22_542c
BIN_OP_OR_bit_math_h_l468_c22_542c : entity work.BIN_OP_OR_uint4_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l468_c22_542c_left,
BIN_OP_OR_bit_math_h_l468_c22_542c_right,
BIN_OP_OR_bit_math_h_l468_c22_542c_return_output);

-- BIN_OP_OR_bit_math_h_l470_c22_b85d
BIN_OP_OR_bit_math_h_l470_c22_b85d : entity work.BIN_OP_OR_uint5_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l470_c22_b85d_left,
BIN_OP_OR_bit_math_h_l470_c22_b85d_right,
BIN_OP_OR_bit_math_h_l470_c22_b85d_return_output);

-- BIN_OP_OR_bit_math_h_l474_c22_1fc4
BIN_OP_OR_bit_math_h_l474_c22_1fc4 : entity work.BIN_OP_OR_uint4_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l474_c22_1fc4_left,
BIN_OP_OR_bit_math_h_l474_c22_1fc4_right,
BIN_OP_OR_bit_math_h_l474_c22_1fc4_return_output);

-- BIN_OP_OR_bit_math_h_l481_c22_35c4
BIN_OP_OR_bit_math_h_l481_c22_35c4 : entity work.BIN_OP_OR_uint5_t_uint5_t_1CLK_212a91c4 port map (
clk,
BIN_OP_OR_bit_math_h_l481_c22_35c4_left,
BIN_OP_OR_bit_math_h_l481_c22_35c4_right,
BIN_OP_OR_bit_math_h_l481_c22_35c4_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- Registers
 -- Stage 0
 -- All submodule outputs
 BIN_OP_EQ_bit_math_h_l70_c24_eacd_return_output,
 BIN_OP_EQ_bit_math_h_l73_c14_3049_return_output,
 BIN_OP_EQ_bit_math_h_l80_c14_0f10_return_output,
 BIN_OP_EQ_bit_math_h_l87_c14_3207_return_output,
 BIN_OP_EQ_bit_math_h_l94_c14_02a3_return_output,
 BIN_OP_EQ_bit_math_h_l101_c14_d66f_return_output,
 BIN_OP_EQ_bit_math_h_l108_c14_310f_return_output,
 BIN_OP_EQ_bit_math_h_l115_c14_5040_return_output,
 BIN_OP_EQ_bit_math_h_l122_c14_d2cd_return_output,
 BIN_OP_EQ_bit_math_h_l129_c14_a382_return_output,
 BIN_OP_EQ_bit_math_h_l136_c15_659f_return_output,
 BIN_OP_EQ_bit_math_h_l143_c15_4da9_return_output,
 BIN_OP_EQ_bit_math_h_l150_c15_db21_return_output,
 BIN_OP_EQ_bit_math_h_l157_c15_8afc_return_output,
 BIN_OP_EQ_bit_math_h_l164_c15_4d49_return_output,
 BIN_OP_EQ_bit_math_h_l171_c15_1913_return_output,
 BIN_OP_EQ_bit_math_h_l178_c15_3d3f_return_output,
 BIN_OP_EQ_bit_math_h_l185_c15_1444_return_output,
 BIN_OP_EQ_bit_math_h_l192_c15_dcff_return_output,
 BIN_OP_EQ_bit_math_h_l199_c15_35d9_return_output,
 BIN_OP_EQ_bit_math_h_l206_c15_f42a_return_output,
 sum1_MUX_bit_math_h_l213_c3_67f4_return_output,
 sum2_MUX_bit_math_h_l223_c3_6f6d_return_output,
 sum3_MUX_bit_math_h_l233_c3_2960_return_output,
 sum4_MUX_bit_math_h_l243_c3_404a_return_output,
 sum5_MUX_bit_math_h_l253_c3_30a4_return_output,
 sum6_MUX_bit_math_h_l263_c3_3d14_return_output,
 sum7_MUX_bit_math_h_l273_c3_d873_return_output,
 sum8_MUX_bit_math_h_l283_c3_33e0_return_output,
 sum9_MUX_bit_math_h_l293_c3_6045_return_output,
 sum10_MUX_bit_math_h_l303_c3_632f_return_output,
 sum11_MUX_bit_math_h_l313_c3_c1aa_return_output,
 sum12_MUX_bit_math_h_l323_c3_fd7a_return_output,
 sum13_MUX_bit_math_h_l333_c3_1fc0_return_output,
 sum14_MUX_bit_math_h_l343_c3_8d6a_return_output,
 sum15_MUX_bit_math_h_l353_c3_8eb6_return_output,
 sum16_MUX_bit_math_h_l363_c3_6e44_return_output,
 sum17_MUX_bit_math_h_l373_c3_a8a1_return_output,
 sum18_MUX_bit_math_h_l383_c3_9c73_return_output,
 sum19_MUX_bit_math_h_l393_c3_92ea_return_output,
 sum20_MUX_bit_math_h_l403_c3_f760_return_output,
 sum21_MUX_bit_math_h_l413_c3_7ad1_return_output,
 BIN_OP_OR_bit_math_h_l426_c22_fd01_return_output,
 BIN_OP_OR_bit_math_h_l428_c22_c164_return_output,
 BIN_OP_OR_bit_math_h_l430_c22_d205_return_output,
 BIN_OP_OR_bit_math_h_l432_c22_3e47_return_output,
 BIN_OP_OR_bit_math_h_l434_c22_d17e_return_output,
 BIN_OP_OR_bit_math_h_l436_c22_b919_return_output,
 BIN_OP_OR_bit_math_h_l438_c22_49b1_return_output,
 BIN_OP_OR_bit_math_h_l440_c22_e37b_return_output,
 BIN_OP_OR_bit_math_h_l442_c22_8785_return_output,
 BIN_OP_OR_bit_math_h_l444_c22_3ac4_return_output,
 BIN_OP_OR_bit_math_h_l451_c22_d03b_return_output,
 BIN_OP_OR_bit_math_h_l453_c22_1e50_return_output,
 BIN_OP_OR_bit_math_h_l455_c22_972b_return_output,
 BIN_OP_OR_bit_math_h_l457_c22_81c6_return_output,
 BIN_OP_OR_bit_math_h_l459_c22_e81a_return_output,
 BIN_OP_OR_bit_math_h_l466_c22_2bf9_return_output,
 BIN_OP_OR_bit_math_h_l468_c22_542c_return_output,
 BIN_OP_OR_bit_math_h_l470_c22_b85d_return_output,
 BIN_OP_OR_bit_math_h_l474_c22_1fc4_return_output,
 BIN_OP_OR_bit_math_h_l481_c22_35c4_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(4 downto 0);
 variable VAR_x : unsigned(20 downto 0);
 variable VAR_leading21 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l70_c24_eacd_left : unsigned(20 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l70_c24_eacd_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l70_c24_eacd_return_output : unsigned(0 downto 0);
 variable VAR_leading1 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l73_c14_3049_left : unsigned(1 downto 0);
 variable VAR_uint21_20_19_bit_math_h_l73_c14_5c11_return_output : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l73_c14_3049_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l73_c14_3049_return_output : unsigned(0 downto 0);
 variable VAR_leading2 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l80_c14_0f10_left : unsigned(2 downto 0);
 variable VAR_uint21_20_18_bit_math_h_l80_c14_d44c_return_output : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l80_c14_0f10_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l80_c14_0f10_return_output : unsigned(0 downto 0);
 variable VAR_leading3 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l87_c14_3207_left : unsigned(3 downto 0);
 variable VAR_uint21_20_17_bit_math_h_l87_c14_2994_return_output : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l87_c14_3207_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l87_c14_3207_return_output : unsigned(0 downto 0);
 variable VAR_leading4 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l94_c14_02a3_left : unsigned(4 downto 0);
 variable VAR_uint21_20_16_bit_math_h_l94_c14_e7f3_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l94_c14_02a3_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l94_c14_02a3_return_output : unsigned(0 downto 0);
 variable VAR_leading5 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l101_c14_d66f_left : unsigned(5 downto 0);
 variable VAR_uint21_20_15_bit_math_h_l101_c14_24e5_return_output : unsigned(5 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l101_c14_d66f_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l101_c14_d66f_return_output : unsigned(0 downto 0);
 variable VAR_leading6 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l108_c14_310f_left : unsigned(6 downto 0);
 variable VAR_uint21_20_14_bit_math_h_l108_c14_a1b3_return_output : unsigned(6 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l108_c14_310f_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l108_c14_310f_return_output : unsigned(0 downto 0);
 variable VAR_leading7 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l115_c14_5040_left : unsigned(7 downto 0);
 variable VAR_uint21_20_13_bit_math_h_l115_c14_8118_return_output : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l115_c14_5040_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l115_c14_5040_return_output : unsigned(0 downto 0);
 variable VAR_leading8 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l122_c14_d2cd_left : unsigned(8 downto 0);
 variable VAR_uint21_20_12_bit_math_h_l122_c14_1485_return_output : unsigned(8 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l122_c14_d2cd_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l122_c14_d2cd_return_output : unsigned(0 downto 0);
 variable VAR_leading9 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l129_c14_a382_left : unsigned(9 downto 0);
 variable VAR_uint21_20_11_bit_math_h_l129_c14_228e_return_output : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l129_c14_a382_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l129_c14_a382_return_output : unsigned(0 downto 0);
 variable VAR_leading10 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l136_c15_659f_left : unsigned(10 downto 0);
 variable VAR_uint21_20_10_bit_math_h_l136_c15_1c3a_return_output : unsigned(10 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l136_c15_659f_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l136_c15_659f_return_output : unsigned(0 downto 0);
 variable VAR_leading11 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l143_c15_4da9_left : unsigned(11 downto 0);
 variable VAR_uint21_20_9_bit_math_h_l143_c15_910e_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l143_c15_4da9_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l143_c15_4da9_return_output : unsigned(0 downto 0);
 variable VAR_leading12 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l150_c15_db21_left : unsigned(12 downto 0);
 variable VAR_uint21_20_8_bit_math_h_l150_c15_1e83_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l150_c15_db21_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l150_c15_db21_return_output : unsigned(0 downto 0);
 variable VAR_leading13 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l157_c15_8afc_left : unsigned(13 downto 0);
 variable VAR_uint21_20_7_bit_math_h_l157_c15_b0a6_return_output : unsigned(13 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l157_c15_8afc_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l157_c15_8afc_return_output : unsigned(0 downto 0);
 variable VAR_leading14 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l164_c15_4d49_left : unsigned(14 downto 0);
 variable VAR_uint21_20_6_bit_math_h_l164_c15_8371_return_output : unsigned(14 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l164_c15_4d49_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l164_c15_4d49_return_output : unsigned(0 downto 0);
 variable VAR_leading15 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l171_c15_1913_left : unsigned(15 downto 0);
 variable VAR_uint21_20_5_bit_math_h_l171_c15_f620_return_output : unsigned(15 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l171_c15_1913_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l171_c15_1913_return_output : unsigned(0 downto 0);
 variable VAR_leading16 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l178_c15_3d3f_left : unsigned(16 downto 0);
 variable VAR_uint21_20_4_bit_math_h_l178_c15_e95f_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l178_c15_3d3f_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l178_c15_3d3f_return_output : unsigned(0 downto 0);
 variable VAR_leading17 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l185_c15_1444_left : unsigned(17 downto 0);
 variable VAR_uint21_20_3_bit_math_h_l185_c15_24ae_return_output : unsigned(17 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l185_c15_1444_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l185_c15_1444_return_output : unsigned(0 downto 0);
 variable VAR_leading18 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l192_c15_dcff_left : unsigned(18 downto 0);
 variable VAR_uint21_20_2_bit_math_h_l192_c15_bec8_return_output : unsigned(18 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l192_c15_dcff_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l192_c15_dcff_return_output : unsigned(0 downto 0);
 variable VAR_leading19 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l199_c15_35d9_left : unsigned(19 downto 0);
 variable VAR_uint21_20_1_bit_math_h_l199_c15_bd26_return_output : unsigned(19 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l199_c15_35d9_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l199_c15_35d9_return_output : unsigned(0 downto 0);
 variable VAR_leading20 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l206_c15_f42a_left : unsigned(20 downto 0);
 variable VAR_uint21_20_0_bit_math_h_l206_c15_edad_return_output : unsigned(20 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l206_c15_f42a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l206_c15_f42a_return_output : unsigned(0 downto 0);
 variable VAR_sum1 : unsigned(0 downto 0);
 variable VAR_sum1_MUX_bit_math_h_l213_c3_67f4_iftrue : unsigned(0 downto 0);
 variable VAR_sum1_MUX_bit_math_h_l213_c3_67f4_iffalse : unsigned(0 downto 0);
 variable VAR_sum1_MUX_bit_math_h_l213_c3_67f4_return_output : unsigned(0 downto 0);
 variable VAR_sum1_MUX_bit_math_h_l213_c3_67f4_cond : unsigned(0 downto 0);
 variable VAR_sum2 : unsigned(1 downto 0);
 variable VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_iftrue : unsigned(1 downto 0);
 variable VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_iffalse : unsigned(1 downto 0);
 variable VAR_sum2_bit_math_h_l229_c5_4308 : unsigned(1 downto 0);
 variable VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_return_output : unsigned(1 downto 0);
 variable VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_cond : unsigned(0 downto 0);
 variable VAR_sum3 : unsigned(1 downto 0);
 variable VAR_sum3_MUX_bit_math_h_l233_c3_2960_iftrue : unsigned(1 downto 0);
 variable VAR_sum3_MUX_bit_math_h_l233_c3_2960_iffalse : unsigned(1 downto 0);
 variable VAR_sum3_bit_math_h_l239_c5_510b : unsigned(1 downto 0);
 variable VAR_sum3_MUX_bit_math_h_l233_c3_2960_return_output : unsigned(1 downto 0);
 variable VAR_sum3_MUX_bit_math_h_l233_c3_2960_cond : unsigned(0 downto 0);
 variable VAR_sum4 : unsigned(2 downto 0);
 variable VAR_sum4_MUX_bit_math_h_l243_c3_404a_iftrue : unsigned(2 downto 0);
 variable VAR_sum4_MUX_bit_math_h_l243_c3_404a_iffalse : unsigned(2 downto 0);
 variable VAR_sum4_bit_math_h_l249_c5_de9f : unsigned(2 downto 0);
 variable VAR_sum4_MUX_bit_math_h_l243_c3_404a_return_output : unsigned(2 downto 0);
 variable VAR_sum4_MUX_bit_math_h_l243_c3_404a_cond : unsigned(0 downto 0);
 variable VAR_sum5 : unsigned(2 downto 0);
 variable VAR_sum5_MUX_bit_math_h_l253_c3_30a4_iftrue : unsigned(2 downto 0);
 variable VAR_sum5_MUX_bit_math_h_l253_c3_30a4_iffalse : unsigned(2 downto 0);
 variable VAR_sum5_bit_math_h_l259_c5_2790 : unsigned(2 downto 0);
 variable VAR_sum5_MUX_bit_math_h_l253_c3_30a4_return_output : unsigned(2 downto 0);
 variable VAR_sum5_MUX_bit_math_h_l253_c3_30a4_cond : unsigned(0 downto 0);
 variable VAR_sum6 : unsigned(2 downto 0);
 variable VAR_sum6_MUX_bit_math_h_l263_c3_3d14_iftrue : unsigned(2 downto 0);
 variable VAR_sum6_MUX_bit_math_h_l263_c3_3d14_iffalse : unsigned(2 downto 0);
 variable VAR_sum6_bit_math_h_l269_c5_3484 : unsigned(2 downto 0);
 variable VAR_sum6_MUX_bit_math_h_l263_c3_3d14_return_output : unsigned(2 downto 0);
 variable VAR_sum6_MUX_bit_math_h_l263_c3_3d14_cond : unsigned(0 downto 0);
 variable VAR_sum7 : unsigned(2 downto 0);
 variable VAR_sum7_MUX_bit_math_h_l273_c3_d873_iftrue : unsigned(2 downto 0);
 variable VAR_sum7_MUX_bit_math_h_l273_c3_d873_iffalse : unsigned(2 downto 0);
 variable VAR_sum7_bit_math_h_l279_c5_dc88 : unsigned(2 downto 0);
 variable VAR_sum7_MUX_bit_math_h_l273_c3_d873_return_output : unsigned(2 downto 0);
 variable VAR_sum7_MUX_bit_math_h_l273_c3_d873_cond : unsigned(0 downto 0);
 variable VAR_sum8 : unsigned(3 downto 0);
 variable VAR_sum8_MUX_bit_math_h_l283_c3_33e0_iftrue : unsigned(3 downto 0);
 variable VAR_sum8_MUX_bit_math_h_l283_c3_33e0_iffalse : unsigned(3 downto 0);
 variable VAR_sum8_bit_math_h_l289_c5_269d : unsigned(3 downto 0);
 variable VAR_sum8_MUX_bit_math_h_l283_c3_33e0_return_output : unsigned(3 downto 0);
 variable VAR_sum8_MUX_bit_math_h_l283_c3_33e0_cond : unsigned(0 downto 0);
 variable VAR_sum9 : unsigned(3 downto 0);
 variable VAR_sum9_MUX_bit_math_h_l293_c3_6045_iftrue : unsigned(3 downto 0);
 variable VAR_sum9_MUX_bit_math_h_l293_c3_6045_iffalse : unsigned(3 downto 0);
 variable VAR_sum9_bit_math_h_l299_c5_c3f6 : unsigned(3 downto 0);
 variable VAR_sum9_MUX_bit_math_h_l293_c3_6045_return_output : unsigned(3 downto 0);
 variable VAR_sum9_MUX_bit_math_h_l293_c3_6045_cond : unsigned(0 downto 0);
 variable VAR_sum10 : unsigned(3 downto 0);
 variable VAR_sum10_MUX_bit_math_h_l303_c3_632f_iftrue : unsigned(3 downto 0);
 variable VAR_sum10_MUX_bit_math_h_l303_c3_632f_iffalse : unsigned(3 downto 0);
 variable VAR_sum10_bit_math_h_l309_c5_e26a : unsigned(3 downto 0);
 variable VAR_sum10_MUX_bit_math_h_l303_c3_632f_return_output : unsigned(3 downto 0);
 variable VAR_sum10_MUX_bit_math_h_l303_c3_632f_cond : unsigned(0 downto 0);
 variable VAR_sum11 : unsigned(3 downto 0);
 variable VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_iftrue : unsigned(3 downto 0);
 variable VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_iffalse : unsigned(3 downto 0);
 variable VAR_sum11_bit_math_h_l319_c5_84dd : unsigned(3 downto 0);
 variable VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_return_output : unsigned(3 downto 0);
 variable VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_cond : unsigned(0 downto 0);
 variable VAR_sum12 : unsigned(3 downto 0);
 variable VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_iftrue : unsigned(3 downto 0);
 variable VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_iffalse : unsigned(3 downto 0);
 variable VAR_sum12_bit_math_h_l329_c5_2c16 : unsigned(3 downto 0);
 variable VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_return_output : unsigned(3 downto 0);
 variable VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_cond : unsigned(0 downto 0);
 variable VAR_sum13 : unsigned(3 downto 0);
 variable VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_iftrue : unsigned(3 downto 0);
 variable VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_iffalse : unsigned(3 downto 0);
 variable VAR_sum13_bit_math_h_l339_c5_9881 : unsigned(3 downto 0);
 variable VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_return_output : unsigned(3 downto 0);
 variable VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_cond : unsigned(0 downto 0);
 variable VAR_sum14 : unsigned(3 downto 0);
 variable VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_iftrue : unsigned(3 downto 0);
 variable VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_iffalse : unsigned(3 downto 0);
 variable VAR_sum14_bit_math_h_l349_c5_7c99 : unsigned(3 downto 0);
 variable VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_return_output : unsigned(3 downto 0);
 variable VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_cond : unsigned(0 downto 0);
 variable VAR_sum15 : unsigned(3 downto 0);
 variable VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_iftrue : unsigned(3 downto 0);
 variable VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_iffalse : unsigned(3 downto 0);
 variable VAR_sum15_bit_math_h_l359_c5_a54d : unsigned(3 downto 0);
 variable VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_return_output : unsigned(3 downto 0);
 variable VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_cond : unsigned(0 downto 0);
 variable VAR_sum16 : unsigned(4 downto 0);
 variable VAR_sum16_MUX_bit_math_h_l363_c3_6e44_iftrue : unsigned(4 downto 0);
 variable VAR_sum16_MUX_bit_math_h_l363_c3_6e44_iffalse : unsigned(4 downto 0);
 variable VAR_sum16_bit_math_h_l369_c5_6f06 : unsigned(4 downto 0);
 variable VAR_sum16_MUX_bit_math_h_l363_c3_6e44_return_output : unsigned(4 downto 0);
 variable VAR_sum16_MUX_bit_math_h_l363_c3_6e44_cond : unsigned(0 downto 0);
 variable VAR_sum17 : unsigned(4 downto 0);
 variable VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_iftrue : unsigned(4 downto 0);
 variable VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_iffalse : unsigned(4 downto 0);
 variable VAR_sum17_bit_math_h_l379_c5_ef28 : unsigned(4 downto 0);
 variable VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_return_output : unsigned(4 downto 0);
 variable VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_cond : unsigned(0 downto 0);
 variable VAR_sum18 : unsigned(4 downto 0);
 variable VAR_sum18_MUX_bit_math_h_l383_c3_9c73_iftrue : unsigned(4 downto 0);
 variable VAR_sum18_MUX_bit_math_h_l383_c3_9c73_iffalse : unsigned(4 downto 0);
 variable VAR_sum18_bit_math_h_l389_c5_d366 : unsigned(4 downto 0);
 variable VAR_sum18_MUX_bit_math_h_l383_c3_9c73_return_output : unsigned(4 downto 0);
 variable VAR_sum18_MUX_bit_math_h_l383_c3_9c73_cond : unsigned(0 downto 0);
 variable VAR_sum19 : unsigned(4 downto 0);
 variable VAR_sum19_MUX_bit_math_h_l393_c3_92ea_iftrue : unsigned(4 downto 0);
 variable VAR_sum19_MUX_bit_math_h_l393_c3_92ea_iffalse : unsigned(4 downto 0);
 variable VAR_sum19_bit_math_h_l399_c5_d8e6 : unsigned(4 downto 0);
 variable VAR_sum19_MUX_bit_math_h_l393_c3_92ea_return_output : unsigned(4 downto 0);
 variable VAR_sum19_MUX_bit_math_h_l393_c3_92ea_cond : unsigned(0 downto 0);
 variable VAR_sum20 : unsigned(4 downto 0);
 variable VAR_sum20_MUX_bit_math_h_l403_c3_f760_iftrue : unsigned(4 downto 0);
 variable VAR_sum20_MUX_bit_math_h_l403_c3_f760_iffalse : unsigned(4 downto 0);
 variable VAR_sum20_bit_math_h_l409_c5_8a86 : unsigned(4 downto 0);
 variable VAR_sum20_MUX_bit_math_h_l403_c3_f760_return_output : unsigned(4 downto 0);
 variable VAR_sum20_MUX_bit_math_h_l403_c3_f760_cond : unsigned(0 downto 0);
 variable VAR_sum21 : unsigned(4 downto 0);
 variable VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_iftrue : unsigned(4 downto 0);
 variable VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_iffalse : unsigned(4 downto 0);
 variable VAR_sum21_bit_math_h_l419_c5_f374 : unsigned(4 downto 0);
 variable VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_return_output : unsigned(4 downto 0);
 variable VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_cond : unsigned(0 downto 0);
 variable VAR_sum_layer0_node0 : unsigned(1 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l426_c22_fd01_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l426_c22_fd01_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l426_c22_fd01_return_output : unsigned(1 downto 0);
 variable VAR_sum_layer0_node1 : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l428_c22_c164_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l428_c22_c164_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l428_c22_c164_return_output : unsigned(2 downto 0);
 variable VAR_sum_layer0_node2 : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l430_c22_d205_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l430_c22_d205_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l430_c22_d205_return_output : unsigned(2 downto 0);
 variable VAR_sum_layer0_node3 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l432_c22_3e47_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l432_c22_3e47_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l432_c22_3e47_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer0_node4 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l434_c22_d17e_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l434_c22_d17e_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l434_c22_d17e_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer0_node5 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l436_c22_b919_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l436_c22_b919_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l436_c22_b919_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer0_node6 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l438_c22_49b1_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l438_c22_49b1_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l438_c22_49b1_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer0_node7 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l440_c22_e37b_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l440_c22_e37b_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l440_c22_e37b_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer0_node8 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l442_c22_8785_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l442_c22_8785_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l442_c22_8785_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer0_node9 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l444_c22_3ac4_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l444_c22_3ac4_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l444_c22_3ac4_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer0_node10 : unsigned(4 downto 0);
 variable VAR_sum_layer1_node0 : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l451_c22_d03b_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l451_c22_d03b_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l451_c22_d03b_return_output : unsigned(2 downto 0);
 variable VAR_sum_layer1_node1 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l453_c22_1e50_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l453_c22_1e50_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l453_c22_1e50_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer1_node2 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l455_c22_972b_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l455_c22_972b_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l455_c22_972b_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer1_node3 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l457_c22_81c6_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l457_c22_81c6_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l457_c22_81c6_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer1_node4 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l459_c22_e81a_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l459_c22_e81a_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l459_c22_e81a_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer1_node5 : unsigned(4 downto 0);
 variable VAR_sum_layer2_node0 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l466_c22_2bf9_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l466_c22_2bf9_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l466_c22_2bf9_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer2_node1 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l468_c22_542c_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l468_c22_542c_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l468_c22_542c_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer2_node2 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l470_c22_b85d_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l470_c22_b85d_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l470_c22_b85d_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer3_node0 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l474_c22_1fc4_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l474_c22_1fc4_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l474_c22_1fc4_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer3_node1 : unsigned(4 downto 0);
 variable VAR_sum_layer4_node0 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l481_c22_35c4_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l481_c22_35c4_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l481_c22_35c4_return_output : unsigned(4 downto 0);
 variable VAR_rv : unsigned(4 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_bit_math_h_l94_c14_02a3_right := to_unsigned(1, 1);
     VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_iftrue := to_unsigned(12, 4);
     VAR_BIN_OP_EQ_bit_math_h_l73_c14_3049_right := to_unsigned(1, 1);
     VAR_sum5_bit_math_h_l259_c5_2790 := resize(to_unsigned(0, 1), 3);
     VAR_sum5_MUX_bit_math_h_l253_c3_30a4_iffalse := VAR_sum5_bit_math_h_l259_c5_2790;
     VAR_BIN_OP_EQ_bit_math_h_l157_c15_8afc_right := to_unsigned(1, 1);
     VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_iftrue := to_unsigned(21, 5);
     VAR_sum6_MUX_bit_math_h_l263_c3_3d14_iftrue := to_unsigned(6, 3);
     VAR_sum12_bit_math_h_l329_c5_2c16 := resize(to_unsigned(0, 1), 4);
     VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_iffalse := VAR_sum12_bit_math_h_l329_c5_2c16;
     VAR_BIN_OP_EQ_bit_math_h_l206_c15_f42a_right := to_unsigned(1, 1);
     VAR_sum7_MUX_bit_math_h_l273_c3_d873_iftrue := to_unsigned(7, 3);
     VAR_sum9_MUX_bit_math_h_l293_c3_6045_iftrue := to_unsigned(9, 4);
     VAR_sum3_MUX_bit_math_h_l233_c3_2960_iftrue := to_unsigned(3, 2);
     VAR_sum18_MUX_bit_math_h_l383_c3_9c73_iftrue := to_unsigned(18, 5);
     VAR_sum8_MUX_bit_math_h_l283_c3_33e0_iftrue := to_unsigned(8, 4);
     VAR_BIN_OP_EQ_bit_math_h_l192_c15_dcff_right := to_unsigned(1, 1);
     VAR_sum19_bit_math_h_l399_c5_d8e6 := resize(to_unsigned(0, 1), 5);
     VAR_sum19_MUX_bit_math_h_l393_c3_92ea_iffalse := VAR_sum19_bit_math_h_l399_c5_d8e6;
     VAR_sum13_bit_math_h_l339_c5_9881 := resize(to_unsigned(0, 1), 4);
     VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_iffalse := VAR_sum13_bit_math_h_l339_c5_9881;
     VAR_BIN_OP_EQ_bit_math_h_l171_c15_1913_right := to_unsigned(1, 1);
     VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_iftrue := to_unsigned(13, 4);
     VAR_sum4_MUX_bit_math_h_l243_c3_404a_iftrue := to_unsigned(4, 3);
     VAR_sum8_bit_math_h_l289_c5_269d := resize(to_unsigned(0, 1), 4);
     VAR_sum8_MUX_bit_math_h_l283_c3_33e0_iffalse := VAR_sum8_bit_math_h_l289_c5_269d;
     VAR_BIN_OP_EQ_bit_math_h_l185_c15_1444_right := to_unsigned(1, 1);
     VAR_sum14_bit_math_h_l349_c5_7c99 := resize(to_unsigned(0, 1), 4);
     VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_iffalse := VAR_sum14_bit_math_h_l349_c5_7c99;
     VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_iftrue := to_unsigned(15, 4);
     VAR_sum1_MUX_bit_math_h_l213_c3_67f4_iffalse := to_unsigned(0, 1);
     VAR_sum18_bit_math_h_l389_c5_d366 := resize(to_unsigned(0, 1), 5);
     VAR_sum18_MUX_bit_math_h_l383_c3_9c73_iffalse := VAR_sum18_bit_math_h_l389_c5_d366;
     VAR_sum19_MUX_bit_math_h_l393_c3_92ea_iftrue := to_unsigned(19, 5);
     VAR_sum6_bit_math_h_l269_c5_3484 := resize(to_unsigned(0, 1), 3);
     VAR_sum6_MUX_bit_math_h_l263_c3_3d14_iffalse := VAR_sum6_bit_math_h_l269_c5_3484;
     VAR_sum11_bit_math_h_l319_c5_84dd := resize(to_unsigned(0, 1), 4);
     VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_iffalse := VAR_sum11_bit_math_h_l319_c5_84dd;
     VAR_sum5_MUX_bit_math_h_l253_c3_30a4_iftrue := to_unsigned(5, 3);
     VAR_sum4_bit_math_h_l249_c5_de9f := resize(to_unsigned(0, 1), 3);
     VAR_sum4_MUX_bit_math_h_l243_c3_404a_iffalse := VAR_sum4_bit_math_h_l249_c5_de9f;
     VAR_BIN_OP_EQ_bit_math_h_l143_c15_4da9_right := to_unsigned(1, 1);
     VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_iftrue := to_unsigned(17, 5);
     VAR_sum3_bit_math_h_l239_c5_510b := resize(to_unsigned(0, 1), 2);
     VAR_sum3_MUX_bit_math_h_l233_c3_2960_iffalse := VAR_sum3_bit_math_h_l239_c5_510b;
     VAR_sum16_MUX_bit_math_h_l363_c3_6e44_iftrue := to_unsigned(16, 5);
     VAR_BIN_OP_EQ_bit_math_h_l150_c15_db21_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l70_c24_eacd_right := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_bit_math_h_l164_c15_4d49_right := to_unsigned(1, 1);
     VAR_sum20_bit_math_h_l409_c5_8a86 := resize(to_unsigned(0, 1), 5);
     VAR_sum20_MUX_bit_math_h_l403_c3_f760_iffalse := VAR_sum20_bit_math_h_l409_c5_8a86;
     VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_iftrue := to_unsigned(11, 4);
     VAR_BIN_OP_EQ_bit_math_h_l101_c14_d66f_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l87_c14_3207_right := to_unsigned(1, 1);
     VAR_sum16_bit_math_h_l369_c5_6f06 := resize(to_unsigned(0, 1), 5);
     VAR_sum16_MUX_bit_math_h_l363_c3_6e44_iffalse := VAR_sum16_bit_math_h_l369_c5_6f06;
     VAR_BIN_OP_EQ_bit_math_h_l122_c14_d2cd_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l199_c15_35d9_right := to_unsigned(1, 1);
     VAR_sum10_bit_math_h_l309_c5_e26a := resize(to_unsigned(0, 1), 4);
     VAR_sum10_MUX_bit_math_h_l303_c3_632f_iffalse := VAR_sum10_bit_math_h_l309_c5_e26a;
     VAR_BIN_OP_EQ_bit_math_h_l80_c14_0f10_right := to_unsigned(1, 1);
     VAR_sum2_bit_math_h_l229_c5_4308 := resize(to_unsigned(0, 1), 2);
     VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_iffalse := VAR_sum2_bit_math_h_l229_c5_4308;
     VAR_sum21_bit_math_h_l419_c5_f374 := resize(to_unsigned(0, 1), 5);
     VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_iffalse := VAR_sum21_bit_math_h_l419_c5_f374;
     VAR_BIN_OP_EQ_bit_math_h_l108_c14_310f_right := to_unsigned(1, 1);
     VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_iftrue := to_unsigned(2, 2);
     VAR_sum15_bit_math_h_l359_c5_a54d := resize(to_unsigned(0, 1), 4);
     VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_iffalse := VAR_sum15_bit_math_h_l359_c5_a54d;
     VAR_BIN_OP_EQ_bit_math_h_l115_c14_5040_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l136_c15_659f_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l178_c15_3d3f_right := to_unsigned(1, 1);
     VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_iftrue := to_unsigned(14, 4);
     VAR_BIN_OP_EQ_bit_math_h_l129_c14_a382_right := to_unsigned(1, 1);
     VAR_sum7_bit_math_h_l279_c5_dc88 := resize(to_unsigned(0, 1), 3);
     VAR_sum7_MUX_bit_math_h_l273_c3_d873_iffalse := VAR_sum7_bit_math_h_l279_c5_dc88;
     VAR_sum1_MUX_bit_math_h_l213_c3_67f4_iftrue := to_unsigned(1, 1);
     VAR_sum10_MUX_bit_math_h_l303_c3_632f_iftrue := to_unsigned(10, 4);
     VAR_sum17_bit_math_h_l379_c5_ef28 := resize(to_unsigned(0, 1), 5);
     VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_iffalse := VAR_sum17_bit_math_h_l379_c5_ef28;
     VAR_sum20_MUX_bit_math_h_l403_c3_f760_iftrue := to_unsigned(20, 5);
     VAR_sum9_bit_math_h_l299_c5_c3f6 := resize(to_unsigned(0, 1), 4);
     VAR_sum9_MUX_bit_math_h_l293_c3_6045_iffalse := VAR_sum9_bit_math_h_l299_c5_c3f6;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     VAR_BIN_OP_EQ_bit_math_h_l70_c24_eacd_left := VAR_x;
     -- uint21_20_19[bit_math_h_l73_c14_5c11] LATENCY=0
     VAR_uint21_20_19_bit_math_h_l73_c14_5c11_return_output := uint21_20_19(
     VAR_x);

     -- uint21_20_5[bit_math_h_l171_c15_f620] LATENCY=0
     VAR_uint21_20_5_bit_math_h_l171_c15_f620_return_output := uint21_20_5(
     VAR_x);

     -- uint21_20_4[bit_math_h_l178_c15_e95f] LATENCY=0
     VAR_uint21_20_4_bit_math_h_l178_c15_e95f_return_output := uint21_20_4(
     VAR_x);

     -- uint21_20_8[bit_math_h_l150_c15_1e83] LATENCY=0
     VAR_uint21_20_8_bit_math_h_l150_c15_1e83_return_output := uint21_20_8(
     VAR_x);

     -- uint21_20_15[bit_math_h_l101_c14_24e5] LATENCY=0
     VAR_uint21_20_15_bit_math_h_l101_c14_24e5_return_output := uint21_20_15(
     VAR_x);

     -- uint21_20_11[bit_math_h_l129_c14_228e] LATENCY=0
     VAR_uint21_20_11_bit_math_h_l129_c14_228e_return_output := uint21_20_11(
     VAR_x);

     -- uint21_20_7[bit_math_h_l157_c15_b0a6] LATENCY=0
     VAR_uint21_20_7_bit_math_h_l157_c15_b0a6_return_output := uint21_20_7(
     VAR_x);

     -- uint21_20_12[bit_math_h_l122_c14_1485] LATENCY=0
     VAR_uint21_20_12_bit_math_h_l122_c14_1485_return_output := uint21_20_12(
     VAR_x);

     -- uint21_20_16[bit_math_h_l94_c14_e7f3] LATENCY=0
     VAR_uint21_20_16_bit_math_h_l94_c14_e7f3_return_output := uint21_20_16(
     VAR_x);

     -- uint21_20_13[bit_math_h_l115_c14_8118] LATENCY=0
     VAR_uint21_20_13_bit_math_h_l115_c14_8118_return_output := uint21_20_13(
     VAR_x);

     -- uint21_20_0[bit_math_h_l206_c15_edad] LATENCY=0
     VAR_uint21_20_0_bit_math_h_l206_c15_edad_return_output := uint21_20_0(
     VAR_x);

     -- uint21_20_10[bit_math_h_l136_c15_1c3a] LATENCY=0
     VAR_uint21_20_10_bit_math_h_l136_c15_1c3a_return_output := uint21_20_10(
     VAR_x);

     -- uint21_20_6[bit_math_h_l164_c15_8371] LATENCY=0
     VAR_uint21_20_6_bit_math_h_l164_c15_8371_return_output := uint21_20_6(
     VAR_x);

     -- uint21_20_1[bit_math_h_l199_c15_bd26] LATENCY=0
     VAR_uint21_20_1_bit_math_h_l199_c15_bd26_return_output := uint21_20_1(
     VAR_x);

     -- uint21_20_2[bit_math_h_l192_c15_bec8] LATENCY=0
     VAR_uint21_20_2_bit_math_h_l192_c15_bec8_return_output := uint21_20_2(
     VAR_x);

     -- uint21_20_14[bit_math_h_l108_c14_a1b3] LATENCY=0
     VAR_uint21_20_14_bit_math_h_l108_c14_a1b3_return_output := uint21_20_14(
     VAR_x);

     -- uint21_20_3[bit_math_h_l185_c15_24ae] LATENCY=0
     VAR_uint21_20_3_bit_math_h_l185_c15_24ae_return_output := uint21_20_3(
     VAR_x);

     -- BIN_OP_EQ[bit_math_h_l70_c24_eacd] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l70_c24_eacd_left <= VAR_BIN_OP_EQ_bit_math_h_l70_c24_eacd_left;
     BIN_OP_EQ_bit_math_h_l70_c24_eacd_right <= VAR_BIN_OP_EQ_bit_math_h_l70_c24_eacd_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l70_c24_eacd_return_output := BIN_OP_EQ_bit_math_h_l70_c24_eacd_return_output;

     -- uint21_20_9[bit_math_h_l143_c15_910e] LATENCY=0
     VAR_uint21_20_9_bit_math_h_l143_c15_910e_return_output := uint21_20_9(
     VAR_x);

     -- uint21_20_17[bit_math_h_l87_c14_2994] LATENCY=0
     VAR_uint21_20_17_bit_math_h_l87_c14_2994_return_output := uint21_20_17(
     VAR_x);

     -- uint21_20_18[bit_math_h_l80_c14_d44c] LATENCY=0
     VAR_uint21_20_18_bit_math_h_l80_c14_d44c_return_output := uint21_20_18(
     VAR_x);

     -- Submodule level 1
     VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_cond := VAR_BIN_OP_EQ_bit_math_h_l70_c24_eacd_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l206_c15_f42a_left := VAR_uint21_20_0_bit_math_h_l206_c15_edad_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l136_c15_659f_left := VAR_uint21_20_10_bit_math_h_l136_c15_1c3a_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l129_c14_a382_left := VAR_uint21_20_11_bit_math_h_l129_c14_228e_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l122_c14_d2cd_left := VAR_uint21_20_12_bit_math_h_l122_c14_1485_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l115_c14_5040_left := VAR_uint21_20_13_bit_math_h_l115_c14_8118_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l108_c14_310f_left := VAR_uint21_20_14_bit_math_h_l108_c14_a1b3_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l101_c14_d66f_left := VAR_uint21_20_15_bit_math_h_l101_c14_24e5_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l94_c14_02a3_left := VAR_uint21_20_16_bit_math_h_l94_c14_e7f3_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l87_c14_3207_left := VAR_uint21_20_17_bit_math_h_l87_c14_2994_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l80_c14_0f10_left := VAR_uint21_20_18_bit_math_h_l80_c14_d44c_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l73_c14_3049_left := VAR_uint21_20_19_bit_math_h_l73_c14_5c11_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l199_c15_35d9_left := VAR_uint21_20_1_bit_math_h_l199_c15_bd26_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l192_c15_dcff_left := VAR_uint21_20_2_bit_math_h_l192_c15_bec8_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l185_c15_1444_left := VAR_uint21_20_3_bit_math_h_l185_c15_24ae_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l178_c15_3d3f_left := VAR_uint21_20_4_bit_math_h_l178_c15_e95f_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l171_c15_1913_left := VAR_uint21_20_5_bit_math_h_l171_c15_f620_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l164_c15_4d49_left := VAR_uint21_20_6_bit_math_h_l164_c15_8371_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l157_c15_8afc_left := VAR_uint21_20_7_bit_math_h_l157_c15_b0a6_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l150_c15_db21_left := VAR_uint21_20_8_bit_math_h_l150_c15_1e83_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l143_c15_4da9_left := VAR_uint21_20_9_bit_math_h_l143_c15_910e_return_output;
     -- BIN_OP_EQ[bit_math_h_l157_c15_8afc] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l157_c15_8afc_left <= VAR_BIN_OP_EQ_bit_math_h_l157_c15_8afc_left;
     BIN_OP_EQ_bit_math_h_l157_c15_8afc_right <= VAR_BIN_OP_EQ_bit_math_h_l157_c15_8afc_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l157_c15_8afc_return_output := BIN_OP_EQ_bit_math_h_l157_c15_8afc_return_output;

     -- BIN_OP_EQ[bit_math_h_l115_c14_5040] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l115_c14_5040_left <= VAR_BIN_OP_EQ_bit_math_h_l115_c14_5040_left;
     BIN_OP_EQ_bit_math_h_l115_c14_5040_right <= VAR_BIN_OP_EQ_bit_math_h_l115_c14_5040_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l115_c14_5040_return_output := BIN_OP_EQ_bit_math_h_l115_c14_5040_return_output;

     -- sum21_MUX[bit_math_h_l413_c3_7ad1] LATENCY=0
     -- Inputs
     sum21_MUX_bit_math_h_l413_c3_7ad1_cond <= VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_cond;
     sum21_MUX_bit_math_h_l413_c3_7ad1_iftrue <= VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_iftrue;
     sum21_MUX_bit_math_h_l413_c3_7ad1_iffalse <= VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_iffalse;
     -- Outputs
     VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_return_output := sum21_MUX_bit_math_h_l413_c3_7ad1_return_output;

     -- BIN_OP_EQ[bit_math_h_l80_c14_0f10] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l80_c14_0f10_left <= VAR_BIN_OP_EQ_bit_math_h_l80_c14_0f10_left;
     BIN_OP_EQ_bit_math_h_l80_c14_0f10_right <= VAR_BIN_OP_EQ_bit_math_h_l80_c14_0f10_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l80_c14_0f10_return_output := BIN_OP_EQ_bit_math_h_l80_c14_0f10_return_output;

     -- BIN_OP_EQ[bit_math_h_l101_c14_d66f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l101_c14_d66f_left <= VAR_BIN_OP_EQ_bit_math_h_l101_c14_d66f_left;
     BIN_OP_EQ_bit_math_h_l101_c14_d66f_right <= VAR_BIN_OP_EQ_bit_math_h_l101_c14_d66f_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l101_c14_d66f_return_output := BIN_OP_EQ_bit_math_h_l101_c14_d66f_return_output;

     -- BIN_OP_EQ[bit_math_h_l87_c14_3207] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l87_c14_3207_left <= VAR_BIN_OP_EQ_bit_math_h_l87_c14_3207_left;
     BIN_OP_EQ_bit_math_h_l87_c14_3207_right <= VAR_BIN_OP_EQ_bit_math_h_l87_c14_3207_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l87_c14_3207_return_output := BIN_OP_EQ_bit_math_h_l87_c14_3207_return_output;

     -- BIN_OP_EQ[bit_math_h_l136_c15_659f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l136_c15_659f_left <= VAR_BIN_OP_EQ_bit_math_h_l136_c15_659f_left;
     BIN_OP_EQ_bit_math_h_l136_c15_659f_right <= VAR_BIN_OP_EQ_bit_math_h_l136_c15_659f_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l136_c15_659f_return_output := BIN_OP_EQ_bit_math_h_l136_c15_659f_return_output;

     -- BIN_OP_EQ[bit_math_h_l143_c15_4da9] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l143_c15_4da9_left <= VAR_BIN_OP_EQ_bit_math_h_l143_c15_4da9_left;
     BIN_OP_EQ_bit_math_h_l143_c15_4da9_right <= VAR_BIN_OP_EQ_bit_math_h_l143_c15_4da9_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l143_c15_4da9_return_output := BIN_OP_EQ_bit_math_h_l143_c15_4da9_return_output;

     -- BIN_OP_EQ[bit_math_h_l206_c15_f42a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l206_c15_f42a_left <= VAR_BIN_OP_EQ_bit_math_h_l206_c15_f42a_left;
     BIN_OP_EQ_bit_math_h_l206_c15_f42a_right <= VAR_BIN_OP_EQ_bit_math_h_l206_c15_f42a_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l206_c15_f42a_return_output := BIN_OP_EQ_bit_math_h_l206_c15_f42a_return_output;

     -- BIN_OP_EQ[bit_math_h_l108_c14_310f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l108_c14_310f_left <= VAR_BIN_OP_EQ_bit_math_h_l108_c14_310f_left;
     BIN_OP_EQ_bit_math_h_l108_c14_310f_right <= VAR_BIN_OP_EQ_bit_math_h_l108_c14_310f_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l108_c14_310f_return_output := BIN_OP_EQ_bit_math_h_l108_c14_310f_return_output;

     -- BIN_OP_EQ[bit_math_h_l129_c14_a382] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l129_c14_a382_left <= VAR_BIN_OP_EQ_bit_math_h_l129_c14_a382_left;
     BIN_OP_EQ_bit_math_h_l129_c14_a382_right <= VAR_BIN_OP_EQ_bit_math_h_l129_c14_a382_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l129_c14_a382_return_output := BIN_OP_EQ_bit_math_h_l129_c14_a382_return_output;

     -- BIN_OP_EQ[bit_math_h_l171_c15_1913] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l171_c15_1913_left <= VAR_BIN_OP_EQ_bit_math_h_l171_c15_1913_left;
     BIN_OP_EQ_bit_math_h_l171_c15_1913_right <= VAR_BIN_OP_EQ_bit_math_h_l171_c15_1913_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l171_c15_1913_return_output := BIN_OP_EQ_bit_math_h_l171_c15_1913_return_output;

     -- BIN_OP_EQ[bit_math_h_l199_c15_35d9] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l199_c15_35d9_left <= VAR_BIN_OP_EQ_bit_math_h_l199_c15_35d9_left;
     BIN_OP_EQ_bit_math_h_l199_c15_35d9_right <= VAR_BIN_OP_EQ_bit_math_h_l199_c15_35d9_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l199_c15_35d9_return_output := BIN_OP_EQ_bit_math_h_l199_c15_35d9_return_output;

     -- BIN_OP_EQ[bit_math_h_l178_c15_3d3f] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l178_c15_3d3f_left <= VAR_BIN_OP_EQ_bit_math_h_l178_c15_3d3f_left;
     BIN_OP_EQ_bit_math_h_l178_c15_3d3f_right <= VAR_BIN_OP_EQ_bit_math_h_l178_c15_3d3f_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l178_c15_3d3f_return_output := BIN_OP_EQ_bit_math_h_l178_c15_3d3f_return_output;

     -- BIN_OP_EQ[bit_math_h_l94_c14_02a3] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l94_c14_02a3_left <= VAR_BIN_OP_EQ_bit_math_h_l94_c14_02a3_left;
     BIN_OP_EQ_bit_math_h_l94_c14_02a3_right <= VAR_BIN_OP_EQ_bit_math_h_l94_c14_02a3_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l94_c14_02a3_return_output := BIN_OP_EQ_bit_math_h_l94_c14_02a3_return_output;

     -- BIN_OP_EQ[bit_math_h_l150_c15_db21] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l150_c15_db21_left <= VAR_BIN_OP_EQ_bit_math_h_l150_c15_db21_left;
     BIN_OP_EQ_bit_math_h_l150_c15_db21_right <= VAR_BIN_OP_EQ_bit_math_h_l150_c15_db21_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l150_c15_db21_return_output := BIN_OP_EQ_bit_math_h_l150_c15_db21_return_output;

     -- BIN_OP_EQ[bit_math_h_l164_c15_4d49] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l164_c15_4d49_left <= VAR_BIN_OP_EQ_bit_math_h_l164_c15_4d49_left;
     BIN_OP_EQ_bit_math_h_l164_c15_4d49_right <= VAR_BIN_OP_EQ_bit_math_h_l164_c15_4d49_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l164_c15_4d49_return_output := BIN_OP_EQ_bit_math_h_l164_c15_4d49_return_output;

     -- BIN_OP_EQ[bit_math_h_l192_c15_dcff] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l192_c15_dcff_left <= VAR_BIN_OP_EQ_bit_math_h_l192_c15_dcff_left;
     BIN_OP_EQ_bit_math_h_l192_c15_dcff_right <= VAR_BIN_OP_EQ_bit_math_h_l192_c15_dcff_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l192_c15_dcff_return_output := BIN_OP_EQ_bit_math_h_l192_c15_dcff_return_output;

     -- BIN_OP_EQ[bit_math_h_l122_c14_d2cd] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l122_c14_d2cd_left <= VAR_BIN_OP_EQ_bit_math_h_l122_c14_d2cd_left;
     BIN_OP_EQ_bit_math_h_l122_c14_d2cd_right <= VAR_BIN_OP_EQ_bit_math_h_l122_c14_d2cd_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l122_c14_d2cd_return_output := BIN_OP_EQ_bit_math_h_l122_c14_d2cd_return_output;

     -- BIN_OP_EQ[bit_math_h_l73_c14_3049] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l73_c14_3049_left <= VAR_BIN_OP_EQ_bit_math_h_l73_c14_3049_left;
     BIN_OP_EQ_bit_math_h_l73_c14_3049_right <= VAR_BIN_OP_EQ_bit_math_h_l73_c14_3049_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l73_c14_3049_return_output := BIN_OP_EQ_bit_math_h_l73_c14_3049_return_output;

     -- BIN_OP_EQ[bit_math_h_l185_c15_1444] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l185_c15_1444_left <= VAR_BIN_OP_EQ_bit_math_h_l185_c15_1444_left;
     BIN_OP_EQ_bit_math_h_l185_c15_1444_right <= VAR_BIN_OP_EQ_bit_math_h_l185_c15_1444_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l185_c15_1444_return_output := BIN_OP_EQ_bit_math_h_l185_c15_1444_return_output;

     -- Submodule level 2
     VAR_sum5_MUX_bit_math_h_l253_c3_30a4_cond := VAR_BIN_OP_EQ_bit_math_h_l101_c14_d66f_return_output;
     VAR_sum6_MUX_bit_math_h_l263_c3_3d14_cond := VAR_BIN_OP_EQ_bit_math_h_l108_c14_310f_return_output;
     VAR_sum7_MUX_bit_math_h_l273_c3_d873_cond := VAR_BIN_OP_EQ_bit_math_h_l115_c14_5040_return_output;
     VAR_sum8_MUX_bit_math_h_l283_c3_33e0_cond := VAR_BIN_OP_EQ_bit_math_h_l122_c14_d2cd_return_output;
     VAR_sum9_MUX_bit_math_h_l293_c3_6045_cond := VAR_BIN_OP_EQ_bit_math_h_l129_c14_a382_return_output;
     VAR_sum10_MUX_bit_math_h_l303_c3_632f_cond := VAR_BIN_OP_EQ_bit_math_h_l136_c15_659f_return_output;
     VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_cond := VAR_BIN_OP_EQ_bit_math_h_l143_c15_4da9_return_output;
     VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_cond := VAR_BIN_OP_EQ_bit_math_h_l150_c15_db21_return_output;
     VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_cond := VAR_BIN_OP_EQ_bit_math_h_l157_c15_8afc_return_output;
     VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_cond := VAR_BIN_OP_EQ_bit_math_h_l164_c15_4d49_return_output;
     VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_cond := VAR_BIN_OP_EQ_bit_math_h_l171_c15_1913_return_output;
     VAR_sum16_MUX_bit_math_h_l363_c3_6e44_cond := VAR_BIN_OP_EQ_bit_math_h_l178_c15_3d3f_return_output;
     VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_cond := VAR_BIN_OP_EQ_bit_math_h_l185_c15_1444_return_output;
     VAR_sum18_MUX_bit_math_h_l383_c3_9c73_cond := VAR_BIN_OP_EQ_bit_math_h_l192_c15_dcff_return_output;
     VAR_sum19_MUX_bit_math_h_l393_c3_92ea_cond := VAR_BIN_OP_EQ_bit_math_h_l199_c15_35d9_return_output;
     VAR_sum20_MUX_bit_math_h_l403_c3_f760_cond := VAR_BIN_OP_EQ_bit_math_h_l206_c15_f42a_return_output;
     VAR_sum1_MUX_bit_math_h_l213_c3_67f4_cond := VAR_BIN_OP_EQ_bit_math_h_l73_c14_3049_return_output;
     VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_cond := VAR_BIN_OP_EQ_bit_math_h_l80_c14_0f10_return_output;
     VAR_sum3_MUX_bit_math_h_l233_c3_2960_cond := VAR_BIN_OP_EQ_bit_math_h_l87_c14_3207_return_output;
     VAR_sum4_MUX_bit_math_h_l243_c3_404a_cond := VAR_BIN_OP_EQ_bit_math_h_l94_c14_02a3_return_output;
     VAR_BIN_OP_OR_bit_math_h_l470_c22_b85d_right := VAR_sum21_MUX_bit_math_h_l413_c3_7ad1_return_output;
     -- sum10_MUX[bit_math_h_l303_c3_632f] LATENCY=0
     -- Inputs
     sum10_MUX_bit_math_h_l303_c3_632f_cond <= VAR_sum10_MUX_bit_math_h_l303_c3_632f_cond;
     sum10_MUX_bit_math_h_l303_c3_632f_iftrue <= VAR_sum10_MUX_bit_math_h_l303_c3_632f_iftrue;
     sum10_MUX_bit_math_h_l303_c3_632f_iffalse <= VAR_sum10_MUX_bit_math_h_l303_c3_632f_iffalse;
     -- Outputs
     VAR_sum10_MUX_bit_math_h_l303_c3_632f_return_output := sum10_MUX_bit_math_h_l303_c3_632f_return_output;

     -- sum17_MUX[bit_math_h_l373_c3_a8a1] LATENCY=0
     -- Inputs
     sum17_MUX_bit_math_h_l373_c3_a8a1_cond <= VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_cond;
     sum17_MUX_bit_math_h_l373_c3_a8a1_iftrue <= VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_iftrue;
     sum17_MUX_bit_math_h_l373_c3_a8a1_iffalse <= VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_iffalse;
     -- Outputs
     VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_return_output := sum17_MUX_bit_math_h_l373_c3_a8a1_return_output;

     -- sum12_MUX[bit_math_h_l323_c3_fd7a] LATENCY=0
     -- Inputs
     sum12_MUX_bit_math_h_l323_c3_fd7a_cond <= VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_cond;
     sum12_MUX_bit_math_h_l323_c3_fd7a_iftrue <= VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_iftrue;
     sum12_MUX_bit_math_h_l323_c3_fd7a_iffalse <= VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_iffalse;
     -- Outputs
     VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_return_output := sum12_MUX_bit_math_h_l323_c3_fd7a_return_output;

     -- sum11_MUX[bit_math_h_l313_c3_c1aa] LATENCY=0
     -- Inputs
     sum11_MUX_bit_math_h_l313_c3_c1aa_cond <= VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_cond;
     sum11_MUX_bit_math_h_l313_c3_c1aa_iftrue <= VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_iftrue;
     sum11_MUX_bit_math_h_l313_c3_c1aa_iffalse <= VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_iffalse;
     -- Outputs
     VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_return_output := sum11_MUX_bit_math_h_l313_c3_c1aa_return_output;

     -- sum7_MUX[bit_math_h_l273_c3_d873] LATENCY=0
     -- Inputs
     sum7_MUX_bit_math_h_l273_c3_d873_cond <= VAR_sum7_MUX_bit_math_h_l273_c3_d873_cond;
     sum7_MUX_bit_math_h_l273_c3_d873_iftrue <= VAR_sum7_MUX_bit_math_h_l273_c3_d873_iftrue;
     sum7_MUX_bit_math_h_l273_c3_d873_iffalse <= VAR_sum7_MUX_bit_math_h_l273_c3_d873_iffalse;
     -- Outputs
     VAR_sum7_MUX_bit_math_h_l273_c3_d873_return_output := sum7_MUX_bit_math_h_l273_c3_d873_return_output;

     -- sum18_MUX[bit_math_h_l383_c3_9c73] LATENCY=0
     -- Inputs
     sum18_MUX_bit_math_h_l383_c3_9c73_cond <= VAR_sum18_MUX_bit_math_h_l383_c3_9c73_cond;
     sum18_MUX_bit_math_h_l383_c3_9c73_iftrue <= VAR_sum18_MUX_bit_math_h_l383_c3_9c73_iftrue;
     sum18_MUX_bit_math_h_l383_c3_9c73_iffalse <= VAR_sum18_MUX_bit_math_h_l383_c3_9c73_iffalse;
     -- Outputs
     VAR_sum18_MUX_bit_math_h_l383_c3_9c73_return_output := sum18_MUX_bit_math_h_l383_c3_9c73_return_output;

     -- sum14_MUX[bit_math_h_l343_c3_8d6a] LATENCY=0
     -- Inputs
     sum14_MUX_bit_math_h_l343_c3_8d6a_cond <= VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_cond;
     sum14_MUX_bit_math_h_l343_c3_8d6a_iftrue <= VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_iftrue;
     sum14_MUX_bit_math_h_l343_c3_8d6a_iffalse <= VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_iffalse;
     -- Outputs
     VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_return_output := sum14_MUX_bit_math_h_l343_c3_8d6a_return_output;

     -- sum3_MUX[bit_math_h_l233_c3_2960] LATENCY=0
     -- Inputs
     sum3_MUX_bit_math_h_l233_c3_2960_cond <= VAR_sum3_MUX_bit_math_h_l233_c3_2960_cond;
     sum3_MUX_bit_math_h_l233_c3_2960_iftrue <= VAR_sum3_MUX_bit_math_h_l233_c3_2960_iftrue;
     sum3_MUX_bit_math_h_l233_c3_2960_iffalse <= VAR_sum3_MUX_bit_math_h_l233_c3_2960_iffalse;
     -- Outputs
     VAR_sum3_MUX_bit_math_h_l233_c3_2960_return_output := sum3_MUX_bit_math_h_l233_c3_2960_return_output;

     -- sum9_MUX[bit_math_h_l293_c3_6045] LATENCY=0
     -- Inputs
     sum9_MUX_bit_math_h_l293_c3_6045_cond <= VAR_sum9_MUX_bit_math_h_l293_c3_6045_cond;
     sum9_MUX_bit_math_h_l293_c3_6045_iftrue <= VAR_sum9_MUX_bit_math_h_l293_c3_6045_iftrue;
     sum9_MUX_bit_math_h_l293_c3_6045_iffalse <= VAR_sum9_MUX_bit_math_h_l293_c3_6045_iffalse;
     -- Outputs
     VAR_sum9_MUX_bit_math_h_l293_c3_6045_return_output := sum9_MUX_bit_math_h_l293_c3_6045_return_output;

     -- sum2_MUX[bit_math_h_l223_c3_6f6d] LATENCY=0
     -- Inputs
     sum2_MUX_bit_math_h_l223_c3_6f6d_cond <= VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_cond;
     sum2_MUX_bit_math_h_l223_c3_6f6d_iftrue <= VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_iftrue;
     sum2_MUX_bit_math_h_l223_c3_6f6d_iffalse <= VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_iffalse;
     -- Outputs
     VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_return_output := sum2_MUX_bit_math_h_l223_c3_6f6d_return_output;

     -- sum20_MUX[bit_math_h_l403_c3_f760] LATENCY=0
     -- Inputs
     sum20_MUX_bit_math_h_l403_c3_f760_cond <= VAR_sum20_MUX_bit_math_h_l403_c3_f760_cond;
     sum20_MUX_bit_math_h_l403_c3_f760_iftrue <= VAR_sum20_MUX_bit_math_h_l403_c3_f760_iftrue;
     sum20_MUX_bit_math_h_l403_c3_f760_iffalse <= VAR_sum20_MUX_bit_math_h_l403_c3_f760_iffalse;
     -- Outputs
     VAR_sum20_MUX_bit_math_h_l403_c3_f760_return_output := sum20_MUX_bit_math_h_l403_c3_f760_return_output;

     -- sum19_MUX[bit_math_h_l393_c3_92ea] LATENCY=0
     -- Inputs
     sum19_MUX_bit_math_h_l393_c3_92ea_cond <= VAR_sum19_MUX_bit_math_h_l393_c3_92ea_cond;
     sum19_MUX_bit_math_h_l393_c3_92ea_iftrue <= VAR_sum19_MUX_bit_math_h_l393_c3_92ea_iftrue;
     sum19_MUX_bit_math_h_l393_c3_92ea_iffalse <= VAR_sum19_MUX_bit_math_h_l393_c3_92ea_iffalse;
     -- Outputs
     VAR_sum19_MUX_bit_math_h_l393_c3_92ea_return_output := sum19_MUX_bit_math_h_l393_c3_92ea_return_output;

     -- sum8_MUX[bit_math_h_l283_c3_33e0] LATENCY=0
     -- Inputs
     sum8_MUX_bit_math_h_l283_c3_33e0_cond <= VAR_sum8_MUX_bit_math_h_l283_c3_33e0_cond;
     sum8_MUX_bit_math_h_l283_c3_33e0_iftrue <= VAR_sum8_MUX_bit_math_h_l283_c3_33e0_iftrue;
     sum8_MUX_bit_math_h_l283_c3_33e0_iffalse <= VAR_sum8_MUX_bit_math_h_l283_c3_33e0_iffalse;
     -- Outputs
     VAR_sum8_MUX_bit_math_h_l283_c3_33e0_return_output := sum8_MUX_bit_math_h_l283_c3_33e0_return_output;

     -- sum1_MUX[bit_math_h_l213_c3_67f4] LATENCY=0
     -- Inputs
     sum1_MUX_bit_math_h_l213_c3_67f4_cond <= VAR_sum1_MUX_bit_math_h_l213_c3_67f4_cond;
     sum1_MUX_bit_math_h_l213_c3_67f4_iftrue <= VAR_sum1_MUX_bit_math_h_l213_c3_67f4_iftrue;
     sum1_MUX_bit_math_h_l213_c3_67f4_iffalse <= VAR_sum1_MUX_bit_math_h_l213_c3_67f4_iffalse;
     -- Outputs
     VAR_sum1_MUX_bit_math_h_l213_c3_67f4_return_output := sum1_MUX_bit_math_h_l213_c3_67f4_return_output;

     -- sum5_MUX[bit_math_h_l253_c3_30a4] LATENCY=0
     -- Inputs
     sum5_MUX_bit_math_h_l253_c3_30a4_cond <= VAR_sum5_MUX_bit_math_h_l253_c3_30a4_cond;
     sum5_MUX_bit_math_h_l253_c3_30a4_iftrue <= VAR_sum5_MUX_bit_math_h_l253_c3_30a4_iftrue;
     sum5_MUX_bit_math_h_l253_c3_30a4_iffalse <= VAR_sum5_MUX_bit_math_h_l253_c3_30a4_iffalse;
     -- Outputs
     VAR_sum5_MUX_bit_math_h_l253_c3_30a4_return_output := sum5_MUX_bit_math_h_l253_c3_30a4_return_output;

     -- sum4_MUX[bit_math_h_l243_c3_404a] LATENCY=0
     -- Inputs
     sum4_MUX_bit_math_h_l243_c3_404a_cond <= VAR_sum4_MUX_bit_math_h_l243_c3_404a_cond;
     sum4_MUX_bit_math_h_l243_c3_404a_iftrue <= VAR_sum4_MUX_bit_math_h_l243_c3_404a_iftrue;
     sum4_MUX_bit_math_h_l243_c3_404a_iffalse <= VAR_sum4_MUX_bit_math_h_l243_c3_404a_iffalse;
     -- Outputs
     VAR_sum4_MUX_bit_math_h_l243_c3_404a_return_output := sum4_MUX_bit_math_h_l243_c3_404a_return_output;

     -- sum15_MUX[bit_math_h_l353_c3_8eb6] LATENCY=0
     -- Inputs
     sum15_MUX_bit_math_h_l353_c3_8eb6_cond <= VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_cond;
     sum15_MUX_bit_math_h_l353_c3_8eb6_iftrue <= VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_iftrue;
     sum15_MUX_bit_math_h_l353_c3_8eb6_iffalse <= VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_iffalse;
     -- Outputs
     VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_return_output := sum15_MUX_bit_math_h_l353_c3_8eb6_return_output;

     -- sum6_MUX[bit_math_h_l263_c3_3d14] LATENCY=0
     -- Inputs
     sum6_MUX_bit_math_h_l263_c3_3d14_cond <= VAR_sum6_MUX_bit_math_h_l263_c3_3d14_cond;
     sum6_MUX_bit_math_h_l263_c3_3d14_iftrue <= VAR_sum6_MUX_bit_math_h_l263_c3_3d14_iftrue;
     sum6_MUX_bit_math_h_l263_c3_3d14_iffalse <= VAR_sum6_MUX_bit_math_h_l263_c3_3d14_iffalse;
     -- Outputs
     VAR_sum6_MUX_bit_math_h_l263_c3_3d14_return_output := sum6_MUX_bit_math_h_l263_c3_3d14_return_output;

     -- sum13_MUX[bit_math_h_l333_c3_1fc0] LATENCY=0
     -- Inputs
     sum13_MUX_bit_math_h_l333_c3_1fc0_cond <= VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_cond;
     sum13_MUX_bit_math_h_l333_c3_1fc0_iftrue <= VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_iftrue;
     sum13_MUX_bit_math_h_l333_c3_1fc0_iffalse <= VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_iffalse;
     -- Outputs
     VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_return_output := sum13_MUX_bit_math_h_l333_c3_1fc0_return_output;

     -- sum16_MUX[bit_math_h_l363_c3_6e44] LATENCY=0
     -- Inputs
     sum16_MUX_bit_math_h_l363_c3_6e44_cond <= VAR_sum16_MUX_bit_math_h_l363_c3_6e44_cond;
     sum16_MUX_bit_math_h_l363_c3_6e44_iftrue <= VAR_sum16_MUX_bit_math_h_l363_c3_6e44_iftrue;
     sum16_MUX_bit_math_h_l363_c3_6e44_iffalse <= VAR_sum16_MUX_bit_math_h_l363_c3_6e44_iffalse;
     -- Outputs
     VAR_sum16_MUX_bit_math_h_l363_c3_6e44_return_output := sum16_MUX_bit_math_h_l363_c3_6e44_return_output;

     -- Submodule level 3
     VAR_BIN_OP_OR_bit_math_h_l434_c22_d17e_right := VAR_sum10_MUX_bit_math_h_l303_c3_632f_return_output;
     VAR_BIN_OP_OR_bit_math_h_l436_c22_b919_left := VAR_sum11_MUX_bit_math_h_l313_c3_c1aa_return_output;
     VAR_BIN_OP_OR_bit_math_h_l436_c22_b919_right := VAR_sum12_MUX_bit_math_h_l323_c3_fd7a_return_output;
     VAR_BIN_OP_OR_bit_math_h_l438_c22_49b1_left := VAR_sum13_MUX_bit_math_h_l333_c3_1fc0_return_output;
     VAR_BIN_OP_OR_bit_math_h_l438_c22_49b1_right := VAR_sum14_MUX_bit_math_h_l343_c3_8d6a_return_output;
     VAR_BIN_OP_OR_bit_math_h_l440_c22_e37b_left := VAR_sum15_MUX_bit_math_h_l353_c3_8eb6_return_output;
     VAR_BIN_OP_OR_bit_math_h_l440_c22_e37b_right := VAR_sum16_MUX_bit_math_h_l363_c3_6e44_return_output;
     VAR_BIN_OP_OR_bit_math_h_l442_c22_8785_left := VAR_sum17_MUX_bit_math_h_l373_c3_a8a1_return_output;
     VAR_BIN_OP_OR_bit_math_h_l442_c22_8785_right := VAR_sum18_MUX_bit_math_h_l383_c3_9c73_return_output;
     VAR_BIN_OP_OR_bit_math_h_l444_c22_3ac4_left := VAR_sum19_MUX_bit_math_h_l393_c3_92ea_return_output;
     VAR_BIN_OP_OR_bit_math_h_l426_c22_fd01_left := VAR_sum1_MUX_bit_math_h_l213_c3_67f4_return_output;
     VAR_BIN_OP_OR_bit_math_h_l444_c22_3ac4_right := VAR_sum20_MUX_bit_math_h_l403_c3_f760_return_output;
     VAR_BIN_OP_OR_bit_math_h_l426_c22_fd01_right := VAR_sum2_MUX_bit_math_h_l223_c3_6f6d_return_output;
     VAR_BIN_OP_OR_bit_math_h_l428_c22_c164_left := VAR_sum3_MUX_bit_math_h_l233_c3_2960_return_output;
     VAR_BIN_OP_OR_bit_math_h_l428_c22_c164_right := VAR_sum4_MUX_bit_math_h_l243_c3_404a_return_output;
     VAR_BIN_OP_OR_bit_math_h_l430_c22_d205_left := VAR_sum5_MUX_bit_math_h_l253_c3_30a4_return_output;
     VAR_BIN_OP_OR_bit_math_h_l430_c22_d205_right := VAR_sum6_MUX_bit_math_h_l263_c3_3d14_return_output;
     VAR_BIN_OP_OR_bit_math_h_l432_c22_3e47_left := VAR_sum7_MUX_bit_math_h_l273_c3_d873_return_output;
     VAR_BIN_OP_OR_bit_math_h_l432_c22_3e47_right := VAR_sum8_MUX_bit_math_h_l283_c3_33e0_return_output;
     VAR_BIN_OP_OR_bit_math_h_l434_c22_d17e_left := VAR_sum9_MUX_bit_math_h_l293_c3_6045_return_output;
     -- BIN_OP_OR[bit_math_h_l428_c22_c164] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l428_c22_c164_left <= VAR_BIN_OP_OR_bit_math_h_l428_c22_c164_left;
     BIN_OP_OR_bit_math_h_l428_c22_c164_right <= VAR_BIN_OP_OR_bit_math_h_l428_c22_c164_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l428_c22_c164_return_output := BIN_OP_OR_bit_math_h_l428_c22_c164_return_output;

     -- BIN_OP_OR[bit_math_h_l438_c22_49b1] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l438_c22_49b1_left <= VAR_BIN_OP_OR_bit_math_h_l438_c22_49b1_left;
     BIN_OP_OR_bit_math_h_l438_c22_49b1_right <= VAR_BIN_OP_OR_bit_math_h_l438_c22_49b1_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l438_c22_49b1_return_output := BIN_OP_OR_bit_math_h_l438_c22_49b1_return_output;

     -- BIN_OP_OR[bit_math_h_l432_c22_3e47] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l432_c22_3e47_left <= VAR_BIN_OP_OR_bit_math_h_l432_c22_3e47_left;
     BIN_OP_OR_bit_math_h_l432_c22_3e47_right <= VAR_BIN_OP_OR_bit_math_h_l432_c22_3e47_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l432_c22_3e47_return_output := BIN_OP_OR_bit_math_h_l432_c22_3e47_return_output;

     -- BIN_OP_OR[bit_math_h_l434_c22_d17e] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l434_c22_d17e_left <= VAR_BIN_OP_OR_bit_math_h_l434_c22_d17e_left;
     BIN_OP_OR_bit_math_h_l434_c22_d17e_right <= VAR_BIN_OP_OR_bit_math_h_l434_c22_d17e_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l434_c22_d17e_return_output := BIN_OP_OR_bit_math_h_l434_c22_d17e_return_output;

     -- BIN_OP_OR[bit_math_h_l436_c22_b919] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l436_c22_b919_left <= VAR_BIN_OP_OR_bit_math_h_l436_c22_b919_left;
     BIN_OP_OR_bit_math_h_l436_c22_b919_right <= VAR_BIN_OP_OR_bit_math_h_l436_c22_b919_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l436_c22_b919_return_output := BIN_OP_OR_bit_math_h_l436_c22_b919_return_output;

     -- BIN_OP_OR[bit_math_h_l442_c22_8785] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l442_c22_8785_left <= VAR_BIN_OP_OR_bit_math_h_l442_c22_8785_left;
     BIN_OP_OR_bit_math_h_l442_c22_8785_right <= VAR_BIN_OP_OR_bit_math_h_l442_c22_8785_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l442_c22_8785_return_output := BIN_OP_OR_bit_math_h_l442_c22_8785_return_output;

     -- BIN_OP_OR[bit_math_h_l444_c22_3ac4] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l444_c22_3ac4_left <= VAR_BIN_OP_OR_bit_math_h_l444_c22_3ac4_left;
     BIN_OP_OR_bit_math_h_l444_c22_3ac4_right <= VAR_BIN_OP_OR_bit_math_h_l444_c22_3ac4_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l444_c22_3ac4_return_output := BIN_OP_OR_bit_math_h_l444_c22_3ac4_return_output;

     -- BIN_OP_OR[bit_math_h_l426_c22_fd01] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l426_c22_fd01_left <= VAR_BIN_OP_OR_bit_math_h_l426_c22_fd01_left;
     BIN_OP_OR_bit_math_h_l426_c22_fd01_right <= VAR_BIN_OP_OR_bit_math_h_l426_c22_fd01_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l426_c22_fd01_return_output := BIN_OP_OR_bit_math_h_l426_c22_fd01_return_output;

     -- BIN_OP_OR[bit_math_h_l440_c22_e37b] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l440_c22_e37b_left <= VAR_BIN_OP_OR_bit_math_h_l440_c22_e37b_left;
     BIN_OP_OR_bit_math_h_l440_c22_e37b_right <= VAR_BIN_OP_OR_bit_math_h_l440_c22_e37b_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l440_c22_e37b_return_output := BIN_OP_OR_bit_math_h_l440_c22_e37b_return_output;

     -- BIN_OP_OR[bit_math_h_l430_c22_d205] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l430_c22_d205_left <= VAR_BIN_OP_OR_bit_math_h_l430_c22_d205_left;
     BIN_OP_OR_bit_math_h_l430_c22_d205_right <= VAR_BIN_OP_OR_bit_math_h_l430_c22_d205_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l430_c22_d205_return_output := BIN_OP_OR_bit_math_h_l430_c22_d205_return_output;

     -- Submodule level 4
     VAR_BIN_OP_OR_bit_math_h_l451_c22_d03b_left := VAR_BIN_OP_OR_bit_math_h_l426_c22_fd01_return_output;
     VAR_BIN_OP_OR_bit_math_h_l451_c22_d03b_right := VAR_BIN_OP_OR_bit_math_h_l428_c22_c164_return_output;
     VAR_BIN_OP_OR_bit_math_h_l453_c22_1e50_left := VAR_BIN_OP_OR_bit_math_h_l430_c22_d205_return_output;
     VAR_BIN_OP_OR_bit_math_h_l453_c22_1e50_right := VAR_BIN_OP_OR_bit_math_h_l432_c22_3e47_return_output;
     VAR_BIN_OP_OR_bit_math_h_l455_c22_972b_left := VAR_BIN_OP_OR_bit_math_h_l434_c22_d17e_return_output;
     VAR_BIN_OP_OR_bit_math_h_l455_c22_972b_right := VAR_BIN_OP_OR_bit_math_h_l436_c22_b919_return_output;
     VAR_BIN_OP_OR_bit_math_h_l457_c22_81c6_left := VAR_BIN_OP_OR_bit_math_h_l438_c22_49b1_return_output;
     VAR_BIN_OP_OR_bit_math_h_l457_c22_81c6_right := VAR_BIN_OP_OR_bit_math_h_l440_c22_e37b_return_output;
     VAR_BIN_OP_OR_bit_math_h_l459_c22_e81a_left := VAR_BIN_OP_OR_bit_math_h_l442_c22_8785_return_output;
     VAR_BIN_OP_OR_bit_math_h_l459_c22_e81a_right := VAR_BIN_OP_OR_bit_math_h_l444_c22_3ac4_return_output;
     -- BIN_OP_OR[bit_math_h_l453_c22_1e50] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l453_c22_1e50_left <= VAR_BIN_OP_OR_bit_math_h_l453_c22_1e50_left;
     BIN_OP_OR_bit_math_h_l453_c22_1e50_right <= VAR_BIN_OP_OR_bit_math_h_l453_c22_1e50_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l453_c22_1e50_return_output := BIN_OP_OR_bit_math_h_l453_c22_1e50_return_output;

     -- BIN_OP_OR[bit_math_h_l455_c22_972b] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l455_c22_972b_left <= VAR_BIN_OP_OR_bit_math_h_l455_c22_972b_left;
     BIN_OP_OR_bit_math_h_l455_c22_972b_right <= VAR_BIN_OP_OR_bit_math_h_l455_c22_972b_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l455_c22_972b_return_output := BIN_OP_OR_bit_math_h_l455_c22_972b_return_output;

     -- BIN_OP_OR[bit_math_h_l451_c22_d03b] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l451_c22_d03b_left <= VAR_BIN_OP_OR_bit_math_h_l451_c22_d03b_left;
     BIN_OP_OR_bit_math_h_l451_c22_d03b_right <= VAR_BIN_OP_OR_bit_math_h_l451_c22_d03b_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l451_c22_d03b_return_output := BIN_OP_OR_bit_math_h_l451_c22_d03b_return_output;

     -- BIN_OP_OR[bit_math_h_l457_c22_81c6] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l457_c22_81c6_left <= VAR_BIN_OP_OR_bit_math_h_l457_c22_81c6_left;
     BIN_OP_OR_bit_math_h_l457_c22_81c6_right <= VAR_BIN_OP_OR_bit_math_h_l457_c22_81c6_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l457_c22_81c6_return_output := BIN_OP_OR_bit_math_h_l457_c22_81c6_return_output;

     -- BIN_OP_OR[bit_math_h_l459_c22_e81a] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l459_c22_e81a_left <= VAR_BIN_OP_OR_bit_math_h_l459_c22_e81a_left;
     BIN_OP_OR_bit_math_h_l459_c22_e81a_right <= VAR_BIN_OP_OR_bit_math_h_l459_c22_e81a_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l459_c22_e81a_return_output := BIN_OP_OR_bit_math_h_l459_c22_e81a_return_output;

     -- Submodule level 5
     VAR_BIN_OP_OR_bit_math_h_l466_c22_2bf9_left := VAR_BIN_OP_OR_bit_math_h_l451_c22_d03b_return_output;
     VAR_BIN_OP_OR_bit_math_h_l466_c22_2bf9_right := VAR_BIN_OP_OR_bit_math_h_l453_c22_1e50_return_output;
     VAR_BIN_OP_OR_bit_math_h_l468_c22_542c_left := VAR_BIN_OP_OR_bit_math_h_l455_c22_972b_return_output;
     VAR_BIN_OP_OR_bit_math_h_l468_c22_542c_right := VAR_BIN_OP_OR_bit_math_h_l457_c22_81c6_return_output;
     VAR_BIN_OP_OR_bit_math_h_l470_c22_b85d_left := VAR_BIN_OP_OR_bit_math_h_l459_c22_e81a_return_output;
     -- BIN_OP_OR[bit_math_h_l468_c22_542c] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l468_c22_542c_left <= VAR_BIN_OP_OR_bit_math_h_l468_c22_542c_left;
     BIN_OP_OR_bit_math_h_l468_c22_542c_right <= VAR_BIN_OP_OR_bit_math_h_l468_c22_542c_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l468_c22_542c_return_output := BIN_OP_OR_bit_math_h_l468_c22_542c_return_output;

     -- BIN_OP_OR[bit_math_h_l466_c22_2bf9] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l466_c22_2bf9_left <= VAR_BIN_OP_OR_bit_math_h_l466_c22_2bf9_left;
     BIN_OP_OR_bit_math_h_l466_c22_2bf9_right <= VAR_BIN_OP_OR_bit_math_h_l466_c22_2bf9_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l466_c22_2bf9_return_output := BIN_OP_OR_bit_math_h_l466_c22_2bf9_return_output;

     -- BIN_OP_OR[bit_math_h_l470_c22_b85d] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l470_c22_b85d_left <= VAR_BIN_OP_OR_bit_math_h_l470_c22_b85d_left;
     BIN_OP_OR_bit_math_h_l470_c22_b85d_right <= VAR_BIN_OP_OR_bit_math_h_l470_c22_b85d_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l470_c22_b85d_return_output := BIN_OP_OR_bit_math_h_l470_c22_b85d_return_output;

     -- Submodule level 6
     VAR_BIN_OP_OR_bit_math_h_l474_c22_1fc4_left := VAR_BIN_OP_OR_bit_math_h_l466_c22_2bf9_return_output;
     VAR_BIN_OP_OR_bit_math_h_l474_c22_1fc4_right := VAR_BIN_OP_OR_bit_math_h_l468_c22_542c_return_output;
     VAR_BIN_OP_OR_bit_math_h_l481_c22_35c4_right := VAR_BIN_OP_OR_bit_math_h_l470_c22_b85d_return_output;
     -- BIN_OP_OR[bit_math_h_l474_c22_1fc4] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l474_c22_1fc4_left <= VAR_BIN_OP_OR_bit_math_h_l474_c22_1fc4_left;
     BIN_OP_OR_bit_math_h_l474_c22_1fc4_right <= VAR_BIN_OP_OR_bit_math_h_l474_c22_1fc4_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l474_c22_1fc4_return_output := BIN_OP_OR_bit_math_h_l474_c22_1fc4_return_output;

     -- Submodule level 7
     VAR_BIN_OP_OR_bit_math_h_l481_c22_35c4_left := VAR_BIN_OP_OR_bit_math_h_l474_c22_1fc4_return_output;
     -- BIN_OP_OR[bit_math_h_l481_c22_35c4] LATENCY=1
     -- Inputs
     BIN_OP_OR_bit_math_h_l481_c22_35c4_left <= VAR_BIN_OP_OR_bit_math_h_l481_c22_35c4_left;
     BIN_OP_OR_bit_math_h_l481_c22_35c4_right <= VAR_BIN_OP_OR_bit_math_h_l481_c22_35c4_right;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_OR_bit_math_h_l481_c22_35c4_return_output := BIN_OP_OR_bit_math_h_l481_c22_35c4_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_BIN_OP_OR_bit_math_h_l481_c22_35c4_return_output;
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
 end if;
end process;

end arch;
