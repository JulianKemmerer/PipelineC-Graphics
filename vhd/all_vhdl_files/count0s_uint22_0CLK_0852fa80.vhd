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
-- Submodules: 86
entity count0s_uint22_0CLK_0852fa80 is
port(
 x : in unsigned(21 downto 0);
 return_output : out unsigned(4 downto 0));
end count0s_uint22_0CLK_0852fa80;
architecture arch of count0s_uint22_0CLK_0852fa80 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_EQ[bit_math_h_l50_c24_3dc8]
signal BIN_OP_EQ_bit_math_h_l50_c24_3dc8_left : unsigned(21 downto 0);
signal BIN_OP_EQ_bit_math_h_l50_c24_3dc8_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l50_c24_3dc8_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l53_c14_5eaa]
signal BIN_OP_EQ_bit_math_h_l53_c14_5eaa_left : unsigned(1 downto 0);
signal BIN_OP_EQ_bit_math_h_l53_c14_5eaa_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l53_c14_5eaa_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l60_c14_1458]
signal BIN_OP_EQ_bit_math_h_l60_c14_1458_left : unsigned(2 downto 0);
signal BIN_OP_EQ_bit_math_h_l60_c14_1458_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l60_c14_1458_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l67_c14_0bd8]
signal BIN_OP_EQ_bit_math_h_l67_c14_0bd8_left : unsigned(3 downto 0);
signal BIN_OP_EQ_bit_math_h_l67_c14_0bd8_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l67_c14_0bd8_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l74_c14_bc8a]
signal BIN_OP_EQ_bit_math_h_l74_c14_bc8a_left : unsigned(4 downto 0);
signal BIN_OP_EQ_bit_math_h_l74_c14_bc8a_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l74_c14_bc8a_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l81_c14_910c]
signal BIN_OP_EQ_bit_math_h_l81_c14_910c_left : unsigned(5 downto 0);
signal BIN_OP_EQ_bit_math_h_l81_c14_910c_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l81_c14_910c_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l88_c14_e049]
signal BIN_OP_EQ_bit_math_h_l88_c14_e049_left : unsigned(6 downto 0);
signal BIN_OP_EQ_bit_math_h_l88_c14_e049_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l88_c14_e049_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l95_c14_82e8]
signal BIN_OP_EQ_bit_math_h_l95_c14_82e8_left : unsigned(7 downto 0);
signal BIN_OP_EQ_bit_math_h_l95_c14_82e8_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l95_c14_82e8_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l102_c14_ebec]
signal BIN_OP_EQ_bit_math_h_l102_c14_ebec_left : unsigned(8 downto 0);
signal BIN_OP_EQ_bit_math_h_l102_c14_ebec_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l102_c14_ebec_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l109_c14_6f95]
signal BIN_OP_EQ_bit_math_h_l109_c14_6f95_left : unsigned(9 downto 0);
signal BIN_OP_EQ_bit_math_h_l109_c14_6f95_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l109_c14_6f95_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l116_c15_cbf9]
signal BIN_OP_EQ_bit_math_h_l116_c15_cbf9_left : unsigned(10 downto 0);
signal BIN_OP_EQ_bit_math_h_l116_c15_cbf9_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l116_c15_cbf9_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l123_c15_5af1]
signal BIN_OP_EQ_bit_math_h_l123_c15_5af1_left : unsigned(11 downto 0);
signal BIN_OP_EQ_bit_math_h_l123_c15_5af1_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l123_c15_5af1_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l130_c15_121c]
signal BIN_OP_EQ_bit_math_h_l130_c15_121c_left : unsigned(12 downto 0);
signal BIN_OP_EQ_bit_math_h_l130_c15_121c_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l130_c15_121c_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l137_c15_ab21]
signal BIN_OP_EQ_bit_math_h_l137_c15_ab21_left : unsigned(13 downto 0);
signal BIN_OP_EQ_bit_math_h_l137_c15_ab21_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l137_c15_ab21_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l144_c15_c1ed]
signal BIN_OP_EQ_bit_math_h_l144_c15_c1ed_left : unsigned(14 downto 0);
signal BIN_OP_EQ_bit_math_h_l144_c15_c1ed_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l144_c15_c1ed_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l151_c15_907d]
signal BIN_OP_EQ_bit_math_h_l151_c15_907d_left : unsigned(15 downto 0);
signal BIN_OP_EQ_bit_math_h_l151_c15_907d_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l151_c15_907d_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l158_c15_db96]
signal BIN_OP_EQ_bit_math_h_l158_c15_db96_left : unsigned(16 downto 0);
signal BIN_OP_EQ_bit_math_h_l158_c15_db96_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l158_c15_db96_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l165_c15_80b7]
signal BIN_OP_EQ_bit_math_h_l165_c15_80b7_left : unsigned(17 downto 0);
signal BIN_OP_EQ_bit_math_h_l165_c15_80b7_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l165_c15_80b7_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l172_c15_8720]
signal BIN_OP_EQ_bit_math_h_l172_c15_8720_left : unsigned(18 downto 0);
signal BIN_OP_EQ_bit_math_h_l172_c15_8720_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l172_c15_8720_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l179_c15_f873]
signal BIN_OP_EQ_bit_math_h_l179_c15_f873_left : unsigned(19 downto 0);
signal BIN_OP_EQ_bit_math_h_l179_c15_f873_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l179_c15_f873_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l186_c15_1f53]
signal BIN_OP_EQ_bit_math_h_l186_c15_1f53_left : unsigned(20 downto 0);
signal BIN_OP_EQ_bit_math_h_l186_c15_1f53_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l186_c15_1f53_return_output : unsigned(0 downto 0);

-- BIN_OP_EQ[bit_math_h_l193_c15_7706]
signal BIN_OP_EQ_bit_math_h_l193_c15_7706_left : unsigned(21 downto 0);
signal BIN_OP_EQ_bit_math_h_l193_c15_7706_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l193_c15_7706_return_output : unsigned(0 downto 0);

-- sum1_MUX[bit_math_h_l200_c3_1722]
signal sum1_MUX_bit_math_h_l200_c3_1722_cond : unsigned(0 downto 0);
signal sum1_MUX_bit_math_h_l200_c3_1722_iftrue : unsigned(0 downto 0);
signal sum1_MUX_bit_math_h_l200_c3_1722_iffalse : unsigned(0 downto 0);
signal sum1_MUX_bit_math_h_l200_c3_1722_return_output : unsigned(0 downto 0);

-- sum2_MUX[bit_math_h_l210_c3_82a8]
signal sum2_MUX_bit_math_h_l210_c3_82a8_cond : unsigned(0 downto 0);
signal sum2_MUX_bit_math_h_l210_c3_82a8_iftrue : unsigned(1 downto 0);
signal sum2_MUX_bit_math_h_l210_c3_82a8_iffalse : unsigned(1 downto 0);
signal sum2_MUX_bit_math_h_l210_c3_82a8_return_output : unsigned(1 downto 0);

-- sum3_MUX[bit_math_h_l220_c3_482b]
signal sum3_MUX_bit_math_h_l220_c3_482b_cond : unsigned(0 downto 0);
signal sum3_MUX_bit_math_h_l220_c3_482b_iftrue : unsigned(1 downto 0);
signal sum3_MUX_bit_math_h_l220_c3_482b_iffalse : unsigned(1 downto 0);
signal sum3_MUX_bit_math_h_l220_c3_482b_return_output : unsigned(1 downto 0);

-- sum4_MUX[bit_math_h_l230_c3_0cda]
signal sum4_MUX_bit_math_h_l230_c3_0cda_cond : unsigned(0 downto 0);
signal sum4_MUX_bit_math_h_l230_c3_0cda_iftrue : unsigned(2 downto 0);
signal sum4_MUX_bit_math_h_l230_c3_0cda_iffalse : unsigned(2 downto 0);
signal sum4_MUX_bit_math_h_l230_c3_0cda_return_output : unsigned(2 downto 0);

-- sum5_MUX[bit_math_h_l240_c3_bf3c]
signal sum5_MUX_bit_math_h_l240_c3_bf3c_cond : unsigned(0 downto 0);
signal sum5_MUX_bit_math_h_l240_c3_bf3c_iftrue : unsigned(2 downto 0);
signal sum5_MUX_bit_math_h_l240_c3_bf3c_iffalse : unsigned(2 downto 0);
signal sum5_MUX_bit_math_h_l240_c3_bf3c_return_output : unsigned(2 downto 0);

-- sum6_MUX[bit_math_h_l250_c3_6372]
signal sum6_MUX_bit_math_h_l250_c3_6372_cond : unsigned(0 downto 0);
signal sum6_MUX_bit_math_h_l250_c3_6372_iftrue : unsigned(2 downto 0);
signal sum6_MUX_bit_math_h_l250_c3_6372_iffalse : unsigned(2 downto 0);
signal sum6_MUX_bit_math_h_l250_c3_6372_return_output : unsigned(2 downto 0);

-- sum7_MUX[bit_math_h_l260_c3_4539]
signal sum7_MUX_bit_math_h_l260_c3_4539_cond : unsigned(0 downto 0);
signal sum7_MUX_bit_math_h_l260_c3_4539_iftrue : unsigned(2 downto 0);
signal sum7_MUX_bit_math_h_l260_c3_4539_iffalse : unsigned(2 downto 0);
signal sum7_MUX_bit_math_h_l260_c3_4539_return_output : unsigned(2 downto 0);

-- sum8_MUX[bit_math_h_l270_c3_91db]
signal sum8_MUX_bit_math_h_l270_c3_91db_cond : unsigned(0 downto 0);
signal sum8_MUX_bit_math_h_l270_c3_91db_iftrue : unsigned(3 downto 0);
signal sum8_MUX_bit_math_h_l270_c3_91db_iffalse : unsigned(3 downto 0);
signal sum8_MUX_bit_math_h_l270_c3_91db_return_output : unsigned(3 downto 0);

-- sum9_MUX[bit_math_h_l280_c3_4b7e]
signal sum9_MUX_bit_math_h_l280_c3_4b7e_cond : unsigned(0 downto 0);
signal sum9_MUX_bit_math_h_l280_c3_4b7e_iftrue : unsigned(3 downto 0);
signal sum9_MUX_bit_math_h_l280_c3_4b7e_iffalse : unsigned(3 downto 0);
signal sum9_MUX_bit_math_h_l280_c3_4b7e_return_output : unsigned(3 downto 0);

-- sum10_MUX[bit_math_h_l290_c3_3822]
signal sum10_MUX_bit_math_h_l290_c3_3822_cond : unsigned(0 downto 0);
signal sum10_MUX_bit_math_h_l290_c3_3822_iftrue : unsigned(3 downto 0);
signal sum10_MUX_bit_math_h_l290_c3_3822_iffalse : unsigned(3 downto 0);
signal sum10_MUX_bit_math_h_l290_c3_3822_return_output : unsigned(3 downto 0);

-- sum11_MUX[bit_math_h_l300_c3_2876]
signal sum11_MUX_bit_math_h_l300_c3_2876_cond : unsigned(0 downto 0);
signal sum11_MUX_bit_math_h_l300_c3_2876_iftrue : unsigned(3 downto 0);
signal sum11_MUX_bit_math_h_l300_c3_2876_iffalse : unsigned(3 downto 0);
signal sum11_MUX_bit_math_h_l300_c3_2876_return_output : unsigned(3 downto 0);

-- sum12_MUX[bit_math_h_l310_c3_d2ec]
signal sum12_MUX_bit_math_h_l310_c3_d2ec_cond : unsigned(0 downto 0);
signal sum12_MUX_bit_math_h_l310_c3_d2ec_iftrue : unsigned(3 downto 0);
signal sum12_MUX_bit_math_h_l310_c3_d2ec_iffalse : unsigned(3 downto 0);
signal sum12_MUX_bit_math_h_l310_c3_d2ec_return_output : unsigned(3 downto 0);

-- sum13_MUX[bit_math_h_l320_c3_5acf]
signal sum13_MUX_bit_math_h_l320_c3_5acf_cond : unsigned(0 downto 0);
signal sum13_MUX_bit_math_h_l320_c3_5acf_iftrue : unsigned(3 downto 0);
signal sum13_MUX_bit_math_h_l320_c3_5acf_iffalse : unsigned(3 downto 0);
signal sum13_MUX_bit_math_h_l320_c3_5acf_return_output : unsigned(3 downto 0);

-- sum14_MUX[bit_math_h_l330_c3_32a3]
signal sum14_MUX_bit_math_h_l330_c3_32a3_cond : unsigned(0 downto 0);
signal sum14_MUX_bit_math_h_l330_c3_32a3_iftrue : unsigned(3 downto 0);
signal sum14_MUX_bit_math_h_l330_c3_32a3_iffalse : unsigned(3 downto 0);
signal sum14_MUX_bit_math_h_l330_c3_32a3_return_output : unsigned(3 downto 0);

-- sum15_MUX[bit_math_h_l340_c3_ae56]
signal sum15_MUX_bit_math_h_l340_c3_ae56_cond : unsigned(0 downto 0);
signal sum15_MUX_bit_math_h_l340_c3_ae56_iftrue : unsigned(3 downto 0);
signal sum15_MUX_bit_math_h_l340_c3_ae56_iffalse : unsigned(3 downto 0);
signal sum15_MUX_bit_math_h_l340_c3_ae56_return_output : unsigned(3 downto 0);

-- sum16_MUX[bit_math_h_l350_c3_9b55]
signal sum16_MUX_bit_math_h_l350_c3_9b55_cond : unsigned(0 downto 0);
signal sum16_MUX_bit_math_h_l350_c3_9b55_iftrue : unsigned(4 downto 0);
signal sum16_MUX_bit_math_h_l350_c3_9b55_iffalse : unsigned(4 downto 0);
signal sum16_MUX_bit_math_h_l350_c3_9b55_return_output : unsigned(4 downto 0);

-- sum17_MUX[bit_math_h_l360_c3_4441]
signal sum17_MUX_bit_math_h_l360_c3_4441_cond : unsigned(0 downto 0);
signal sum17_MUX_bit_math_h_l360_c3_4441_iftrue : unsigned(4 downto 0);
signal sum17_MUX_bit_math_h_l360_c3_4441_iffalse : unsigned(4 downto 0);
signal sum17_MUX_bit_math_h_l360_c3_4441_return_output : unsigned(4 downto 0);

-- sum18_MUX[bit_math_h_l370_c3_32ed]
signal sum18_MUX_bit_math_h_l370_c3_32ed_cond : unsigned(0 downto 0);
signal sum18_MUX_bit_math_h_l370_c3_32ed_iftrue : unsigned(4 downto 0);
signal sum18_MUX_bit_math_h_l370_c3_32ed_iffalse : unsigned(4 downto 0);
signal sum18_MUX_bit_math_h_l370_c3_32ed_return_output : unsigned(4 downto 0);

-- sum19_MUX[bit_math_h_l380_c3_cd62]
signal sum19_MUX_bit_math_h_l380_c3_cd62_cond : unsigned(0 downto 0);
signal sum19_MUX_bit_math_h_l380_c3_cd62_iftrue : unsigned(4 downto 0);
signal sum19_MUX_bit_math_h_l380_c3_cd62_iffalse : unsigned(4 downto 0);
signal sum19_MUX_bit_math_h_l380_c3_cd62_return_output : unsigned(4 downto 0);

-- sum20_MUX[bit_math_h_l390_c3_c41c]
signal sum20_MUX_bit_math_h_l390_c3_c41c_cond : unsigned(0 downto 0);
signal sum20_MUX_bit_math_h_l390_c3_c41c_iftrue : unsigned(4 downto 0);
signal sum20_MUX_bit_math_h_l390_c3_c41c_iffalse : unsigned(4 downto 0);
signal sum20_MUX_bit_math_h_l390_c3_c41c_return_output : unsigned(4 downto 0);

-- sum21_MUX[bit_math_h_l400_c3_b500]
signal sum21_MUX_bit_math_h_l400_c3_b500_cond : unsigned(0 downto 0);
signal sum21_MUX_bit_math_h_l400_c3_b500_iftrue : unsigned(4 downto 0);
signal sum21_MUX_bit_math_h_l400_c3_b500_iffalse : unsigned(4 downto 0);
signal sum21_MUX_bit_math_h_l400_c3_b500_return_output : unsigned(4 downto 0);

-- sum22_MUX[bit_math_h_l410_c3_5b97]
signal sum22_MUX_bit_math_h_l410_c3_5b97_cond : unsigned(0 downto 0);
signal sum22_MUX_bit_math_h_l410_c3_5b97_iftrue : unsigned(4 downto 0);
signal sum22_MUX_bit_math_h_l410_c3_5b97_iffalse : unsigned(4 downto 0);
signal sum22_MUX_bit_math_h_l410_c3_5b97_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l423_c22_ad78]
signal BIN_OP_OR_bit_math_h_l423_c22_ad78_left : unsigned(0 downto 0);
signal BIN_OP_OR_bit_math_h_l423_c22_ad78_right : unsigned(1 downto 0);
signal BIN_OP_OR_bit_math_h_l423_c22_ad78_return_output : unsigned(1 downto 0);

-- BIN_OP_OR[bit_math_h_l425_c22_0b14]
signal BIN_OP_OR_bit_math_h_l425_c22_0b14_left : unsigned(1 downto 0);
signal BIN_OP_OR_bit_math_h_l425_c22_0b14_right : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l425_c22_0b14_return_output : unsigned(2 downto 0);

-- BIN_OP_OR[bit_math_h_l427_c22_5949]
signal BIN_OP_OR_bit_math_h_l427_c22_5949_left : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l427_c22_5949_right : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l427_c22_5949_return_output : unsigned(2 downto 0);

-- BIN_OP_OR[bit_math_h_l429_c22_c342]
signal BIN_OP_OR_bit_math_h_l429_c22_c342_left : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l429_c22_c342_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l429_c22_c342_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l431_c22_6bdd]
signal BIN_OP_OR_bit_math_h_l431_c22_6bdd_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l431_c22_6bdd_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l431_c22_6bdd_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l433_c22_d4f8]
signal BIN_OP_OR_bit_math_h_l433_c22_d4f8_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l433_c22_d4f8_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l433_c22_d4f8_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l435_c22_6082]
signal BIN_OP_OR_bit_math_h_l435_c22_6082_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l435_c22_6082_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l435_c22_6082_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l437_c22_c2f3]
signal BIN_OP_OR_bit_math_h_l437_c22_c2f3_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l437_c22_c2f3_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l437_c22_c2f3_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l439_c22_413b]
signal BIN_OP_OR_bit_math_h_l439_c22_413b_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l439_c22_413b_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l439_c22_413b_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l441_c22_f969]
signal BIN_OP_OR_bit_math_h_l441_c22_f969_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l441_c22_f969_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l441_c22_f969_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l443_c23_ed7d]
signal BIN_OP_OR_bit_math_h_l443_c23_ed7d_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l443_c23_ed7d_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l443_c23_ed7d_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l447_c22_6443]
signal BIN_OP_OR_bit_math_h_l447_c22_6443_left : unsigned(1 downto 0);
signal BIN_OP_OR_bit_math_h_l447_c22_6443_right : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l447_c22_6443_return_output : unsigned(2 downto 0);

-- BIN_OP_OR[bit_math_h_l449_c22_7b22]
signal BIN_OP_OR_bit_math_h_l449_c22_7b22_left : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l449_c22_7b22_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l449_c22_7b22_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l451_c22_b9cf]
signal BIN_OP_OR_bit_math_h_l451_c22_b9cf_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l451_c22_b9cf_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l451_c22_b9cf_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l453_c22_e0f8]
signal BIN_OP_OR_bit_math_h_l453_c22_e0f8_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l453_c22_e0f8_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l453_c22_e0f8_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l455_c22_f9be]
signal BIN_OP_OR_bit_math_h_l455_c22_f9be_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l455_c22_f9be_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l455_c22_f9be_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l462_c22_7d70]
signal BIN_OP_OR_bit_math_h_l462_c22_7d70_left : unsigned(2 downto 0);
signal BIN_OP_OR_bit_math_h_l462_c22_7d70_right : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l462_c22_7d70_return_output : unsigned(3 downto 0);

-- BIN_OP_OR[bit_math_h_l464_c22_da8d]
signal BIN_OP_OR_bit_math_h_l464_c22_da8d_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l464_c22_da8d_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l464_c22_da8d_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l466_c22_9917]
signal BIN_OP_OR_bit_math_h_l466_c22_9917_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l466_c22_9917_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l466_c22_9917_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l470_c22_e132]
signal BIN_OP_OR_bit_math_h_l470_c22_e132_left : unsigned(3 downto 0);
signal BIN_OP_OR_bit_math_h_l470_c22_e132_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l470_c22_e132_return_output : unsigned(4 downto 0);

-- BIN_OP_OR[bit_math_h_l477_c22_e8e6]
signal BIN_OP_OR_bit_math_h_l477_c22_e8e6_left : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l477_c22_e8e6_right : unsigned(4 downto 0);
signal BIN_OP_OR_bit_math_h_l477_c22_e8e6_return_output : unsigned(4 downto 0);

function uint22_21_20( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(1 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 20)));
return return_output;
end function;

function uint22_21_19( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(2 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 19)));
return return_output;
end function;

function uint22_21_18( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(3 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 18)));
return return_output;
end function;

function uint22_21_17( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(4 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 17)));
return return_output;
end function;

function uint22_21_16( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(5 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 16)));
return return_output;
end function;

function uint22_21_15( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(6 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 15)));
return return_output;
end function;

function uint22_21_14( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(7 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 14)));
return return_output;
end function;

function uint22_21_13( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(8 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 13)));
return return_output;
end function;

function uint22_21_12( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(9 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 12)));
return return_output;
end function;

function uint22_21_11( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(10 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 11)));
return return_output;
end function;

function uint22_21_10( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(11 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 10)));
return return_output;
end function;

function uint22_21_9( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(12 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 9)));
return return_output;
end function;

function uint22_21_8( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(13 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 8)));
return return_output;
end function;

function uint22_21_7( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(14 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 7)));
return return_output;
end function;

function uint22_21_6( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(15 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 6)));
return return_output;
end function;

function uint22_21_5( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(16 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 5)));
return return_output;
end function;

function uint22_21_4( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(17 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 4)));
return return_output;
end function;

function uint22_21_3( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(18 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 3)));
return return_output;
end function;

function uint22_21_2( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(19 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 2)));
return return_output;
end function;

function uint22_21_1( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(20 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 1)));
return return_output;
end function;

function uint22_21_0( x : unsigned) return unsigned is
--variable x : unsigned(21 downto 0);
  variable return_output : unsigned(21 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 0)));
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_bit_math_h_l50_c24_3dc8
BIN_OP_EQ_bit_math_h_l50_c24_3dc8 : entity work.BIN_OP_EQ_uint22_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l50_c24_3dc8_left,
BIN_OP_EQ_bit_math_h_l50_c24_3dc8_right,
BIN_OP_EQ_bit_math_h_l50_c24_3dc8_return_output);

-- BIN_OP_EQ_bit_math_h_l53_c14_5eaa
BIN_OP_EQ_bit_math_h_l53_c14_5eaa : entity work.BIN_OP_EQ_uint2_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l53_c14_5eaa_left,
BIN_OP_EQ_bit_math_h_l53_c14_5eaa_right,
BIN_OP_EQ_bit_math_h_l53_c14_5eaa_return_output);

-- BIN_OP_EQ_bit_math_h_l60_c14_1458
BIN_OP_EQ_bit_math_h_l60_c14_1458 : entity work.BIN_OP_EQ_uint3_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l60_c14_1458_left,
BIN_OP_EQ_bit_math_h_l60_c14_1458_right,
BIN_OP_EQ_bit_math_h_l60_c14_1458_return_output);

-- BIN_OP_EQ_bit_math_h_l67_c14_0bd8
BIN_OP_EQ_bit_math_h_l67_c14_0bd8 : entity work.BIN_OP_EQ_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l67_c14_0bd8_left,
BIN_OP_EQ_bit_math_h_l67_c14_0bd8_right,
BIN_OP_EQ_bit_math_h_l67_c14_0bd8_return_output);

-- BIN_OP_EQ_bit_math_h_l74_c14_bc8a
BIN_OP_EQ_bit_math_h_l74_c14_bc8a : entity work.BIN_OP_EQ_uint5_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l74_c14_bc8a_left,
BIN_OP_EQ_bit_math_h_l74_c14_bc8a_right,
BIN_OP_EQ_bit_math_h_l74_c14_bc8a_return_output);

-- BIN_OP_EQ_bit_math_h_l81_c14_910c
BIN_OP_EQ_bit_math_h_l81_c14_910c : entity work.BIN_OP_EQ_uint6_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l81_c14_910c_left,
BIN_OP_EQ_bit_math_h_l81_c14_910c_right,
BIN_OP_EQ_bit_math_h_l81_c14_910c_return_output);

-- BIN_OP_EQ_bit_math_h_l88_c14_e049
BIN_OP_EQ_bit_math_h_l88_c14_e049 : entity work.BIN_OP_EQ_uint7_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l88_c14_e049_left,
BIN_OP_EQ_bit_math_h_l88_c14_e049_right,
BIN_OP_EQ_bit_math_h_l88_c14_e049_return_output);

-- BIN_OP_EQ_bit_math_h_l95_c14_82e8
BIN_OP_EQ_bit_math_h_l95_c14_82e8 : entity work.BIN_OP_EQ_uint8_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l95_c14_82e8_left,
BIN_OP_EQ_bit_math_h_l95_c14_82e8_right,
BIN_OP_EQ_bit_math_h_l95_c14_82e8_return_output);

-- BIN_OP_EQ_bit_math_h_l102_c14_ebec
BIN_OP_EQ_bit_math_h_l102_c14_ebec : entity work.BIN_OP_EQ_uint9_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l102_c14_ebec_left,
BIN_OP_EQ_bit_math_h_l102_c14_ebec_right,
BIN_OP_EQ_bit_math_h_l102_c14_ebec_return_output);

-- BIN_OP_EQ_bit_math_h_l109_c14_6f95
BIN_OP_EQ_bit_math_h_l109_c14_6f95 : entity work.BIN_OP_EQ_uint10_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l109_c14_6f95_left,
BIN_OP_EQ_bit_math_h_l109_c14_6f95_right,
BIN_OP_EQ_bit_math_h_l109_c14_6f95_return_output);

-- BIN_OP_EQ_bit_math_h_l116_c15_cbf9
BIN_OP_EQ_bit_math_h_l116_c15_cbf9 : entity work.BIN_OP_EQ_uint11_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l116_c15_cbf9_left,
BIN_OP_EQ_bit_math_h_l116_c15_cbf9_right,
BIN_OP_EQ_bit_math_h_l116_c15_cbf9_return_output);

-- BIN_OP_EQ_bit_math_h_l123_c15_5af1
BIN_OP_EQ_bit_math_h_l123_c15_5af1 : entity work.BIN_OP_EQ_uint12_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l123_c15_5af1_left,
BIN_OP_EQ_bit_math_h_l123_c15_5af1_right,
BIN_OP_EQ_bit_math_h_l123_c15_5af1_return_output);

-- BIN_OP_EQ_bit_math_h_l130_c15_121c
BIN_OP_EQ_bit_math_h_l130_c15_121c : entity work.BIN_OP_EQ_uint13_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l130_c15_121c_left,
BIN_OP_EQ_bit_math_h_l130_c15_121c_right,
BIN_OP_EQ_bit_math_h_l130_c15_121c_return_output);

-- BIN_OP_EQ_bit_math_h_l137_c15_ab21
BIN_OP_EQ_bit_math_h_l137_c15_ab21 : entity work.BIN_OP_EQ_uint14_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l137_c15_ab21_left,
BIN_OP_EQ_bit_math_h_l137_c15_ab21_right,
BIN_OP_EQ_bit_math_h_l137_c15_ab21_return_output);

-- BIN_OP_EQ_bit_math_h_l144_c15_c1ed
BIN_OP_EQ_bit_math_h_l144_c15_c1ed : entity work.BIN_OP_EQ_uint15_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l144_c15_c1ed_left,
BIN_OP_EQ_bit_math_h_l144_c15_c1ed_right,
BIN_OP_EQ_bit_math_h_l144_c15_c1ed_return_output);

-- BIN_OP_EQ_bit_math_h_l151_c15_907d
BIN_OP_EQ_bit_math_h_l151_c15_907d : entity work.BIN_OP_EQ_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l151_c15_907d_left,
BIN_OP_EQ_bit_math_h_l151_c15_907d_right,
BIN_OP_EQ_bit_math_h_l151_c15_907d_return_output);

-- BIN_OP_EQ_bit_math_h_l158_c15_db96
BIN_OP_EQ_bit_math_h_l158_c15_db96 : entity work.BIN_OP_EQ_uint17_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l158_c15_db96_left,
BIN_OP_EQ_bit_math_h_l158_c15_db96_right,
BIN_OP_EQ_bit_math_h_l158_c15_db96_return_output);

-- BIN_OP_EQ_bit_math_h_l165_c15_80b7
BIN_OP_EQ_bit_math_h_l165_c15_80b7 : entity work.BIN_OP_EQ_uint18_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l165_c15_80b7_left,
BIN_OP_EQ_bit_math_h_l165_c15_80b7_right,
BIN_OP_EQ_bit_math_h_l165_c15_80b7_return_output);

-- BIN_OP_EQ_bit_math_h_l172_c15_8720
BIN_OP_EQ_bit_math_h_l172_c15_8720 : entity work.BIN_OP_EQ_uint19_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l172_c15_8720_left,
BIN_OP_EQ_bit_math_h_l172_c15_8720_right,
BIN_OP_EQ_bit_math_h_l172_c15_8720_return_output);

-- BIN_OP_EQ_bit_math_h_l179_c15_f873
BIN_OP_EQ_bit_math_h_l179_c15_f873 : entity work.BIN_OP_EQ_uint20_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l179_c15_f873_left,
BIN_OP_EQ_bit_math_h_l179_c15_f873_right,
BIN_OP_EQ_bit_math_h_l179_c15_f873_return_output);

-- BIN_OP_EQ_bit_math_h_l186_c15_1f53
BIN_OP_EQ_bit_math_h_l186_c15_1f53 : entity work.BIN_OP_EQ_uint21_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l186_c15_1f53_left,
BIN_OP_EQ_bit_math_h_l186_c15_1f53_right,
BIN_OP_EQ_bit_math_h_l186_c15_1f53_return_output);

-- BIN_OP_EQ_bit_math_h_l193_c15_7706
BIN_OP_EQ_bit_math_h_l193_c15_7706 : entity work.BIN_OP_EQ_uint22_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l193_c15_7706_left,
BIN_OP_EQ_bit_math_h_l193_c15_7706_right,
BIN_OP_EQ_bit_math_h_l193_c15_7706_return_output);

-- sum1_MUX_bit_math_h_l200_c3_1722
sum1_MUX_bit_math_h_l200_c3_1722 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
sum1_MUX_bit_math_h_l200_c3_1722_cond,
sum1_MUX_bit_math_h_l200_c3_1722_iftrue,
sum1_MUX_bit_math_h_l200_c3_1722_iffalse,
sum1_MUX_bit_math_h_l200_c3_1722_return_output);

-- sum2_MUX_bit_math_h_l210_c3_82a8
sum2_MUX_bit_math_h_l210_c3_82a8 : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
sum2_MUX_bit_math_h_l210_c3_82a8_cond,
sum2_MUX_bit_math_h_l210_c3_82a8_iftrue,
sum2_MUX_bit_math_h_l210_c3_82a8_iffalse,
sum2_MUX_bit_math_h_l210_c3_82a8_return_output);

-- sum3_MUX_bit_math_h_l220_c3_482b
sum3_MUX_bit_math_h_l220_c3_482b : entity work.MUX_uint1_t_uint2_t_uint2_t_0CLK_de264c78 port map (
sum3_MUX_bit_math_h_l220_c3_482b_cond,
sum3_MUX_bit_math_h_l220_c3_482b_iftrue,
sum3_MUX_bit_math_h_l220_c3_482b_iffalse,
sum3_MUX_bit_math_h_l220_c3_482b_return_output);

-- sum4_MUX_bit_math_h_l230_c3_0cda
sum4_MUX_bit_math_h_l230_c3_0cda : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
sum4_MUX_bit_math_h_l230_c3_0cda_cond,
sum4_MUX_bit_math_h_l230_c3_0cda_iftrue,
sum4_MUX_bit_math_h_l230_c3_0cda_iffalse,
sum4_MUX_bit_math_h_l230_c3_0cda_return_output);

-- sum5_MUX_bit_math_h_l240_c3_bf3c
sum5_MUX_bit_math_h_l240_c3_bf3c : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
sum5_MUX_bit_math_h_l240_c3_bf3c_cond,
sum5_MUX_bit_math_h_l240_c3_bf3c_iftrue,
sum5_MUX_bit_math_h_l240_c3_bf3c_iffalse,
sum5_MUX_bit_math_h_l240_c3_bf3c_return_output);

-- sum6_MUX_bit_math_h_l250_c3_6372
sum6_MUX_bit_math_h_l250_c3_6372 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
sum6_MUX_bit_math_h_l250_c3_6372_cond,
sum6_MUX_bit_math_h_l250_c3_6372_iftrue,
sum6_MUX_bit_math_h_l250_c3_6372_iffalse,
sum6_MUX_bit_math_h_l250_c3_6372_return_output);

-- sum7_MUX_bit_math_h_l260_c3_4539
sum7_MUX_bit_math_h_l260_c3_4539 : entity work.MUX_uint1_t_uint3_t_uint3_t_0CLK_de264c78 port map (
sum7_MUX_bit_math_h_l260_c3_4539_cond,
sum7_MUX_bit_math_h_l260_c3_4539_iftrue,
sum7_MUX_bit_math_h_l260_c3_4539_iffalse,
sum7_MUX_bit_math_h_l260_c3_4539_return_output);

-- sum8_MUX_bit_math_h_l270_c3_91db
sum8_MUX_bit_math_h_l270_c3_91db : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum8_MUX_bit_math_h_l270_c3_91db_cond,
sum8_MUX_bit_math_h_l270_c3_91db_iftrue,
sum8_MUX_bit_math_h_l270_c3_91db_iffalse,
sum8_MUX_bit_math_h_l270_c3_91db_return_output);

-- sum9_MUX_bit_math_h_l280_c3_4b7e
sum9_MUX_bit_math_h_l280_c3_4b7e : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum9_MUX_bit_math_h_l280_c3_4b7e_cond,
sum9_MUX_bit_math_h_l280_c3_4b7e_iftrue,
sum9_MUX_bit_math_h_l280_c3_4b7e_iffalse,
sum9_MUX_bit_math_h_l280_c3_4b7e_return_output);

-- sum10_MUX_bit_math_h_l290_c3_3822
sum10_MUX_bit_math_h_l290_c3_3822 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum10_MUX_bit_math_h_l290_c3_3822_cond,
sum10_MUX_bit_math_h_l290_c3_3822_iftrue,
sum10_MUX_bit_math_h_l290_c3_3822_iffalse,
sum10_MUX_bit_math_h_l290_c3_3822_return_output);

-- sum11_MUX_bit_math_h_l300_c3_2876
sum11_MUX_bit_math_h_l300_c3_2876 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum11_MUX_bit_math_h_l300_c3_2876_cond,
sum11_MUX_bit_math_h_l300_c3_2876_iftrue,
sum11_MUX_bit_math_h_l300_c3_2876_iffalse,
sum11_MUX_bit_math_h_l300_c3_2876_return_output);

-- sum12_MUX_bit_math_h_l310_c3_d2ec
sum12_MUX_bit_math_h_l310_c3_d2ec : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum12_MUX_bit_math_h_l310_c3_d2ec_cond,
sum12_MUX_bit_math_h_l310_c3_d2ec_iftrue,
sum12_MUX_bit_math_h_l310_c3_d2ec_iffalse,
sum12_MUX_bit_math_h_l310_c3_d2ec_return_output);

-- sum13_MUX_bit_math_h_l320_c3_5acf
sum13_MUX_bit_math_h_l320_c3_5acf : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum13_MUX_bit_math_h_l320_c3_5acf_cond,
sum13_MUX_bit_math_h_l320_c3_5acf_iftrue,
sum13_MUX_bit_math_h_l320_c3_5acf_iffalse,
sum13_MUX_bit_math_h_l320_c3_5acf_return_output);

-- sum14_MUX_bit_math_h_l330_c3_32a3
sum14_MUX_bit_math_h_l330_c3_32a3 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum14_MUX_bit_math_h_l330_c3_32a3_cond,
sum14_MUX_bit_math_h_l330_c3_32a3_iftrue,
sum14_MUX_bit_math_h_l330_c3_32a3_iffalse,
sum14_MUX_bit_math_h_l330_c3_32a3_return_output);

-- sum15_MUX_bit_math_h_l340_c3_ae56
sum15_MUX_bit_math_h_l340_c3_ae56 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
sum15_MUX_bit_math_h_l340_c3_ae56_cond,
sum15_MUX_bit_math_h_l340_c3_ae56_iftrue,
sum15_MUX_bit_math_h_l340_c3_ae56_iffalse,
sum15_MUX_bit_math_h_l340_c3_ae56_return_output);

-- sum16_MUX_bit_math_h_l350_c3_9b55
sum16_MUX_bit_math_h_l350_c3_9b55 : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum16_MUX_bit_math_h_l350_c3_9b55_cond,
sum16_MUX_bit_math_h_l350_c3_9b55_iftrue,
sum16_MUX_bit_math_h_l350_c3_9b55_iffalse,
sum16_MUX_bit_math_h_l350_c3_9b55_return_output);

-- sum17_MUX_bit_math_h_l360_c3_4441
sum17_MUX_bit_math_h_l360_c3_4441 : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum17_MUX_bit_math_h_l360_c3_4441_cond,
sum17_MUX_bit_math_h_l360_c3_4441_iftrue,
sum17_MUX_bit_math_h_l360_c3_4441_iffalse,
sum17_MUX_bit_math_h_l360_c3_4441_return_output);

-- sum18_MUX_bit_math_h_l370_c3_32ed
sum18_MUX_bit_math_h_l370_c3_32ed : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum18_MUX_bit_math_h_l370_c3_32ed_cond,
sum18_MUX_bit_math_h_l370_c3_32ed_iftrue,
sum18_MUX_bit_math_h_l370_c3_32ed_iffalse,
sum18_MUX_bit_math_h_l370_c3_32ed_return_output);

-- sum19_MUX_bit_math_h_l380_c3_cd62
sum19_MUX_bit_math_h_l380_c3_cd62 : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum19_MUX_bit_math_h_l380_c3_cd62_cond,
sum19_MUX_bit_math_h_l380_c3_cd62_iftrue,
sum19_MUX_bit_math_h_l380_c3_cd62_iffalse,
sum19_MUX_bit_math_h_l380_c3_cd62_return_output);

-- sum20_MUX_bit_math_h_l390_c3_c41c
sum20_MUX_bit_math_h_l390_c3_c41c : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum20_MUX_bit_math_h_l390_c3_c41c_cond,
sum20_MUX_bit_math_h_l390_c3_c41c_iftrue,
sum20_MUX_bit_math_h_l390_c3_c41c_iffalse,
sum20_MUX_bit_math_h_l390_c3_c41c_return_output);

-- sum21_MUX_bit_math_h_l400_c3_b500
sum21_MUX_bit_math_h_l400_c3_b500 : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum21_MUX_bit_math_h_l400_c3_b500_cond,
sum21_MUX_bit_math_h_l400_c3_b500_iftrue,
sum21_MUX_bit_math_h_l400_c3_b500_iffalse,
sum21_MUX_bit_math_h_l400_c3_b500_return_output);

-- sum22_MUX_bit_math_h_l410_c3_5b97
sum22_MUX_bit_math_h_l410_c3_5b97 : entity work.MUX_uint1_t_uint5_t_uint5_t_0CLK_de264c78 port map (
sum22_MUX_bit_math_h_l410_c3_5b97_cond,
sum22_MUX_bit_math_h_l410_c3_5b97_iftrue,
sum22_MUX_bit_math_h_l410_c3_5b97_iffalse,
sum22_MUX_bit_math_h_l410_c3_5b97_return_output);

-- BIN_OP_OR_bit_math_h_l423_c22_ad78
BIN_OP_OR_bit_math_h_l423_c22_ad78 : entity work.BIN_OP_OR_uint1_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l423_c22_ad78_left,
BIN_OP_OR_bit_math_h_l423_c22_ad78_right,
BIN_OP_OR_bit_math_h_l423_c22_ad78_return_output);

-- BIN_OP_OR_bit_math_h_l425_c22_0b14
BIN_OP_OR_bit_math_h_l425_c22_0b14 : entity work.BIN_OP_OR_uint2_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l425_c22_0b14_left,
BIN_OP_OR_bit_math_h_l425_c22_0b14_right,
BIN_OP_OR_bit_math_h_l425_c22_0b14_return_output);

-- BIN_OP_OR_bit_math_h_l427_c22_5949
BIN_OP_OR_bit_math_h_l427_c22_5949 : entity work.BIN_OP_OR_uint3_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l427_c22_5949_left,
BIN_OP_OR_bit_math_h_l427_c22_5949_right,
BIN_OP_OR_bit_math_h_l427_c22_5949_return_output);

-- BIN_OP_OR_bit_math_h_l429_c22_c342
BIN_OP_OR_bit_math_h_l429_c22_c342 : entity work.BIN_OP_OR_uint3_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l429_c22_c342_left,
BIN_OP_OR_bit_math_h_l429_c22_c342_right,
BIN_OP_OR_bit_math_h_l429_c22_c342_return_output);

-- BIN_OP_OR_bit_math_h_l431_c22_6bdd
BIN_OP_OR_bit_math_h_l431_c22_6bdd : entity work.BIN_OP_OR_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l431_c22_6bdd_left,
BIN_OP_OR_bit_math_h_l431_c22_6bdd_right,
BIN_OP_OR_bit_math_h_l431_c22_6bdd_return_output);

-- BIN_OP_OR_bit_math_h_l433_c22_d4f8
BIN_OP_OR_bit_math_h_l433_c22_d4f8 : entity work.BIN_OP_OR_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l433_c22_d4f8_left,
BIN_OP_OR_bit_math_h_l433_c22_d4f8_right,
BIN_OP_OR_bit_math_h_l433_c22_d4f8_return_output);

-- BIN_OP_OR_bit_math_h_l435_c22_6082
BIN_OP_OR_bit_math_h_l435_c22_6082 : entity work.BIN_OP_OR_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l435_c22_6082_left,
BIN_OP_OR_bit_math_h_l435_c22_6082_right,
BIN_OP_OR_bit_math_h_l435_c22_6082_return_output);

-- BIN_OP_OR_bit_math_h_l437_c22_c2f3
BIN_OP_OR_bit_math_h_l437_c22_c2f3 : entity work.BIN_OP_OR_uint4_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l437_c22_c2f3_left,
BIN_OP_OR_bit_math_h_l437_c22_c2f3_right,
BIN_OP_OR_bit_math_h_l437_c22_c2f3_return_output);

-- BIN_OP_OR_bit_math_h_l439_c22_413b
BIN_OP_OR_bit_math_h_l439_c22_413b : entity work.BIN_OP_OR_uint5_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l439_c22_413b_left,
BIN_OP_OR_bit_math_h_l439_c22_413b_right,
BIN_OP_OR_bit_math_h_l439_c22_413b_return_output);

-- BIN_OP_OR_bit_math_h_l441_c22_f969
BIN_OP_OR_bit_math_h_l441_c22_f969 : entity work.BIN_OP_OR_uint5_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l441_c22_f969_left,
BIN_OP_OR_bit_math_h_l441_c22_f969_right,
BIN_OP_OR_bit_math_h_l441_c22_f969_return_output);

-- BIN_OP_OR_bit_math_h_l443_c23_ed7d
BIN_OP_OR_bit_math_h_l443_c23_ed7d : entity work.BIN_OP_OR_uint5_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l443_c23_ed7d_left,
BIN_OP_OR_bit_math_h_l443_c23_ed7d_right,
BIN_OP_OR_bit_math_h_l443_c23_ed7d_return_output);

-- BIN_OP_OR_bit_math_h_l447_c22_6443
BIN_OP_OR_bit_math_h_l447_c22_6443 : entity work.BIN_OP_OR_uint2_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l447_c22_6443_left,
BIN_OP_OR_bit_math_h_l447_c22_6443_right,
BIN_OP_OR_bit_math_h_l447_c22_6443_return_output);

-- BIN_OP_OR_bit_math_h_l449_c22_7b22
BIN_OP_OR_bit_math_h_l449_c22_7b22 : entity work.BIN_OP_OR_uint3_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l449_c22_7b22_left,
BIN_OP_OR_bit_math_h_l449_c22_7b22_right,
BIN_OP_OR_bit_math_h_l449_c22_7b22_return_output);

-- BIN_OP_OR_bit_math_h_l451_c22_b9cf
BIN_OP_OR_bit_math_h_l451_c22_b9cf : entity work.BIN_OP_OR_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l451_c22_b9cf_left,
BIN_OP_OR_bit_math_h_l451_c22_b9cf_right,
BIN_OP_OR_bit_math_h_l451_c22_b9cf_return_output);

-- BIN_OP_OR_bit_math_h_l453_c22_e0f8
BIN_OP_OR_bit_math_h_l453_c22_e0f8 : entity work.BIN_OP_OR_uint4_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l453_c22_e0f8_left,
BIN_OP_OR_bit_math_h_l453_c22_e0f8_right,
BIN_OP_OR_bit_math_h_l453_c22_e0f8_return_output);

-- BIN_OP_OR_bit_math_h_l455_c22_f9be
BIN_OP_OR_bit_math_h_l455_c22_f9be : entity work.BIN_OP_OR_uint5_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l455_c22_f9be_left,
BIN_OP_OR_bit_math_h_l455_c22_f9be_right,
BIN_OP_OR_bit_math_h_l455_c22_f9be_return_output);

-- BIN_OP_OR_bit_math_h_l462_c22_7d70
BIN_OP_OR_bit_math_h_l462_c22_7d70 : entity work.BIN_OP_OR_uint3_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l462_c22_7d70_left,
BIN_OP_OR_bit_math_h_l462_c22_7d70_right,
BIN_OP_OR_bit_math_h_l462_c22_7d70_return_output);

-- BIN_OP_OR_bit_math_h_l464_c22_da8d
BIN_OP_OR_bit_math_h_l464_c22_da8d : entity work.BIN_OP_OR_uint4_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l464_c22_da8d_left,
BIN_OP_OR_bit_math_h_l464_c22_da8d_right,
BIN_OP_OR_bit_math_h_l464_c22_da8d_return_output);

-- BIN_OP_OR_bit_math_h_l466_c22_9917
BIN_OP_OR_bit_math_h_l466_c22_9917 : entity work.BIN_OP_OR_uint5_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l466_c22_9917_left,
BIN_OP_OR_bit_math_h_l466_c22_9917_right,
BIN_OP_OR_bit_math_h_l466_c22_9917_return_output);

-- BIN_OP_OR_bit_math_h_l470_c22_e132
BIN_OP_OR_bit_math_h_l470_c22_e132 : entity work.BIN_OP_OR_uint4_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l470_c22_e132_left,
BIN_OP_OR_bit_math_h_l470_c22_e132_right,
BIN_OP_OR_bit_math_h_l470_c22_e132_return_output);

-- BIN_OP_OR_bit_math_h_l477_c22_e8e6
BIN_OP_OR_bit_math_h_l477_c22_e8e6 : entity work.BIN_OP_OR_uint5_t_uint5_t_0CLK_de264c78 port map (
BIN_OP_OR_bit_math_h_l477_c22_e8e6_left,
BIN_OP_OR_bit_math_h_l477_c22_e8e6_right,
BIN_OP_OR_bit_math_h_l477_c22_e8e6_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- All submodule outputs
 BIN_OP_EQ_bit_math_h_l50_c24_3dc8_return_output,
 BIN_OP_EQ_bit_math_h_l53_c14_5eaa_return_output,
 BIN_OP_EQ_bit_math_h_l60_c14_1458_return_output,
 BIN_OP_EQ_bit_math_h_l67_c14_0bd8_return_output,
 BIN_OP_EQ_bit_math_h_l74_c14_bc8a_return_output,
 BIN_OP_EQ_bit_math_h_l81_c14_910c_return_output,
 BIN_OP_EQ_bit_math_h_l88_c14_e049_return_output,
 BIN_OP_EQ_bit_math_h_l95_c14_82e8_return_output,
 BIN_OP_EQ_bit_math_h_l102_c14_ebec_return_output,
 BIN_OP_EQ_bit_math_h_l109_c14_6f95_return_output,
 BIN_OP_EQ_bit_math_h_l116_c15_cbf9_return_output,
 BIN_OP_EQ_bit_math_h_l123_c15_5af1_return_output,
 BIN_OP_EQ_bit_math_h_l130_c15_121c_return_output,
 BIN_OP_EQ_bit_math_h_l137_c15_ab21_return_output,
 BIN_OP_EQ_bit_math_h_l144_c15_c1ed_return_output,
 BIN_OP_EQ_bit_math_h_l151_c15_907d_return_output,
 BIN_OP_EQ_bit_math_h_l158_c15_db96_return_output,
 BIN_OP_EQ_bit_math_h_l165_c15_80b7_return_output,
 BIN_OP_EQ_bit_math_h_l172_c15_8720_return_output,
 BIN_OP_EQ_bit_math_h_l179_c15_f873_return_output,
 BIN_OP_EQ_bit_math_h_l186_c15_1f53_return_output,
 BIN_OP_EQ_bit_math_h_l193_c15_7706_return_output,
 sum1_MUX_bit_math_h_l200_c3_1722_return_output,
 sum2_MUX_bit_math_h_l210_c3_82a8_return_output,
 sum3_MUX_bit_math_h_l220_c3_482b_return_output,
 sum4_MUX_bit_math_h_l230_c3_0cda_return_output,
 sum5_MUX_bit_math_h_l240_c3_bf3c_return_output,
 sum6_MUX_bit_math_h_l250_c3_6372_return_output,
 sum7_MUX_bit_math_h_l260_c3_4539_return_output,
 sum8_MUX_bit_math_h_l270_c3_91db_return_output,
 sum9_MUX_bit_math_h_l280_c3_4b7e_return_output,
 sum10_MUX_bit_math_h_l290_c3_3822_return_output,
 sum11_MUX_bit_math_h_l300_c3_2876_return_output,
 sum12_MUX_bit_math_h_l310_c3_d2ec_return_output,
 sum13_MUX_bit_math_h_l320_c3_5acf_return_output,
 sum14_MUX_bit_math_h_l330_c3_32a3_return_output,
 sum15_MUX_bit_math_h_l340_c3_ae56_return_output,
 sum16_MUX_bit_math_h_l350_c3_9b55_return_output,
 sum17_MUX_bit_math_h_l360_c3_4441_return_output,
 sum18_MUX_bit_math_h_l370_c3_32ed_return_output,
 sum19_MUX_bit_math_h_l380_c3_cd62_return_output,
 sum20_MUX_bit_math_h_l390_c3_c41c_return_output,
 sum21_MUX_bit_math_h_l400_c3_b500_return_output,
 sum22_MUX_bit_math_h_l410_c3_5b97_return_output,
 BIN_OP_OR_bit_math_h_l423_c22_ad78_return_output,
 BIN_OP_OR_bit_math_h_l425_c22_0b14_return_output,
 BIN_OP_OR_bit_math_h_l427_c22_5949_return_output,
 BIN_OP_OR_bit_math_h_l429_c22_c342_return_output,
 BIN_OP_OR_bit_math_h_l431_c22_6bdd_return_output,
 BIN_OP_OR_bit_math_h_l433_c22_d4f8_return_output,
 BIN_OP_OR_bit_math_h_l435_c22_6082_return_output,
 BIN_OP_OR_bit_math_h_l437_c22_c2f3_return_output,
 BIN_OP_OR_bit_math_h_l439_c22_413b_return_output,
 BIN_OP_OR_bit_math_h_l441_c22_f969_return_output,
 BIN_OP_OR_bit_math_h_l443_c23_ed7d_return_output,
 BIN_OP_OR_bit_math_h_l447_c22_6443_return_output,
 BIN_OP_OR_bit_math_h_l449_c22_7b22_return_output,
 BIN_OP_OR_bit_math_h_l451_c22_b9cf_return_output,
 BIN_OP_OR_bit_math_h_l453_c22_e0f8_return_output,
 BIN_OP_OR_bit_math_h_l455_c22_f9be_return_output,
 BIN_OP_OR_bit_math_h_l462_c22_7d70_return_output,
 BIN_OP_OR_bit_math_h_l464_c22_da8d_return_output,
 BIN_OP_OR_bit_math_h_l466_c22_9917_return_output,
 BIN_OP_OR_bit_math_h_l470_c22_e132_return_output,
 BIN_OP_OR_bit_math_h_l477_c22_e8e6_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(4 downto 0);
 variable VAR_x : unsigned(21 downto 0);
 variable VAR_leading22 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l50_c24_3dc8_left : unsigned(21 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l50_c24_3dc8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l50_c24_3dc8_return_output : unsigned(0 downto 0);
 variable VAR_leading1 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l53_c14_5eaa_left : unsigned(1 downto 0);
 variable VAR_uint22_21_20_bit_math_h_l53_c14_a7f6_return_output : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l53_c14_5eaa_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l53_c14_5eaa_return_output : unsigned(0 downto 0);
 variable VAR_leading2 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l60_c14_1458_left : unsigned(2 downto 0);
 variable VAR_uint22_21_19_bit_math_h_l60_c14_99aa_return_output : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l60_c14_1458_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l60_c14_1458_return_output : unsigned(0 downto 0);
 variable VAR_leading3 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l67_c14_0bd8_left : unsigned(3 downto 0);
 variable VAR_uint22_21_18_bit_math_h_l67_c14_10df_return_output : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l67_c14_0bd8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l67_c14_0bd8_return_output : unsigned(0 downto 0);
 variable VAR_leading4 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l74_c14_bc8a_left : unsigned(4 downto 0);
 variable VAR_uint22_21_17_bit_math_h_l74_c14_2351_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l74_c14_bc8a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l74_c14_bc8a_return_output : unsigned(0 downto 0);
 variable VAR_leading5 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l81_c14_910c_left : unsigned(5 downto 0);
 variable VAR_uint22_21_16_bit_math_h_l81_c14_efb5_return_output : unsigned(5 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l81_c14_910c_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l81_c14_910c_return_output : unsigned(0 downto 0);
 variable VAR_leading6 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l88_c14_e049_left : unsigned(6 downto 0);
 variable VAR_uint22_21_15_bit_math_h_l88_c14_062b_return_output : unsigned(6 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l88_c14_e049_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l88_c14_e049_return_output : unsigned(0 downto 0);
 variable VAR_leading7 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l95_c14_82e8_left : unsigned(7 downto 0);
 variable VAR_uint22_21_14_bit_math_h_l95_c14_ae72_return_output : unsigned(7 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l95_c14_82e8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l95_c14_82e8_return_output : unsigned(0 downto 0);
 variable VAR_leading8 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l102_c14_ebec_left : unsigned(8 downto 0);
 variable VAR_uint22_21_13_bit_math_h_l102_c14_d825_return_output : unsigned(8 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l102_c14_ebec_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l102_c14_ebec_return_output : unsigned(0 downto 0);
 variable VAR_leading9 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l109_c14_6f95_left : unsigned(9 downto 0);
 variable VAR_uint22_21_12_bit_math_h_l109_c14_e367_return_output : unsigned(9 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l109_c14_6f95_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l109_c14_6f95_return_output : unsigned(0 downto 0);
 variable VAR_leading10 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l116_c15_cbf9_left : unsigned(10 downto 0);
 variable VAR_uint22_21_11_bit_math_h_l116_c15_abd0_return_output : unsigned(10 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l116_c15_cbf9_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l116_c15_cbf9_return_output : unsigned(0 downto 0);
 variable VAR_leading11 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l123_c15_5af1_left : unsigned(11 downto 0);
 variable VAR_uint22_21_10_bit_math_h_l123_c15_f866_return_output : unsigned(11 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l123_c15_5af1_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l123_c15_5af1_return_output : unsigned(0 downto 0);
 variable VAR_leading12 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l130_c15_121c_left : unsigned(12 downto 0);
 variable VAR_uint22_21_9_bit_math_h_l130_c15_9571_return_output : unsigned(12 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l130_c15_121c_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l130_c15_121c_return_output : unsigned(0 downto 0);
 variable VAR_leading13 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l137_c15_ab21_left : unsigned(13 downto 0);
 variable VAR_uint22_21_8_bit_math_h_l137_c15_7174_return_output : unsigned(13 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l137_c15_ab21_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l137_c15_ab21_return_output : unsigned(0 downto 0);
 variable VAR_leading14 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l144_c15_c1ed_left : unsigned(14 downto 0);
 variable VAR_uint22_21_7_bit_math_h_l144_c15_350c_return_output : unsigned(14 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l144_c15_c1ed_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l144_c15_c1ed_return_output : unsigned(0 downto 0);
 variable VAR_leading15 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l151_c15_907d_left : unsigned(15 downto 0);
 variable VAR_uint22_21_6_bit_math_h_l151_c15_4a61_return_output : unsigned(15 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l151_c15_907d_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l151_c15_907d_return_output : unsigned(0 downto 0);
 variable VAR_leading16 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l158_c15_db96_left : unsigned(16 downto 0);
 variable VAR_uint22_21_5_bit_math_h_l158_c15_cf53_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l158_c15_db96_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l158_c15_db96_return_output : unsigned(0 downto 0);
 variable VAR_leading17 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l165_c15_80b7_left : unsigned(17 downto 0);
 variable VAR_uint22_21_4_bit_math_h_l165_c15_5872_return_output : unsigned(17 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l165_c15_80b7_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l165_c15_80b7_return_output : unsigned(0 downto 0);
 variable VAR_leading18 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l172_c15_8720_left : unsigned(18 downto 0);
 variable VAR_uint22_21_3_bit_math_h_l172_c15_46b0_return_output : unsigned(18 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l172_c15_8720_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l172_c15_8720_return_output : unsigned(0 downto 0);
 variable VAR_leading19 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l179_c15_f873_left : unsigned(19 downto 0);
 variable VAR_uint22_21_2_bit_math_h_l179_c15_f4ab_return_output : unsigned(19 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l179_c15_f873_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l179_c15_f873_return_output : unsigned(0 downto 0);
 variable VAR_leading20 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l186_c15_1f53_left : unsigned(20 downto 0);
 variable VAR_uint22_21_1_bit_math_h_l186_c15_8bbd_return_output : unsigned(20 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l186_c15_1f53_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l186_c15_1f53_return_output : unsigned(0 downto 0);
 variable VAR_leading21 : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l193_c15_7706_left : unsigned(21 downto 0);
 variable VAR_uint22_21_0_bit_math_h_l193_c15_7fda_return_output : unsigned(21 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l193_c15_7706_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l193_c15_7706_return_output : unsigned(0 downto 0);
 variable VAR_sum1 : unsigned(0 downto 0);
 variable VAR_sum1_MUX_bit_math_h_l200_c3_1722_iftrue : unsigned(0 downto 0);
 variable VAR_sum1_MUX_bit_math_h_l200_c3_1722_iffalse : unsigned(0 downto 0);
 variable VAR_sum1_MUX_bit_math_h_l200_c3_1722_return_output : unsigned(0 downto 0);
 variable VAR_sum1_MUX_bit_math_h_l200_c3_1722_cond : unsigned(0 downto 0);
 variable VAR_sum2 : unsigned(1 downto 0);
 variable VAR_sum2_MUX_bit_math_h_l210_c3_82a8_iftrue : unsigned(1 downto 0);
 variable VAR_sum2_MUX_bit_math_h_l210_c3_82a8_iffalse : unsigned(1 downto 0);
 variable VAR_sum2_bit_math_h_l216_c5_f9b1 : unsigned(1 downto 0);
 variable VAR_sum2_MUX_bit_math_h_l210_c3_82a8_return_output : unsigned(1 downto 0);
 variable VAR_sum2_MUX_bit_math_h_l210_c3_82a8_cond : unsigned(0 downto 0);
 variable VAR_sum3 : unsigned(1 downto 0);
 variable VAR_sum3_MUX_bit_math_h_l220_c3_482b_iftrue : unsigned(1 downto 0);
 variable VAR_sum3_MUX_bit_math_h_l220_c3_482b_iffalse : unsigned(1 downto 0);
 variable VAR_sum3_bit_math_h_l226_c5_bf74 : unsigned(1 downto 0);
 variable VAR_sum3_MUX_bit_math_h_l220_c3_482b_return_output : unsigned(1 downto 0);
 variable VAR_sum3_MUX_bit_math_h_l220_c3_482b_cond : unsigned(0 downto 0);
 variable VAR_sum4 : unsigned(2 downto 0);
 variable VAR_sum4_MUX_bit_math_h_l230_c3_0cda_iftrue : unsigned(2 downto 0);
 variable VAR_sum4_MUX_bit_math_h_l230_c3_0cda_iffalse : unsigned(2 downto 0);
 variable VAR_sum4_bit_math_h_l236_c5_fa91 : unsigned(2 downto 0);
 variable VAR_sum4_MUX_bit_math_h_l230_c3_0cda_return_output : unsigned(2 downto 0);
 variable VAR_sum4_MUX_bit_math_h_l230_c3_0cda_cond : unsigned(0 downto 0);
 variable VAR_sum5 : unsigned(2 downto 0);
 variable VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_iftrue : unsigned(2 downto 0);
 variable VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_iffalse : unsigned(2 downto 0);
 variable VAR_sum5_bit_math_h_l246_c5_7651 : unsigned(2 downto 0);
 variable VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_return_output : unsigned(2 downto 0);
 variable VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_cond : unsigned(0 downto 0);
 variable VAR_sum6 : unsigned(2 downto 0);
 variable VAR_sum6_MUX_bit_math_h_l250_c3_6372_iftrue : unsigned(2 downto 0);
 variable VAR_sum6_MUX_bit_math_h_l250_c3_6372_iffalse : unsigned(2 downto 0);
 variable VAR_sum6_bit_math_h_l256_c5_92c5 : unsigned(2 downto 0);
 variable VAR_sum6_MUX_bit_math_h_l250_c3_6372_return_output : unsigned(2 downto 0);
 variable VAR_sum6_MUX_bit_math_h_l250_c3_6372_cond : unsigned(0 downto 0);
 variable VAR_sum7 : unsigned(2 downto 0);
 variable VAR_sum7_MUX_bit_math_h_l260_c3_4539_iftrue : unsigned(2 downto 0);
 variable VAR_sum7_MUX_bit_math_h_l260_c3_4539_iffalse : unsigned(2 downto 0);
 variable VAR_sum7_bit_math_h_l266_c5_b9b6 : unsigned(2 downto 0);
 variable VAR_sum7_MUX_bit_math_h_l260_c3_4539_return_output : unsigned(2 downto 0);
 variable VAR_sum7_MUX_bit_math_h_l260_c3_4539_cond : unsigned(0 downto 0);
 variable VAR_sum8 : unsigned(3 downto 0);
 variable VAR_sum8_MUX_bit_math_h_l270_c3_91db_iftrue : unsigned(3 downto 0);
 variable VAR_sum8_MUX_bit_math_h_l270_c3_91db_iffalse : unsigned(3 downto 0);
 variable VAR_sum8_bit_math_h_l276_c5_0ad1 : unsigned(3 downto 0);
 variable VAR_sum8_MUX_bit_math_h_l270_c3_91db_return_output : unsigned(3 downto 0);
 variable VAR_sum8_MUX_bit_math_h_l270_c3_91db_cond : unsigned(0 downto 0);
 variable VAR_sum9 : unsigned(3 downto 0);
 variable VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_iftrue : unsigned(3 downto 0);
 variable VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_iffalse : unsigned(3 downto 0);
 variable VAR_sum9_bit_math_h_l286_c5_be5a : unsigned(3 downto 0);
 variable VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_return_output : unsigned(3 downto 0);
 variable VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_cond : unsigned(0 downto 0);
 variable VAR_sum10 : unsigned(3 downto 0);
 variable VAR_sum10_MUX_bit_math_h_l290_c3_3822_iftrue : unsigned(3 downto 0);
 variable VAR_sum10_MUX_bit_math_h_l290_c3_3822_iffalse : unsigned(3 downto 0);
 variable VAR_sum10_bit_math_h_l296_c5_b5da : unsigned(3 downto 0);
 variable VAR_sum10_MUX_bit_math_h_l290_c3_3822_return_output : unsigned(3 downto 0);
 variable VAR_sum10_MUX_bit_math_h_l290_c3_3822_cond : unsigned(0 downto 0);
 variable VAR_sum11 : unsigned(3 downto 0);
 variable VAR_sum11_MUX_bit_math_h_l300_c3_2876_iftrue : unsigned(3 downto 0);
 variable VAR_sum11_MUX_bit_math_h_l300_c3_2876_iffalse : unsigned(3 downto 0);
 variable VAR_sum11_bit_math_h_l306_c5_9849 : unsigned(3 downto 0);
 variable VAR_sum11_MUX_bit_math_h_l300_c3_2876_return_output : unsigned(3 downto 0);
 variable VAR_sum11_MUX_bit_math_h_l300_c3_2876_cond : unsigned(0 downto 0);
 variable VAR_sum12 : unsigned(3 downto 0);
 variable VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_iftrue : unsigned(3 downto 0);
 variable VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_iffalse : unsigned(3 downto 0);
 variable VAR_sum12_bit_math_h_l316_c5_54f4 : unsigned(3 downto 0);
 variable VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_return_output : unsigned(3 downto 0);
 variable VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_cond : unsigned(0 downto 0);
 variable VAR_sum13 : unsigned(3 downto 0);
 variable VAR_sum13_MUX_bit_math_h_l320_c3_5acf_iftrue : unsigned(3 downto 0);
 variable VAR_sum13_MUX_bit_math_h_l320_c3_5acf_iffalse : unsigned(3 downto 0);
 variable VAR_sum13_bit_math_h_l326_c5_ba1d : unsigned(3 downto 0);
 variable VAR_sum13_MUX_bit_math_h_l320_c3_5acf_return_output : unsigned(3 downto 0);
 variable VAR_sum13_MUX_bit_math_h_l320_c3_5acf_cond : unsigned(0 downto 0);
 variable VAR_sum14 : unsigned(3 downto 0);
 variable VAR_sum14_MUX_bit_math_h_l330_c3_32a3_iftrue : unsigned(3 downto 0);
 variable VAR_sum14_MUX_bit_math_h_l330_c3_32a3_iffalse : unsigned(3 downto 0);
 variable VAR_sum14_bit_math_h_l336_c5_fafa : unsigned(3 downto 0);
 variable VAR_sum14_MUX_bit_math_h_l330_c3_32a3_return_output : unsigned(3 downto 0);
 variable VAR_sum14_MUX_bit_math_h_l330_c3_32a3_cond : unsigned(0 downto 0);
 variable VAR_sum15 : unsigned(3 downto 0);
 variable VAR_sum15_MUX_bit_math_h_l340_c3_ae56_iftrue : unsigned(3 downto 0);
 variable VAR_sum15_MUX_bit_math_h_l340_c3_ae56_iffalse : unsigned(3 downto 0);
 variable VAR_sum15_bit_math_h_l346_c5_966b : unsigned(3 downto 0);
 variable VAR_sum15_MUX_bit_math_h_l340_c3_ae56_return_output : unsigned(3 downto 0);
 variable VAR_sum15_MUX_bit_math_h_l340_c3_ae56_cond : unsigned(0 downto 0);
 variable VAR_sum16 : unsigned(4 downto 0);
 variable VAR_sum16_MUX_bit_math_h_l350_c3_9b55_iftrue : unsigned(4 downto 0);
 variable VAR_sum16_MUX_bit_math_h_l350_c3_9b55_iffalse : unsigned(4 downto 0);
 variable VAR_sum16_bit_math_h_l356_c5_87c3 : unsigned(4 downto 0);
 variable VAR_sum16_MUX_bit_math_h_l350_c3_9b55_return_output : unsigned(4 downto 0);
 variable VAR_sum16_MUX_bit_math_h_l350_c3_9b55_cond : unsigned(0 downto 0);
 variable VAR_sum17 : unsigned(4 downto 0);
 variable VAR_sum17_MUX_bit_math_h_l360_c3_4441_iftrue : unsigned(4 downto 0);
 variable VAR_sum17_MUX_bit_math_h_l360_c3_4441_iffalse : unsigned(4 downto 0);
 variable VAR_sum17_bit_math_h_l366_c5_f308 : unsigned(4 downto 0);
 variable VAR_sum17_MUX_bit_math_h_l360_c3_4441_return_output : unsigned(4 downto 0);
 variable VAR_sum17_MUX_bit_math_h_l360_c3_4441_cond : unsigned(0 downto 0);
 variable VAR_sum18 : unsigned(4 downto 0);
 variable VAR_sum18_MUX_bit_math_h_l370_c3_32ed_iftrue : unsigned(4 downto 0);
 variable VAR_sum18_MUX_bit_math_h_l370_c3_32ed_iffalse : unsigned(4 downto 0);
 variable VAR_sum18_bit_math_h_l376_c5_1511 : unsigned(4 downto 0);
 variable VAR_sum18_MUX_bit_math_h_l370_c3_32ed_return_output : unsigned(4 downto 0);
 variable VAR_sum18_MUX_bit_math_h_l370_c3_32ed_cond : unsigned(0 downto 0);
 variable VAR_sum19 : unsigned(4 downto 0);
 variable VAR_sum19_MUX_bit_math_h_l380_c3_cd62_iftrue : unsigned(4 downto 0);
 variable VAR_sum19_MUX_bit_math_h_l380_c3_cd62_iffalse : unsigned(4 downto 0);
 variable VAR_sum19_bit_math_h_l386_c5_f7cc : unsigned(4 downto 0);
 variable VAR_sum19_MUX_bit_math_h_l380_c3_cd62_return_output : unsigned(4 downto 0);
 variable VAR_sum19_MUX_bit_math_h_l380_c3_cd62_cond : unsigned(0 downto 0);
 variable VAR_sum20 : unsigned(4 downto 0);
 variable VAR_sum20_MUX_bit_math_h_l390_c3_c41c_iftrue : unsigned(4 downto 0);
 variable VAR_sum20_MUX_bit_math_h_l390_c3_c41c_iffalse : unsigned(4 downto 0);
 variable VAR_sum20_bit_math_h_l396_c5_b104 : unsigned(4 downto 0);
 variable VAR_sum20_MUX_bit_math_h_l390_c3_c41c_return_output : unsigned(4 downto 0);
 variable VAR_sum20_MUX_bit_math_h_l390_c3_c41c_cond : unsigned(0 downto 0);
 variable VAR_sum21 : unsigned(4 downto 0);
 variable VAR_sum21_MUX_bit_math_h_l400_c3_b500_iftrue : unsigned(4 downto 0);
 variable VAR_sum21_MUX_bit_math_h_l400_c3_b500_iffalse : unsigned(4 downto 0);
 variable VAR_sum21_bit_math_h_l406_c5_7e44 : unsigned(4 downto 0);
 variable VAR_sum21_MUX_bit_math_h_l400_c3_b500_return_output : unsigned(4 downto 0);
 variable VAR_sum21_MUX_bit_math_h_l400_c3_b500_cond : unsigned(0 downto 0);
 variable VAR_sum22 : unsigned(4 downto 0);
 variable VAR_sum22_MUX_bit_math_h_l410_c3_5b97_iftrue : unsigned(4 downto 0);
 variable VAR_sum22_MUX_bit_math_h_l410_c3_5b97_iffalse : unsigned(4 downto 0);
 variable VAR_sum22_bit_math_h_l416_c5_c19f : unsigned(4 downto 0);
 variable VAR_sum22_MUX_bit_math_h_l410_c3_5b97_return_output : unsigned(4 downto 0);
 variable VAR_sum22_MUX_bit_math_h_l410_c3_5b97_cond : unsigned(0 downto 0);
 variable VAR_sum_layer0_node0 : unsigned(1 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l423_c22_ad78_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l423_c22_ad78_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l423_c22_ad78_return_output : unsigned(1 downto 0);
 variable VAR_sum_layer0_node1 : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l425_c22_0b14_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l425_c22_0b14_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l425_c22_0b14_return_output : unsigned(2 downto 0);
 variable VAR_sum_layer0_node2 : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l427_c22_5949_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l427_c22_5949_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l427_c22_5949_return_output : unsigned(2 downto 0);
 variable VAR_sum_layer0_node3 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l429_c22_c342_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l429_c22_c342_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l429_c22_c342_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer0_node4 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l431_c22_6bdd_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l431_c22_6bdd_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l431_c22_6bdd_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer0_node5 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l433_c22_d4f8_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l433_c22_d4f8_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l433_c22_d4f8_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer0_node6 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l435_c22_6082_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l435_c22_6082_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l435_c22_6082_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer0_node7 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l437_c22_c2f3_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l437_c22_c2f3_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l437_c22_c2f3_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer0_node8 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l439_c22_413b_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l439_c22_413b_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l439_c22_413b_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer0_node9 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l441_c22_f969_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l441_c22_f969_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l441_c22_f969_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer0_node10 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l443_c23_ed7d_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l443_c23_ed7d_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l443_c23_ed7d_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer1_node0 : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l447_c22_6443_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l447_c22_6443_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l447_c22_6443_return_output : unsigned(2 downto 0);
 variable VAR_sum_layer1_node1 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l449_c22_7b22_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l449_c22_7b22_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l449_c22_7b22_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer1_node2 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l451_c22_b9cf_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l451_c22_b9cf_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l451_c22_b9cf_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer1_node3 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l453_c22_e0f8_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l453_c22_e0f8_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l453_c22_e0f8_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer1_node4 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l455_c22_f9be_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l455_c22_f9be_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l455_c22_f9be_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer1_node5 : unsigned(4 downto 0);
 variable VAR_sum_layer2_node0 : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l462_c22_7d70_left : unsigned(2 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l462_c22_7d70_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l462_c22_7d70_return_output : unsigned(3 downto 0);
 variable VAR_sum_layer2_node1 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l464_c22_da8d_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l464_c22_da8d_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l464_c22_da8d_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer2_node2 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l466_c22_9917_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l466_c22_9917_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l466_c22_9917_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer3_node0 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l470_c22_e132_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l470_c22_e132_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l470_c22_e132_return_output : unsigned(4 downto 0);
 variable VAR_sum_layer3_node1 : unsigned(4 downto 0);
 variable VAR_sum_layer4_node0 : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l477_c22_e8e6_left : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l477_c22_e8e6_right : unsigned(4 downto 0);
 variable VAR_BIN_OP_OR_bit_math_h_l477_c22_e8e6_return_output : unsigned(4 downto 0);
 variable VAR_rv : unsigned(4 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_EQ_bit_math_h_l109_c14_6f95_right := to_unsigned(1, 1);
     VAR_sum21_MUX_bit_math_h_l400_c3_b500_iftrue := to_unsigned(21, 5);
     VAR_sum4_bit_math_h_l236_c5_fa91 := resize(to_unsigned(0, 1), 3);
     VAR_sum4_MUX_bit_math_h_l230_c3_0cda_iffalse := VAR_sum4_bit_math_h_l236_c5_fa91;
     VAR_sum20_MUX_bit_math_h_l390_c3_c41c_iftrue := to_unsigned(20, 5);
     VAR_BIN_OP_EQ_bit_math_h_l102_c14_ebec_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l137_c15_ab21_right := to_unsigned(1, 1);
     VAR_sum20_bit_math_h_l396_c5_b104 := resize(to_unsigned(0, 1), 5);
     VAR_sum20_MUX_bit_math_h_l390_c3_c41c_iffalse := VAR_sum20_bit_math_h_l396_c5_b104;
     VAR_sum22_MUX_bit_math_h_l410_c3_5b97_iftrue := to_unsigned(22, 5);
     VAR_sum2_bit_math_h_l216_c5_f9b1 := resize(to_unsigned(0, 1), 2);
     VAR_sum2_MUX_bit_math_h_l210_c3_82a8_iffalse := VAR_sum2_bit_math_h_l216_c5_f9b1;
     VAR_sum13_MUX_bit_math_h_l320_c3_5acf_iftrue := to_unsigned(13, 4);
     VAR_sum7_MUX_bit_math_h_l260_c3_4539_iftrue := to_unsigned(7, 3);
     VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_iftrue := to_unsigned(5, 3);
     VAR_sum15_bit_math_h_l346_c5_966b := resize(to_unsigned(0, 1), 4);
     VAR_sum15_MUX_bit_math_h_l340_c3_ae56_iffalse := VAR_sum15_bit_math_h_l346_c5_966b;
     VAR_sum6_bit_math_h_l256_c5_92c5 := resize(to_unsigned(0, 1), 3);
     VAR_sum6_MUX_bit_math_h_l250_c3_6372_iffalse := VAR_sum6_bit_math_h_l256_c5_92c5;
     VAR_sum6_MUX_bit_math_h_l250_c3_6372_iftrue := to_unsigned(6, 3);
     VAR_sum8_bit_math_h_l276_c5_0ad1 := resize(to_unsigned(0, 1), 4);
     VAR_sum8_MUX_bit_math_h_l270_c3_91db_iffalse := VAR_sum8_bit_math_h_l276_c5_0ad1;
     VAR_sum15_MUX_bit_math_h_l340_c3_ae56_iftrue := to_unsigned(15, 4);
     VAR_sum19_MUX_bit_math_h_l380_c3_cd62_iftrue := to_unsigned(19, 5);
     VAR_BIN_OP_EQ_bit_math_h_l179_c15_f873_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l172_c15_8720_right := to_unsigned(1, 1);
     VAR_sum9_bit_math_h_l286_c5_be5a := resize(to_unsigned(0, 1), 4);
     VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_iffalse := VAR_sum9_bit_math_h_l286_c5_be5a;
     VAR_sum8_MUX_bit_math_h_l270_c3_91db_iftrue := to_unsigned(8, 4);
     VAR_sum3_MUX_bit_math_h_l220_c3_482b_iftrue := to_unsigned(3, 2);
     VAR_sum7_bit_math_h_l266_c5_b9b6 := resize(to_unsigned(0, 1), 3);
     VAR_sum7_MUX_bit_math_h_l260_c3_4539_iffalse := VAR_sum7_bit_math_h_l266_c5_b9b6;
     VAR_BIN_OP_EQ_bit_math_h_l74_c14_bc8a_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l130_c15_121c_right := to_unsigned(1, 1);
     VAR_sum17_MUX_bit_math_h_l360_c3_4441_iftrue := to_unsigned(17, 5);
     VAR_sum10_MUX_bit_math_h_l290_c3_3822_iftrue := to_unsigned(10, 4);
     VAR_BIN_OP_EQ_bit_math_h_l123_c15_5af1_right := to_unsigned(1, 1);
     VAR_sum19_bit_math_h_l386_c5_f7cc := resize(to_unsigned(0, 1), 5);
     VAR_sum19_MUX_bit_math_h_l380_c3_cd62_iffalse := VAR_sum19_bit_math_h_l386_c5_f7cc;
     VAR_sum10_bit_math_h_l296_c5_b5da := resize(to_unsigned(0, 1), 4);
     VAR_sum10_MUX_bit_math_h_l290_c3_3822_iffalse := VAR_sum10_bit_math_h_l296_c5_b5da;
     VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_iftrue := to_unsigned(12, 4);
     VAR_BIN_OP_EQ_bit_math_h_l88_c14_e049_right := to_unsigned(1, 1);
     VAR_sum12_bit_math_h_l316_c5_54f4 := resize(to_unsigned(0, 1), 4);
     VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_iffalse := VAR_sum12_bit_math_h_l316_c5_54f4;
     VAR_sum14_bit_math_h_l336_c5_fafa := resize(to_unsigned(0, 1), 4);
     VAR_sum14_MUX_bit_math_h_l330_c3_32a3_iffalse := VAR_sum14_bit_math_h_l336_c5_fafa;
     VAR_sum21_bit_math_h_l406_c5_7e44 := resize(to_unsigned(0, 1), 5);
     VAR_sum21_MUX_bit_math_h_l400_c3_b500_iffalse := VAR_sum21_bit_math_h_l406_c5_7e44;
     VAR_sum2_MUX_bit_math_h_l210_c3_82a8_iftrue := to_unsigned(2, 2);
     VAR_sum14_MUX_bit_math_h_l330_c3_32a3_iftrue := to_unsigned(14, 4);
     VAR_BIN_OP_EQ_bit_math_h_l186_c15_1f53_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l81_c14_910c_right := to_unsigned(1, 1);
     VAR_sum3_bit_math_h_l226_c5_bf74 := resize(to_unsigned(0, 1), 2);
     VAR_sum3_MUX_bit_math_h_l220_c3_482b_iffalse := VAR_sum3_bit_math_h_l226_c5_bf74;
     VAR_sum11_bit_math_h_l306_c5_9849 := resize(to_unsigned(0, 1), 4);
     VAR_sum11_MUX_bit_math_h_l300_c3_2876_iffalse := VAR_sum11_bit_math_h_l306_c5_9849;
     VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_iftrue := to_unsigned(9, 4);
     VAR_BIN_OP_EQ_bit_math_h_l53_c14_5eaa_right := to_unsigned(1, 1);
     VAR_sum11_MUX_bit_math_h_l300_c3_2876_iftrue := to_unsigned(11, 4);
     VAR_sum4_MUX_bit_math_h_l230_c3_0cda_iftrue := to_unsigned(4, 3);
     VAR_sum18_MUX_bit_math_h_l370_c3_32ed_iftrue := to_unsigned(18, 5);
     VAR_BIN_OP_EQ_bit_math_h_l116_c15_cbf9_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l158_c15_db96_right := to_unsigned(1, 1);
     VAR_sum13_bit_math_h_l326_c5_ba1d := resize(to_unsigned(0, 1), 4);
     VAR_sum13_MUX_bit_math_h_l320_c3_5acf_iffalse := VAR_sum13_bit_math_h_l326_c5_ba1d;
     VAR_BIN_OP_EQ_bit_math_h_l50_c24_3dc8_right := to_unsigned(0, 1);
     VAR_sum16_bit_math_h_l356_c5_87c3 := resize(to_unsigned(0, 1), 5);
     VAR_sum16_MUX_bit_math_h_l350_c3_9b55_iffalse := VAR_sum16_bit_math_h_l356_c5_87c3;
     VAR_sum1_MUX_bit_math_h_l200_c3_1722_iftrue := to_unsigned(1, 1);
     VAR_sum22_bit_math_h_l416_c5_c19f := resize(to_unsigned(0, 1), 5);
     VAR_sum22_MUX_bit_math_h_l410_c3_5b97_iffalse := VAR_sum22_bit_math_h_l416_c5_c19f;
     VAR_sum17_bit_math_h_l366_c5_f308 := resize(to_unsigned(0, 1), 5);
     VAR_sum17_MUX_bit_math_h_l360_c3_4441_iffalse := VAR_sum17_bit_math_h_l366_c5_f308;
     VAR_sum16_MUX_bit_math_h_l350_c3_9b55_iftrue := to_unsigned(16, 5);
     VAR_sum1_MUX_bit_math_h_l200_c3_1722_iffalse := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_bit_math_h_l67_c14_0bd8_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l95_c14_82e8_right := to_unsigned(1, 1);
     VAR_sum18_bit_math_h_l376_c5_1511 := resize(to_unsigned(0, 1), 5);
     VAR_sum18_MUX_bit_math_h_l370_c3_32ed_iffalse := VAR_sum18_bit_math_h_l376_c5_1511;
     VAR_BIN_OP_EQ_bit_math_h_l60_c14_1458_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l144_c15_c1ed_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l165_c15_80b7_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l151_c15_907d_right := to_unsigned(1, 1);
     VAR_sum5_bit_math_h_l246_c5_7651 := resize(to_unsigned(0, 1), 3);
     VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_iffalse := VAR_sum5_bit_math_h_l246_c5_7651;
     VAR_BIN_OP_EQ_bit_math_h_l193_c15_7706_right := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     VAR_BIN_OP_EQ_bit_math_h_l50_c24_3dc8_left := VAR_x;
     -- uint22_21_1[bit_math_h_l186_c15_8bbd] LATENCY=0
     VAR_uint22_21_1_bit_math_h_l186_c15_8bbd_return_output := uint22_21_1(
     VAR_x);

     -- uint22_21_8[bit_math_h_l137_c15_7174] LATENCY=0
     VAR_uint22_21_8_bit_math_h_l137_c15_7174_return_output := uint22_21_8(
     VAR_x);

     -- uint22_21_9[bit_math_h_l130_c15_9571] LATENCY=0
     VAR_uint22_21_9_bit_math_h_l130_c15_9571_return_output := uint22_21_9(
     VAR_x);

     -- uint22_21_13[bit_math_h_l102_c14_d825] LATENCY=0
     VAR_uint22_21_13_bit_math_h_l102_c14_d825_return_output := uint22_21_13(
     VAR_x);

     -- uint22_21_19[bit_math_h_l60_c14_99aa] LATENCY=0
     VAR_uint22_21_19_bit_math_h_l60_c14_99aa_return_output := uint22_21_19(
     VAR_x);

     -- uint22_21_12[bit_math_h_l109_c14_e367] LATENCY=0
     VAR_uint22_21_12_bit_math_h_l109_c14_e367_return_output := uint22_21_12(
     VAR_x);

     -- uint22_21_18[bit_math_h_l67_c14_10df] LATENCY=0
     VAR_uint22_21_18_bit_math_h_l67_c14_10df_return_output := uint22_21_18(
     VAR_x);

     -- uint22_21_17[bit_math_h_l74_c14_2351] LATENCY=0
     VAR_uint22_21_17_bit_math_h_l74_c14_2351_return_output := uint22_21_17(
     VAR_x);

     -- uint22_21_7[bit_math_h_l144_c15_350c] LATENCY=0
     VAR_uint22_21_7_bit_math_h_l144_c15_350c_return_output := uint22_21_7(
     VAR_x);

     -- uint22_21_16[bit_math_h_l81_c14_efb5] LATENCY=0
     VAR_uint22_21_16_bit_math_h_l81_c14_efb5_return_output := uint22_21_16(
     VAR_x);

     -- uint22_21_4[bit_math_h_l165_c15_5872] LATENCY=0
     VAR_uint22_21_4_bit_math_h_l165_c15_5872_return_output := uint22_21_4(
     VAR_x);

     -- BIN_OP_EQ[bit_math_h_l50_c24_3dc8] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l50_c24_3dc8_left <= VAR_BIN_OP_EQ_bit_math_h_l50_c24_3dc8_left;
     BIN_OP_EQ_bit_math_h_l50_c24_3dc8_right <= VAR_BIN_OP_EQ_bit_math_h_l50_c24_3dc8_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l50_c24_3dc8_return_output := BIN_OP_EQ_bit_math_h_l50_c24_3dc8_return_output;

     -- uint22_21_0[bit_math_h_l193_c15_7fda] LATENCY=0
     VAR_uint22_21_0_bit_math_h_l193_c15_7fda_return_output := uint22_21_0(
     VAR_x);

     -- uint22_21_11[bit_math_h_l116_c15_abd0] LATENCY=0
     VAR_uint22_21_11_bit_math_h_l116_c15_abd0_return_output := uint22_21_11(
     VAR_x);

     -- uint22_21_5[bit_math_h_l158_c15_cf53] LATENCY=0
     VAR_uint22_21_5_bit_math_h_l158_c15_cf53_return_output := uint22_21_5(
     VAR_x);

     -- uint22_21_14[bit_math_h_l95_c14_ae72] LATENCY=0
     VAR_uint22_21_14_bit_math_h_l95_c14_ae72_return_output := uint22_21_14(
     VAR_x);

     -- uint22_21_2[bit_math_h_l179_c15_f4ab] LATENCY=0
     VAR_uint22_21_2_bit_math_h_l179_c15_f4ab_return_output := uint22_21_2(
     VAR_x);

     -- uint22_21_15[bit_math_h_l88_c14_062b] LATENCY=0
     VAR_uint22_21_15_bit_math_h_l88_c14_062b_return_output := uint22_21_15(
     VAR_x);

     -- uint22_21_6[bit_math_h_l151_c15_4a61] LATENCY=0
     VAR_uint22_21_6_bit_math_h_l151_c15_4a61_return_output := uint22_21_6(
     VAR_x);

     -- uint22_21_20[bit_math_h_l53_c14_a7f6] LATENCY=0
     VAR_uint22_21_20_bit_math_h_l53_c14_a7f6_return_output := uint22_21_20(
     VAR_x);

     -- uint22_21_3[bit_math_h_l172_c15_46b0] LATENCY=0
     VAR_uint22_21_3_bit_math_h_l172_c15_46b0_return_output := uint22_21_3(
     VAR_x);

     -- uint22_21_10[bit_math_h_l123_c15_f866] LATENCY=0
     VAR_uint22_21_10_bit_math_h_l123_c15_f866_return_output := uint22_21_10(
     VAR_x);

     -- Submodule level 1
     VAR_sum22_MUX_bit_math_h_l410_c3_5b97_cond := VAR_BIN_OP_EQ_bit_math_h_l50_c24_3dc8_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l193_c15_7706_left := VAR_uint22_21_0_bit_math_h_l193_c15_7fda_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l123_c15_5af1_left := VAR_uint22_21_10_bit_math_h_l123_c15_f866_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l116_c15_cbf9_left := VAR_uint22_21_11_bit_math_h_l116_c15_abd0_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l109_c14_6f95_left := VAR_uint22_21_12_bit_math_h_l109_c14_e367_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l102_c14_ebec_left := VAR_uint22_21_13_bit_math_h_l102_c14_d825_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l95_c14_82e8_left := VAR_uint22_21_14_bit_math_h_l95_c14_ae72_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l88_c14_e049_left := VAR_uint22_21_15_bit_math_h_l88_c14_062b_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l81_c14_910c_left := VAR_uint22_21_16_bit_math_h_l81_c14_efb5_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l74_c14_bc8a_left := VAR_uint22_21_17_bit_math_h_l74_c14_2351_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l67_c14_0bd8_left := VAR_uint22_21_18_bit_math_h_l67_c14_10df_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l60_c14_1458_left := VAR_uint22_21_19_bit_math_h_l60_c14_99aa_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l186_c15_1f53_left := VAR_uint22_21_1_bit_math_h_l186_c15_8bbd_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l53_c14_5eaa_left := VAR_uint22_21_20_bit_math_h_l53_c14_a7f6_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l179_c15_f873_left := VAR_uint22_21_2_bit_math_h_l179_c15_f4ab_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l172_c15_8720_left := VAR_uint22_21_3_bit_math_h_l172_c15_46b0_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l165_c15_80b7_left := VAR_uint22_21_4_bit_math_h_l165_c15_5872_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l158_c15_db96_left := VAR_uint22_21_5_bit_math_h_l158_c15_cf53_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l151_c15_907d_left := VAR_uint22_21_6_bit_math_h_l151_c15_4a61_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l144_c15_c1ed_left := VAR_uint22_21_7_bit_math_h_l144_c15_350c_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l137_c15_ab21_left := VAR_uint22_21_8_bit_math_h_l137_c15_7174_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l130_c15_121c_left := VAR_uint22_21_9_bit_math_h_l130_c15_9571_return_output;
     -- BIN_OP_EQ[bit_math_h_l137_c15_ab21] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l137_c15_ab21_left <= VAR_BIN_OP_EQ_bit_math_h_l137_c15_ab21_left;
     BIN_OP_EQ_bit_math_h_l137_c15_ab21_right <= VAR_BIN_OP_EQ_bit_math_h_l137_c15_ab21_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l137_c15_ab21_return_output := BIN_OP_EQ_bit_math_h_l137_c15_ab21_return_output;

     -- BIN_OP_EQ[bit_math_h_l151_c15_907d] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l151_c15_907d_left <= VAR_BIN_OP_EQ_bit_math_h_l151_c15_907d_left;
     BIN_OP_EQ_bit_math_h_l151_c15_907d_right <= VAR_BIN_OP_EQ_bit_math_h_l151_c15_907d_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l151_c15_907d_return_output := BIN_OP_EQ_bit_math_h_l151_c15_907d_return_output;

     -- BIN_OP_EQ[bit_math_h_l130_c15_121c] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l130_c15_121c_left <= VAR_BIN_OP_EQ_bit_math_h_l130_c15_121c_left;
     BIN_OP_EQ_bit_math_h_l130_c15_121c_right <= VAR_BIN_OP_EQ_bit_math_h_l130_c15_121c_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l130_c15_121c_return_output := BIN_OP_EQ_bit_math_h_l130_c15_121c_return_output;

     -- BIN_OP_EQ[bit_math_h_l186_c15_1f53] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l186_c15_1f53_left <= VAR_BIN_OP_EQ_bit_math_h_l186_c15_1f53_left;
     BIN_OP_EQ_bit_math_h_l186_c15_1f53_right <= VAR_BIN_OP_EQ_bit_math_h_l186_c15_1f53_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l186_c15_1f53_return_output := BIN_OP_EQ_bit_math_h_l186_c15_1f53_return_output;

     -- BIN_OP_EQ[bit_math_h_l95_c14_82e8] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l95_c14_82e8_left <= VAR_BIN_OP_EQ_bit_math_h_l95_c14_82e8_left;
     BIN_OP_EQ_bit_math_h_l95_c14_82e8_right <= VAR_BIN_OP_EQ_bit_math_h_l95_c14_82e8_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l95_c14_82e8_return_output := BIN_OP_EQ_bit_math_h_l95_c14_82e8_return_output;

     -- BIN_OP_EQ[bit_math_h_l53_c14_5eaa] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l53_c14_5eaa_left <= VAR_BIN_OP_EQ_bit_math_h_l53_c14_5eaa_left;
     BIN_OP_EQ_bit_math_h_l53_c14_5eaa_right <= VAR_BIN_OP_EQ_bit_math_h_l53_c14_5eaa_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l53_c14_5eaa_return_output := BIN_OP_EQ_bit_math_h_l53_c14_5eaa_return_output;

     -- BIN_OP_EQ[bit_math_h_l158_c15_db96] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l158_c15_db96_left <= VAR_BIN_OP_EQ_bit_math_h_l158_c15_db96_left;
     BIN_OP_EQ_bit_math_h_l158_c15_db96_right <= VAR_BIN_OP_EQ_bit_math_h_l158_c15_db96_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l158_c15_db96_return_output := BIN_OP_EQ_bit_math_h_l158_c15_db96_return_output;

     -- BIN_OP_EQ[bit_math_h_l74_c14_bc8a] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l74_c14_bc8a_left <= VAR_BIN_OP_EQ_bit_math_h_l74_c14_bc8a_left;
     BIN_OP_EQ_bit_math_h_l74_c14_bc8a_right <= VAR_BIN_OP_EQ_bit_math_h_l74_c14_bc8a_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l74_c14_bc8a_return_output := BIN_OP_EQ_bit_math_h_l74_c14_bc8a_return_output;

     -- BIN_OP_EQ[bit_math_h_l88_c14_e049] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l88_c14_e049_left <= VAR_BIN_OP_EQ_bit_math_h_l88_c14_e049_left;
     BIN_OP_EQ_bit_math_h_l88_c14_e049_right <= VAR_BIN_OP_EQ_bit_math_h_l88_c14_e049_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l88_c14_e049_return_output := BIN_OP_EQ_bit_math_h_l88_c14_e049_return_output;

     -- BIN_OP_EQ[bit_math_h_l179_c15_f873] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l179_c15_f873_left <= VAR_BIN_OP_EQ_bit_math_h_l179_c15_f873_left;
     BIN_OP_EQ_bit_math_h_l179_c15_f873_right <= VAR_BIN_OP_EQ_bit_math_h_l179_c15_f873_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l179_c15_f873_return_output := BIN_OP_EQ_bit_math_h_l179_c15_f873_return_output;

     -- BIN_OP_EQ[bit_math_h_l116_c15_cbf9] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l116_c15_cbf9_left <= VAR_BIN_OP_EQ_bit_math_h_l116_c15_cbf9_left;
     BIN_OP_EQ_bit_math_h_l116_c15_cbf9_right <= VAR_BIN_OP_EQ_bit_math_h_l116_c15_cbf9_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l116_c15_cbf9_return_output := BIN_OP_EQ_bit_math_h_l116_c15_cbf9_return_output;

     -- BIN_OP_EQ[bit_math_h_l60_c14_1458] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l60_c14_1458_left <= VAR_BIN_OP_EQ_bit_math_h_l60_c14_1458_left;
     BIN_OP_EQ_bit_math_h_l60_c14_1458_right <= VAR_BIN_OP_EQ_bit_math_h_l60_c14_1458_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l60_c14_1458_return_output := BIN_OP_EQ_bit_math_h_l60_c14_1458_return_output;

     -- BIN_OP_EQ[bit_math_h_l109_c14_6f95] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l109_c14_6f95_left <= VAR_BIN_OP_EQ_bit_math_h_l109_c14_6f95_left;
     BIN_OP_EQ_bit_math_h_l109_c14_6f95_right <= VAR_BIN_OP_EQ_bit_math_h_l109_c14_6f95_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l109_c14_6f95_return_output := BIN_OP_EQ_bit_math_h_l109_c14_6f95_return_output;

     -- BIN_OP_EQ[bit_math_h_l81_c14_910c] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l81_c14_910c_left <= VAR_BIN_OP_EQ_bit_math_h_l81_c14_910c_left;
     BIN_OP_EQ_bit_math_h_l81_c14_910c_right <= VAR_BIN_OP_EQ_bit_math_h_l81_c14_910c_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l81_c14_910c_return_output := BIN_OP_EQ_bit_math_h_l81_c14_910c_return_output;

     -- BIN_OP_EQ[bit_math_h_l193_c15_7706] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l193_c15_7706_left <= VAR_BIN_OP_EQ_bit_math_h_l193_c15_7706_left;
     BIN_OP_EQ_bit_math_h_l193_c15_7706_right <= VAR_BIN_OP_EQ_bit_math_h_l193_c15_7706_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l193_c15_7706_return_output := BIN_OP_EQ_bit_math_h_l193_c15_7706_return_output;

     -- BIN_OP_EQ[bit_math_h_l67_c14_0bd8] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l67_c14_0bd8_left <= VAR_BIN_OP_EQ_bit_math_h_l67_c14_0bd8_left;
     BIN_OP_EQ_bit_math_h_l67_c14_0bd8_right <= VAR_BIN_OP_EQ_bit_math_h_l67_c14_0bd8_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l67_c14_0bd8_return_output := BIN_OP_EQ_bit_math_h_l67_c14_0bd8_return_output;

     -- BIN_OP_EQ[bit_math_h_l102_c14_ebec] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l102_c14_ebec_left <= VAR_BIN_OP_EQ_bit_math_h_l102_c14_ebec_left;
     BIN_OP_EQ_bit_math_h_l102_c14_ebec_right <= VAR_BIN_OP_EQ_bit_math_h_l102_c14_ebec_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l102_c14_ebec_return_output := BIN_OP_EQ_bit_math_h_l102_c14_ebec_return_output;

     -- BIN_OP_EQ[bit_math_h_l172_c15_8720] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l172_c15_8720_left <= VAR_BIN_OP_EQ_bit_math_h_l172_c15_8720_left;
     BIN_OP_EQ_bit_math_h_l172_c15_8720_right <= VAR_BIN_OP_EQ_bit_math_h_l172_c15_8720_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l172_c15_8720_return_output := BIN_OP_EQ_bit_math_h_l172_c15_8720_return_output;

     -- BIN_OP_EQ[bit_math_h_l123_c15_5af1] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l123_c15_5af1_left <= VAR_BIN_OP_EQ_bit_math_h_l123_c15_5af1_left;
     BIN_OP_EQ_bit_math_h_l123_c15_5af1_right <= VAR_BIN_OP_EQ_bit_math_h_l123_c15_5af1_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l123_c15_5af1_return_output := BIN_OP_EQ_bit_math_h_l123_c15_5af1_return_output;

     -- sum22_MUX[bit_math_h_l410_c3_5b97] LATENCY=0
     -- Inputs
     sum22_MUX_bit_math_h_l410_c3_5b97_cond <= VAR_sum22_MUX_bit_math_h_l410_c3_5b97_cond;
     sum22_MUX_bit_math_h_l410_c3_5b97_iftrue <= VAR_sum22_MUX_bit_math_h_l410_c3_5b97_iftrue;
     sum22_MUX_bit_math_h_l410_c3_5b97_iffalse <= VAR_sum22_MUX_bit_math_h_l410_c3_5b97_iffalse;
     -- Outputs
     VAR_sum22_MUX_bit_math_h_l410_c3_5b97_return_output := sum22_MUX_bit_math_h_l410_c3_5b97_return_output;

     -- BIN_OP_EQ[bit_math_h_l144_c15_c1ed] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l144_c15_c1ed_left <= VAR_BIN_OP_EQ_bit_math_h_l144_c15_c1ed_left;
     BIN_OP_EQ_bit_math_h_l144_c15_c1ed_right <= VAR_BIN_OP_EQ_bit_math_h_l144_c15_c1ed_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l144_c15_c1ed_return_output := BIN_OP_EQ_bit_math_h_l144_c15_c1ed_return_output;

     -- BIN_OP_EQ[bit_math_h_l165_c15_80b7] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l165_c15_80b7_left <= VAR_BIN_OP_EQ_bit_math_h_l165_c15_80b7_left;
     BIN_OP_EQ_bit_math_h_l165_c15_80b7_right <= VAR_BIN_OP_EQ_bit_math_h_l165_c15_80b7_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l165_c15_80b7_return_output := BIN_OP_EQ_bit_math_h_l165_c15_80b7_return_output;

     -- Submodule level 2
     VAR_sum8_MUX_bit_math_h_l270_c3_91db_cond := VAR_BIN_OP_EQ_bit_math_h_l102_c14_ebec_return_output;
     VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_cond := VAR_BIN_OP_EQ_bit_math_h_l109_c14_6f95_return_output;
     VAR_sum10_MUX_bit_math_h_l290_c3_3822_cond := VAR_BIN_OP_EQ_bit_math_h_l116_c15_cbf9_return_output;
     VAR_sum11_MUX_bit_math_h_l300_c3_2876_cond := VAR_BIN_OP_EQ_bit_math_h_l123_c15_5af1_return_output;
     VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_cond := VAR_BIN_OP_EQ_bit_math_h_l130_c15_121c_return_output;
     VAR_sum13_MUX_bit_math_h_l320_c3_5acf_cond := VAR_BIN_OP_EQ_bit_math_h_l137_c15_ab21_return_output;
     VAR_sum14_MUX_bit_math_h_l330_c3_32a3_cond := VAR_BIN_OP_EQ_bit_math_h_l144_c15_c1ed_return_output;
     VAR_sum15_MUX_bit_math_h_l340_c3_ae56_cond := VAR_BIN_OP_EQ_bit_math_h_l151_c15_907d_return_output;
     VAR_sum16_MUX_bit_math_h_l350_c3_9b55_cond := VAR_BIN_OP_EQ_bit_math_h_l158_c15_db96_return_output;
     VAR_sum17_MUX_bit_math_h_l360_c3_4441_cond := VAR_BIN_OP_EQ_bit_math_h_l165_c15_80b7_return_output;
     VAR_sum18_MUX_bit_math_h_l370_c3_32ed_cond := VAR_BIN_OP_EQ_bit_math_h_l172_c15_8720_return_output;
     VAR_sum19_MUX_bit_math_h_l380_c3_cd62_cond := VAR_BIN_OP_EQ_bit_math_h_l179_c15_f873_return_output;
     VAR_sum20_MUX_bit_math_h_l390_c3_c41c_cond := VAR_BIN_OP_EQ_bit_math_h_l186_c15_1f53_return_output;
     VAR_sum21_MUX_bit_math_h_l400_c3_b500_cond := VAR_BIN_OP_EQ_bit_math_h_l193_c15_7706_return_output;
     VAR_sum1_MUX_bit_math_h_l200_c3_1722_cond := VAR_BIN_OP_EQ_bit_math_h_l53_c14_5eaa_return_output;
     VAR_sum2_MUX_bit_math_h_l210_c3_82a8_cond := VAR_BIN_OP_EQ_bit_math_h_l60_c14_1458_return_output;
     VAR_sum3_MUX_bit_math_h_l220_c3_482b_cond := VAR_BIN_OP_EQ_bit_math_h_l67_c14_0bd8_return_output;
     VAR_sum4_MUX_bit_math_h_l230_c3_0cda_cond := VAR_BIN_OP_EQ_bit_math_h_l74_c14_bc8a_return_output;
     VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_cond := VAR_BIN_OP_EQ_bit_math_h_l81_c14_910c_return_output;
     VAR_sum6_MUX_bit_math_h_l250_c3_6372_cond := VAR_BIN_OP_EQ_bit_math_h_l88_c14_e049_return_output;
     VAR_sum7_MUX_bit_math_h_l260_c3_4539_cond := VAR_BIN_OP_EQ_bit_math_h_l95_c14_82e8_return_output;
     VAR_BIN_OP_OR_bit_math_h_l443_c23_ed7d_right := VAR_sum22_MUX_bit_math_h_l410_c3_5b97_return_output;
     -- sum8_MUX[bit_math_h_l270_c3_91db] LATENCY=0
     -- Inputs
     sum8_MUX_bit_math_h_l270_c3_91db_cond <= VAR_sum8_MUX_bit_math_h_l270_c3_91db_cond;
     sum8_MUX_bit_math_h_l270_c3_91db_iftrue <= VAR_sum8_MUX_bit_math_h_l270_c3_91db_iftrue;
     sum8_MUX_bit_math_h_l270_c3_91db_iffalse <= VAR_sum8_MUX_bit_math_h_l270_c3_91db_iffalse;
     -- Outputs
     VAR_sum8_MUX_bit_math_h_l270_c3_91db_return_output := sum8_MUX_bit_math_h_l270_c3_91db_return_output;

     -- sum11_MUX[bit_math_h_l300_c3_2876] LATENCY=0
     -- Inputs
     sum11_MUX_bit_math_h_l300_c3_2876_cond <= VAR_sum11_MUX_bit_math_h_l300_c3_2876_cond;
     sum11_MUX_bit_math_h_l300_c3_2876_iftrue <= VAR_sum11_MUX_bit_math_h_l300_c3_2876_iftrue;
     sum11_MUX_bit_math_h_l300_c3_2876_iffalse <= VAR_sum11_MUX_bit_math_h_l300_c3_2876_iffalse;
     -- Outputs
     VAR_sum11_MUX_bit_math_h_l300_c3_2876_return_output := sum11_MUX_bit_math_h_l300_c3_2876_return_output;

     -- sum18_MUX[bit_math_h_l370_c3_32ed] LATENCY=0
     -- Inputs
     sum18_MUX_bit_math_h_l370_c3_32ed_cond <= VAR_sum18_MUX_bit_math_h_l370_c3_32ed_cond;
     sum18_MUX_bit_math_h_l370_c3_32ed_iftrue <= VAR_sum18_MUX_bit_math_h_l370_c3_32ed_iftrue;
     sum18_MUX_bit_math_h_l370_c3_32ed_iffalse <= VAR_sum18_MUX_bit_math_h_l370_c3_32ed_iffalse;
     -- Outputs
     VAR_sum18_MUX_bit_math_h_l370_c3_32ed_return_output := sum18_MUX_bit_math_h_l370_c3_32ed_return_output;

     -- sum6_MUX[bit_math_h_l250_c3_6372] LATENCY=0
     -- Inputs
     sum6_MUX_bit_math_h_l250_c3_6372_cond <= VAR_sum6_MUX_bit_math_h_l250_c3_6372_cond;
     sum6_MUX_bit_math_h_l250_c3_6372_iftrue <= VAR_sum6_MUX_bit_math_h_l250_c3_6372_iftrue;
     sum6_MUX_bit_math_h_l250_c3_6372_iffalse <= VAR_sum6_MUX_bit_math_h_l250_c3_6372_iffalse;
     -- Outputs
     VAR_sum6_MUX_bit_math_h_l250_c3_6372_return_output := sum6_MUX_bit_math_h_l250_c3_6372_return_output;

     -- sum16_MUX[bit_math_h_l350_c3_9b55] LATENCY=0
     -- Inputs
     sum16_MUX_bit_math_h_l350_c3_9b55_cond <= VAR_sum16_MUX_bit_math_h_l350_c3_9b55_cond;
     sum16_MUX_bit_math_h_l350_c3_9b55_iftrue <= VAR_sum16_MUX_bit_math_h_l350_c3_9b55_iftrue;
     sum16_MUX_bit_math_h_l350_c3_9b55_iffalse <= VAR_sum16_MUX_bit_math_h_l350_c3_9b55_iffalse;
     -- Outputs
     VAR_sum16_MUX_bit_math_h_l350_c3_9b55_return_output := sum16_MUX_bit_math_h_l350_c3_9b55_return_output;

     -- sum14_MUX[bit_math_h_l330_c3_32a3] LATENCY=0
     -- Inputs
     sum14_MUX_bit_math_h_l330_c3_32a3_cond <= VAR_sum14_MUX_bit_math_h_l330_c3_32a3_cond;
     sum14_MUX_bit_math_h_l330_c3_32a3_iftrue <= VAR_sum14_MUX_bit_math_h_l330_c3_32a3_iftrue;
     sum14_MUX_bit_math_h_l330_c3_32a3_iffalse <= VAR_sum14_MUX_bit_math_h_l330_c3_32a3_iffalse;
     -- Outputs
     VAR_sum14_MUX_bit_math_h_l330_c3_32a3_return_output := sum14_MUX_bit_math_h_l330_c3_32a3_return_output;

     -- sum13_MUX[bit_math_h_l320_c3_5acf] LATENCY=0
     -- Inputs
     sum13_MUX_bit_math_h_l320_c3_5acf_cond <= VAR_sum13_MUX_bit_math_h_l320_c3_5acf_cond;
     sum13_MUX_bit_math_h_l320_c3_5acf_iftrue <= VAR_sum13_MUX_bit_math_h_l320_c3_5acf_iftrue;
     sum13_MUX_bit_math_h_l320_c3_5acf_iffalse <= VAR_sum13_MUX_bit_math_h_l320_c3_5acf_iffalse;
     -- Outputs
     VAR_sum13_MUX_bit_math_h_l320_c3_5acf_return_output := sum13_MUX_bit_math_h_l320_c3_5acf_return_output;

     -- sum19_MUX[bit_math_h_l380_c3_cd62] LATENCY=0
     -- Inputs
     sum19_MUX_bit_math_h_l380_c3_cd62_cond <= VAR_sum19_MUX_bit_math_h_l380_c3_cd62_cond;
     sum19_MUX_bit_math_h_l380_c3_cd62_iftrue <= VAR_sum19_MUX_bit_math_h_l380_c3_cd62_iftrue;
     sum19_MUX_bit_math_h_l380_c3_cd62_iffalse <= VAR_sum19_MUX_bit_math_h_l380_c3_cd62_iffalse;
     -- Outputs
     VAR_sum19_MUX_bit_math_h_l380_c3_cd62_return_output := sum19_MUX_bit_math_h_l380_c3_cd62_return_output;

     -- sum3_MUX[bit_math_h_l220_c3_482b] LATENCY=0
     -- Inputs
     sum3_MUX_bit_math_h_l220_c3_482b_cond <= VAR_sum3_MUX_bit_math_h_l220_c3_482b_cond;
     sum3_MUX_bit_math_h_l220_c3_482b_iftrue <= VAR_sum3_MUX_bit_math_h_l220_c3_482b_iftrue;
     sum3_MUX_bit_math_h_l220_c3_482b_iffalse <= VAR_sum3_MUX_bit_math_h_l220_c3_482b_iffalse;
     -- Outputs
     VAR_sum3_MUX_bit_math_h_l220_c3_482b_return_output := sum3_MUX_bit_math_h_l220_c3_482b_return_output;

     -- sum9_MUX[bit_math_h_l280_c3_4b7e] LATENCY=0
     -- Inputs
     sum9_MUX_bit_math_h_l280_c3_4b7e_cond <= VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_cond;
     sum9_MUX_bit_math_h_l280_c3_4b7e_iftrue <= VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_iftrue;
     sum9_MUX_bit_math_h_l280_c3_4b7e_iffalse <= VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_iffalse;
     -- Outputs
     VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_return_output := sum9_MUX_bit_math_h_l280_c3_4b7e_return_output;

     -- sum4_MUX[bit_math_h_l230_c3_0cda] LATENCY=0
     -- Inputs
     sum4_MUX_bit_math_h_l230_c3_0cda_cond <= VAR_sum4_MUX_bit_math_h_l230_c3_0cda_cond;
     sum4_MUX_bit_math_h_l230_c3_0cda_iftrue <= VAR_sum4_MUX_bit_math_h_l230_c3_0cda_iftrue;
     sum4_MUX_bit_math_h_l230_c3_0cda_iffalse <= VAR_sum4_MUX_bit_math_h_l230_c3_0cda_iffalse;
     -- Outputs
     VAR_sum4_MUX_bit_math_h_l230_c3_0cda_return_output := sum4_MUX_bit_math_h_l230_c3_0cda_return_output;

     -- sum2_MUX[bit_math_h_l210_c3_82a8] LATENCY=0
     -- Inputs
     sum2_MUX_bit_math_h_l210_c3_82a8_cond <= VAR_sum2_MUX_bit_math_h_l210_c3_82a8_cond;
     sum2_MUX_bit_math_h_l210_c3_82a8_iftrue <= VAR_sum2_MUX_bit_math_h_l210_c3_82a8_iftrue;
     sum2_MUX_bit_math_h_l210_c3_82a8_iffalse <= VAR_sum2_MUX_bit_math_h_l210_c3_82a8_iffalse;
     -- Outputs
     VAR_sum2_MUX_bit_math_h_l210_c3_82a8_return_output := sum2_MUX_bit_math_h_l210_c3_82a8_return_output;

     -- sum10_MUX[bit_math_h_l290_c3_3822] LATENCY=0
     -- Inputs
     sum10_MUX_bit_math_h_l290_c3_3822_cond <= VAR_sum10_MUX_bit_math_h_l290_c3_3822_cond;
     sum10_MUX_bit_math_h_l290_c3_3822_iftrue <= VAR_sum10_MUX_bit_math_h_l290_c3_3822_iftrue;
     sum10_MUX_bit_math_h_l290_c3_3822_iffalse <= VAR_sum10_MUX_bit_math_h_l290_c3_3822_iffalse;
     -- Outputs
     VAR_sum10_MUX_bit_math_h_l290_c3_3822_return_output := sum10_MUX_bit_math_h_l290_c3_3822_return_output;

     -- sum21_MUX[bit_math_h_l400_c3_b500] LATENCY=0
     -- Inputs
     sum21_MUX_bit_math_h_l400_c3_b500_cond <= VAR_sum21_MUX_bit_math_h_l400_c3_b500_cond;
     sum21_MUX_bit_math_h_l400_c3_b500_iftrue <= VAR_sum21_MUX_bit_math_h_l400_c3_b500_iftrue;
     sum21_MUX_bit_math_h_l400_c3_b500_iffalse <= VAR_sum21_MUX_bit_math_h_l400_c3_b500_iffalse;
     -- Outputs
     VAR_sum21_MUX_bit_math_h_l400_c3_b500_return_output := sum21_MUX_bit_math_h_l400_c3_b500_return_output;

     -- sum15_MUX[bit_math_h_l340_c3_ae56] LATENCY=0
     -- Inputs
     sum15_MUX_bit_math_h_l340_c3_ae56_cond <= VAR_sum15_MUX_bit_math_h_l340_c3_ae56_cond;
     sum15_MUX_bit_math_h_l340_c3_ae56_iftrue <= VAR_sum15_MUX_bit_math_h_l340_c3_ae56_iftrue;
     sum15_MUX_bit_math_h_l340_c3_ae56_iffalse <= VAR_sum15_MUX_bit_math_h_l340_c3_ae56_iffalse;
     -- Outputs
     VAR_sum15_MUX_bit_math_h_l340_c3_ae56_return_output := sum15_MUX_bit_math_h_l340_c3_ae56_return_output;

     -- sum12_MUX[bit_math_h_l310_c3_d2ec] LATENCY=0
     -- Inputs
     sum12_MUX_bit_math_h_l310_c3_d2ec_cond <= VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_cond;
     sum12_MUX_bit_math_h_l310_c3_d2ec_iftrue <= VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_iftrue;
     sum12_MUX_bit_math_h_l310_c3_d2ec_iffalse <= VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_iffalse;
     -- Outputs
     VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_return_output := sum12_MUX_bit_math_h_l310_c3_d2ec_return_output;

     -- sum7_MUX[bit_math_h_l260_c3_4539] LATENCY=0
     -- Inputs
     sum7_MUX_bit_math_h_l260_c3_4539_cond <= VAR_sum7_MUX_bit_math_h_l260_c3_4539_cond;
     sum7_MUX_bit_math_h_l260_c3_4539_iftrue <= VAR_sum7_MUX_bit_math_h_l260_c3_4539_iftrue;
     sum7_MUX_bit_math_h_l260_c3_4539_iffalse <= VAR_sum7_MUX_bit_math_h_l260_c3_4539_iffalse;
     -- Outputs
     VAR_sum7_MUX_bit_math_h_l260_c3_4539_return_output := sum7_MUX_bit_math_h_l260_c3_4539_return_output;

     -- sum20_MUX[bit_math_h_l390_c3_c41c] LATENCY=0
     -- Inputs
     sum20_MUX_bit_math_h_l390_c3_c41c_cond <= VAR_sum20_MUX_bit_math_h_l390_c3_c41c_cond;
     sum20_MUX_bit_math_h_l390_c3_c41c_iftrue <= VAR_sum20_MUX_bit_math_h_l390_c3_c41c_iftrue;
     sum20_MUX_bit_math_h_l390_c3_c41c_iffalse <= VAR_sum20_MUX_bit_math_h_l390_c3_c41c_iffalse;
     -- Outputs
     VAR_sum20_MUX_bit_math_h_l390_c3_c41c_return_output := sum20_MUX_bit_math_h_l390_c3_c41c_return_output;

     -- sum1_MUX[bit_math_h_l200_c3_1722] LATENCY=0
     -- Inputs
     sum1_MUX_bit_math_h_l200_c3_1722_cond <= VAR_sum1_MUX_bit_math_h_l200_c3_1722_cond;
     sum1_MUX_bit_math_h_l200_c3_1722_iftrue <= VAR_sum1_MUX_bit_math_h_l200_c3_1722_iftrue;
     sum1_MUX_bit_math_h_l200_c3_1722_iffalse <= VAR_sum1_MUX_bit_math_h_l200_c3_1722_iffalse;
     -- Outputs
     VAR_sum1_MUX_bit_math_h_l200_c3_1722_return_output := sum1_MUX_bit_math_h_l200_c3_1722_return_output;

     -- sum5_MUX[bit_math_h_l240_c3_bf3c] LATENCY=0
     -- Inputs
     sum5_MUX_bit_math_h_l240_c3_bf3c_cond <= VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_cond;
     sum5_MUX_bit_math_h_l240_c3_bf3c_iftrue <= VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_iftrue;
     sum5_MUX_bit_math_h_l240_c3_bf3c_iffalse <= VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_iffalse;
     -- Outputs
     VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_return_output := sum5_MUX_bit_math_h_l240_c3_bf3c_return_output;

     -- sum17_MUX[bit_math_h_l360_c3_4441] LATENCY=0
     -- Inputs
     sum17_MUX_bit_math_h_l360_c3_4441_cond <= VAR_sum17_MUX_bit_math_h_l360_c3_4441_cond;
     sum17_MUX_bit_math_h_l360_c3_4441_iftrue <= VAR_sum17_MUX_bit_math_h_l360_c3_4441_iftrue;
     sum17_MUX_bit_math_h_l360_c3_4441_iffalse <= VAR_sum17_MUX_bit_math_h_l360_c3_4441_iffalse;
     -- Outputs
     VAR_sum17_MUX_bit_math_h_l360_c3_4441_return_output := sum17_MUX_bit_math_h_l360_c3_4441_return_output;

     -- Submodule level 3
     VAR_BIN_OP_OR_bit_math_h_l431_c22_6bdd_right := VAR_sum10_MUX_bit_math_h_l290_c3_3822_return_output;
     VAR_BIN_OP_OR_bit_math_h_l433_c22_d4f8_left := VAR_sum11_MUX_bit_math_h_l300_c3_2876_return_output;
     VAR_BIN_OP_OR_bit_math_h_l433_c22_d4f8_right := VAR_sum12_MUX_bit_math_h_l310_c3_d2ec_return_output;
     VAR_BIN_OP_OR_bit_math_h_l435_c22_6082_left := VAR_sum13_MUX_bit_math_h_l320_c3_5acf_return_output;
     VAR_BIN_OP_OR_bit_math_h_l435_c22_6082_right := VAR_sum14_MUX_bit_math_h_l330_c3_32a3_return_output;
     VAR_BIN_OP_OR_bit_math_h_l437_c22_c2f3_left := VAR_sum15_MUX_bit_math_h_l340_c3_ae56_return_output;
     VAR_BIN_OP_OR_bit_math_h_l437_c22_c2f3_right := VAR_sum16_MUX_bit_math_h_l350_c3_9b55_return_output;
     VAR_BIN_OP_OR_bit_math_h_l439_c22_413b_left := VAR_sum17_MUX_bit_math_h_l360_c3_4441_return_output;
     VAR_BIN_OP_OR_bit_math_h_l439_c22_413b_right := VAR_sum18_MUX_bit_math_h_l370_c3_32ed_return_output;
     VAR_BIN_OP_OR_bit_math_h_l441_c22_f969_left := VAR_sum19_MUX_bit_math_h_l380_c3_cd62_return_output;
     VAR_BIN_OP_OR_bit_math_h_l423_c22_ad78_left := VAR_sum1_MUX_bit_math_h_l200_c3_1722_return_output;
     VAR_BIN_OP_OR_bit_math_h_l441_c22_f969_right := VAR_sum20_MUX_bit_math_h_l390_c3_c41c_return_output;
     VAR_BIN_OP_OR_bit_math_h_l443_c23_ed7d_left := VAR_sum21_MUX_bit_math_h_l400_c3_b500_return_output;
     VAR_BIN_OP_OR_bit_math_h_l423_c22_ad78_right := VAR_sum2_MUX_bit_math_h_l210_c3_82a8_return_output;
     VAR_BIN_OP_OR_bit_math_h_l425_c22_0b14_left := VAR_sum3_MUX_bit_math_h_l220_c3_482b_return_output;
     VAR_BIN_OP_OR_bit_math_h_l425_c22_0b14_right := VAR_sum4_MUX_bit_math_h_l230_c3_0cda_return_output;
     VAR_BIN_OP_OR_bit_math_h_l427_c22_5949_left := VAR_sum5_MUX_bit_math_h_l240_c3_bf3c_return_output;
     VAR_BIN_OP_OR_bit_math_h_l427_c22_5949_right := VAR_sum6_MUX_bit_math_h_l250_c3_6372_return_output;
     VAR_BIN_OP_OR_bit_math_h_l429_c22_c342_left := VAR_sum7_MUX_bit_math_h_l260_c3_4539_return_output;
     VAR_BIN_OP_OR_bit_math_h_l429_c22_c342_right := VAR_sum8_MUX_bit_math_h_l270_c3_91db_return_output;
     VAR_BIN_OP_OR_bit_math_h_l431_c22_6bdd_left := VAR_sum9_MUX_bit_math_h_l280_c3_4b7e_return_output;
     -- BIN_OP_OR[bit_math_h_l427_c22_5949] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l427_c22_5949_left <= VAR_BIN_OP_OR_bit_math_h_l427_c22_5949_left;
     BIN_OP_OR_bit_math_h_l427_c22_5949_right <= VAR_BIN_OP_OR_bit_math_h_l427_c22_5949_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l427_c22_5949_return_output := BIN_OP_OR_bit_math_h_l427_c22_5949_return_output;

     -- BIN_OP_OR[bit_math_h_l439_c22_413b] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l439_c22_413b_left <= VAR_BIN_OP_OR_bit_math_h_l439_c22_413b_left;
     BIN_OP_OR_bit_math_h_l439_c22_413b_right <= VAR_BIN_OP_OR_bit_math_h_l439_c22_413b_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l439_c22_413b_return_output := BIN_OP_OR_bit_math_h_l439_c22_413b_return_output;

     -- BIN_OP_OR[bit_math_h_l443_c23_ed7d] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l443_c23_ed7d_left <= VAR_BIN_OP_OR_bit_math_h_l443_c23_ed7d_left;
     BIN_OP_OR_bit_math_h_l443_c23_ed7d_right <= VAR_BIN_OP_OR_bit_math_h_l443_c23_ed7d_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l443_c23_ed7d_return_output := BIN_OP_OR_bit_math_h_l443_c23_ed7d_return_output;

     -- BIN_OP_OR[bit_math_h_l441_c22_f969] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l441_c22_f969_left <= VAR_BIN_OP_OR_bit_math_h_l441_c22_f969_left;
     BIN_OP_OR_bit_math_h_l441_c22_f969_right <= VAR_BIN_OP_OR_bit_math_h_l441_c22_f969_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l441_c22_f969_return_output := BIN_OP_OR_bit_math_h_l441_c22_f969_return_output;

     -- BIN_OP_OR[bit_math_h_l435_c22_6082] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l435_c22_6082_left <= VAR_BIN_OP_OR_bit_math_h_l435_c22_6082_left;
     BIN_OP_OR_bit_math_h_l435_c22_6082_right <= VAR_BIN_OP_OR_bit_math_h_l435_c22_6082_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l435_c22_6082_return_output := BIN_OP_OR_bit_math_h_l435_c22_6082_return_output;

     -- BIN_OP_OR[bit_math_h_l423_c22_ad78] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l423_c22_ad78_left <= VAR_BIN_OP_OR_bit_math_h_l423_c22_ad78_left;
     BIN_OP_OR_bit_math_h_l423_c22_ad78_right <= VAR_BIN_OP_OR_bit_math_h_l423_c22_ad78_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l423_c22_ad78_return_output := BIN_OP_OR_bit_math_h_l423_c22_ad78_return_output;

     -- BIN_OP_OR[bit_math_h_l425_c22_0b14] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l425_c22_0b14_left <= VAR_BIN_OP_OR_bit_math_h_l425_c22_0b14_left;
     BIN_OP_OR_bit_math_h_l425_c22_0b14_right <= VAR_BIN_OP_OR_bit_math_h_l425_c22_0b14_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l425_c22_0b14_return_output := BIN_OP_OR_bit_math_h_l425_c22_0b14_return_output;

     -- BIN_OP_OR[bit_math_h_l433_c22_d4f8] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l433_c22_d4f8_left <= VAR_BIN_OP_OR_bit_math_h_l433_c22_d4f8_left;
     BIN_OP_OR_bit_math_h_l433_c22_d4f8_right <= VAR_BIN_OP_OR_bit_math_h_l433_c22_d4f8_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l433_c22_d4f8_return_output := BIN_OP_OR_bit_math_h_l433_c22_d4f8_return_output;

     -- BIN_OP_OR[bit_math_h_l429_c22_c342] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l429_c22_c342_left <= VAR_BIN_OP_OR_bit_math_h_l429_c22_c342_left;
     BIN_OP_OR_bit_math_h_l429_c22_c342_right <= VAR_BIN_OP_OR_bit_math_h_l429_c22_c342_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l429_c22_c342_return_output := BIN_OP_OR_bit_math_h_l429_c22_c342_return_output;

     -- BIN_OP_OR[bit_math_h_l437_c22_c2f3] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l437_c22_c2f3_left <= VAR_BIN_OP_OR_bit_math_h_l437_c22_c2f3_left;
     BIN_OP_OR_bit_math_h_l437_c22_c2f3_right <= VAR_BIN_OP_OR_bit_math_h_l437_c22_c2f3_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l437_c22_c2f3_return_output := BIN_OP_OR_bit_math_h_l437_c22_c2f3_return_output;

     -- BIN_OP_OR[bit_math_h_l431_c22_6bdd] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l431_c22_6bdd_left <= VAR_BIN_OP_OR_bit_math_h_l431_c22_6bdd_left;
     BIN_OP_OR_bit_math_h_l431_c22_6bdd_right <= VAR_BIN_OP_OR_bit_math_h_l431_c22_6bdd_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l431_c22_6bdd_return_output := BIN_OP_OR_bit_math_h_l431_c22_6bdd_return_output;

     -- Submodule level 4
     VAR_BIN_OP_OR_bit_math_h_l447_c22_6443_left := VAR_BIN_OP_OR_bit_math_h_l423_c22_ad78_return_output;
     VAR_BIN_OP_OR_bit_math_h_l447_c22_6443_right := VAR_BIN_OP_OR_bit_math_h_l425_c22_0b14_return_output;
     VAR_BIN_OP_OR_bit_math_h_l449_c22_7b22_left := VAR_BIN_OP_OR_bit_math_h_l427_c22_5949_return_output;
     VAR_BIN_OP_OR_bit_math_h_l449_c22_7b22_right := VAR_BIN_OP_OR_bit_math_h_l429_c22_c342_return_output;
     VAR_BIN_OP_OR_bit_math_h_l451_c22_b9cf_left := VAR_BIN_OP_OR_bit_math_h_l431_c22_6bdd_return_output;
     VAR_BIN_OP_OR_bit_math_h_l451_c22_b9cf_right := VAR_BIN_OP_OR_bit_math_h_l433_c22_d4f8_return_output;
     VAR_BIN_OP_OR_bit_math_h_l453_c22_e0f8_left := VAR_BIN_OP_OR_bit_math_h_l435_c22_6082_return_output;
     VAR_BIN_OP_OR_bit_math_h_l453_c22_e0f8_right := VAR_BIN_OP_OR_bit_math_h_l437_c22_c2f3_return_output;
     VAR_BIN_OP_OR_bit_math_h_l455_c22_f9be_left := VAR_BIN_OP_OR_bit_math_h_l439_c22_413b_return_output;
     VAR_BIN_OP_OR_bit_math_h_l455_c22_f9be_right := VAR_BIN_OP_OR_bit_math_h_l441_c22_f969_return_output;
     VAR_BIN_OP_OR_bit_math_h_l466_c22_9917_right := VAR_BIN_OP_OR_bit_math_h_l443_c23_ed7d_return_output;
     -- BIN_OP_OR[bit_math_h_l453_c22_e0f8] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l453_c22_e0f8_left <= VAR_BIN_OP_OR_bit_math_h_l453_c22_e0f8_left;
     BIN_OP_OR_bit_math_h_l453_c22_e0f8_right <= VAR_BIN_OP_OR_bit_math_h_l453_c22_e0f8_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l453_c22_e0f8_return_output := BIN_OP_OR_bit_math_h_l453_c22_e0f8_return_output;

     -- BIN_OP_OR[bit_math_h_l449_c22_7b22] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l449_c22_7b22_left <= VAR_BIN_OP_OR_bit_math_h_l449_c22_7b22_left;
     BIN_OP_OR_bit_math_h_l449_c22_7b22_right <= VAR_BIN_OP_OR_bit_math_h_l449_c22_7b22_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l449_c22_7b22_return_output := BIN_OP_OR_bit_math_h_l449_c22_7b22_return_output;

     -- BIN_OP_OR[bit_math_h_l451_c22_b9cf] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l451_c22_b9cf_left <= VAR_BIN_OP_OR_bit_math_h_l451_c22_b9cf_left;
     BIN_OP_OR_bit_math_h_l451_c22_b9cf_right <= VAR_BIN_OP_OR_bit_math_h_l451_c22_b9cf_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l451_c22_b9cf_return_output := BIN_OP_OR_bit_math_h_l451_c22_b9cf_return_output;

     -- BIN_OP_OR[bit_math_h_l455_c22_f9be] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l455_c22_f9be_left <= VAR_BIN_OP_OR_bit_math_h_l455_c22_f9be_left;
     BIN_OP_OR_bit_math_h_l455_c22_f9be_right <= VAR_BIN_OP_OR_bit_math_h_l455_c22_f9be_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l455_c22_f9be_return_output := BIN_OP_OR_bit_math_h_l455_c22_f9be_return_output;

     -- BIN_OP_OR[bit_math_h_l447_c22_6443] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l447_c22_6443_left <= VAR_BIN_OP_OR_bit_math_h_l447_c22_6443_left;
     BIN_OP_OR_bit_math_h_l447_c22_6443_right <= VAR_BIN_OP_OR_bit_math_h_l447_c22_6443_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l447_c22_6443_return_output := BIN_OP_OR_bit_math_h_l447_c22_6443_return_output;

     -- Submodule level 5
     VAR_BIN_OP_OR_bit_math_h_l462_c22_7d70_left := VAR_BIN_OP_OR_bit_math_h_l447_c22_6443_return_output;
     VAR_BIN_OP_OR_bit_math_h_l462_c22_7d70_right := VAR_BIN_OP_OR_bit_math_h_l449_c22_7b22_return_output;
     VAR_BIN_OP_OR_bit_math_h_l464_c22_da8d_left := VAR_BIN_OP_OR_bit_math_h_l451_c22_b9cf_return_output;
     VAR_BIN_OP_OR_bit_math_h_l464_c22_da8d_right := VAR_BIN_OP_OR_bit_math_h_l453_c22_e0f8_return_output;
     VAR_BIN_OP_OR_bit_math_h_l466_c22_9917_left := VAR_BIN_OP_OR_bit_math_h_l455_c22_f9be_return_output;
     -- BIN_OP_OR[bit_math_h_l464_c22_da8d] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l464_c22_da8d_left <= VAR_BIN_OP_OR_bit_math_h_l464_c22_da8d_left;
     BIN_OP_OR_bit_math_h_l464_c22_da8d_right <= VAR_BIN_OP_OR_bit_math_h_l464_c22_da8d_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l464_c22_da8d_return_output := BIN_OP_OR_bit_math_h_l464_c22_da8d_return_output;

     -- BIN_OP_OR[bit_math_h_l462_c22_7d70] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l462_c22_7d70_left <= VAR_BIN_OP_OR_bit_math_h_l462_c22_7d70_left;
     BIN_OP_OR_bit_math_h_l462_c22_7d70_right <= VAR_BIN_OP_OR_bit_math_h_l462_c22_7d70_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l462_c22_7d70_return_output := BIN_OP_OR_bit_math_h_l462_c22_7d70_return_output;

     -- BIN_OP_OR[bit_math_h_l466_c22_9917] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l466_c22_9917_left <= VAR_BIN_OP_OR_bit_math_h_l466_c22_9917_left;
     BIN_OP_OR_bit_math_h_l466_c22_9917_right <= VAR_BIN_OP_OR_bit_math_h_l466_c22_9917_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l466_c22_9917_return_output := BIN_OP_OR_bit_math_h_l466_c22_9917_return_output;

     -- Submodule level 6
     VAR_BIN_OP_OR_bit_math_h_l470_c22_e132_left := VAR_BIN_OP_OR_bit_math_h_l462_c22_7d70_return_output;
     VAR_BIN_OP_OR_bit_math_h_l470_c22_e132_right := VAR_BIN_OP_OR_bit_math_h_l464_c22_da8d_return_output;
     VAR_BIN_OP_OR_bit_math_h_l477_c22_e8e6_right := VAR_BIN_OP_OR_bit_math_h_l466_c22_9917_return_output;
     -- BIN_OP_OR[bit_math_h_l470_c22_e132] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l470_c22_e132_left <= VAR_BIN_OP_OR_bit_math_h_l470_c22_e132_left;
     BIN_OP_OR_bit_math_h_l470_c22_e132_right <= VAR_BIN_OP_OR_bit_math_h_l470_c22_e132_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l470_c22_e132_return_output := BIN_OP_OR_bit_math_h_l470_c22_e132_return_output;

     -- Submodule level 7
     VAR_BIN_OP_OR_bit_math_h_l477_c22_e8e6_left := VAR_BIN_OP_OR_bit_math_h_l470_c22_e132_return_output;
     -- BIN_OP_OR[bit_math_h_l477_c22_e8e6] LATENCY=0
     -- Inputs
     BIN_OP_OR_bit_math_h_l477_c22_e8e6_left <= VAR_BIN_OP_OR_bit_math_h_l477_c22_e8e6_left;
     BIN_OP_OR_bit_math_h_l477_c22_e8e6_right <= VAR_BIN_OP_OR_bit_math_h_l477_c22_e8e6_right;
     -- Outputs
     VAR_BIN_OP_OR_bit_math_h_l477_c22_e8e6_return_output := BIN_OP_OR_bit_math_h_l477_c22_e8e6_return_output;

     -- Submodule level 8
     VAR_return_output := VAR_BIN_OP_OR_bit_math_h_l477_c22_e8e6_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
