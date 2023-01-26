
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- All structs defined in C code

package c_structs_pkg is
subtype uint1_t is unsigned(0 downto 0);
subtype uint2_t is unsigned(1 downto 0);
subtype int2_t is signed(1 downto 0);
subtype uint3_t is unsigned(2 downto 0);
subtype int3_t is signed(2 downto 0);
subtype uint4_t is unsigned(3 downto 0);
subtype int4_t is signed(3 downto 0);
subtype uint5_t is unsigned(4 downto 0);
subtype int5_t is signed(4 downto 0);
subtype uint6_t is unsigned(5 downto 0);
subtype int6_t is signed(5 downto 0);
subtype uint7_t is unsigned(6 downto 0);
subtype int7_t is signed(6 downto 0);
subtype uint8_t is unsigned(7 downto 0);
subtype int8_t is signed(7 downto 0);
subtype uint9_t is unsigned(8 downto 0);
subtype int9_t is signed(8 downto 0);
subtype uint10_t is unsigned(9 downto 0);
subtype int10_t is signed(9 downto 0);
subtype uint11_t is unsigned(10 downto 0);
subtype int11_t is signed(10 downto 0);
subtype uint12_t is unsigned(11 downto 0);
subtype int12_t is signed(11 downto 0);
subtype uint13_t is unsigned(12 downto 0);
subtype int13_t is signed(12 downto 0);
subtype uint14_t is unsigned(13 downto 0);
subtype int14_t is signed(13 downto 0);
subtype uint15_t is unsigned(14 downto 0);
subtype int15_t is signed(14 downto 0);
subtype uint16_t is unsigned(15 downto 0);
subtype int16_t is signed(15 downto 0);
subtype uint17_t is unsigned(16 downto 0);
subtype int17_t is signed(16 downto 0);
subtype uint18_t is unsigned(17 downto 0);
subtype int18_t is signed(17 downto 0);
subtype uint19_t is unsigned(18 downto 0);
subtype int19_t is signed(18 downto 0);
subtype uint20_t is unsigned(19 downto 0);
subtype int20_t is signed(19 downto 0);
subtype uint21_t is unsigned(20 downto 0);
subtype int21_t is signed(20 downto 0);
subtype uint22_t is unsigned(21 downto 0);
subtype int22_t is signed(21 downto 0);
subtype uint23_t is unsigned(22 downto 0);
subtype int23_t is signed(22 downto 0);
subtype uint24_t is unsigned(23 downto 0);
subtype int24_t is signed(23 downto 0);
subtype uint25_t is unsigned(24 downto 0);
subtype int25_t is signed(24 downto 0);
subtype uint26_t is unsigned(25 downto 0);
subtype int26_t is signed(25 downto 0);
subtype uint27_t is unsigned(26 downto 0);
subtype int27_t is signed(26 downto 0);
subtype uint28_t is unsigned(27 downto 0);
subtype int28_t is signed(27 downto 0);
subtype uint29_t is unsigned(28 downto 0);
subtype int29_t is signed(28 downto 0);
subtype uint30_t is unsigned(29 downto 0);
subtype int30_t is signed(29 downto 0);
subtype uint31_t is unsigned(30 downto 0);
subtype int31_t is signed(30 downto 0);
subtype uint32_t is unsigned(31 downto 0);
subtype int32_t is signed(31 downto 0);
subtype uint33_t is unsigned(32 downto 0);
subtype int33_t is signed(32 downto 0);
subtype uint34_t is unsigned(33 downto 0);
subtype int34_t is signed(33 downto 0);
subtype uint35_t is unsigned(34 downto 0);
subtype int35_t is signed(34 downto 0);
subtype uint36_t is unsigned(35 downto 0);
subtype int36_t is signed(35 downto 0);
subtype uint37_t is unsigned(36 downto 0);
subtype int37_t is signed(36 downto 0);
subtype uint38_t is unsigned(37 downto 0);
subtype int38_t is signed(37 downto 0);
subtype uint39_t is unsigned(38 downto 0);
subtype int39_t is signed(38 downto 0);
subtype uint40_t is unsigned(39 downto 0);
subtype int40_t is signed(39 downto 0);
subtype uint41_t is unsigned(40 downto 0);
subtype int41_t is signed(40 downto 0);
subtype uint42_t is unsigned(41 downto 0);
subtype int42_t is signed(41 downto 0);
subtype uint43_t is unsigned(42 downto 0);
subtype int43_t is signed(42 downto 0);
subtype uint44_t is unsigned(43 downto 0);
subtype int44_t is signed(43 downto 0);
subtype uint45_t is unsigned(44 downto 0);
subtype int45_t is signed(44 downto 0);
subtype uint46_t is unsigned(45 downto 0);
subtype int46_t is signed(45 downto 0);
subtype uint47_t is unsigned(46 downto 0);
subtype int47_t is signed(46 downto 0);
subtype uint48_t is unsigned(47 downto 0);
subtype int48_t is signed(47 downto 0);
subtype uint49_t is unsigned(48 downto 0);
subtype int49_t is signed(48 downto 0);
subtype uint50_t is unsigned(49 downto 0);
subtype int50_t is signed(49 downto 0);
subtype uint51_t is unsigned(50 downto 0);
subtype int51_t is signed(50 downto 0);
subtype uint52_t is unsigned(51 downto 0);
subtype int52_t is signed(51 downto 0);
subtype uint53_t is unsigned(52 downto 0);
subtype int53_t is signed(52 downto 0);
subtype uint54_t is unsigned(53 downto 0);
subtype int54_t is signed(53 downto 0);
subtype uint55_t is unsigned(54 downto 0);
subtype int55_t is signed(54 downto 0);
subtype uint56_t is unsigned(55 downto 0);
subtype int56_t is signed(55 downto 0);
subtype uint57_t is unsigned(56 downto 0);
subtype int57_t is signed(56 downto 0);
subtype uint58_t is unsigned(57 downto 0);
subtype int58_t is signed(57 downto 0);
subtype uint59_t is unsigned(58 downto 0);
subtype int59_t is signed(58 downto 0);
subtype uint60_t is unsigned(59 downto 0);
subtype int60_t is signed(59 downto 0);
subtype uint61_t is unsigned(60 downto 0);
subtype int61_t is signed(60 downto 0);
subtype uint62_t is unsigned(61 downto 0);
subtype int62_t is signed(61 downto 0);
subtype uint63_t is unsigned(62 downto 0);
subtype int63_t is signed(62 downto 0);
subtype uint64_t is unsigned(63 downto 0);
subtype int64_t is signed(63 downto 0);
subtype uint65_t is unsigned(64 downto 0);
subtype int65_t is signed(64 downto 0);
subtype uint66_t is unsigned(65 downto 0);
subtype int66_t is signed(65 downto 0);
subtype uint67_t is unsigned(66 downto 0);
subtype int67_t is signed(66 downto 0);
subtype uint68_t is unsigned(67 downto 0);
subtype int68_t is signed(67 downto 0);
subtype uint69_t is unsigned(68 downto 0);
subtype int69_t is signed(68 downto 0);
subtype uint70_t is unsigned(69 downto 0);
subtype int70_t is signed(69 downto 0);
subtype uint71_t is unsigned(70 downto 0);
subtype int71_t is signed(70 downto 0);
subtype uint72_t is unsigned(71 downto 0);
subtype int72_t is signed(71 downto 0);
subtype uint73_t is unsigned(72 downto 0);
subtype int73_t is signed(72 downto 0);
subtype uint74_t is unsigned(73 downto 0);
subtype int74_t is signed(73 downto 0);
subtype uint75_t is unsigned(74 downto 0);
subtype int75_t is signed(74 downto 0);
subtype uint76_t is unsigned(75 downto 0);
subtype int76_t is signed(75 downto 0);
subtype uint77_t is unsigned(76 downto 0);
subtype int77_t is signed(76 downto 0);
subtype uint78_t is unsigned(77 downto 0);
subtype int78_t is signed(77 downto 0);
subtype uint79_t is unsigned(78 downto 0);
subtype int79_t is signed(78 downto 0);
subtype uint80_t is unsigned(79 downto 0);
subtype int80_t is signed(79 downto 0);
subtype uint81_t is unsigned(80 downto 0);
subtype int81_t is signed(80 downto 0);
subtype uint82_t is unsigned(81 downto 0);
subtype int82_t is signed(81 downto 0);
subtype uint83_t is unsigned(82 downto 0);
subtype int83_t is signed(82 downto 0);
subtype uint84_t is unsigned(83 downto 0);
subtype int84_t is signed(83 downto 0);
subtype uint85_t is unsigned(84 downto 0);
subtype int85_t is signed(84 downto 0);
subtype uint86_t is unsigned(85 downto 0);
subtype int86_t is signed(85 downto 0);
subtype uint87_t is unsigned(86 downto 0);
subtype int87_t is signed(86 downto 0);
subtype uint88_t is unsigned(87 downto 0);
subtype int88_t is signed(87 downto 0);
subtype uint89_t is unsigned(88 downto 0);
subtype int89_t is signed(88 downto 0);
subtype uint90_t is unsigned(89 downto 0);
subtype int90_t is signed(89 downto 0);
subtype uint91_t is unsigned(90 downto 0);
subtype int91_t is signed(90 downto 0);
subtype uint92_t is unsigned(91 downto 0);
subtype int92_t is signed(91 downto 0);
subtype uint93_t is unsigned(92 downto 0);
subtype int93_t is signed(92 downto 0);
subtype uint94_t is unsigned(93 downto 0);
subtype int94_t is signed(93 downto 0);
subtype uint95_t is unsigned(94 downto 0);
subtype int95_t is signed(94 downto 0);
subtype uint96_t is unsigned(95 downto 0);
subtype int96_t is signed(95 downto 0);
subtype uint97_t is unsigned(96 downto 0);
subtype int97_t is signed(96 downto 0);
subtype uint98_t is unsigned(97 downto 0);
subtype int98_t is signed(97 downto 0);
subtype uint99_t is unsigned(98 downto 0);
subtype int99_t is signed(98 downto 0);
subtype uint100_t is unsigned(99 downto 0);
subtype int100_t is signed(99 downto 0);
subtype uint101_t is unsigned(100 downto 0);
subtype int101_t is signed(100 downto 0);
subtype uint102_t is unsigned(101 downto 0);
subtype int102_t is signed(101 downto 0);
subtype uint103_t is unsigned(102 downto 0);
subtype int103_t is signed(102 downto 0);
subtype uint104_t is unsigned(103 downto 0);
subtype int104_t is signed(103 downto 0);
subtype uint105_t is unsigned(104 downto 0);
subtype int105_t is signed(104 downto 0);
subtype uint106_t is unsigned(105 downto 0);
subtype int106_t is signed(105 downto 0);
subtype uint107_t is unsigned(106 downto 0);
subtype int107_t is signed(106 downto 0);
subtype uint108_t is unsigned(107 downto 0);
subtype int108_t is signed(107 downto 0);
subtype uint109_t is unsigned(108 downto 0);
subtype int109_t is signed(108 downto 0);
subtype uint110_t is unsigned(109 downto 0);
subtype int110_t is signed(109 downto 0);
subtype uint111_t is unsigned(110 downto 0);
subtype int111_t is signed(110 downto 0);
subtype uint112_t is unsigned(111 downto 0);
subtype int112_t is signed(111 downto 0);
subtype uint113_t is unsigned(112 downto 0);
subtype int113_t is signed(112 downto 0);
subtype uint114_t is unsigned(113 downto 0);
subtype int114_t is signed(113 downto 0);
subtype uint115_t is unsigned(114 downto 0);
subtype int115_t is signed(114 downto 0);
subtype uint116_t is unsigned(115 downto 0);
subtype int116_t is signed(115 downto 0);
subtype uint117_t is unsigned(116 downto 0);
subtype int117_t is signed(116 downto 0);
subtype uint118_t is unsigned(117 downto 0);
subtype int118_t is signed(117 downto 0);
subtype uint119_t is unsigned(118 downto 0);
subtype int119_t is signed(118 downto 0);
subtype uint120_t is unsigned(119 downto 0);
subtype int120_t is signed(119 downto 0);
subtype uint121_t is unsigned(120 downto 0);
subtype int121_t is signed(120 downto 0);
subtype uint122_t is unsigned(121 downto 0);
subtype int122_t is signed(121 downto 0);
subtype uint123_t is unsigned(122 downto 0);
subtype int123_t is signed(122 downto 0);
subtype uint124_t is unsigned(123 downto 0);
subtype int124_t is signed(123 downto 0);
subtype uint125_t is unsigned(124 downto 0);
subtype int125_t is signed(124 downto 0);
subtype uint126_t is unsigned(125 downto 0);
subtype int126_t is signed(125 downto 0);
subtype uint127_t is unsigned(126 downto 0);
subtype int127_t is signed(126 downto 0);
subtype uint128_t is unsigned(127 downto 0);
subtype int128_t is signed(127 downto 0);
subtype uint129_t is unsigned(128 downto 0);
subtype int129_t is signed(128 downto 0);
subtype uint130_t is unsigned(129 downto 0);
subtype int130_t is signed(129 downto 0);
subtype uint131_t is unsigned(130 downto 0);
subtype int131_t is signed(130 downto 0);
subtype uint132_t is unsigned(131 downto 0);
subtype int132_t is signed(131 downto 0);
subtype uint133_t is unsigned(132 downto 0);
subtype int133_t is signed(132 downto 0);
subtype uint134_t is unsigned(133 downto 0);
subtype int134_t is signed(133 downto 0);
subtype uint135_t is unsigned(134 downto 0);
subtype int135_t is signed(134 downto 0);
subtype uint136_t is unsigned(135 downto 0);
subtype int136_t is signed(135 downto 0);
subtype uint137_t is unsigned(136 downto 0);
subtype int137_t is signed(136 downto 0);
subtype uint138_t is unsigned(137 downto 0);
subtype int138_t is signed(137 downto 0);
subtype uint139_t is unsigned(138 downto 0);
subtype int139_t is signed(138 downto 0);
subtype uint140_t is unsigned(139 downto 0);
subtype int140_t is signed(139 downto 0);
subtype uint141_t is unsigned(140 downto 0);
subtype int141_t is signed(140 downto 0);
subtype uint142_t is unsigned(141 downto 0);
subtype int142_t is signed(141 downto 0);
subtype uint143_t is unsigned(142 downto 0);
subtype int143_t is signed(142 downto 0);
subtype uint144_t is unsigned(143 downto 0);
subtype int144_t is signed(143 downto 0);
subtype uint145_t is unsigned(144 downto 0);
subtype int145_t is signed(144 downto 0);
subtype uint146_t is unsigned(145 downto 0);
subtype int146_t is signed(145 downto 0);
subtype uint147_t is unsigned(146 downto 0);
subtype int147_t is signed(146 downto 0);
subtype uint148_t is unsigned(147 downto 0);
subtype int148_t is signed(147 downto 0);
subtype uint149_t is unsigned(148 downto 0);
subtype int149_t is signed(148 downto 0);
subtype uint150_t is unsigned(149 downto 0);
subtype int150_t is signed(149 downto 0);
subtype uint151_t is unsigned(150 downto 0);
subtype int151_t is signed(150 downto 0);
subtype uint152_t is unsigned(151 downto 0);
subtype int152_t is signed(151 downto 0);
subtype uint153_t is unsigned(152 downto 0);
subtype int153_t is signed(152 downto 0);
subtype uint154_t is unsigned(153 downto 0);
subtype int154_t is signed(153 downto 0);
subtype uint155_t is unsigned(154 downto 0);
subtype int155_t is signed(154 downto 0);
subtype uint156_t is unsigned(155 downto 0);
subtype int156_t is signed(155 downto 0);
subtype uint157_t is unsigned(156 downto 0);
subtype int157_t is signed(156 downto 0);
subtype uint158_t is unsigned(157 downto 0);
subtype int158_t is signed(157 downto 0);
subtype uint159_t is unsigned(158 downto 0);
subtype int159_t is signed(158 downto 0);
subtype uint160_t is unsigned(159 downto 0);
subtype int160_t is signed(159 downto 0);
subtype uint161_t is unsigned(160 downto 0);
subtype int161_t is signed(160 downto 0);
subtype uint162_t is unsigned(161 downto 0);
subtype int162_t is signed(161 downto 0);
subtype uint163_t is unsigned(162 downto 0);
subtype int163_t is signed(162 downto 0);
subtype uint164_t is unsigned(163 downto 0);
subtype int164_t is signed(163 downto 0);
subtype uint165_t is unsigned(164 downto 0);
subtype int165_t is signed(164 downto 0);
subtype uint166_t is unsigned(165 downto 0);
subtype int166_t is signed(165 downto 0);
subtype uint167_t is unsigned(166 downto 0);
subtype int167_t is signed(166 downto 0);
subtype uint168_t is unsigned(167 downto 0);
subtype int168_t is signed(167 downto 0);
subtype uint169_t is unsigned(168 downto 0);
subtype int169_t is signed(168 downto 0);
subtype uint170_t is unsigned(169 downto 0);
subtype int170_t is signed(169 downto 0);
subtype uint171_t is unsigned(170 downto 0);
subtype int171_t is signed(170 downto 0);
subtype uint172_t is unsigned(171 downto 0);
subtype int172_t is signed(171 downto 0);
subtype uint173_t is unsigned(172 downto 0);
subtype int173_t is signed(172 downto 0);
subtype uint174_t is unsigned(173 downto 0);
subtype int174_t is signed(173 downto 0);
subtype uint175_t is unsigned(174 downto 0);
subtype int175_t is signed(174 downto 0);
subtype uint176_t is unsigned(175 downto 0);
subtype int176_t is signed(175 downto 0);
subtype uint177_t is unsigned(176 downto 0);
subtype int177_t is signed(176 downto 0);
subtype uint178_t is unsigned(177 downto 0);
subtype int178_t is signed(177 downto 0);
subtype uint179_t is unsigned(178 downto 0);
subtype int179_t is signed(178 downto 0);
subtype uint180_t is unsigned(179 downto 0);
subtype int180_t is signed(179 downto 0);
subtype uint181_t is unsigned(180 downto 0);
subtype int181_t is signed(180 downto 0);
subtype uint182_t is unsigned(181 downto 0);
subtype int182_t is signed(181 downto 0);
subtype uint183_t is unsigned(182 downto 0);
subtype int183_t is signed(182 downto 0);
subtype uint184_t is unsigned(183 downto 0);
subtype int184_t is signed(183 downto 0);
subtype uint185_t is unsigned(184 downto 0);
subtype int185_t is signed(184 downto 0);
subtype uint186_t is unsigned(185 downto 0);
subtype int186_t is signed(185 downto 0);
subtype uint187_t is unsigned(186 downto 0);
subtype int187_t is signed(186 downto 0);
subtype uint188_t is unsigned(187 downto 0);
subtype int188_t is signed(187 downto 0);
subtype uint189_t is unsigned(188 downto 0);
subtype int189_t is signed(188 downto 0);
subtype uint190_t is unsigned(189 downto 0);
subtype int190_t is signed(189 downto 0);
subtype uint191_t is unsigned(190 downto 0);
subtype int191_t is signed(190 downto 0);
subtype uint192_t is unsigned(191 downto 0);
subtype int192_t is signed(191 downto 0);
subtype uint193_t is unsigned(192 downto 0);
subtype int193_t is signed(192 downto 0);
subtype uint194_t is unsigned(193 downto 0);
subtype int194_t is signed(193 downto 0);
subtype uint195_t is unsigned(194 downto 0);
subtype int195_t is signed(194 downto 0);
subtype uint196_t is unsigned(195 downto 0);
subtype int196_t is signed(195 downto 0);
subtype uint197_t is unsigned(196 downto 0);
subtype int197_t is signed(196 downto 0);
subtype uint198_t is unsigned(197 downto 0);
subtype int198_t is signed(197 downto 0);
subtype uint199_t is unsigned(198 downto 0);
subtype int199_t is signed(198 downto 0);
subtype uint200_t is unsigned(199 downto 0);
subtype int200_t is signed(199 downto 0);
subtype uint201_t is unsigned(200 downto 0);
subtype int201_t is signed(200 downto 0);
subtype uint202_t is unsigned(201 downto 0);
subtype int202_t is signed(201 downto 0);
subtype uint203_t is unsigned(202 downto 0);
subtype int203_t is signed(202 downto 0);
subtype uint204_t is unsigned(203 downto 0);
subtype int204_t is signed(203 downto 0);
subtype uint205_t is unsigned(204 downto 0);
subtype int205_t is signed(204 downto 0);
subtype uint206_t is unsigned(205 downto 0);
subtype int206_t is signed(205 downto 0);
subtype uint207_t is unsigned(206 downto 0);
subtype int207_t is signed(206 downto 0);
subtype uint208_t is unsigned(207 downto 0);
subtype int208_t is signed(207 downto 0);
subtype uint209_t is unsigned(208 downto 0);
subtype int209_t is signed(208 downto 0);
subtype uint210_t is unsigned(209 downto 0);
subtype int210_t is signed(209 downto 0);
subtype uint211_t is unsigned(210 downto 0);
subtype int211_t is signed(210 downto 0);
subtype uint212_t is unsigned(211 downto 0);
subtype int212_t is signed(211 downto 0);
subtype uint213_t is unsigned(212 downto 0);
subtype int213_t is signed(212 downto 0);
subtype uint214_t is unsigned(213 downto 0);
subtype int214_t is signed(213 downto 0);
subtype uint215_t is unsigned(214 downto 0);
subtype int215_t is signed(214 downto 0);
subtype uint216_t is unsigned(215 downto 0);
subtype int216_t is signed(215 downto 0);
subtype uint217_t is unsigned(216 downto 0);
subtype int217_t is signed(216 downto 0);
subtype uint218_t is unsigned(217 downto 0);
subtype int218_t is signed(217 downto 0);
subtype uint219_t is unsigned(218 downto 0);
subtype int219_t is signed(218 downto 0);
subtype uint220_t is unsigned(219 downto 0);
subtype int220_t is signed(219 downto 0);
subtype uint221_t is unsigned(220 downto 0);
subtype int221_t is signed(220 downto 0);
subtype uint222_t is unsigned(221 downto 0);
subtype int222_t is signed(221 downto 0);
subtype uint223_t is unsigned(222 downto 0);
subtype int223_t is signed(222 downto 0);
subtype uint224_t is unsigned(223 downto 0);
subtype int224_t is signed(223 downto 0);
subtype uint225_t is unsigned(224 downto 0);
subtype int225_t is signed(224 downto 0);
subtype uint226_t is unsigned(225 downto 0);
subtype int226_t is signed(225 downto 0);
subtype uint227_t is unsigned(226 downto 0);
subtype int227_t is signed(226 downto 0);
subtype uint228_t is unsigned(227 downto 0);
subtype int228_t is signed(227 downto 0);
subtype uint229_t is unsigned(228 downto 0);
subtype int229_t is signed(228 downto 0);
subtype uint230_t is unsigned(229 downto 0);
subtype int230_t is signed(229 downto 0);
subtype uint231_t is unsigned(230 downto 0);
subtype int231_t is signed(230 downto 0);
subtype uint232_t is unsigned(231 downto 0);
subtype int232_t is signed(231 downto 0);
subtype uint233_t is unsigned(232 downto 0);
subtype int233_t is signed(232 downto 0);
subtype uint234_t is unsigned(233 downto 0);
subtype int234_t is signed(233 downto 0);
subtype uint235_t is unsigned(234 downto 0);
subtype int235_t is signed(234 downto 0);
subtype uint236_t is unsigned(235 downto 0);
subtype int236_t is signed(235 downto 0);
subtype uint237_t is unsigned(236 downto 0);
subtype int237_t is signed(236 downto 0);
subtype uint238_t is unsigned(237 downto 0);
subtype int238_t is signed(237 downto 0);
subtype uint239_t is unsigned(238 downto 0);
subtype int239_t is signed(238 downto 0);
subtype uint240_t is unsigned(239 downto 0);
subtype int240_t is signed(239 downto 0);
subtype uint241_t is unsigned(240 downto 0);
subtype int241_t is signed(240 downto 0);
subtype uint242_t is unsigned(241 downto 0);
subtype int242_t is signed(241 downto 0);
subtype uint243_t is unsigned(242 downto 0);
subtype int243_t is signed(242 downto 0);
subtype uint244_t is unsigned(243 downto 0);
subtype int244_t is signed(243 downto 0);
subtype uint245_t is unsigned(244 downto 0);
subtype int245_t is signed(244 downto 0);
subtype uint246_t is unsigned(245 downto 0);
subtype int246_t is signed(245 downto 0);
subtype uint247_t is unsigned(246 downto 0);
subtype int247_t is signed(246 downto 0);
subtype uint248_t is unsigned(247 downto 0);
subtype int248_t is signed(247 downto 0);
subtype uint249_t is unsigned(248 downto 0);
subtype int249_t is signed(248 downto 0);
subtype uint250_t is unsigned(249 downto 0);
subtype int250_t is signed(249 downto 0);
subtype uint251_t is unsigned(250 downto 0);
subtype int251_t is signed(250 downto 0);
subtype uint252_t is unsigned(251 downto 0);
subtype int252_t is signed(251 downto 0);
subtype uint253_t is unsigned(252 downto 0);
subtype int253_t is signed(252 downto 0);
subtype uint254_t is unsigned(253 downto 0);
subtype int254_t is signed(253 downto 0);
subtype uint255_t is unsigned(254 downto 0);
subtype int255_t is signed(254 downto 0);
subtype uint256_t is unsigned(255 downto 0);
subtype int256_t is signed(255 downto 0);
subtype uint257_t is unsigned(256 downto 0);
subtype int257_t is signed(256 downto 0);
subtype uint258_t is unsigned(257 downto 0);
subtype int258_t is signed(257 downto 0);
subtype uint259_t is unsigned(258 downto 0);
subtype int259_t is signed(258 downto 0);
subtype uint260_t is unsigned(259 downto 0);
subtype int260_t is signed(259 downto 0);
subtype uint261_t is unsigned(260 downto 0);
subtype int261_t is signed(260 downto 0);
subtype uint262_t is unsigned(261 downto 0);
subtype int262_t is signed(261 downto 0);
subtype uint263_t is unsigned(262 downto 0);
subtype int263_t is signed(262 downto 0);
subtype uint264_t is unsigned(263 downto 0);
subtype int264_t is signed(263 downto 0);
subtype uint265_t is unsigned(264 downto 0);
subtype int265_t is signed(264 downto 0);
subtype uint266_t is unsigned(265 downto 0);
subtype int266_t is signed(265 downto 0);
subtype uint267_t is unsigned(266 downto 0);
subtype int267_t is signed(266 downto 0);
subtype uint268_t is unsigned(267 downto 0);
subtype int268_t is signed(267 downto 0);
subtype uint269_t is unsigned(268 downto 0);
subtype int269_t is signed(268 downto 0);
subtype uint270_t is unsigned(269 downto 0);
subtype int270_t is signed(269 downto 0);
subtype uint271_t is unsigned(270 downto 0);
subtype int271_t is signed(270 downto 0);
subtype uint272_t is unsigned(271 downto 0);
subtype int272_t is signed(271 downto 0);
subtype uint273_t is unsigned(272 downto 0);
subtype int273_t is signed(272 downto 0);
subtype uint274_t is unsigned(273 downto 0);
subtype int274_t is signed(273 downto 0);
subtype uint275_t is unsigned(274 downto 0);
subtype int275_t is signed(274 downto 0);
subtype uint276_t is unsigned(275 downto 0);
subtype int276_t is signed(275 downto 0);
subtype uint277_t is unsigned(276 downto 0);
subtype int277_t is signed(276 downto 0);
subtype uint278_t is unsigned(277 downto 0);
subtype int278_t is signed(277 downto 0);
subtype uint279_t is unsigned(278 downto 0);
subtype int279_t is signed(278 downto 0);
subtype uint280_t is unsigned(279 downto 0);
subtype int280_t is signed(279 downto 0);
subtype uint281_t is unsigned(280 downto 0);
subtype int281_t is signed(280 downto 0);
subtype uint282_t is unsigned(281 downto 0);
subtype int282_t is signed(281 downto 0);
subtype uint283_t is unsigned(282 downto 0);
subtype int283_t is signed(282 downto 0);
subtype uint284_t is unsigned(283 downto 0);
subtype int284_t is signed(283 downto 0);
subtype uint285_t is unsigned(284 downto 0);
subtype int285_t is signed(284 downto 0);
subtype uint286_t is unsigned(285 downto 0);
subtype int286_t is signed(285 downto 0);
subtype uint287_t is unsigned(286 downto 0);
subtype int287_t is signed(286 downto 0);
subtype uint288_t is unsigned(287 downto 0);
subtype int288_t is signed(287 downto 0);
subtype uint289_t is unsigned(288 downto 0);
subtype int289_t is signed(288 downto 0);
subtype uint290_t is unsigned(289 downto 0);
subtype int290_t is signed(289 downto 0);
subtype uint291_t is unsigned(290 downto 0);
subtype int291_t is signed(290 downto 0);
subtype uint292_t is unsigned(291 downto 0);
subtype int292_t is signed(291 downto 0);
subtype uint293_t is unsigned(292 downto 0);
subtype int293_t is signed(292 downto 0);
subtype uint294_t is unsigned(293 downto 0);
subtype int294_t is signed(293 downto 0);
subtype uint295_t is unsigned(294 downto 0);
subtype int295_t is signed(294 downto 0);
subtype uint296_t is unsigned(295 downto 0);
subtype int296_t is signed(295 downto 0);
subtype uint297_t is unsigned(296 downto 0);
subtype int297_t is signed(296 downto 0);
subtype uint298_t is unsigned(297 downto 0);
subtype int298_t is signed(297 downto 0);
subtype uint299_t is unsigned(298 downto 0);
subtype int299_t is signed(298 downto 0);
subtype uint300_t is unsigned(299 downto 0);
subtype int300_t is signed(299 downto 0);
subtype uint301_t is unsigned(300 downto 0);
subtype int301_t is signed(300 downto 0);
subtype uint302_t is unsigned(301 downto 0);
subtype int302_t is signed(301 downto 0);
subtype uint303_t is unsigned(302 downto 0);
subtype int303_t is signed(302 downto 0);
subtype uint304_t is unsigned(303 downto 0);
subtype int304_t is signed(303 downto 0);
subtype uint305_t is unsigned(304 downto 0);
subtype int305_t is signed(304 downto 0);
subtype uint306_t is unsigned(305 downto 0);
subtype int306_t is signed(305 downto 0);
subtype uint307_t is unsigned(306 downto 0);
subtype int307_t is signed(306 downto 0);
subtype uint308_t is unsigned(307 downto 0);
subtype int308_t is signed(307 downto 0);
subtype uint309_t is unsigned(308 downto 0);
subtype int309_t is signed(308 downto 0);
subtype uint310_t is unsigned(309 downto 0);
subtype int310_t is signed(309 downto 0);
subtype uint311_t is unsigned(310 downto 0);
subtype int311_t is signed(310 downto 0);
subtype uint312_t is unsigned(311 downto 0);
subtype int312_t is signed(311 downto 0);
subtype uint313_t is unsigned(312 downto 0);
subtype int313_t is signed(312 downto 0);
subtype uint314_t is unsigned(313 downto 0);
subtype int314_t is signed(313 downto 0);
subtype uint315_t is unsigned(314 downto 0);
subtype int315_t is signed(314 downto 0);
subtype uint316_t is unsigned(315 downto 0);
subtype int316_t is signed(315 downto 0);
subtype uint317_t is unsigned(316 downto 0);
subtype int317_t is signed(316 downto 0);
subtype uint318_t is unsigned(317 downto 0);
subtype int318_t is signed(317 downto 0);
subtype uint319_t is unsigned(318 downto 0);
subtype int319_t is signed(318 downto 0);
subtype uint320_t is unsigned(319 downto 0);
subtype int320_t is signed(319 downto 0);
subtype uint321_t is unsigned(320 downto 0);
subtype int321_t is signed(320 downto 0);
subtype uint322_t is unsigned(321 downto 0);
subtype int322_t is signed(321 downto 0);
subtype uint323_t is unsigned(322 downto 0);
subtype int323_t is signed(322 downto 0);
subtype uint324_t is unsigned(323 downto 0);
subtype int324_t is signed(323 downto 0);
subtype uint325_t is unsigned(324 downto 0);
subtype int325_t is signed(324 downto 0);
subtype uint326_t is unsigned(325 downto 0);
subtype int326_t is signed(325 downto 0);
subtype uint327_t is unsigned(326 downto 0);
subtype int327_t is signed(326 downto 0);
subtype uint328_t is unsigned(327 downto 0);
subtype int328_t is signed(327 downto 0);
subtype uint329_t is unsigned(328 downto 0);
subtype int329_t is signed(328 downto 0);
subtype uint330_t is unsigned(329 downto 0);
subtype int330_t is signed(329 downto 0);
subtype uint331_t is unsigned(330 downto 0);
subtype int331_t is signed(330 downto 0);
subtype uint332_t is unsigned(331 downto 0);
subtype int332_t is signed(331 downto 0);
subtype uint333_t is unsigned(332 downto 0);
subtype int333_t is signed(332 downto 0);
subtype uint334_t is unsigned(333 downto 0);
subtype int334_t is signed(333 downto 0);
subtype uint335_t is unsigned(334 downto 0);
subtype int335_t is signed(334 downto 0);
subtype uint336_t is unsigned(335 downto 0);
subtype int336_t is signed(335 downto 0);
subtype uint337_t is unsigned(336 downto 0);
subtype int337_t is signed(336 downto 0);
subtype uint338_t is unsigned(337 downto 0);
subtype int338_t is signed(337 downto 0);
subtype uint339_t is unsigned(338 downto 0);
subtype int339_t is signed(338 downto 0);
subtype uint340_t is unsigned(339 downto 0);
subtype int340_t is signed(339 downto 0);
subtype uint341_t is unsigned(340 downto 0);
subtype int341_t is signed(340 downto 0);
subtype uint342_t is unsigned(341 downto 0);
subtype int342_t is signed(341 downto 0);
subtype uint343_t is unsigned(342 downto 0);
subtype int343_t is signed(342 downto 0);
subtype uint344_t is unsigned(343 downto 0);
subtype int344_t is signed(343 downto 0);
subtype uint345_t is unsigned(344 downto 0);
subtype int345_t is signed(344 downto 0);
subtype uint346_t is unsigned(345 downto 0);
subtype int346_t is signed(345 downto 0);
subtype uint347_t is unsigned(346 downto 0);
subtype int347_t is signed(346 downto 0);
subtype uint348_t is unsigned(347 downto 0);
subtype int348_t is signed(347 downto 0);
subtype uint349_t is unsigned(348 downto 0);
subtype int349_t is signed(348 downto 0);
subtype uint350_t is unsigned(349 downto 0);
subtype int350_t is signed(349 downto 0);
subtype uint351_t is unsigned(350 downto 0);
subtype int351_t is signed(350 downto 0);
subtype uint352_t is unsigned(351 downto 0);
subtype int352_t is signed(351 downto 0);
subtype uint353_t is unsigned(352 downto 0);
subtype int353_t is signed(352 downto 0);
subtype uint354_t is unsigned(353 downto 0);
subtype int354_t is signed(353 downto 0);
subtype uint355_t is unsigned(354 downto 0);
subtype int355_t is signed(354 downto 0);
subtype uint356_t is unsigned(355 downto 0);
subtype int356_t is signed(355 downto 0);
subtype uint357_t is unsigned(356 downto 0);
subtype int357_t is signed(356 downto 0);
subtype uint358_t is unsigned(357 downto 0);
subtype int358_t is signed(357 downto 0);
subtype uint359_t is unsigned(358 downto 0);
subtype int359_t is signed(358 downto 0);
subtype uint360_t is unsigned(359 downto 0);
subtype int360_t is signed(359 downto 0);
subtype uint361_t is unsigned(360 downto 0);
subtype int361_t is signed(360 downto 0);
subtype uint362_t is unsigned(361 downto 0);
subtype int362_t is signed(361 downto 0);
subtype uint363_t is unsigned(362 downto 0);
subtype int363_t is signed(362 downto 0);
subtype uint364_t is unsigned(363 downto 0);
subtype int364_t is signed(363 downto 0);
subtype uint365_t is unsigned(364 downto 0);
subtype int365_t is signed(364 downto 0);
subtype uint366_t is unsigned(365 downto 0);
subtype int366_t is signed(365 downto 0);
subtype uint367_t is unsigned(366 downto 0);
subtype int367_t is signed(366 downto 0);
subtype uint368_t is unsigned(367 downto 0);
subtype int368_t is signed(367 downto 0);
subtype uint369_t is unsigned(368 downto 0);
subtype int369_t is signed(368 downto 0);
subtype uint370_t is unsigned(369 downto 0);
subtype int370_t is signed(369 downto 0);
subtype uint371_t is unsigned(370 downto 0);
subtype int371_t is signed(370 downto 0);
subtype uint372_t is unsigned(371 downto 0);
subtype int372_t is signed(371 downto 0);
subtype uint373_t is unsigned(372 downto 0);
subtype int373_t is signed(372 downto 0);
subtype uint374_t is unsigned(373 downto 0);
subtype int374_t is signed(373 downto 0);
subtype uint375_t is unsigned(374 downto 0);
subtype int375_t is signed(374 downto 0);
subtype uint376_t is unsigned(375 downto 0);
subtype int376_t is signed(375 downto 0);
subtype uint377_t is unsigned(376 downto 0);
subtype int377_t is signed(376 downto 0);
subtype uint378_t is unsigned(377 downto 0);
subtype int378_t is signed(377 downto 0);
subtype uint379_t is unsigned(378 downto 0);
subtype int379_t is signed(378 downto 0);
subtype uint380_t is unsigned(379 downto 0);
subtype int380_t is signed(379 downto 0);
subtype uint381_t is unsigned(380 downto 0);
subtype int381_t is signed(380 downto 0);
subtype uint382_t is unsigned(381 downto 0);
subtype int382_t is signed(381 downto 0);
subtype uint383_t is unsigned(382 downto 0);
subtype int383_t is signed(382 downto 0);
subtype uint384_t is unsigned(383 downto 0);
subtype int384_t is signed(383 downto 0);
subtype uint385_t is unsigned(384 downto 0);
subtype int385_t is signed(384 downto 0);
subtype uint386_t is unsigned(385 downto 0);
subtype int386_t is signed(385 downto 0);
subtype uint387_t is unsigned(386 downto 0);
subtype int387_t is signed(386 downto 0);
subtype uint388_t is unsigned(387 downto 0);
subtype int388_t is signed(387 downto 0);
subtype uint389_t is unsigned(388 downto 0);
subtype int389_t is signed(388 downto 0);
subtype uint390_t is unsigned(389 downto 0);
subtype int390_t is signed(389 downto 0);
subtype uint391_t is unsigned(390 downto 0);
subtype int391_t is signed(390 downto 0);
subtype uint392_t is unsigned(391 downto 0);
subtype int392_t is signed(391 downto 0);
subtype uint393_t is unsigned(392 downto 0);
subtype int393_t is signed(392 downto 0);
subtype uint394_t is unsigned(393 downto 0);
subtype int394_t is signed(393 downto 0);
subtype uint395_t is unsigned(394 downto 0);
subtype int395_t is signed(394 downto 0);
subtype uint396_t is unsigned(395 downto 0);
subtype int396_t is signed(395 downto 0);
subtype uint397_t is unsigned(396 downto 0);
subtype int397_t is signed(396 downto 0);
subtype uint398_t is unsigned(397 downto 0);
subtype int398_t is signed(397 downto 0);
subtype uint399_t is unsigned(398 downto 0);
subtype int399_t is signed(398 downto 0);
subtype uint400_t is unsigned(399 downto 0);
subtype int400_t is signed(399 downto 0);
subtype uint401_t is unsigned(400 downto 0);
subtype int401_t is signed(400 downto 0);
subtype uint402_t is unsigned(401 downto 0);
subtype int402_t is signed(401 downto 0);
subtype uint403_t is unsigned(402 downto 0);
subtype int403_t is signed(402 downto 0);
subtype uint404_t is unsigned(403 downto 0);
subtype int404_t is signed(403 downto 0);
subtype uint405_t is unsigned(404 downto 0);
subtype int405_t is signed(404 downto 0);
subtype uint406_t is unsigned(405 downto 0);
subtype int406_t is signed(405 downto 0);
subtype uint407_t is unsigned(406 downto 0);
subtype int407_t is signed(406 downto 0);
subtype uint408_t is unsigned(407 downto 0);
subtype int408_t is signed(407 downto 0);
subtype uint409_t is unsigned(408 downto 0);
subtype int409_t is signed(408 downto 0);
subtype uint410_t is unsigned(409 downto 0);
subtype int410_t is signed(409 downto 0);
subtype uint411_t is unsigned(410 downto 0);
subtype int411_t is signed(410 downto 0);
subtype uint412_t is unsigned(411 downto 0);
subtype int412_t is signed(411 downto 0);
subtype uint413_t is unsigned(412 downto 0);
subtype int413_t is signed(412 downto 0);
subtype uint414_t is unsigned(413 downto 0);
subtype int414_t is signed(413 downto 0);
subtype uint415_t is unsigned(414 downto 0);
subtype int415_t is signed(414 downto 0);
subtype uint416_t is unsigned(415 downto 0);
subtype int416_t is signed(415 downto 0);
subtype uint417_t is unsigned(416 downto 0);
subtype int417_t is signed(416 downto 0);
subtype uint418_t is unsigned(417 downto 0);
subtype int418_t is signed(417 downto 0);
subtype uint419_t is unsigned(418 downto 0);
subtype int419_t is signed(418 downto 0);
subtype uint420_t is unsigned(419 downto 0);
subtype int420_t is signed(419 downto 0);
subtype uint421_t is unsigned(420 downto 0);
subtype int421_t is signed(420 downto 0);
subtype uint422_t is unsigned(421 downto 0);
subtype int422_t is signed(421 downto 0);
subtype uint423_t is unsigned(422 downto 0);
subtype int423_t is signed(422 downto 0);
subtype uint424_t is unsigned(423 downto 0);
subtype int424_t is signed(423 downto 0);
subtype uint425_t is unsigned(424 downto 0);
subtype int425_t is signed(424 downto 0);
subtype uint426_t is unsigned(425 downto 0);
subtype int426_t is signed(425 downto 0);
subtype uint427_t is unsigned(426 downto 0);
subtype int427_t is signed(426 downto 0);
subtype uint428_t is unsigned(427 downto 0);
subtype int428_t is signed(427 downto 0);
subtype uint429_t is unsigned(428 downto 0);
subtype int429_t is signed(428 downto 0);
subtype uint430_t is unsigned(429 downto 0);
subtype int430_t is signed(429 downto 0);
subtype uint431_t is unsigned(430 downto 0);
subtype int431_t is signed(430 downto 0);
subtype uint432_t is unsigned(431 downto 0);
subtype int432_t is signed(431 downto 0);
subtype uint433_t is unsigned(432 downto 0);
subtype int433_t is signed(432 downto 0);
subtype uint434_t is unsigned(433 downto 0);
subtype int434_t is signed(433 downto 0);
subtype uint435_t is unsigned(434 downto 0);
subtype int435_t is signed(434 downto 0);
subtype uint436_t is unsigned(435 downto 0);
subtype int436_t is signed(435 downto 0);
subtype uint437_t is unsigned(436 downto 0);
subtype int437_t is signed(436 downto 0);
subtype uint438_t is unsigned(437 downto 0);
subtype int438_t is signed(437 downto 0);
subtype uint439_t is unsigned(438 downto 0);
subtype int439_t is signed(438 downto 0);
subtype uint440_t is unsigned(439 downto 0);
subtype int440_t is signed(439 downto 0);
subtype uint441_t is unsigned(440 downto 0);
subtype int441_t is signed(440 downto 0);
subtype uint442_t is unsigned(441 downto 0);
subtype int442_t is signed(441 downto 0);
subtype uint443_t is unsigned(442 downto 0);
subtype int443_t is signed(442 downto 0);
subtype uint444_t is unsigned(443 downto 0);
subtype int444_t is signed(443 downto 0);
subtype uint445_t is unsigned(444 downto 0);
subtype int445_t is signed(444 downto 0);
subtype uint446_t is unsigned(445 downto 0);
subtype int446_t is signed(445 downto 0);
subtype uint447_t is unsigned(446 downto 0);
subtype int447_t is signed(446 downto 0);
subtype uint448_t is unsigned(447 downto 0);
subtype int448_t is signed(447 downto 0);
subtype uint449_t is unsigned(448 downto 0);
subtype int449_t is signed(448 downto 0);
subtype uint450_t is unsigned(449 downto 0);
subtype int450_t is signed(449 downto 0);
subtype uint451_t is unsigned(450 downto 0);
subtype int451_t is signed(450 downto 0);
subtype uint452_t is unsigned(451 downto 0);
subtype int452_t is signed(451 downto 0);
subtype uint453_t is unsigned(452 downto 0);
subtype int453_t is signed(452 downto 0);
subtype uint454_t is unsigned(453 downto 0);
subtype int454_t is signed(453 downto 0);
subtype uint455_t is unsigned(454 downto 0);
subtype int455_t is signed(454 downto 0);
subtype uint456_t is unsigned(455 downto 0);
subtype int456_t is signed(455 downto 0);
subtype uint457_t is unsigned(456 downto 0);
subtype int457_t is signed(456 downto 0);
subtype uint458_t is unsigned(457 downto 0);
subtype int458_t is signed(457 downto 0);
subtype uint459_t is unsigned(458 downto 0);
subtype int459_t is signed(458 downto 0);
subtype uint460_t is unsigned(459 downto 0);
subtype int460_t is signed(459 downto 0);
subtype uint461_t is unsigned(460 downto 0);
subtype int461_t is signed(460 downto 0);
subtype uint462_t is unsigned(461 downto 0);
subtype int462_t is signed(461 downto 0);
subtype uint463_t is unsigned(462 downto 0);
subtype int463_t is signed(462 downto 0);
subtype uint464_t is unsigned(463 downto 0);
subtype int464_t is signed(463 downto 0);
subtype uint465_t is unsigned(464 downto 0);
subtype int465_t is signed(464 downto 0);
subtype uint466_t is unsigned(465 downto 0);
subtype int466_t is signed(465 downto 0);
subtype uint467_t is unsigned(466 downto 0);
subtype int467_t is signed(466 downto 0);
subtype uint468_t is unsigned(467 downto 0);
subtype int468_t is signed(467 downto 0);
subtype uint469_t is unsigned(468 downto 0);
subtype int469_t is signed(468 downto 0);
subtype uint470_t is unsigned(469 downto 0);
subtype int470_t is signed(469 downto 0);
subtype uint471_t is unsigned(470 downto 0);
subtype int471_t is signed(470 downto 0);
subtype uint472_t is unsigned(471 downto 0);
subtype int472_t is signed(471 downto 0);
subtype uint473_t is unsigned(472 downto 0);
subtype int473_t is signed(472 downto 0);
subtype uint474_t is unsigned(473 downto 0);
subtype int474_t is signed(473 downto 0);
subtype uint475_t is unsigned(474 downto 0);
subtype int475_t is signed(474 downto 0);
subtype uint476_t is unsigned(475 downto 0);
subtype int476_t is signed(475 downto 0);
subtype uint477_t is unsigned(476 downto 0);
subtype int477_t is signed(476 downto 0);
subtype uint478_t is unsigned(477 downto 0);
subtype int478_t is signed(477 downto 0);
subtype uint479_t is unsigned(478 downto 0);
subtype int479_t is signed(478 downto 0);
subtype uint480_t is unsigned(479 downto 0);
subtype int480_t is signed(479 downto 0);
subtype uint481_t is unsigned(480 downto 0);
subtype int481_t is signed(480 downto 0);
subtype uint482_t is unsigned(481 downto 0);
subtype int482_t is signed(481 downto 0);
subtype uint483_t is unsigned(482 downto 0);
subtype int483_t is signed(482 downto 0);
subtype uint484_t is unsigned(483 downto 0);
subtype int484_t is signed(483 downto 0);
subtype uint485_t is unsigned(484 downto 0);
subtype int485_t is signed(484 downto 0);
subtype uint486_t is unsigned(485 downto 0);
subtype int486_t is signed(485 downto 0);
subtype uint487_t is unsigned(486 downto 0);
subtype int487_t is signed(486 downto 0);
subtype uint488_t is unsigned(487 downto 0);
subtype int488_t is signed(487 downto 0);
subtype uint489_t is unsigned(488 downto 0);
subtype int489_t is signed(488 downto 0);
subtype uint490_t is unsigned(489 downto 0);
subtype int490_t is signed(489 downto 0);
subtype uint491_t is unsigned(490 downto 0);
subtype int491_t is signed(490 downto 0);
subtype uint492_t is unsigned(491 downto 0);
subtype int492_t is signed(491 downto 0);
subtype uint493_t is unsigned(492 downto 0);
subtype int493_t is signed(492 downto 0);
subtype uint494_t is unsigned(493 downto 0);
subtype int494_t is signed(493 downto 0);
subtype uint495_t is unsigned(494 downto 0);
subtype int495_t is signed(494 downto 0);
subtype uint496_t is unsigned(495 downto 0);
subtype int496_t is signed(495 downto 0);
subtype uint497_t is unsigned(496 downto 0);
subtype int497_t is signed(496 downto 0);
subtype uint498_t is unsigned(497 downto 0);
subtype int498_t is signed(497 downto 0);
subtype uint499_t is unsigned(498 downto 0);
subtype int499_t is signed(498 downto 0);
subtype uint500_t is unsigned(499 downto 0);
subtype int500_t is signed(499 downto 0);
subtype uint501_t is unsigned(500 downto 0);
subtype int501_t is signed(500 downto 0);
subtype uint502_t is unsigned(501 downto 0);
subtype int502_t is signed(501 downto 0);
subtype uint503_t is unsigned(502 downto 0);
subtype int503_t is signed(502 downto 0);
subtype uint504_t is unsigned(503 downto 0);
subtype int504_t is signed(503 downto 0);
subtype uint505_t is unsigned(504 downto 0);
subtype int505_t is signed(504 downto 0);
subtype uint506_t is unsigned(505 downto 0);
subtype int506_t is signed(505 downto 0);
subtype uint507_t is unsigned(506 downto 0);
subtype int507_t is signed(506 downto 0);
subtype uint508_t is unsigned(507 downto 0);
subtype int508_t is signed(507 downto 0);
subtype uint509_t is unsigned(508 downto 0);
subtype int509_t is signed(508 downto 0);
subtype uint510_t is unsigned(509 downto 0);
subtype int510_t is signed(509 downto 0);
subtype uint511_t is unsigned(510 downto 0);
subtype int511_t is signed(510 downto 0);
subtype uint512_t is unsigned(511 downto 0);
subtype int512_t is signed(511 downto 0);
subtype uint513_t is unsigned(512 downto 0);
subtype int513_t is signed(512 downto 0);
subtype uint514_t is unsigned(513 downto 0);
subtype int514_t is signed(513 downto 0);
subtype uint515_t is unsigned(514 downto 0);
subtype int515_t is signed(514 downto 0);
subtype uint516_t is unsigned(515 downto 0);
subtype int516_t is signed(515 downto 0);
subtype uint517_t is unsigned(516 downto 0);
subtype int517_t is signed(516 downto 0);
subtype uint518_t is unsigned(517 downto 0);
subtype int518_t is signed(517 downto 0);
subtype uint519_t is unsigned(518 downto 0);
subtype int519_t is signed(518 downto 0);
subtype uint520_t is unsigned(519 downto 0);
subtype int520_t is signed(519 downto 0);
subtype uint521_t is unsigned(520 downto 0);
subtype int521_t is signed(520 downto 0);
subtype uint522_t is unsigned(521 downto 0);
subtype int522_t is signed(521 downto 0);
subtype uint523_t is unsigned(522 downto 0);
subtype int523_t is signed(522 downto 0);
subtype uint524_t is unsigned(523 downto 0);
subtype int524_t is signed(523 downto 0);
subtype uint525_t is unsigned(524 downto 0);
subtype int525_t is signed(524 downto 0);
subtype uint526_t is unsigned(525 downto 0);
subtype int526_t is signed(525 downto 0);
subtype uint527_t is unsigned(526 downto 0);
subtype int527_t is signed(526 downto 0);
subtype uint528_t is unsigned(527 downto 0);
subtype int528_t is signed(527 downto 0);
subtype uint529_t is unsigned(528 downto 0);
subtype int529_t is signed(528 downto 0);
subtype uint530_t is unsigned(529 downto 0);
subtype int530_t is signed(529 downto 0);
subtype uint531_t is unsigned(530 downto 0);
subtype int531_t is signed(530 downto 0);
subtype uint532_t is unsigned(531 downto 0);
subtype int532_t is signed(531 downto 0);
subtype uint533_t is unsigned(532 downto 0);
subtype int533_t is signed(532 downto 0);
subtype uint534_t is unsigned(533 downto 0);
subtype int534_t is signed(533 downto 0);
subtype uint535_t is unsigned(534 downto 0);
subtype int535_t is signed(534 downto 0);
subtype uint536_t is unsigned(535 downto 0);
subtype int536_t is signed(535 downto 0);
subtype uint537_t is unsigned(536 downto 0);
subtype int537_t is signed(536 downto 0);
subtype uint538_t is unsigned(537 downto 0);
subtype int538_t is signed(537 downto 0);
subtype uint539_t is unsigned(538 downto 0);
subtype int539_t is signed(538 downto 0);
subtype uint540_t is unsigned(539 downto 0);
subtype int540_t is signed(539 downto 0);
subtype uint541_t is unsigned(540 downto 0);
subtype int541_t is signed(540 downto 0);
subtype uint542_t is unsigned(541 downto 0);
subtype int542_t is signed(541 downto 0);
subtype uint543_t is unsigned(542 downto 0);
subtype int543_t is signed(542 downto 0);
subtype uint544_t is unsigned(543 downto 0);
subtype int544_t is signed(543 downto 0);
subtype uint545_t is unsigned(544 downto 0);
subtype int545_t is signed(544 downto 0);
subtype uint546_t is unsigned(545 downto 0);
subtype int546_t is signed(545 downto 0);
subtype uint547_t is unsigned(546 downto 0);
subtype int547_t is signed(546 downto 0);
subtype uint548_t is unsigned(547 downto 0);
subtype int548_t is signed(547 downto 0);
subtype uint549_t is unsigned(548 downto 0);
subtype int549_t is signed(548 downto 0);
subtype uint550_t is unsigned(549 downto 0);
subtype int550_t is signed(549 downto 0);
subtype uint551_t is unsigned(550 downto 0);
subtype int551_t is signed(550 downto 0);
subtype uint552_t is unsigned(551 downto 0);
subtype int552_t is signed(551 downto 0);
subtype uint553_t is unsigned(552 downto 0);
subtype int553_t is signed(552 downto 0);
subtype uint554_t is unsigned(553 downto 0);
subtype int554_t is signed(553 downto 0);
subtype uint555_t is unsigned(554 downto 0);
subtype int555_t is signed(554 downto 0);
subtype uint556_t is unsigned(555 downto 0);
subtype int556_t is signed(555 downto 0);
subtype uint557_t is unsigned(556 downto 0);
subtype int557_t is signed(556 downto 0);
subtype uint558_t is unsigned(557 downto 0);
subtype int558_t is signed(557 downto 0);
subtype uint559_t is unsigned(558 downto 0);
subtype int559_t is signed(558 downto 0);
subtype uint560_t is unsigned(559 downto 0);
subtype int560_t is signed(559 downto 0);
subtype uint561_t is unsigned(560 downto 0);
subtype int561_t is signed(560 downto 0);
subtype uint562_t is unsigned(561 downto 0);
subtype int562_t is signed(561 downto 0);
subtype uint563_t is unsigned(562 downto 0);
subtype int563_t is signed(562 downto 0);
subtype uint564_t is unsigned(563 downto 0);
subtype int564_t is signed(563 downto 0);
subtype uint565_t is unsigned(564 downto 0);
subtype int565_t is signed(564 downto 0);
subtype uint566_t is unsigned(565 downto 0);
subtype int566_t is signed(565 downto 0);
subtype uint567_t is unsigned(566 downto 0);
subtype int567_t is signed(566 downto 0);
subtype uint568_t is unsigned(567 downto 0);
subtype int568_t is signed(567 downto 0);
subtype uint569_t is unsigned(568 downto 0);
subtype int569_t is signed(568 downto 0);
subtype uint570_t is unsigned(569 downto 0);
subtype int570_t is signed(569 downto 0);
subtype uint571_t is unsigned(570 downto 0);
subtype int571_t is signed(570 downto 0);
subtype uint572_t is unsigned(571 downto 0);
subtype int572_t is signed(571 downto 0);
subtype uint573_t is unsigned(572 downto 0);
subtype int573_t is signed(572 downto 0);
subtype uint574_t is unsigned(573 downto 0);
subtype int574_t is signed(573 downto 0);
subtype uint575_t is unsigned(574 downto 0);
subtype int575_t is signed(574 downto 0);
subtype uint576_t is unsigned(575 downto 0);
subtype int576_t is signed(575 downto 0);
subtype uint577_t is unsigned(576 downto 0);
subtype int577_t is signed(576 downto 0);
subtype uint578_t is unsigned(577 downto 0);
subtype int578_t is signed(577 downto 0);
subtype uint579_t is unsigned(578 downto 0);
subtype int579_t is signed(578 downto 0);
subtype uint580_t is unsigned(579 downto 0);
subtype int580_t is signed(579 downto 0);
subtype uint581_t is unsigned(580 downto 0);
subtype int581_t is signed(580 downto 0);
subtype uint582_t is unsigned(581 downto 0);
subtype int582_t is signed(581 downto 0);
subtype uint583_t is unsigned(582 downto 0);
subtype int583_t is signed(582 downto 0);
subtype uint584_t is unsigned(583 downto 0);
subtype int584_t is signed(583 downto 0);
subtype uint585_t is unsigned(584 downto 0);
subtype int585_t is signed(584 downto 0);
subtype uint586_t is unsigned(585 downto 0);
subtype int586_t is signed(585 downto 0);
subtype uint587_t is unsigned(586 downto 0);
subtype int587_t is signed(586 downto 0);
subtype uint588_t is unsigned(587 downto 0);
subtype int588_t is signed(587 downto 0);
subtype uint589_t is unsigned(588 downto 0);
subtype int589_t is signed(588 downto 0);
subtype uint590_t is unsigned(589 downto 0);
subtype int590_t is signed(589 downto 0);
subtype uint591_t is unsigned(590 downto 0);
subtype int591_t is signed(590 downto 0);
subtype uint592_t is unsigned(591 downto 0);
subtype int592_t is signed(591 downto 0);
subtype uint593_t is unsigned(592 downto 0);
subtype int593_t is signed(592 downto 0);
subtype uint594_t is unsigned(593 downto 0);
subtype int594_t is signed(593 downto 0);
subtype uint595_t is unsigned(594 downto 0);
subtype int595_t is signed(594 downto 0);
subtype uint596_t is unsigned(595 downto 0);
subtype int596_t is signed(595 downto 0);
subtype uint597_t is unsigned(596 downto 0);
subtype int597_t is signed(596 downto 0);
subtype uint598_t is unsigned(597 downto 0);
subtype int598_t is signed(597 downto 0);
subtype uint599_t is unsigned(598 downto 0);
subtype int599_t is signed(598 downto 0);
subtype uint600_t is unsigned(599 downto 0);
subtype int600_t is signed(599 downto 0);
subtype uint601_t is unsigned(600 downto 0);
subtype int601_t is signed(600 downto 0);
subtype uint602_t is unsigned(601 downto 0);
subtype int602_t is signed(601 downto 0);
subtype uint603_t is unsigned(602 downto 0);
subtype int603_t is signed(602 downto 0);
subtype uint604_t is unsigned(603 downto 0);
subtype int604_t is signed(603 downto 0);
subtype uint605_t is unsigned(604 downto 0);
subtype int605_t is signed(604 downto 0);
subtype uint606_t is unsigned(605 downto 0);
subtype int606_t is signed(605 downto 0);
subtype uint607_t is unsigned(606 downto 0);
subtype int607_t is signed(606 downto 0);
subtype uint608_t is unsigned(607 downto 0);
subtype int608_t is signed(607 downto 0);
subtype uint609_t is unsigned(608 downto 0);
subtype int609_t is signed(608 downto 0);
subtype uint610_t is unsigned(609 downto 0);
subtype int610_t is signed(609 downto 0);
subtype uint611_t is unsigned(610 downto 0);
subtype int611_t is signed(610 downto 0);
subtype uint612_t is unsigned(611 downto 0);
subtype int612_t is signed(611 downto 0);
subtype uint613_t is unsigned(612 downto 0);
subtype int613_t is signed(612 downto 0);
subtype uint614_t is unsigned(613 downto 0);
subtype int614_t is signed(613 downto 0);
subtype uint615_t is unsigned(614 downto 0);
subtype int615_t is signed(614 downto 0);
subtype uint616_t is unsigned(615 downto 0);
subtype int616_t is signed(615 downto 0);
subtype uint617_t is unsigned(616 downto 0);
subtype int617_t is signed(616 downto 0);
subtype uint618_t is unsigned(617 downto 0);
subtype int618_t is signed(617 downto 0);
subtype uint619_t is unsigned(618 downto 0);
subtype int619_t is signed(618 downto 0);
subtype uint620_t is unsigned(619 downto 0);
subtype int620_t is signed(619 downto 0);
subtype uint621_t is unsigned(620 downto 0);
subtype int621_t is signed(620 downto 0);
subtype uint622_t is unsigned(621 downto 0);
subtype int622_t is signed(621 downto 0);
subtype uint623_t is unsigned(622 downto 0);
subtype int623_t is signed(622 downto 0);
subtype uint624_t is unsigned(623 downto 0);
subtype int624_t is signed(623 downto 0);
subtype uint625_t is unsigned(624 downto 0);
subtype int625_t is signed(624 downto 0);
subtype uint626_t is unsigned(625 downto 0);
subtype int626_t is signed(625 downto 0);
subtype uint627_t is unsigned(626 downto 0);
subtype int627_t is signed(626 downto 0);
subtype uint628_t is unsigned(627 downto 0);
subtype int628_t is signed(627 downto 0);
subtype uint629_t is unsigned(628 downto 0);
subtype int629_t is signed(628 downto 0);
subtype uint630_t is unsigned(629 downto 0);
subtype int630_t is signed(629 downto 0);
subtype uint631_t is unsigned(630 downto 0);
subtype int631_t is signed(630 downto 0);
subtype uint632_t is unsigned(631 downto 0);
subtype int632_t is signed(631 downto 0);
subtype uint633_t is unsigned(632 downto 0);
subtype int633_t is signed(632 downto 0);
subtype uint634_t is unsigned(633 downto 0);
subtype int634_t is signed(633 downto 0);
subtype uint635_t is unsigned(634 downto 0);
subtype int635_t is signed(634 downto 0);
subtype uint636_t is unsigned(635 downto 0);
subtype int636_t is signed(635 downto 0);
subtype uint637_t is unsigned(636 downto 0);
subtype int637_t is signed(636 downto 0);
subtype uint638_t is unsigned(637 downto 0);
subtype int638_t is signed(637 downto 0);
subtype uint639_t is unsigned(638 downto 0);
subtype int639_t is signed(638 downto 0);
subtype uint640_t is unsigned(639 downto 0);
subtype int640_t is signed(639 downto 0);
subtype uint641_t is unsigned(640 downto 0);
subtype int641_t is signed(640 downto 0);
subtype uint642_t is unsigned(641 downto 0);
subtype int642_t is signed(641 downto 0);
subtype uint643_t is unsigned(642 downto 0);
subtype int643_t is signed(642 downto 0);
subtype uint644_t is unsigned(643 downto 0);
subtype int644_t is signed(643 downto 0);
subtype uint645_t is unsigned(644 downto 0);
subtype int645_t is signed(644 downto 0);
subtype uint646_t is unsigned(645 downto 0);
subtype int646_t is signed(645 downto 0);
subtype uint647_t is unsigned(646 downto 0);
subtype int647_t is signed(646 downto 0);
subtype uint648_t is unsigned(647 downto 0);
subtype int648_t is signed(647 downto 0);
subtype uint649_t is unsigned(648 downto 0);
subtype int649_t is signed(648 downto 0);
subtype uint650_t is unsigned(649 downto 0);
subtype int650_t is signed(649 downto 0);
subtype uint651_t is unsigned(650 downto 0);
subtype int651_t is signed(650 downto 0);
subtype uint652_t is unsigned(651 downto 0);
subtype int652_t is signed(651 downto 0);
subtype uint653_t is unsigned(652 downto 0);
subtype int653_t is signed(652 downto 0);
subtype uint654_t is unsigned(653 downto 0);
subtype int654_t is signed(653 downto 0);
subtype uint655_t is unsigned(654 downto 0);
subtype int655_t is signed(654 downto 0);
subtype uint656_t is unsigned(655 downto 0);
subtype int656_t is signed(655 downto 0);
subtype uint657_t is unsigned(656 downto 0);
subtype int657_t is signed(656 downto 0);
subtype uint658_t is unsigned(657 downto 0);
subtype int658_t is signed(657 downto 0);
subtype uint659_t is unsigned(658 downto 0);
subtype int659_t is signed(658 downto 0);
subtype uint660_t is unsigned(659 downto 0);
subtype int660_t is signed(659 downto 0);
subtype uint661_t is unsigned(660 downto 0);
subtype int661_t is signed(660 downto 0);
subtype uint662_t is unsigned(661 downto 0);
subtype int662_t is signed(661 downto 0);
subtype uint663_t is unsigned(662 downto 0);
subtype int663_t is signed(662 downto 0);
subtype uint664_t is unsigned(663 downto 0);
subtype int664_t is signed(663 downto 0);
subtype uint665_t is unsigned(664 downto 0);
subtype int665_t is signed(664 downto 0);
subtype uint666_t is unsigned(665 downto 0);
subtype int666_t is signed(665 downto 0);
subtype uint667_t is unsigned(666 downto 0);
subtype int667_t is signed(666 downto 0);
subtype uint668_t is unsigned(667 downto 0);
subtype int668_t is signed(667 downto 0);
subtype uint669_t is unsigned(668 downto 0);
subtype int669_t is signed(668 downto 0);
subtype uint670_t is unsigned(669 downto 0);
subtype int670_t is signed(669 downto 0);
subtype uint671_t is unsigned(670 downto 0);
subtype int671_t is signed(670 downto 0);
subtype uint672_t is unsigned(671 downto 0);
subtype int672_t is signed(671 downto 0);
subtype uint673_t is unsigned(672 downto 0);
subtype int673_t is signed(672 downto 0);
subtype uint674_t is unsigned(673 downto 0);
subtype int674_t is signed(673 downto 0);
subtype uint675_t is unsigned(674 downto 0);
subtype int675_t is signed(674 downto 0);
subtype uint676_t is unsigned(675 downto 0);
subtype int676_t is signed(675 downto 0);
subtype uint677_t is unsigned(676 downto 0);
subtype int677_t is signed(676 downto 0);
subtype uint678_t is unsigned(677 downto 0);
subtype int678_t is signed(677 downto 0);
subtype uint679_t is unsigned(678 downto 0);
subtype int679_t is signed(678 downto 0);
subtype uint680_t is unsigned(679 downto 0);
subtype int680_t is signed(679 downto 0);
subtype uint681_t is unsigned(680 downto 0);
subtype int681_t is signed(680 downto 0);
subtype uint682_t is unsigned(681 downto 0);
subtype int682_t is signed(681 downto 0);
subtype uint683_t is unsigned(682 downto 0);
subtype int683_t is signed(682 downto 0);
subtype uint684_t is unsigned(683 downto 0);
subtype int684_t is signed(683 downto 0);
subtype uint685_t is unsigned(684 downto 0);
subtype int685_t is signed(684 downto 0);
subtype uint686_t is unsigned(685 downto 0);
subtype int686_t is signed(685 downto 0);
subtype uint687_t is unsigned(686 downto 0);
subtype int687_t is signed(686 downto 0);
subtype uint688_t is unsigned(687 downto 0);
subtype int688_t is signed(687 downto 0);
subtype uint689_t is unsigned(688 downto 0);
subtype int689_t is signed(688 downto 0);
subtype uint690_t is unsigned(689 downto 0);
subtype int690_t is signed(689 downto 0);
subtype uint691_t is unsigned(690 downto 0);
subtype int691_t is signed(690 downto 0);
subtype uint692_t is unsigned(691 downto 0);
subtype int692_t is signed(691 downto 0);
subtype uint693_t is unsigned(692 downto 0);
subtype int693_t is signed(692 downto 0);
subtype uint694_t is unsigned(693 downto 0);
subtype int694_t is signed(693 downto 0);
subtype uint695_t is unsigned(694 downto 0);
subtype int695_t is signed(694 downto 0);
subtype uint696_t is unsigned(695 downto 0);
subtype int696_t is signed(695 downto 0);
subtype uint697_t is unsigned(696 downto 0);
subtype int697_t is signed(696 downto 0);
subtype uint698_t is unsigned(697 downto 0);
subtype int698_t is signed(697 downto 0);
subtype uint699_t is unsigned(698 downto 0);
subtype int699_t is signed(698 downto 0);
subtype uint700_t is unsigned(699 downto 0);
subtype int700_t is signed(699 downto 0);
subtype uint701_t is unsigned(700 downto 0);
subtype int701_t is signed(700 downto 0);
subtype uint702_t is unsigned(701 downto 0);
subtype int702_t is signed(701 downto 0);
subtype uint703_t is unsigned(702 downto 0);
subtype int703_t is signed(702 downto 0);
subtype uint704_t is unsigned(703 downto 0);
subtype int704_t is signed(703 downto 0);
subtype uint705_t is unsigned(704 downto 0);
subtype int705_t is signed(704 downto 0);
subtype uint706_t is unsigned(705 downto 0);
subtype int706_t is signed(705 downto 0);
subtype uint707_t is unsigned(706 downto 0);
subtype int707_t is signed(706 downto 0);
subtype uint708_t is unsigned(707 downto 0);
subtype int708_t is signed(707 downto 0);
subtype uint709_t is unsigned(708 downto 0);
subtype int709_t is signed(708 downto 0);
subtype uint710_t is unsigned(709 downto 0);
subtype int710_t is signed(709 downto 0);
subtype uint711_t is unsigned(710 downto 0);
subtype int711_t is signed(710 downto 0);
subtype uint712_t is unsigned(711 downto 0);
subtype int712_t is signed(711 downto 0);
subtype uint713_t is unsigned(712 downto 0);
subtype int713_t is signed(712 downto 0);
subtype uint714_t is unsigned(713 downto 0);
subtype int714_t is signed(713 downto 0);
subtype uint715_t is unsigned(714 downto 0);
subtype int715_t is signed(714 downto 0);
subtype uint716_t is unsigned(715 downto 0);
subtype int716_t is signed(715 downto 0);
subtype uint717_t is unsigned(716 downto 0);
subtype int717_t is signed(716 downto 0);
subtype uint718_t is unsigned(717 downto 0);
subtype int718_t is signed(717 downto 0);
subtype uint719_t is unsigned(718 downto 0);
subtype int719_t is signed(718 downto 0);
subtype uint720_t is unsigned(719 downto 0);
subtype int720_t is signed(719 downto 0);
subtype uint721_t is unsigned(720 downto 0);
subtype int721_t is signed(720 downto 0);
subtype uint722_t is unsigned(721 downto 0);
subtype int722_t is signed(721 downto 0);
subtype uint723_t is unsigned(722 downto 0);
subtype int723_t is signed(722 downto 0);
subtype uint724_t is unsigned(723 downto 0);
subtype int724_t is signed(723 downto 0);
subtype uint725_t is unsigned(724 downto 0);
subtype int725_t is signed(724 downto 0);
subtype uint726_t is unsigned(725 downto 0);
subtype int726_t is signed(725 downto 0);
subtype uint727_t is unsigned(726 downto 0);
subtype int727_t is signed(726 downto 0);
subtype uint728_t is unsigned(727 downto 0);
subtype int728_t is signed(727 downto 0);
subtype uint729_t is unsigned(728 downto 0);
subtype int729_t is signed(728 downto 0);
subtype uint730_t is unsigned(729 downto 0);
subtype int730_t is signed(729 downto 0);
subtype uint731_t is unsigned(730 downto 0);
subtype int731_t is signed(730 downto 0);
subtype uint732_t is unsigned(731 downto 0);
subtype int732_t is signed(731 downto 0);
subtype uint733_t is unsigned(732 downto 0);
subtype int733_t is signed(732 downto 0);
subtype uint734_t is unsigned(733 downto 0);
subtype int734_t is signed(733 downto 0);
subtype uint735_t is unsigned(734 downto 0);
subtype int735_t is signed(734 downto 0);
subtype uint736_t is unsigned(735 downto 0);
subtype int736_t is signed(735 downto 0);
subtype uint737_t is unsigned(736 downto 0);
subtype int737_t is signed(736 downto 0);
subtype uint738_t is unsigned(737 downto 0);
subtype int738_t is signed(737 downto 0);
subtype uint739_t is unsigned(738 downto 0);
subtype int739_t is signed(738 downto 0);
subtype uint740_t is unsigned(739 downto 0);
subtype int740_t is signed(739 downto 0);
subtype uint741_t is unsigned(740 downto 0);
subtype int741_t is signed(740 downto 0);
subtype uint742_t is unsigned(741 downto 0);
subtype int742_t is signed(741 downto 0);
subtype uint743_t is unsigned(742 downto 0);
subtype int743_t is signed(742 downto 0);
subtype uint744_t is unsigned(743 downto 0);
subtype int744_t is signed(743 downto 0);
subtype uint745_t is unsigned(744 downto 0);
subtype int745_t is signed(744 downto 0);
subtype uint746_t is unsigned(745 downto 0);
subtype int746_t is signed(745 downto 0);
subtype uint747_t is unsigned(746 downto 0);
subtype int747_t is signed(746 downto 0);
subtype uint748_t is unsigned(747 downto 0);
subtype int748_t is signed(747 downto 0);
subtype uint749_t is unsigned(748 downto 0);
subtype int749_t is signed(748 downto 0);
subtype uint750_t is unsigned(749 downto 0);
subtype int750_t is signed(749 downto 0);
subtype uint751_t is unsigned(750 downto 0);
subtype int751_t is signed(750 downto 0);
subtype uint752_t is unsigned(751 downto 0);
subtype int752_t is signed(751 downto 0);
subtype uint753_t is unsigned(752 downto 0);
subtype int753_t is signed(752 downto 0);
subtype uint754_t is unsigned(753 downto 0);
subtype int754_t is signed(753 downto 0);
subtype uint755_t is unsigned(754 downto 0);
subtype int755_t is signed(754 downto 0);
subtype uint756_t is unsigned(755 downto 0);
subtype int756_t is signed(755 downto 0);
subtype uint757_t is unsigned(756 downto 0);
subtype int757_t is signed(756 downto 0);
subtype uint758_t is unsigned(757 downto 0);
subtype int758_t is signed(757 downto 0);
subtype uint759_t is unsigned(758 downto 0);
subtype int759_t is signed(758 downto 0);
subtype uint760_t is unsigned(759 downto 0);
subtype int760_t is signed(759 downto 0);
subtype uint761_t is unsigned(760 downto 0);
subtype int761_t is signed(760 downto 0);
subtype uint762_t is unsigned(761 downto 0);
subtype int762_t is signed(761 downto 0);
subtype uint763_t is unsigned(762 downto 0);
subtype int763_t is signed(762 downto 0);
subtype uint764_t is unsigned(763 downto 0);
subtype int764_t is signed(763 downto 0);
subtype uint765_t is unsigned(764 downto 0);
subtype int765_t is signed(764 downto 0);
subtype uint766_t is unsigned(765 downto 0);
subtype int766_t is signed(765 downto 0);
subtype uint767_t is unsigned(766 downto 0);
subtype int767_t is signed(766 downto 0);
subtype uint768_t is unsigned(767 downto 0);
subtype int768_t is signed(767 downto 0);
subtype uint769_t is unsigned(768 downto 0);
subtype int769_t is signed(768 downto 0);
subtype uint770_t is unsigned(769 downto 0);
subtype int770_t is signed(769 downto 0);
subtype uint771_t is unsigned(770 downto 0);
subtype int771_t is signed(770 downto 0);
subtype uint772_t is unsigned(771 downto 0);
subtype int772_t is signed(771 downto 0);
subtype uint773_t is unsigned(772 downto 0);
subtype int773_t is signed(772 downto 0);
subtype uint774_t is unsigned(773 downto 0);
subtype int774_t is signed(773 downto 0);
subtype uint775_t is unsigned(774 downto 0);
subtype int775_t is signed(774 downto 0);
subtype uint776_t is unsigned(775 downto 0);
subtype int776_t is signed(775 downto 0);
subtype uint777_t is unsigned(776 downto 0);
subtype int777_t is signed(776 downto 0);
subtype uint778_t is unsigned(777 downto 0);
subtype int778_t is signed(777 downto 0);
subtype uint779_t is unsigned(778 downto 0);
subtype int779_t is signed(778 downto 0);
subtype uint780_t is unsigned(779 downto 0);
subtype int780_t is signed(779 downto 0);
subtype uint781_t is unsigned(780 downto 0);
subtype int781_t is signed(780 downto 0);
subtype uint782_t is unsigned(781 downto 0);
subtype int782_t is signed(781 downto 0);
subtype uint783_t is unsigned(782 downto 0);
subtype int783_t is signed(782 downto 0);
subtype uint784_t is unsigned(783 downto 0);
subtype int784_t is signed(783 downto 0);
subtype uint785_t is unsigned(784 downto 0);
subtype int785_t is signed(784 downto 0);
subtype uint786_t is unsigned(785 downto 0);
subtype int786_t is signed(785 downto 0);
subtype uint787_t is unsigned(786 downto 0);
subtype int787_t is signed(786 downto 0);
subtype uint788_t is unsigned(787 downto 0);
subtype int788_t is signed(787 downto 0);
subtype uint789_t is unsigned(788 downto 0);
subtype int789_t is signed(788 downto 0);
subtype uint790_t is unsigned(789 downto 0);
subtype int790_t is signed(789 downto 0);
subtype uint791_t is unsigned(790 downto 0);
subtype int791_t is signed(790 downto 0);
subtype uint792_t is unsigned(791 downto 0);
subtype int792_t is signed(791 downto 0);
subtype uint793_t is unsigned(792 downto 0);
subtype int793_t is signed(792 downto 0);
subtype uint794_t is unsigned(793 downto 0);
subtype int794_t is signed(793 downto 0);
subtype uint795_t is unsigned(794 downto 0);
subtype int795_t is signed(794 downto 0);
subtype uint796_t is unsigned(795 downto 0);
subtype int796_t is signed(795 downto 0);
subtype uint797_t is unsigned(796 downto 0);
subtype int797_t is signed(796 downto 0);
subtype uint798_t is unsigned(797 downto 0);
subtype int798_t is signed(797 downto 0);
subtype uint799_t is unsigned(798 downto 0);
subtype int799_t is signed(798 downto 0);
subtype uint800_t is unsigned(799 downto 0);
subtype int800_t is signed(799 downto 0);
subtype uint801_t is unsigned(800 downto 0);
subtype int801_t is signed(800 downto 0);
subtype uint802_t is unsigned(801 downto 0);
subtype int802_t is signed(801 downto 0);
subtype uint803_t is unsigned(802 downto 0);
subtype int803_t is signed(802 downto 0);
subtype uint804_t is unsigned(803 downto 0);
subtype int804_t is signed(803 downto 0);
subtype uint805_t is unsigned(804 downto 0);
subtype int805_t is signed(804 downto 0);
subtype uint806_t is unsigned(805 downto 0);
subtype int806_t is signed(805 downto 0);
subtype uint807_t is unsigned(806 downto 0);
subtype int807_t is signed(806 downto 0);
subtype uint808_t is unsigned(807 downto 0);
subtype int808_t is signed(807 downto 0);
subtype uint809_t is unsigned(808 downto 0);
subtype int809_t is signed(808 downto 0);
subtype uint810_t is unsigned(809 downto 0);
subtype int810_t is signed(809 downto 0);
subtype uint811_t is unsigned(810 downto 0);
subtype int811_t is signed(810 downto 0);
subtype uint812_t is unsigned(811 downto 0);
subtype int812_t is signed(811 downto 0);
subtype uint813_t is unsigned(812 downto 0);
subtype int813_t is signed(812 downto 0);
subtype uint814_t is unsigned(813 downto 0);
subtype int814_t is signed(813 downto 0);
subtype uint815_t is unsigned(814 downto 0);
subtype int815_t is signed(814 downto 0);
subtype uint816_t is unsigned(815 downto 0);
subtype int816_t is signed(815 downto 0);
subtype uint817_t is unsigned(816 downto 0);
subtype int817_t is signed(816 downto 0);
subtype uint818_t is unsigned(817 downto 0);
subtype int818_t is signed(817 downto 0);
subtype uint819_t is unsigned(818 downto 0);
subtype int819_t is signed(818 downto 0);
subtype uint820_t is unsigned(819 downto 0);
subtype int820_t is signed(819 downto 0);
subtype uint821_t is unsigned(820 downto 0);
subtype int821_t is signed(820 downto 0);
subtype uint822_t is unsigned(821 downto 0);
subtype int822_t is signed(821 downto 0);
subtype uint823_t is unsigned(822 downto 0);
subtype int823_t is signed(822 downto 0);
subtype uint824_t is unsigned(823 downto 0);
subtype int824_t is signed(823 downto 0);
subtype uint825_t is unsigned(824 downto 0);
subtype int825_t is signed(824 downto 0);
subtype uint826_t is unsigned(825 downto 0);
subtype int826_t is signed(825 downto 0);
subtype uint827_t is unsigned(826 downto 0);
subtype int827_t is signed(826 downto 0);
subtype uint828_t is unsigned(827 downto 0);
subtype int828_t is signed(827 downto 0);
subtype uint829_t is unsigned(828 downto 0);
subtype int829_t is signed(828 downto 0);
subtype uint830_t is unsigned(829 downto 0);
subtype int830_t is signed(829 downto 0);
subtype uint831_t is unsigned(830 downto 0);
subtype int831_t is signed(830 downto 0);
subtype uint832_t is unsigned(831 downto 0);
subtype int832_t is signed(831 downto 0);
subtype uint833_t is unsigned(832 downto 0);
subtype int833_t is signed(832 downto 0);
subtype uint834_t is unsigned(833 downto 0);
subtype int834_t is signed(833 downto 0);
subtype uint835_t is unsigned(834 downto 0);
subtype int835_t is signed(834 downto 0);
subtype uint836_t is unsigned(835 downto 0);
subtype int836_t is signed(835 downto 0);
subtype uint837_t is unsigned(836 downto 0);
subtype int837_t is signed(836 downto 0);
subtype uint838_t is unsigned(837 downto 0);
subtype int838_t is signed(837 downto 0);
subtype uint839_t is unsigned(838 downto 0);
subtype int839_t is signed(838 downto 0);
subtype uint840_t is unsigned(839 downto 0);
subtype int840_t is signed(839 downto 0);
subtype uint841_t is unsigned(840 downto 0);
subtype int841_t is signed(840 downto 0);
subtype uint842_t is unsigned(841 downto 0);
subtype int842_t is signed(841 downto 0);
subtype uint843_t is unsigned(842 downto 0);
subtype int843_t is signed(842 downto 0);
subtype uint844_t is unsigned(843 downto 0);
subtype int844_t is signed(843 downto 0);
subtype uint845_t is unsigned(844 downto 0);
subtype int845_t is signed(844 downto 0);
subtype uint846_t is unsigned(845 downto 0);
subtype int846_t is signed(845 downto 0);
subtype uint847_t is unsigned(846 downto 0);
subtype int847_t is signed(846 downto 0);
subtype uint848_t is unsigned(847 downto 0);
subtype int848_t is signed(847 downto 0);
subtype uint849_t is unsigned(848 downto 0);
subtype int849_t is signed(848 downto 0);
subtype uint850_t is unsigned(849 downto 0);
subtype int850_t is signed(849 downto 0);
subtype uint851_t is unsigned(850 downto 0);
subtype int851_t is signed(850 downto 0);
subtype uint852_t is unsigned(851 downto 0);
subtype int852_t is signed(851 downto 0);
subtype uint853_t is unsigned(852 downto 0);
subtype int853_t is signed(852 downto 0);
subtype uint854_t is unsigned(853 downto 0);
subtype int854_t is signed(853 downto 0);
subtype uint855_t is unsigned(854 downto 0);
subtype int855_t is signed(854 downto 0);
subtype uint856_t is unsigned(855 downto 0);
subtype int856_t is signed(855 downto 0);
subtype uint857_t is unsigned(856 downto 0);
subtype int857_t is signed(856 downto 0);
subtype uint858_t is unsigned(857 downto 0);
subtype int858_t is signed(857 downto 0);
subtype uint859_t is unsigned(858 downto 0);
subtype int859_t is signed(858 downto 0);
subtype uint860_t is unsigned(859 downto 0);
subtype int860_t is signed(859 downto 0);
subtype uint861_t is unsigned(860 downto 0);
subtype int861_t is signed(860 downto 0);
subtype uint862_t is unsigned(861 downto 0);
subtype int862_t is signed(861 downto 0);
subtype uint863_t is unsigned(862 downto 0);
subtype int863_t is signed(862 downto 0);
subtype uint864_t is unsigned(863 downto 0);
subtype int864_t is signed(863 downto 0);
subtype uint865_t is unsigned(864 downto 0);
subtype int865_t is signed(864 downto 0);
subtype uint866_t is unsigned(865 downto 0);
subtype int866_t is signed(865 downto 0);
subtype uint867_t is unsigned(866 downto 0);
subtype int867_t is signed(866 downto 0);
subtype uint868_t is unsigned(867 downto 0);
subtype int868_t is signed(867 downto 0);
subtype uint869_t is unsigned(868 downto 0);
subtype int869_t is signed(868 downto 0);
subtype uint870_t is unsigned(869 downto 0);
subtype int870_t is signed(869 downto 0);
subtype uint871_t is unsigned(870 downto 0);
subtype int871_t is signed(870 downto 0);
subtype uint872_t is unsigned(871 downto 0);
subtype int872_t is signed(871 downto 0);
subtype uint873_t is unsigned(872 downto 0);
subtype int873_t is signed(872 downto 0);
subtype uint874_t is unsigned(873 downto 0);
subtype int874_t is signed(873 downto 0);
subtype uint875_t is unsigned(874 downto 0);
subtype int875_t is signed(874 downto 0);
subtype uint876_t is unsigned(875 downto 0);
subtype int876_t is signed(875 downto 0);
subtype uint877_t is unsigned(876 downto 0);
subtype int877_t is signed(876 downto 0);
subtype uint878_t is unsigned(877 downto 0);
subtype int878_t is signed(877 downto 0);
subtype uint879_t is unsigned(878 downto 0);
subtype int879_t is signed(878 downto 0);
subtype uint880_t is unsigned(879 downto 0);
subtype int880_t is signed(879 downto 0);
subtype uint881_t is unsigned(880 downto 0);
subtype int881_t is signed(880 downto 0);
subtype uint882_t is unsigned(881 downto 0);
subtype int882_t is signed(881 downto 0);
subtype uint883_t is unsigned(882 downto 0);
subtype int883_t is signed(882 downto 0);
subtype uint884_t is unsigned(883 downto 0);
subtype int884_t is signed(883 downto 0);
subtype uint885_t is unsigned(884 downto 0);
subtype int885_t is signed(884 downto 0);
subtype uint886_t is unsigned(885 downto 0);
subtype int886_t is signed(885 downto 0);
subtype uint887_t is unsigned(886 downto 0);
subtype int887_t is signed(886 downto 0);
subtype uint888_t is unsigned(887 downto 0);
subtype int888_t is signed(887 downto 0);
subtype uint889_t is unsigned(888 downto 0);
subtype int889_t is signed(888 downto 0);
subtype uint890_t is unsigned(889 downto 0);
subtype int890_t is signed(889 downto 0);
subtype uint891_t is unsigned(890 downto 0);
subtype int891_t is signed(890 downto 0);
subtype uint892_t is unsigned(891 downto 0);
subtype int892_t is signed(891 downto 0);
subtype uint893_t is unsigned(892 downto 0);
subtype int893_t is signed(892 downto 0);
subtype uint894_t is unsigned(893 downto 0);
subtype int894_t is signed(893 downto 0);
subtype uint895_t is unsigned(894 downto 0);
subtype int895_t is signed(894 downto 0);
subtype uint896_t is unsigned(895 downto 0);
subtype int896_t is signed(895 downto 0);
subtype uint897_t is unsigned(896 downto 0);
subtype int897_t is signed(896 downto 0);
subtype uint898_t is unsigned(897 downto 0);
subtype int898_t is signed(897 downto 0);
subtype uint899_t is unsigned(898 downto 0);
subtype int899_t is signed(898 downto 0);
subtype uint900_t is unsigned(899 downto 0);
subtype int900_t is signed(899 downto 0);
subtype uint901_t is unsigned(900 downto 0);
subtype int901_t is signed(900 downto 0);
subtype uint902_t is unsigned(901 downto 0);
subtype int902_t is signed(901 downto 0);
subtype uint903_t is unsigned(902 downto 0);
subtype int903_t is signed(902 downto 0);
subtype uint904_t is unsigned(903 downto 0);
subtype int904_t is signed(903 downto 0);
subtype uint905_t is unsigned(904 downto 0);
subtype int905_t is signed(904 downto 0);
subtype uint906_t is unsigned(905 downto 0);
subtype int906_t is signed(905 downto 0);
subtype uint907_t is unsigned(906 downto 0);
subtype int907_t is signed(906 downto 0);
subtype uint908_t is unsigned(907 downto 0);
subtype int908_t is signed(907 downto 0);
subtype uint909_t is unsigned(908 downto 0);
subtype int909_t is signed(908 downto 0);
subtype uint910_t is unsigned(909 downto 0);
subtype int910_t is signed(909 downto 0);
subtype uint911_t is unsigned(910 downto 0);
subtype int911_t is signed(910 downto 0);
subtype uint912_t is unsigned(911 downto 0);
subtype int912_t is signed(911 downto 0);
subtype uint913_t is unsigned(912 downto 0);
subtype int913_t is signed(912 downto 0);
subtype uint914_t is unsigned(913 downto 0);
subtype int914_t is signed(913 downto 0);
subtype uint915_t is unsigned(914 downto 0);
subtype int915_t is signed(914 downto 0);
subtype uint916_t is unsigned(915 downto 0);
subtype int916_t is signed(915 downto 0);
subtype uint917_t is unsigned(916 downto 0);
subtype int917_t is signed(916 downto 0);
subtype uint918_t is unsigned(917 downto 0);
subtype int918_t is signed(917 downto 0);
subtype uint919_t is unsigned(918 downto 0);
subtype int919_t is signed(918 downto 0);
subtype uint920_t is unsigned(919 downto 0);
subtype int920_t is signed(919 downto 0);
subtype uint921_t is unsigned(920 downto 0);
subtype int921_t is signed(920 downto 0);
subtype uint922_t is unsigned(921 downto 0);
subtype int922_t is signed(921 downto 0);
subtype uint923_t is unsigned(922 downto 0);
subtype int923_t is signed(922 downto 0);
subtype uint924_t is unsigned(923 downto 0);
subtype int924_t is signed(923 downto 0);
subtype uint925_t is unsigned(924 downto 0);
subtype int925_t is signed(924 downto 0);
subtype uint926_t is unsigned(925 downto 0);
subtype int926_t is signed(925 downto 0);
subtype uint927_t is unsigned(926 downto 0);
subtype int927_t is signed(926 downto 0);
subtype uint928_t is unsigned(927 downto 0);
subtype int928_t is signed(927 downto 0);
subtype uint929_t is unsigned(928 downto 0);
subtype int929_t is signed(928 downto 0);
subtype uint930_t is unsigned(929 downto 0);
subtype int930_t is signed(929 downto 0);
subtype uint931_t is unsigned(930 downto 0);
subtype int931_t is signed(930 downto 0);
subtype uint932_t is unsigned(931 downto 0);
subtype int932_t is signed(931 downto 0);
subtype uint933_t is unsigned(932 downto 0);
subtype int933_t is signed(932 downto 0);
subtype uint934_t is unsigned(933 downto 0);
subtype int934_t is signed(933 downto 0);
subtype uint935_t is unsigned(934 downto 0);
subtype int935_t is signed(934 downto 0);
subtype uint936_t is unsigned(935 downto 0);
subtype int936_t is signed(935 downto 0);
subtype uint937_t is unsigned(936 downto 0);
subtype int937_t is signed(936 downto 0);
subtype uint938_t is unsigned(937 downto 0);
subtype int938_t is signed(937 downto 0);
subtype uint939_t is unsigned(938 downto 0);
subtype int939_t is signed(938 downto 0);
subtype uint940_t is unsigned(939 downto 0);
subtype int940_t is signed(939 downto 0);
subtype uint941_t is unsigned(940 downto 0);
subtype int941_t is signed(940 downto 0);
subtype uint942_t is unsigned(941 downto 0);
subtype int942_t is signed(941 downto 0);
subtype uint943_t is unsigned(942 downto 0);
subtype int943_t is signed(942 downto 0);
subtype uint944_t is unsigned(943 downto 0);
subtype int944_t is signed(943 downto 0);
subtype uint945_t is unsigned(944 downto 0);
subtype int945_t is signed(944 downto 0);
subtype uint946_t is unsigned(945 downto 0);
subtype int946_t is signed(945 downto 0);
subtype uint947_t is unsigned(946 downto 0);
subtype int947_t is signed(946 downto 0);
subtype uint948_t is unsigned(947 downto 0);
subtype int948_t is signed(947 downto 0);
subtype uint949_t is unsigned(948 downto 0);
subtype int949_t is signed(948 downto 0);
subtype uint950_t is unsigned(949 downto 0);
subtype int950_t is signed(949 downto 0);
subtype uint951_t is unsigned(950 downto 0);
subtype int951_t is signed(950 downto 0);
subtype uint952_t is unsigned(951 downto 0);
subtype int952_t is signed(951 downto 0);
subtype uint953_t is unsigned(952 downto 0);
subtype int953_t is signed(952 downto 0);
subtype uint954_t is unsigned(953 downto 0);
subtype int954_t is signed(953 downto 0);
subtype uint955_t is unsigned(954 downto 0);
subtype int955_t is signed(954 downto 0);
subtype uint956_t is unsigned(955 downto 0);
subtype int956_t is signed(955 downto 0);
subtype uint957_t is unsigned(956 downto 0);
subtype int957_t is signed(956 downto 0);
subtype uint958_t is unsigned(957 downto 0);
subtype int958_t is signed(957 downto 0);
subtype uint959_t is unsigned(958 downto 0);
subtype int959_t is signed(958 downto 0);
subtype uint960_t is unsigned(959 downto 0);
subtype int960_t is signed(959 downto 0);
subtype uint961_t is unsigned(960 downto 0);
subtype int961_t is signed(960 downto 0);
subtype uint962_t is unsigned(961 downto 0);
subtype int962_t is signed(961 downto 0);
subtype uint963_t is unsigned(962 downto 0);
subtype int963_t is signed(962 downto 0);
subtype uint964_t is unsigned(963 downto 0);
subtype int964_t is signed(963 downto 0);
subtype uint965_t is unsigned(964 downto 0);
subtype int965_t is signed(964 downto 0);
subtype uint966_t is unsigned(965 downto 0);
subtype int966_t is signed(965 downto 0);
subtype uint967_t is unsigned(966 downto 0);
subtype int967_t is signed(966 downto 0);
subtype uint968_t is unsigned(967 downto 0);
subtype int968_t is signed(967 downto 0);
subtype uint969_t is unsigned(968 downto 0);
subtype int969_t is signed(968 downto 0);
subtype uint970_t is unsigned(969 downto 0);
subtype int970_t is signed(969 downto 0);
subtype uint971_t is unsigned(970 downto 0);
subtype int971_t is signed(970 downto 0);
subtype uint972_t is unsigned(971 downto 0);
subtype int972_t is signed(971 downto 0);
subtype uint973_t is unsigned(972 downto 0);
subtype int973_t is signed(972 downto 0);
subtype uint974_t is unsigned(973 downto 0);
subtype int974_t is signed(973 downto 0);
subtype uint975_t is unsigned(974 downto 0);
subtype int975_t is signed(974 downto 0);
subtype uint976_t is unsigned(975 downto 0);
subtype int976_t is signed(975 downto 0);
subtype uint977_t is unsigned(976 downto 0);
subtype int977_t is signed(976 downto 0);
subtype uint978_t is unsigned(977 downto 0);
subtype int978_t is signed(977 downto 0);
subtype uint979_t is unsigned(978 downto 0);
subtype int979_t is signed(978 downto 0);
subtype uint980_t is unsigned(979 downto 0);
subtype int980_t is signed(979 downto 0);
subtype uint981_t is unsigned(980 downto 0);
subtype int981_t is signed(980 downto 0);
subtype uint982_t is unsigned(981 downto 0);
subtype int982_t is signed(981 downto 0);
subtype uint983_t is unsigned(982 downto 0);
subtype int983_t is signed(982 downto 0);
subtype uint984_t is unsigned(983 downto 0);
subtype int984_t is signed(983 downto 0);
subtype uint985_t is unsigned(984 downto 0);
subtype int985_t is signed(984 downto 0);
subtype uint986_t is unsigned(985 downto 0);
subtype int986_t is signed(985 downto 0);
subtype uint987_t is unsigned(986 downto 0);
subtype int987_t is signed(986 downto 0);
subtype uint988_t is unsigned(987 downto 0);
subtype int988_t is signed(987 downto 0);
subtype uint989_t is unsigned(988 downto 0);
subtype int989_t is signed(988 downto 0);
subtype uint990_t is unsigned(989 downto 0);
subtype int990_t is signed(989 downto 0);
subtype uint991_t is unsigned(990 downto 0);
subtype int991_t is signed(990 downto 0);
subtype uint992_t is unsigned(991 downto 0);
subtype int992_t is signed(991 downto 0);
subtype uint993_t is unsigned(992 downto 0);
subtype int993_t is signed(992 downto 0);
subtype uint994_t is unsigned(993 downto 0);
subtype int994_t is signed(993 downto 0);
subtype uint995_t is unsigned(994 downto 0);
subtype int995_t is signed(994 downto 0);
subtype uint996_t is unsigned(995 downto 0);
subtype int996_t is signed(995 downto 0);
subtype uint997_t is unsigned(996 downto 0);
subtype int997_t is signed(996 downto 0);
subtype uint998_t is unsigned(997 downto 0);
subtype int998_t is signed(997 downto 0);
subtype uint999_t is unsigned(998 downto 0);
subtype int999_t is signed(998 downto 0);
subtype uint1000_t is unsigned(999 downto 0);
subtype int1000_t is signed(999 downto 0);
subtype uint1001_t is unsigned(1000 downto 0);
subtype int1001_t is signed(1000 downto 0);
subtype uint1002_t is unsigned(1001 downto 0);
subtype int1002_t is signed(1001 downto 0);
subtype uint1003_t is unsigned(1002 downto 0);
subtype int1003_t is signed(1002 downto 0);
subtype uint1004_t is unsigned(1003 downto 0);
subtype int1004_t is signed(1003 downto 0);
subtype uint1005_t is unsigned(1004 downto 0);
subtype int1005_t is signed(1004 downto 0);
subtype uint1006_t is unsigned(1005 downto 0);
subtype int1006_t is signed(1005 downto 0);
subtype uint1007_t is unsigned(1006 downto 0);
subtype int1007_t is signed(1006 downto 0);
subtype uint1008_t is unsigned(1007 downto 0);
subtype int1008_t is signed(1007 downto 0);
subtype uint1009_t is unsigned(1008 downto 0);
subtype int1009_t is signed(1008 downto 0);
subtype uint1010_t is unsigned(1009 downto 0);
subtype int1010_t is signed(1009 downto 0);
subtype uint1011_t is unsigned(1010 downto 0);
subtype int1011_t is signed(1010 downto 0);
subtype uint1012_t is unsigned(1011 downto 0);
subtype int1012_t is signed(1011 downto 0);
subtype uint1013_t is unsigned(1012 downto 0);
subtype int1013_t is signed(1012 downto 0);
subtype uint1014_t is unsigned(1013 downto 0);
subtype int1014_t is signed(1013 downto 0);
subtype uint1015_t is unsigned(1014 downto 0);
subtype int1015_t is signed(1014 downto 0);
subtype uint1016_t is unsigned(1015 downto 0);
subtype int1016_t is signed(1015 downto 0);
subtype uint1017_t is unsigned(1016 downto 0);
subtype int1017_t is signed(1016 downto 0);
subtype uint1018_t is unsigned(1017 downto 0);
subtype int1018_t is signed(1017 downto 0);
subtype uint1019_t is unsigned(1018 downto 0);
subtype int1019_t is signed(1018 downto 0);
subtype uint1020_t is unsigned(1019 downto 0);
subtype int1020_t is signed(1019 downto 0);
subtype uint1021_t is unsigned(1020 downto 0);
subtype int1021_t is signed(1020 downto 0);
subtype uint1022_t is unsigned(1021 downto 0);
subtype int1022_t is signed(1021 downto 0);
subtype uint1023_t is unsigned(1022 downto 0);
subtype int1023_t is signed(1022 downto 0);
subtype uint1024_t is unsigned(1023 downto 0);
subtype int1024_t is signed(1023 downto 0);
subtype uint1025_t is unsigned(1024 downto 0);
subtype int1025_t is signed(1024 downto 0);
subtype uint1026_t is unsigned(1025 downto 0);
subtype int1026_t is signed(1025 downto 0);
subtype uint1027_t is unsigned(1026 downto 0);
subtype int1027_t is signed(1026 downto 0);
subtype uint1028_t is unsigned(1027 downto 0);
subtype int1028_t is signed(1027 downto 0);
subtype uint1029_t is unsigned(1028 downto 0);
subtype int1029_t is signed(1028 downto 0);
subtype uint1030_t is unsigned(1029 downto 0);
subtype int1030_t is signed(1029 downto 0);
subtype uint1031_t is unsigned(1030 downto 0);
subtype int1031_t is signed(1030 downto 0);
subtype uint1032_t is unsigned(1031 downto 0);
subtype int1032_t is signed(1031 downto 0);
subtype uint1033_t is unsigned(1032 downto 0);
subtype int1033_t is signed(1032 downto 0);
subtype uint1034_t is unsigned(1033 downto 0);
subtype int1034_t is signed(1033 downto 0);
subtype uint1035_t is unsigned(1034 downto 0);
subtype int1035_t is signed(1034 downto 0);
subtype uint1036_t is unsigned(1035 downto 0);
subtype int1036_t is signed(1035 downto 0);
subtype uint1037_t is unsigned(1036 downto 0);
subtype int1037_t is signed(1036 downto 0);
subtype uint1038_t is unsigned(1037 downto 0);
subtype int1038_t is signed(1037 downto 0);
subtype uint1039_t is unsigned(1038 downto 0);
subtype int1039_t is signed(1038 downto 0);
subtype uint1040_t is unsigned(1039 downto 0);
subtype int1040_t is signed(1039 downto 0);
subtype uint1041_t is unsigned(1040 downto 0);
subtype int1041_t is signed(1040 downto 0);
subtype uint1042_t is unsigned(1041 downto 0);
subtype int1042_t is signed(1041 downto 0);
subtype uint1043_t is unsigned(1042 downto 0);
subtype int1043_t is signed(1042 downto 0);
subtype uint1044_t is unsigned(1043 downto 0);
subtype int1044_t is signed(1043 downto 0);
subtype uint1045_t is unsigned(1044 downto 0);
subtype int1045_t is signed(1044 downto 0);
subtype uint1046_t is unsigned(1045 downto 0);
subtype int1046_t is signed(1045 downto 0);
subtype uint1047_t is unsigned(1046 downto 0);
subtype int1047_t is signed(1046 downto 0);
subtype uint1048_t is unsigned(1047 downto 0);
subtype int1048_t is signed(1047 downto 0);
subtype uint1049_t is unsigned(1048 downto 0);
subtype int1049_t is signed(1048 downto 0);
subtype uint1050_t is unsigned(1049 downto 0);
subtype int1050_t is signed(1049 downto 0);
subtype uint1051_t is unsigned(1050 downto 0);
subtype int1051_t is signed(1050 downto 0);
subtype uint1052_t is unsigned(1051 downto 0);
subtype int1052_t is signed(1051 downto 0);
subtype uint1053_t is unsigned(1052 downto 0);
subtype int1053_t is signed(1052 downto 0);
subtype uint1054_t is unsigned(1053 downto 0);
subtype int1054_t is signed(1053 downto 0);
subtype uint1055_t is unsigned(1054 downto 0);
subtype int1055_t is signed(1054 downto 0);
subtype uint1056_t is unsigned(1055 downto 0);
subtype int1056_t is signed(1055 downto 0);
subtype uint1057_t is unsigned(1056 downto 0);
subtype int1057_t is signed(1056 downto 0);
subtype uint1058_t is unsigned(1057 downto 0);
subtype int1058_t is signed(1057 downto 0);
subtype uint1059_t is unsigned(1058 downto 0);
subtype int1059_t is signed(1058 downto 0);
subtype uint1060_t is unsigned(1059 downto 0);
subtype int1060_t is signed(1059 downto 0);
subtype uint1061_t is unsigned(1060 downto 0);
subtype int1061_t is signed(1060 downto 0);
subtype uint1062_t is unsigned(1061 downto 0);
subtype int1062_t is signed(1061 downto 0);
subtype uint1063_t is unsigned(1062 downto 0);
subtype int1063_t is signed(1062 downto 0);
subtype uint1064_t is unsigned(1063 downto 0);
subtype int1064_t is signed(1063 downto 0);
subtype uint1065_t is unsigned(1064 downto 0);
subtype int1065_t is signed(1064 downto 0);
subtype uint1066_t is unsigned(1065 downto 0);
subtype int1066_t is signed(1065 downto 0);
subtype uint1067_t is unsigned(1066 downto 0);
subtype int1067_t is signed(1066 downto 0);
subtype uint1068_t is unsigned(1067 downto 0);
subtype int1068_t is signed(1067 downto 0);
subtype uint1069_t is unsigned(1068 downto 0);
subtype int1069_t is signed(1068 downto 0);
subtype uint1070_t is unsigned(1069 downto 0);
subtype int1070_t is signed(1069 downto 0);
subtype uint1071_t is unsigned(1070 downto 0);
subtype int1071_t is signed(1070 downto 0);
subtype uint1072_t is unsigned(1071 downto 0);
subtype int1072_t is signed(1071 downto 0);
subtype uint1073_t is unsigned(1072 downto 0);
subtype int1073_t is signed(1072 downto 0);
subtype uint1074_t is unsigned(1073 downto 0);
subtype int1074_t is signed(1073 downto 0);
subtype uint1075_t is unsigned(1074 downto 0);
subtype int1075_t is signed(1074 downto 0);
subtype uint1076_t is unsigned(1075 downto 0);
subtype int1076_t is signed(1075 downto 0);
subtype uint1077_t is unsigned(1076 downto 0);
subtype int1077_t is signed(1076 downto 0);
subtype uint1078_t is unsigned(1077 downto 0);
subtype int1078_t is signed(1077 downto 0);
subtype uint1079_t is unsigned(1078 downto 0);
subtype int1079_t is signed(1078 downto 0);
subtype uint1080_t is unsigned(1079 downto 0);
subtype int1080_t is signed(1079 downto 0);
subtype uint1081_t is unsigned(1080 downto 0);
subtype int1081_t is signed(1080 downto 0);
subtype uint1082_t is unsigned(1081 downto 0);
subtype int1082_t is signed(1081 downto 0);
subtype uint1083_t is unsigned(1082 downto 0);
subtype int1083_t is signed(1082 downto 0);
subtype uint1084_t is unsigned(1083 downto 0);
subtype int1084_t is signed(1083 downto 0);
subtype uint1085_t is unsigned(1084 downto 0);
subtype int1085_t is signed(1084 downto 0);
subtype uint1086_t is unsigned(1085 downto 0);
subtype int1086_t is signed(1085 downto 0);
subtype uint1087_t is unsigned(1086 downto 0);
subtype int1087_t is signed(1086 downto 0);
subtype uint1088_t is unsigned(1087 downto 0);
subtype int1088_t is signed(1087 downto 0);
subtype uint1089_t is unsigned(1088 downto 0);
subtype int1089_t is signed(1088 downto 0);
subtype uint1090_t is unsigned(1089 downto 0);
subtype int1090_t is signed(1089 downto 0);
subtype uint1091_t is unsigned(1090 downto 0);
subtype int1091_t is signed(1090 downto 0);
subtype uint1092_t is unsigned(1091 downto 0);
subtype int1092_t is signed(1091 downto 0);
subtype uint1093_t is unsigned(1092 downto 0);
subtype int1093_t is signed(1092 downto 0);
subtype uint1094_t is unsigned(1093 downto 0);
subtype int1094_t is signed(1093 downto 0);
subtype uint1095_t is unsigned(1094 downto 0);
subtype int1095_t is signed(1094 downto 0);
subtype uint1096_t is unsigned(1095 downto 0);
subtype int1096_t is signed(1095 downto 0);
subtype uint1097_t is unsigned(1096 downto 0);
subtype int1097_t is signed(1096 downto 0);
subtype uint1098_t is unsigned(1097 downto 0);
subtype int1098_t is signed(1097 downto 0);
subtype uint1099_t is unsigned(1098 downto 0);
subtype int1099_t is signed(1098 downto 0);
subtype uint1100_t is unsigned(1099 downto 0);
subtype int1100_t is signed(1099 downto 0);
subtype uint1101_t is unsigned(1100 downto 0);
subtype int1101_t is signed(1100 downto 0);
subtype uint1102_t is unsigned(1101 downto 0);
subtype int1102_t is signed(1101 downto 0);
subtype uint1103_t is unsigned(1102 downto 0);
subtype int1103_t is signed(1102 downto 0);
subtype uint1104_t is unsigned(1103 downto 0);
subtype int1104_t is signed(1103 downto 0);
subtype uint1105_t is unsigned(1104 downto 0);
subtype int1105_t is signed(1104 downto 0);
subtype uint1106_t is unsigned(1105 downto 0);
subtype int1106_t is signed(1105 downto 0);
subtype uint1107_t is unsigned(1106 downto 0);
subtype int1107_t is signed(1106 downto 0);
subtype uint1108_t is unsigned(1107 downto 0);
subtype int1108_t is signed(1107 downto 0);
subtype uint1109_t is unsigned(1108 downto 0);
subtype int1109_t is signed(1108 downto 0);
subtype uint1110_t is unsigned(1109 downto 0);
subtype int1110_t is signed(1109 downto 0);
subtype uint1111_t is unsigned(1110 downto 0);
subtype int1111_t is signed(1110 downto 0);
subtype uint1112_t is unsigned(1111 downto 0);
subtype int1112_t is signed(1111 downto 0);
subtype uint1113_t is unsigned(1112 downto 0);
subtype int1113_t is signed(1112 downto 0);
subtype uint1114_t is unsigned(1113 downto 0);
subtype int1114_t is signed(1113 downto 0);
subtype uint1115_t is unsigned(1114 downto 0);
subtype int1115_t is signed(1114 downto 0);
subtype uint1116_t is unsigned(1115 downto 0);
subtype int1116_t is signed(1115 downto 0);
subtype uint1117_t is unsigned(1116 downto 0);
subtype int1117_t is signed(1116 downto 0);
subtype uint1118_t is unsigned(1117 downto 0);
subtype int1118_t is signed(1117 downto 0);
subtype uint1119_t is unsigned(1118 downto 0);
subtype int1119_t is signed(1118 downto 0);
subtype uint1120_t is unsigned(1119 downto 0);
subtype int1120_t is signed(1119 downto 0);
subtype uint1121_t is unsigned(1120 downto 0);
subtype int1121_t is signed(1120 downto 0);
subtype uint1122_t is unsigned(1121 downto 0);
subtype int1122_t is signed(1121 downto 0);
subtype uint1123_t is unsigned(1122 downto 0);
subtype int1123_t is signed(1122 downto 0);
subtype uint1124_t is unsigned(1123 downto 0);
subtype int1124_t is signed(1123 downto 0);
subtype uint1125_t is unsigned(1124 downto 0);
subtype int1125_t is signed(1124 downto 0);
subtype uint1126_t is unsigned(1125 downto 0);
subtype int1126_t is signed(1125 downto 0);
subtype uint1127_t is unsigned(1126 downto 0);
subtype int1127_t is signed(1126 downto 0);
subtype uint1128_t is unsigned(1127 downto 0);
subtype int1128_t is signed(1127 downto 0);
subtype uint1129_t is unsigned(1128 downto 0);
subtype int1129_t is signed(1128 downto 0);
subtype uint1130_t is unsigned(1129 downto 0);
subtype int1130_t is signed(1129 downto 0);
subtype uint1131_t is unsigned(1130 downto 0);
subtype int1131_t is signed(1130 downto 0);
subtype uint1132_t is unsigned(1131 downto 0);
subtype int1132_t is signed(1131 downto 0);
subtype uint1133_t is unsigned(1132 downto 0);
subtype int1133_t is signed(1132 downto 0);
subtype uint1134_t is unsigned(1133 downto 0);
subtype int1134_t is signed(1133 downto 0);
subtype uint1135_t is unsigned(1134 downto 0);
subtype int1135_t is signed(1134 downto 0);
subtype uint1136_t is unsigned(1135 downto 0);
subtype int1136_t is signed(1135 downto 0);
subtype uint1137_t is unsigned(1136 downto 0);
subtype int1137_t is signed(1136 downto 0);
subtype uint1138_t is unsigned(1137 downto 0);
subtype int1138_t is signed(1137 downto 0);
subtype uint1139_t is unsigned(1138 downto 0);
subtype int1139_t is signed(1138 downto 0);
subtype uint1140_t is unsigned(1139 downto 0);
subtype int1140_t is signed(1139 downto 0);
subtype uint1141_t is unsigned(1140 downto 0);
subtype int1141_t is signed(1140 downto 0);
subtype uint1142_t is unsigned(1141 downto 0);
subtype int1142_t is signed(1141 downto 0);
subtype uint1143_t is unsigned(1142 downto 0);
subtype int1143_t is signed(1142 downto 0);
subtype uint1144_t is unsigned(1143 downto 0);
subtype int1144_t is signed(1143 downto 0);
subtype uint1145_t is unsigned(1144 downto 0);
subtype int1145_t is signed(1144 downto 0);
subtype uint1146_t is unsigned(1145 downto 0);
subtype int1146_t is signed(1145 downto 0);
subtype uint1147_t is unsigned(1146 downto 0);
subtype int1147_t is signed(1146 downto 0);
subtype uint1148_t is unsigned(1147 downto 0);
subtype int1148_t is signed(1147 downto 0);
subtype uint1149_t is unsigned(1148 downto 0);
subtype int1149_t is signed(1148 downto 0);
subtype uint1150_t is unsigned(1149 downto 0);
subtype int1150_t is signed(1149 downto 0);
subtype uint1151_t is unsigned(1150 downto 0);
subtype int1151_t is signed(1150 downto 0);
subtype uint1152_t is unsigned(1151 downto 0);
subtype int1152_t is signed(1151 downto 0);
subtype uint1153_t is unsigned(1152 downto 0);
subtype int1153_t is signed(1152 downto 0);
subtype uint1154_t is unsigned(1153 downto 0);
subtype int1154_t is signed(1153 downto 0);
subtype uint1155_t is unsigned(1154 downto 0);
subtype int1155_t is signed(1154 downto 0);
subtype uint1156_t is unsigned(1155 downto 0);
subtype int1156_t is signed(1155 downto 0);
subtype uint1157_t is unsigned(1156 downto 0);
subtype int1157_t is signed(1156 downto 0);
subtype uint1158_t is unsigned(1157 downto 0);
subtype int1158_t is signed(1157 downto 0);
subtype uint1159_t is unsigned(1158 downto 0);
subtype int1159_t is signed(1158 downto 0);
subtype uint1160_t is unsigned(1159 downto 0);
subtype int1160_t is signed(1159 downto 0);
subtype uint1161_t is unsigned(1160 downto 0);
subtype int1161_t is signed(1160 downto 0);
subtype uint1162_t is unsigned(1161 downto 0);
subtype int1162_t is signed(1161 downto 0);
subtype uint1163_t is unsigned(1162 downto 0);
subtype int1163_t is signed(1162 downto 0);
subtype uint1164_t is unsigned(1163 downto 0);
subtype int1164_t is signed(1163 downto 0);
subtype uint1165_t is unsigned(1164 downto 0);
subtype int1165_t is signed(1164 downto 0);
subtype uint1166_t is unsigned(1165 downto 0);
subtype int1166_t is signed(1165 downto 0);
subtype uint1167_t is unsigned(1166 downto 0);
subtype int1167_t is signed(1166 downto 0);
subtype uint1168_t is unsigned(1167 downto 0);
subtype int1168_t is signed(1167 downto 0);
subtype uint1169_t is unsigned(1168 downto 0);
subtype int1169_t is signed(1168 downto 0);
subtype uint1170_t is unsigned(1169 downto 0);
subtype int1170_t is signed(1169 downto 0);
subtype uint1171_t is unsigned(1170 downto 0);
subtype int1171_t is signed(1170 downto 0);
subtype uint1172_t is unsigned(1171 downto 0);
subtype int1172_t is signed(1171 downto 0);
subtype uint1173_t is unsigned(1172 downto 0);
subtype int1173_t is signed(1172 downto 0);
subtype uint1174_t is unsigned(1173 downto 0);
subtype int1174_t is signed(1173 downto 0);
subtype uint1175_t is unsigned(1174 downto 0);
subtype int1175_t is signed(1174 downto 0);
subtype uint1176_t is unsigned(1175 downto 0);
subtype int1176_t is signed(1175 downto 0);
subtype uint1177_t is unsigned(1176 downto 0);
subtype int1177_t is signed(1176 downto 0);
subtype uint1178_t is unsigned(1177 downto 0);
subtype int1178_t is signed(1177 downto 0);
subtype uint1179_t is unsigned(1178 downto 0);
subtype int1179_t is signed(1178 downto 0);
subtype uint1180_t is unsigned(1179 downto 0);
subtype int1180_t is signed(1179 downto 0);
subtype uint1181_t is unsigned(1180 downto 0);
subtype int1181_t is signed(1180 downto 0);
subtype uint1182_t is unsigned(1181 downto 0);
subtype int1182_t is signed(1181 downto 0);
subtype uint1183_t is unsigned(1182 downto 0);
subtype int1183_t is signed(1182 downto 0);
subtype uint1184_t is unsigned(1183 downto 0);
subtype int1184_t is signed(1183 downto 0);
subtype uint1185_t is unsigned(1184 downto 0);
subtype int1185_t is signed(1184 downto 0);
subtype uint1186_t is unsigned(1185 downto 0);
subtype int1186_t is signed(1185 downto 0);
subtype uint1187_t is unsigned(1186 downto 0);
subtype int1187_t is signed(1186 downto 0);
subtype uint1188_t is unsigned(1187 downto 0);
subtype int1188_t is signed(1187 downto 0);
subtype uint1189_t is unsigned(1188 downto 0);
subtype int1189_t is signed(1188 downto 0);
subtype uint1190_t is unsigned(1189 downto 0);
subtype int1190_t is signed(1189 downto 0);
subtype uint1191_t is unsigned(1190 downto 0);
subtype int1191_t is signed(1190 downto 0);
subtype uint1192_t is unsigned(1191 downto 0);
subtype int1192_t is signed(1191 downto 0);
subtype uint1193_t is unsigned(1192 downto 0);
subtype int1193_t is signed(1192 downto 0);
subtype uint1194_t is unsigned(1193 downto 0);
subtype int1194_t is signed(1193 downto 0);
subtype uint1195_t is unsigned(1194 downto 0);
subtype int1195_t is signed(1194 downto 0);
subtype uint1196_t is unsigned(1195 downto 0);
subtype int1196_t is signed(1195 downto 0);
subtype uint1197_t is unsigned(1196 downto 0);
subtype int1197_t is signed(1196 downto 0);
subtype uint1198_t is unsigned(1197 downto 0);
subtype int1198_t is signed(1197 downto 0);
subtype uint1199_t is unsigned(1198 downto 0);
subtype int1199_t is signed(1198 downto 0);
subtype uint1200_t is unsigned(1199 downto 0);
subtype int1200_t is signed(1199 downto 0);
subtype uint1201_t is unsigned(1200 downto 0);
subtype int1201_t is signed(1200 downto 0);
subtype uint1202_t is unsigned(1201 downto 0);
subtype int1202_t is signed(1201 downto 0);
subtype uint1203_t is unsigned(1202 downto 0);
subtype int1203_t is signed(1202 downto 0);
subtype uint1204_t is unsigned(1203 downto 0);
subtype int1204_t is signed(1203 downto 0);
subtype uint1205_t is unsigned(1204 downto 0);
subtype int1205_t is signed(1204 downto 0);
subtype uint1206_t is unsigned(1205 downto 0);
subtype int1206_t is signed(1205 downto 0);
subtype uint1207_t is unsigned(1206 downto 0);
subtype int1207_t is signed(1206 downto 0);
subtype uint1208_t is unsigned(1207 downto 0);
subtype int1208_t is signed(1207 downto 0);
subtype uint1209_t is unsigned(1208 downto 0);
subtype int1209_t is signed(1208 downto 0);
subtype uint1210_t is unsigned(1209 downto 0);
subtype int1210_t is signed(1209 downto 0);
subtype uint1211_t is unsigned(1210 downto 0);
subtype int1211_t is signed(1210 downto 0);
subtype uint1212_t is unsigned(1211 downto 0);
subtype int1212_t is signed(1211 downto 0);
subtype uint1213_t is unsigned(1212 downto 0);
subtype int1213_t is signed(1212 downto 0);
subtype uint1214_t is unsigned(1213 downto 0);
subtype int1214_t is signed(1213 downto 0);
subtype uint1215_t is unsigned(1214 downto 0);
subtype int1215_t is signed(1214 downto 0);
subtype uint1216_t is unsigned(1215 downto 0);
subtype int1216_t is signed(1215 downto 0);
subtype uint1217_t is unsigned(1216 downto 0);
subtype int1217_t is signed(1216 downto 0);
subtype uint1218_t is unsigned(1217 downto 0);
subtype int1218_t is signed(1217 downto 0);
subtype uint1219_t is unsigned(1218 downto 0);
subtype int1219_t is signed(1218 downto 0);
subtype uint1220_t is unsigned(1219 downto 0);
subtype int1220_t is signed(1219 downto 0);
subtype uint1221_t is unsigned(1220 downto 0);
subtype int1221_t is signed(1220 downto 0);
subtype uint1222_t is unsigned(1221 downto 0);
subtype int1222_t is signed(1221 downto 0);
subtype uint1223_t is unsigned(1222 downto 0);
subtype int1223_t is signed(1222 downto 0);
subtype uint1224_t is unsigned(1223 downto 0);
subtype int1224_t is signed(1223 downto 0);
subtype uint1225_t is unsigned(1224 downto 0);
subtype int1225_t is signed(1224 downto 0);
subtype uint1226_t is unsigned(1225 downto 0);
subtype int1226_t is signed(1225 downto 0);
subtype uint1227_t is unsigned(1226 downto 0);
subtype int1227_t is signed(1226 downto 0);
subtype uint1228_t is unsigned(1227 downto 0);
subtype int1228_t is signed(1227 downto 0);
subtype uint1229_t is unsigned(1228 downto 0);
subtype int1229_t is signed(1228 downto 0);
subtype uint1230_t is unsigned(1229 downto 0);
subtype int1230_t is signed(1229 downto 0);
subtype uint1231_t is unsigned(1230 downto 0);
subtype int1231_t is signed(1230 downto 0);
subtype uint1232_t is unsigned(1231 downto 0);
subtype int1232_t is signed(1231 downto 0);
subtype uint1233_t is unsigned(1232 downto 0);
subtype int1233_t is signed(1232 downto 0);
subtype uint1234_t is unsigned(1233 downto 0);
subtype int1234_t is signed(1233 downto 0);
subtype uint1235_t is unsigned(1234 downto 0);
subtype int1235_t is signed(1234 downto 0);
subtype uint1236_t is unsigned(1235 downto 0);
subtype int1236_t is signed(1235 downto 0);
subtype uint1237_t is unsigned(1236 downto 0);
subtype int1237_t is signed(1236 downto 0);
subtype uint1238_t is unsigned(1237 downto 0);
subtype int1238_t is signed(1237 downto 0);
subtype uint1239_t is unsigned(1238 downto 0);
subtype int1239_t is signed(1238 downto 0);
subtype uint1240_t is unsigned(1239 downto 0);
subtype int1240_t is signed(1239 downto 0);
subtype uint1241_t is unsigned(1240 downto 0);
subtype int1241_t is signed(1240 downto 0);
subtype uint1242_t is unsigned(1241 downto 0);
subtype int1242_t is signed(1241 downto 0);
subtype uint1243_t is unsigned(1242 downto 0);
subtype int1243_t is signed(1242 downto 0);
subtype uint1244_t is unsigned(1243 downto 0);
subtype int1244_t is signed(1243 downto 0);
subtype uint1245_t is unsigned(1244 downto 0);
subtype int1245_t is signed(1244 downto 0);
subtype uint1246_t is unsigned(1245 downto 0);
subtype int1246_t is signed(1245 downto 0);
subtype uint1247_t is unsigned(1246 downto 0);
subtype int1247_t is signed(1246 downto 0);
subtype uint1248_t is unsigned(1247 downto 0);
subtype int1248_t is signed(1247 downto 0);
subtype uint1249_t is unsigned(1248 downto 0);
subtype int1249_t is signed(1248 downto 0);
subtype uint1250_t is unsigned(1249 downto 0);
subtype int1250_t is signed(1249 downto 0);
subtype uint1251_t is unsigned(1250 downto 0);
subtype int1251_t is signed(1250 downto 0);
subtype uint1252_t is unsigned(1251 downto 0);
subtype int1252_t is signed(1251 downto 0);
subtype uint1253_t is unsigned(1252 downto 0);
subtype int1253_t is signed(1252 downto 0);
subtype uint1254_t is unsigned(1253 downto 0);
subtype int1254_t is signed(1253 downto 0);
subtype uint1255_t is unsigned(1254 downto 0);
subtype int1255_t is signed(1254 downto 0);
subtype uint1256_t is unsigned(1255 downto 0);
subtype int1256_t is signed(1255 downto 0);
subtype uint1257_t is unsigned(1256 downto 0);
subtype int1257_t is signed(1256 downto 0);
subtype uint1258_t is unsigned(1257 downto 0);
subtype int1258_t is signed(1257 downto 0);
subtype uint1259_t is unsigned(1258 downto 0);
subtype int1259_t is signed(1258 downto 0);
subtype uint1260_t is unsigned(1259 downto 0);
subtype int1260_t is signed(1259 downto 0);
subtype uint1261_t is unsigned(1260 downto 0);
subtype int1261_t is signed(1260 downto 0);
subtype uint1262_t is unsigned(1261 downto 0);
subtype int1262_t is signed(1261 downto 0);
subtype uint1263_t is unsigned(1262 downto 0);
subtype int1263_t is signed(1262 downto 0);
subtype uint1264_t is unsigned(1263 downto 0);
subtype int1264_t is signed(1263 downto 0);
subtype uint1265_t is unsigned(1264 downto 0);
subtype int1265_t is signed(1264 downto 0);
subtype uint1266_t is unsigned(1265 downto 0);
subtype int1266_t is signed(1265 downto 0);
subtype uint1267_t is unsigned(1266 downto 0);
subtype int1267_t is signed(1266 downto 0);
subtype uint1268_t is unsigned(1267 downto 0);
subtype int1268_t is signed(1267 downto 0);
subtype uint1269_t is unsigned(1268 downto 0);
subtype int1269_t is signed(1268 downto 0);
subtype uint1270_t is unsigned(1269 downto 0);
subtype int1270_t is signed(1269 downto 0);
subtype uint1271_t is unsigned(1270 downto 0);
subtype int1271_t is signed(1270 downto 0);
subtype uint1272_t is unsigned(1271 downto 0);
subtype int1272_t is signed(1271 downto 0);
subtype uint1273_t is unsigned(1272 downto 0);
subtype int1273_t is signed(1272 downto 0);
subtype uint1274_t is unsigned(1273 downto 0);
subtype int1274_t is signed(1273 downto 0);
subtype uint1275_t is unsigned(1274 downto 0);
subtype int1275_t is signed(1274 downto 0);
subtype uint1276_t is unsigned(1275 downto 0);
subtype int1276_t is signed(1275 downto 0);
subtype uint1277_t is unsigned(1276 downto 0);
subtype int1277_t is signed(1276 downto 0);
subtype uint1278_t is unsigned(1277 downto 0);
subtype int1278_t is signed(1277 downto 0);
subtype uint1279_t is unsigned(1278 downto 0);
subtype int1279_t is signed(1278 downto 0);
subtype uint1280_t is unsigned(1279 downto 0);
subtype int1280_t is signed(1279 downto 0);
subtype uint1281_t is unsigned(1280 downto 0);
subtype int1281_t is signed(1280 downto 0);
subtype uint1282_t is unsigned(1281 downto 0);
subtype int1282_t is signed(1281 downto 0);
subtype uint1283_t is unsigned(1282 downto 0);
subtype int1283_t is signed(1282 downto 0);
subtype uint1284_t is unsigned(1283 downto 0);
subtype int1284_t is signed(1283 downto 0);
subtype uint1285_t is unsigned(1284 downto 0);
subtype int1285_t is signed(1284 downto 0);
subtype uint1286_t is unsigned(1285 downto 0);
subtype int1286_t is signed(1285 downto 0);
subtype uint1287_t is unsigned(1286 downto 0);
subtype int1287_t is signed(1286 downto 0);
subtype uint1288_t is unsigned(1287 downto 0);
subtype int1288_t is signed(1287 downto 0);
subtype uint1289_t is unsigned(1288 downto 0);
subtype int1289_t is signed(1288 downto 0);
subtype uint1290_t is unsigned(1289 downto 0);
subtype int1290_t is signed(1289 downto 0);
subtype uint1291_t is unsigned(1290 downto 0);
subtype int1291_t is signed(1290 downto 0);
subtype uint1292_t is unsigned(1291 downto 0);
subtype int1292_t is signed(1291 downto 0);
subtype uint1293_t is unsigned(1292 downto 0);
subtype int1293_t is signed(1292 downto 0);
subtype uint1294_t is unsigned(1293 downto 0);
subtype int1294_t is signed(1293 downto 0);
subtype uint1295_t is unsigned(1294 downto 0);
subtype int1295_t is signed(1294 downto 0);
subtype uint1296_t is unsigned(1295 downto 0);
subtype int1296_t is signed(1295 downto 0);
subtype uint1297_t is unsigned(1296 downto 0);
subtype int1297_t is signed(1296 downto 0);
subtype uint1298_t is unsigned(1297 downto 0);
subtype int1298_t is signed(1297 downto 0);
subtype uint1299_t is unsigned(1298 downto 0);
subtype int1299_t is signed(1298 downto 0);
subtype uint1300_t is unsigned(1299 downto 0);
subtype int1300_t is signed(1299 downto 0);
subtype uint1301_t is unsigned(1300 downto 0);
subtype int1301_t is signed(1300 downto 0);
subtype uint1302_t is unsigned(1301 downto 0);
subtype int1302_t is signed(1301 downto 0);
subtype uint1303_t is unsigned(1302 downto 0);
subtype int1303_t is signed(1302 downto 0);
subtype uint1304_t is unsigned(1303 downto 0);
subtype int1304_t is signed(1303 downto 0);
subtype uint1305_t is unsigned(1304 downto 0);
subtype int1305_t is signed(1304 downto 0);
subtype uint1306_t is unsigned(1305 downto 0);
subtype int1306_t is signed(1305 downto 0);
subtype uint1307_t is unsigned(1306 downto 0);
subtype int1307_t is signed(1306 downto 0);
subtype uint1308_t is unsigned(1307 downto 0);
subtype int1308_t is signed(1307 downto 0);
subtype uint1309_t is unsigned(1308 downto 0);
subtype int1309_t is signed(1308 downto 0);
subtype uint1310_t is unsigned(1309 downto 0);
subtype int1310_t is signed(1309 downto 0);
subtype uint1311_t is unsigned(1310 downto 0);
subtype int1311_t is signed(1310 downto 0);
subtype uint1312_t is unsigned(1311 downto 0);
subtype int1312_t is signed(1311 downto 0);
subtype uint1313_t is unsigned(1312 downto 0);
subtype int1313_t is signed(1312 downto 0);
subtype uint1314_t is unsigned(1313 downto 0);
subtype int1314_t is signed(1313 downto 0);
subtype uint1315_t is unsigned(1314 downto 0);
subtype int1315_t is signed(1314 downto 0);
subtype uint1316_t is unsigned(1315 downto 0);
subtype int1316_t is signed(1315 downto 0);
subtype uint1317_t is unsigned(1316 downto 0);
subtype int1317_t is signed(1316 downto 0);
subtype uint1318_t is unsigned(1317 downto 0);
subtype int1318_t is signed(1317 downto 0);
subtype uint1319_t is unsigned(1318 downto 0);
subtype int1319_t is signed(1318 downto 0);
subtype uint1320_t is unsigned(1319 downto 0);
subtype int1320_t is signed(1319 downto 0);
subtype uint1321_t is unsigned(1320 downto 0);
subtype int1321_t is signed(1320 downto 0);
subtype uint1322_t is unsigned(1321 downto 0);
subtype int1322_t is signed(1321 downto 0);
subtype uint1323_t is unsigned(1322 downto 0);
subtype int1323_t is signed(1322 downto 0);
subtype uint1324_t is unsigned(1323 downto 0);
subtype int1324_t is signed(1323 downto 0);
subtype uint1325_t is unsigned(1324 downto 0);
subtype int1325_t is signed(1324 downto 0);
subtype uint1326_t is unsigned(1325 downto 0);
subtype int1326_t is signed(1325 downto 0);
subtype uint1327_t is unsigned(1326 downto 0);
subtype int1327_t is signed(1326 downto 0);
subtype uint1328_t is unsigned(1327 downto 0);
subtype int1328_t is signed(1327 downto 0);
subtype uint1329_t is unsigned(1328 downto 0);
subtype int1329_t is signed(1328 downto 0);
subtype uint1330_t is unsigned(1329 downto 0);
subtype int1330_t is signed(1329 downto 0);
subtype uint1331_t is unsigned(1330 downto 0);
subtype int1331_t is signed(1330 downto 0);
subtype uint1332_t is unsigned(1331 downto 0);
subtype int1332_t is signed(1331 downto 0);
subtype uint1333_t is unsigned(1332 downto 0);
subtype int1333_t is signed(1332 downto 0);
subtype uint1334_t is unsigned(1333 downto 0);
subtype int1334_t is signed(1333 downto 0);
subtype uint1335_t is unsigned(1334 downto 0);
subtype int1335_t is signed(1334 downto 0);
subtype uint1336_t is unsigned(1335 downto 0);
subtype int1336_t is signed(1335 downto 0);
subtype uint1337_t is unsigned(1336 downto 0);
subtype int1337_t is signed(1336 downto 0);
subtype uint1338_t is unsigned(1337 downto 0);
subtype int1338_t is signed(1337 downto 0);
subtype uint1339_t is unsigned(1338 downto 0);
subtype int1339_t is signed(1338 downto 0);
subtype uint1340_t is unsigned(1339 downto 0);
subtype int1340_t is signed(1339 downto 0);
subtype uint1341_t is unsigned(1340 downto 0);
subtype int1341_t is signed(1340 downto 0);
subtype uint1342_t is unsigned(1341 downto 0);
subtype int1342_t is signed(1341 downto 0);
subtype uint1343_t is unsigned(1342 downto 0);
subtype int1343_t is signed(1342 downto 0);
subtype uint1344_t is unsigned(1343 downto 0);
subtype int1344_t is signed(1343 downto 0);
subtype uint1345_t is unsigned(1344 downto 0);
subtype int1345_t is signed(1344 downto 0);
subtype uint1346_t is unsigned(1345 downto 0);
subtype int1346_t is signed(1345 downto 0);
subtype uint1347_t is unsigned(1346 downto 0);
subtype int1347_t is signed(1346 downto 0);
subtype uint1348_t is unsigned(1347 downto 0);
subtype int1348_t is signed(1347 downto 0);
subtype uint1349_t is unsigned(1348 downto 0);
subtype int1349_t is signed(1348 downto 0);
subtype uint1350_t is unsigned(1349 downto 0);
subtype int1350_t is signed(1349 downto 0);
subtype uint1351_t is unsigned(1350 downto 0);
subtype int1351_t is signed(1350 downto 0);
subtype uint1352_t is unsigned(1351 downto 0);
subtype int1352_t is signed(1351 downto 0);
subtype uint1353_t is unsigned(1352 downto 0);
subtype int1353_t is signed(1352 downto 0);
subtype uint1354_t is unsigned(1353 downto 0);
subtype int1354_t is signed(1353 downto 0);
subtype uint1355_t is unsigned(1354 downto 0);
subtype int1355_t is signed(1354 downto 0);
subtype uint1356_t is unsigned(1355 downto 0);
subtype int1356_t is signed(1355 downto 0);
subtype uint1357_t is unsigned(1356 downto 0);
subtype int1357_t is signed(1356 downto 0);
subtype uint1358_t is unsigned(1357 downto 0);
subtype int1358_t is signed(1357 downto 0);
subtype uint1359_t is unsigned(1358 downto 0);
subtype int1359_t is signed(1358 downto 0);
subtype uint1360_t is unsigned(1359 downto 0);
subtype int1360_t is signed(1359 downto 0);
subtype uint1361_t is unsigned(1360 downto 0);
subtype int1361_t is signed(1360 downto 0);
subtype uint1362_t is unsigned(1361 downto 0);
subtype int1362_t is signed(1361 downto 0);
subtype uint1363_t is unsigned(1362 downto 0);
subtype int1363_t is signed(1362 downto 0);
subtype uint1364_t is unsigned(1363 downto 0);
subtype int1364_t is signed(1363 downto 0);
subtype uint1365_t is unsigned(1364 downto 0);
subtype int1365_t is signed(1364 downto 0);
subtype uint1366_t is unsigned(1365 downto 0);
subtype int1366_t is signed(1365 downto 0);
subtype uint1367_t is unsigned(1366 downto 0);
subtype int1367_t is signed(1366 downto 0);
subtype uint1368_t is unsigned(1367 downto 0);
subtype int1368_t is signed(1367 downto 0);
subtype uint1369_t is unsigned(1368 downto 0);
subtype int1369_t is signed(1368 downto 0);
subtype uint1370_t is unsigned(1369 downto 0);
subtype int1370_t is signed(1369 downto 0);
subtype uint1371_t is unsigned(1370 downto 0);
subtype int1371_t is signed(1370 downto 0);
subtype uint1372_t is unsigned(1371 downto 0);
subtype int1372_t is signed(1371 downto 0);
subtype uint1373_t is unsigned(1372 downto 0);
subtype int1373_t is signed(1372 downto 0);
subtype uint1374_t is unsigned(1373 downto 0);
subtype int1374_t is signed(1373 downto 0);
subtype uint1375_t is unsigned(1374 downto 0);
subtype int1375_t is signed(1374 downto 0);
subtype uint1376_t is unsigned(1375 downto 0);
subtype int1376_t is signed(1375 downto 0);
subtype uint1377_t is unsigned(1376 downto 0);
subtype int1377_t is signed(1376 downto 0);
subtype uint1378_t is unsigned(1377 downto 0);
subtype int1378_t is signed(1377 downto 0);
subtype uint1379_t is unsigned(1378 downto 0);
subtype int1379_t is signed(1378 downto 0);
subtype uint1380_t is unsigned(1379 downto 0);
subtype int1380_t is signed(1379 downto 0);
subtype uint1381_t is unsigned(1380 downto 0);
subtype int1381_t is signed(1380 downto 0);
subtype uint1382_t is unsigned(1381 downto 0);
subtype int1382_t is signed(1381 downto 0);
subtype uint1383_t is unsigned(1382 downto 0);
subtype int1383_t is signed(1382 downto 0);
subtype uint1384_t is unsigned(1383 downto 0);
subtype int1384_t is signed(1383 downto 0);
subtype uint1385_t is unsigned(1384 downto 0);
subtype int1385_t is signed(1384 downto 0);
subtype uint1386_t is unsigned(1385 downto 0);
subtype int1386_t is signed(1385 downto 0);
subtype uint1387_t is unsigned(1386 downto 0);
subtype int1387_t is signed(1386 downto 0);
subtype uint1388_t is unsigned(1387 downto 0);
subtype int1388_t is signed(1387 downto 0);
subtype uint1389_t is unsigned(1388 downto 0);
subtype int1389_t is signed(1388 downto 0);
subtype uint1390_t is unsigned(1389 downto 0);
subtype int1390_t is signed(1389 downto 0);
subtype uint1391_t is unsigned(1390 downto 0);
subtype int1391_t is signed(1390 downto 0);
subtype uint1392_t is unsigned(1391 downto 0);
subtype int1392_t is signed(1391 downto 0);
subtype uint1393_t is unsigned(1392 downto 0);
subtype int1393_t is signed(1392 downto 0);
subtype uint1394_t is unsigned(1393 downto 0);
subtype int1394_t is signed(1393 downto 0);
subtype uint1395_t is unsigned(1394 downto 0);
subtype int1395_t is signed(1394 downto 0);
subtype uint1396_t is unsigned(1395 downto 0);
subtype int1396_t is signed(1395 downto 0);
subtype uint1397_t is unsigned(1396 downto 0);
subtype int1397_t is signed(1396 downto 0);
subtype uint1398_t is unsigned(1397 downto 0);
subtype int1398_t is signed(1397 downto 0);
subtype uint1399_t is unsigned(1398 downto 0);
subtype int1399_t is signed(1398 downto 0);
subtype uint1400_t is unsigned(1399 downto 0);
subtype int1400_t is signed(1399 downto 0);
subtype uint1401_t is unsigned(1400 downto 0);
subtype int1401_t is signed(1400 downto 0);
subtype uint1402_t is unsigned(1401 downto 0);
subtype int1402_t is signed(1401 downto 0);
subtype uint1403_t is unsigned(1402 downto 0);
subtype int1403_t is signed(1402 downto 0);
subtype uint1404_t is unsigned(1403 downto 0);
subtype int1404_t is signed(1403 downto 0);
subtype uint1405_t is unsigned(1404 downto 0);
subtype int1405_t is signed(1404 downto 0);
subtype uint1406_t is unsigned(1405 downto 0);
subtype int1406_t is signed(1405 downto 0);
subtype uint1407_t is unsigned(1406 downto 0);
subtype int1407_t is signed(1406 downto 0);
subtype uint1408_t is unsigned(1407 downto 0);
subtype int1408_t is signed(1407 downto 0);
subtype uint1409_t is unsigned(1408 downto 0);
subtype int1409_t is signed(1408 downto 0);
subtype uint1410_t is unsigned(1409 downto 0);
subtype int1410_t is signed(1409 downto 0);
subtype uint1411_t is unsigned(1410 downto 0);
subtype int1411_t is signed(1410 downto 0);
subtype uint1412_t is unsigned(1411 downto 0);
subtype int1412_t is signed(1411 downto 0);
subtype uint1413_t is unsigned(1412 downto 0);
subtype int1413_t is signed(1412 downto 0);
subtype uint1414_t is unsigned(1413 downto 0);
subtype int1414_t is signed(1413 downto 0);
subtype uint1415_t is unsigned(1414 downto 0);
subtype int1415_t is signed(1414 downto 0);
subtype uint1416_t is unsigned(1415 downto 0);
subtype int1416_t is signed(1415 downto 0);
subtype uint1417_t is unsigned(1416 downto 0);
subtype int1417_t is signed(1416 downto 0);
subtype uint1418_t is unsigned(1417 downto 0);
subtype int1418_t is signed(1417 downto 0);
subtype uint1419_t is unsigned(1418 downto 0);
subtype int1419_t is signed(1418 downto 0);
subtype uint1420_t is unsigned(1419 downto 0);
subtype int1420_t is signed(1419 downto 0);
subtype uint1421_t is unsigned(1420 downto 0);
subtype int1421_t is signed(1420 downto 0);
subtype uint1422_t is unsigned(1421 downto 0);
subtype int1422_t is signed(1421 downto 0);
subtype uint1423_t is unsigned(1422 downto 0);
subtype int1423_t is signed(1422 downto 0);
subtype uint1424_t is unsigned(1423 downto 0);
subtype int1424_t is signed(1423 downto 0);
subtype uint1425_t is unsigned(1424 downto 0);
subtype int1425_t is signed(1424 downto 0);
subtype uint1426_t is unsigned(1425 downto 0);
subtype int1426_t is signed(1425 downto 0);
subtype uint1427_t is unsigned(1426 downto 0);
subtype int1427_t is signed(1426 downto 0);
subtype uint1428_t is unsigned(1427 downto 0);
subtype int1428_t is signed(1427 downto 0);
subtype uint1429_t is unsigned(1428 downto 0);
subtype int1429_t is signed(1428 downto 0);
subtype uint1430_t is unsigned(1429 downto 0);
subtype int1430_t is signed(1429 downto 0);
subtype uint1431_t is unsigned(1430 downto 0);
subtype int1431_t is signed(1430 downto 0);
subtype uint1432_t is unsigned(1431 downto 0);
subtype int1432_t is signed(1431 downto 0);
subtype uint1433_t is unsigned(1432 downto 0);
subtype int1433_t is signed(1432 downto 0);
subtype uint1434_t is unsigned(1433 downto 0);
subtype int1434_t is signed(1433 downto 0);
subtype uint1435_t is unsigned(1434 downto 0);
subtype int1435_t is signed(1434 downto 0);
subtype uint1436_t is unsigned(1435 downto 0);
subtype int1436_t is signed(1435 downto 0);
subtype uint1437_t is unsigned(1436 downto 0);
subtype int1437_t is signed(1436 downto 0);
subtype uint1438_t is unsigned(1437 downto 0);
subtype int1438_t is signed(1437 downto 0);
subtype uint1439_t is unsigned(1438 downto 0);
subtype int1439_t is signed(1438 downto 0);
subtype uint1440_t is unsigned(1439 downto 0);
subtype int1440_t is signed(1439 downto 0);
subtype uint1441_t is unsigned(1440 downto 0);
subtype int1441_t is signed(1440 downto 0);
subtype uint1442_t is unsigned(1441 downto 0);
subtype int1442_t is signed(1441 downto 0);
subtype uint1443_t is unsigned(1442 downto 0);
subtype int1443_t is signed(1442 downto 0);
subtype uint1444_t is unsigned(1443 downto 0);
subtype int1444_t is signed(1443 downto 0);
subtype uint1445_t is unsigned(1444 downto 0);
subtype int1445_t is signed(1444 downto 0);
subtype uint1446_t is unsigned(1445 downto 0);
subtype int1446_t is signed(1445 downto 0);
subtype uint1447_t is unsigned(1446 downto 0);
subtype int1447_t is signed(1446 downto 0);
subtype uint1448_t is unsigned(1447 downto 0);
subtype int1448_t is signed(1447 downto 0);
subtype uint1449_t is unsigned(1448 downto 0);
subtype int1449_t is signed(1448 downto 0);
subtype uint1450_t is unsigned(1449 downto 0);
subtype int1450_t is signed(1449 downto 0);
subtype uint1451_t is unsigned(1450 downto 0);
subtype int1451_t is signed(1450 downto 0);
subtype uint1452_t is unsigned(1451 downto 0);
subtype int1452_t is signed(1451 downto 0);
subtype uint1453_t is unsigned(1452 downto 0);
subtype int1453_t is signed(1452 downto 0);
subtype uint1454_t is unsigned(1453 downto 0);
subtype int1454_t is signed(1453 downto 0);
subtype uint1455_t is unsigned(1454 downto 0);
subtype int1455_t is signed(1454 downto 0);
subtype uint1456_t is unsigned(1455 downto 0);
subtype int1456_t is signed(1455 downto 0);
subtype uint1457_t is unsigned(1456 downto 0);
subtype int1457_t is signed(1456 downto 0);
subtype uint1458_t is unsigned(1457 downto 0);
subtype int1458_t is signed(1457 downto 0);
subtype uint1459_t is unsigned(1458 downto 0);
subtype int1459_t is signed(1458 downto 0);
subtype uint1460_t is unsigned(1459 downto 0);
subtype int1460_t is signed(1459 downto 0);
subtype uint1461_t is unsigned(1460 downto 0);
subtype int1461_t is signed(1460 downto 0);
subtype uint1462_t is unsigned(1461 downto 0);
subtype int1462_t is signed(1461 downto 0);
subtype uint1463_t is unsigned(1462 downto 0);
subtype int1463_t is signed(1462 downto 0);
subtype uint1464_t is unsigned(1463 downto 0);
subtype int1464_t is signed(1463 downto 0);
subtype uint1465_t is unsigned(1464 downto 0);
subtype int1465_t is signed(1464 downto 0);
subtype uint1466_t is unsigned(1465 downto 0);
subtype int1466_t is signed(1465 downto 0);
subtype uint1467_t is unsigned(1466 downto 0);
subtype int1467_t is signed(1466 downto 0);
subtype uint1468_t is unsigned(1467 downto 0);
subtype int1468_t is signed(1467 downto 0);
subtype uint1469_t is unsigned(1468 downto 0);
subtype int1469_t is signed(1468 downto 0);
subtype uint1470_t is unsigned(1469 downto 0);
subtype int1470_t is signed(1469 downto 0);
subtype uint1471_t is unsigned(1470 downto 0);
subtype int1471_t is signed(1470 downto 0);
subtype uint1472_t is unsigned(1471 downto 0);
subtype int1472_t is signed(1471 downto 0);
subtype uint1473_t is unsigned(1472 downto 0);
subtype int1473_t is signed(1472 downto 0);
subtype uint1474_t is unsigned(1473 downto 0);
subtype int1474_t is signed(1473 downto 0);
subtype uint1475_t is unsigned(1474 downto 0);
subtype int1475_t is signed(1474 downto 0);
subtype uint1476_t is unsigned(1475 downto 0);
subtype int1476_t is signed(1475 downto 0);
subtype uint1477_t is unsigned(1476 downto 0);
subtype int1477_t is signed(1476 downto 0);
subtype uint1478_t is unsigned(1477 downto 0);
subtype int1478_t is signed(1477 downto 0);
subtype uint1479_t is unsigned(1478 downto 0);
subtype int1479_t is signed(1478 downto 0);
subtype uint1480_t is unsigned(1479 downto 0);
subtype int1480_t is signed(1479 downto 0);
subtype uint1481_t is unsigned(1480 downto 0);
subtype int1481_t is signed(1480 downto 0);
subtype uint1482_t is unsigned(1481 downto 0);
subtype int1482_t is signed(1481 downto 0);
subtype uint1483_t is unsigned(1482 downto 0);
subtype int1483_t is signed(1482 downto 0);
subtype uint1484_t is unsigned(1483 downto 0);
subtype int1484_t is signed(1483 downto 0);
subtype uint1485_t is unsigned(1484 downto 0);
subtype int1485_t is signed(1484 downto 0);
subtype uint1486_t is unsigned(1485 downto 0);
subtype int1486_t is signed(1485 downto 0);
subtype uint1487_t is unsigned(1486 downto 0);
subtype int1487_t is signed(1486 downto 0);
subtype uint1488_t is unsigned(1487 downto 0);
subtype int1488_t is signed(1487 downto 0);
subtype uint1489_t is unsigned(1488 downto 0);
subtype int1489_t is signed(1488 downto 0);
subtype uint1490_t is unsigned(1489 downto 0);
subtype int1490_t is signed(1489 downto 0);
subtype uint1491_t is unsigned(1490 downto 0);
subtype int1491_t is signed(1490 downto 0);
subtype uint1492_t is unsigned(1491 downto 0);
subtype int1492_t is signed(1491 downto 0);
subtype uint1493_t is unsigned(1492 downto 0);
subtype int1493_t is signed(1492 downto 0);
subtype uint1494_t is unsigned(1493 downto 0);
subtype int1494_t is signed(1493 downto 0);
subtype uint1495_t is unsigned(1494 downto 0);
subtype int1495_t is signed(1494 downto 0);
subtype uint1496_t is unsigned(1495 downto 0);
subtype int1496_t is signed(1495 downto 0);
subtype uint1497_t is unsigned(1496 downto 0);
subtype int1497_t is signed(1496 downto 0);
subtype uint1498_t is unsigned(1497 downto 0);
subtype int1498_t is signed(1497 downto 0);
subtype uint1499_t is unsigned(1498 downto 0);
subtype int1499_t is signed(1498 downto 0);
subtype uint1500_t is unsigned(1499 downto 0);
subtype int1500_t is signed(1499 downto 0);
subtype uint1501_t is unsigned(1500 downto 0);
subtype int1501_t is signed(1500 downto 0);
subtype uint1502_t is unsigned(1501 downto 0);
subtype int1502_t is signed(1501 downto 0);
subtype uint1503_t is unsigned(1502 downto 0);
subtype int1503_t is signed(1502 downto 0);
subtype uint1504_t is unsigned(1503 downto 0);
subtype int1504_t is signed(1503 downto 0);
subtype uint1505_t is unsigned(1504 downto 0);
subtype int1505_t is signed(1504 downto 0);
subtype uint1506_t is unsigned(1505 downto 0);
subtype int1506_t is signed(1505 downto 0);
subtype uint1507_t is unsigned(1506 downto 0);
subtype int1507_t is signed(1506 downto 0);
subtype uint1508_t is unsigned(1507 downto 0);
subtype int1508_t is signed(1507 downto 0);
subtype uint1509_t is unsigned(1508 downto 0);
subtype int1509_t is signed(1508 downto 0);
subtype uint1510_t is unsigned(1509 downto 0);
subtype int1510_t is signed(1509 downto 0);
subtype uint1511_t is unsigned(1510 downto 0);
subtype int1511_t is signed(1510 downto 0);
subtype uint1512_t is unsigned(1511 downto 0);
subtype int1512_t is signed(1511 downto 0);
subtype uint1513_t is unsigned(1512 downto 0);
subtype int1513_t is signed(1512 downto 0);
subtype uint1514_t is unsigned(1513 downto 0);
subtype int1514_t is signed(1513 downto 0);
subtype uint1515_t is unsigned(1514 downto 0);
subtype int1515_t is signed(1514 downto 0);
subtype uint1516_t is unsigned(1515 downto 0);
subtype int1516_t is signed(1515 downto 0);
subtype uint1517_t is unsigned(1516 downto 0);
subtype int1517_t is signed(1516 downto 0);
subtype uint1518_t is unsigned(1517 downto 0);
subtype int1518_t is signed(1517 downto 0);
subtype uint1519_t is unsigned(1518 downto 0);
subtype int1519_t is signed(1518 downto 0);
subtype uint1520_t is unsigned(1519 downto 0);
subtype int1520_t is signed(1519 downto 0);
subtype uint1521_t is unsigned(1520 downto 0);
subtype int1521_t is signed(1520 downto 0);
subtype uint1522_t is unsigned(1521 downto 0);
subtype int1522_t is signed(1521 downto 0);
subtype uint1523_t is unsigned(1522 downto 0);
subtype int1523_t is signed(1522 downto 0);
subtype uint1524_t is unsigned(1523 downto 0);
subtype int1524_t is signed(1523 downto 0);
subtype uint1525_t is unsigned(1524 downto 0);
subtype int1525_t is signed(1524 downto 0);
subtype uint1526_t is unsigned(1525 downto 0);
subtype int1526_t is signed(1525 downto 0);
subtype uint1527_t is unsigned(1526 downto 0);
subtype int1527_t is signed(1526 downto 0);
subtype uint1528_t is unsigned(1527 downto 0);
subtype int1528_t is signed(1527 downto 0);
subtype uint1529_t is unsigned(1528 downto 0);
subtype int1529_t is signed(1528 downto 0);
subtype uint1530_t is unsigned(1529 downto 0);
subtype int1530_t is signed(1529 downto 0);
subtype uint1531_t is unsigned(1530 downto 0);
subtype int1531_t is signed(1530 downto 0);
subtype uint1532_t is unsigned(1531 downto 0);
subtype int1532_t is signed(1531 downto 0);
subtype uint1533_t is unsigned(1532 downto 0);
subtype int1533_t is signed(1532 downto 0);
subtype uint1534_t is unsigned(1533 downto 0);
subtype int1534_t is signed(1533 downto 0);
subtype uint1535_t is unsigned(1534 downto 0);
subtype int1535_t is signed(1534 downto 0);
subtype uint1536_t is unsigned(1535 downto 0);
subtype int1536_t is signed(1535 downto 0);
subtype uint1537_t is unsigned(1536 downto 0);
subtype int1537_t is signed(1536 downto 0);
subtype uint1538_t is unsigned(1537 downto 0);
subtype int1538_t is signed(1537 downto 0);
subtype uint1539_t is unsigned(1538 downto 0);
subtype int1539_t is signed(1538 downto 0);
subtype uint1540_t is unsigned(1539 downto 0);
subtype int1540_t is signed(1539 downto 0);
subtype uint1541_t is unsigned(1540 downto 0);
subtype int1541_t is signed(1540 downto 0);
subtype uint1542_t is unsigned(1541 downto 0);
subtype int1542_t is signed(1541 downto 0);
subtype uint1543_t is unsigned(1542 downto 0);
subtype int1543_t is signed(1542 downto 0);
subtype uint1544_t is unsigned(1543 downto 0);
subtype int1544_t is signed(1543 downto 0);
subtype uint1545_t is unsigned(1544 downto 0);
subtype int1545_t is signed(1544 downto 0);
subtype uint1546_t is unsigned(1545 downto 0);
subtype int1546_t is signed(1545 downto 0);
subtype uint1547_t is unsigned(1546 downto 0);
subtype int1547_t is signed(1546 downto 0);
subtype uint1548_t is unsigned(1547 downto 0);
subtype int1548_t is signed(1547 downto 0);
subtype uint1549_t is unsigned(1548 downto 0);
subtype int1549_t is signed(1548 downto 0);
subtype uint1550_t is unsigned(1549 downto 0);
subtype int1550_t is signed(1549 downto 0);
subtype uint1551_t is unsigned(1550 downto 0);
subtype int1551_t is signed(1550 downto 0);
subtype uint1552_t is unsigned(1551 downto 0);
subtype int1552_t is signed(1551 downto 0);
subtype uint1553_t is unsigned(1552 downto 0);
subtype int1553_t is signed(1552 downto 0);
subtype uint1554_t is unsigned(1553 downto 0);
subtype int1554_t is signed(1553 downto 0);
subtype uint1555_t is unsigned(1554 downto 0);
subtype int1555_t is signed(1554 downto 0);
subtype uint1556_t is unsigned(1555 downto 0);
subtype int1556_t is signed(1555 downto 0);
subtype uint1557_t is unsigned(1556 downto 0);
subtype int1557_t is signed(1556 downto 0);
subtype uint1558_t is unsigned(1557 downto 0);
subtype int1558_t is signed(1557 downto 0);
subtype uint1559_t is unsigned(1558 downto 0);
subtype int1559_t is signed(1558 downto 0);
subtype uint1560_t is unsigned(1559 downto 0);
subtype int1560_t is signed(1559 downto 0);
subtype uint1561_t is unsigned(1560 downto 0);
subtype int1561_t is signed(1560 downto 0);
subtype uint1562_t is unsigned(1561 downto 0);
subtype int1562_t is signed(1561 downto 0);
subtype uint1563_t is unsigned(1562 downto 0);
subtype int1563_t is signed(1562 downto 0);
subtype uint1564_t is unsigned(1563 downto 0);
subtype int1564_t is signed(1563 downto 0);
subtype uint1565_t is unsigned(1564 downto 0);
subtype int1565_t is signed(1564 downto 0);
subtype uint1566_t is unsigned(1565 downto 0);
subtype int1566_t is signed(1565 downto 0);
subtype uint1567_t is unsigned(1566 downto 0);
subtype int1567_t is signed(1566 downto 0);
subtype uint1568_t is unsigned(1567 downto 0);
subtype int1568_t is signed(1567 downto 0);
subtype uint1569_t is unsigned(1568 downto 0);
subtype int1569_t is signed(1568 downto 0);
subtype uint1570_t is unsigned(1569 downto 0);
subtype int1570_t is signed(1569 downto 0);
subtype uint1571_t is unsigned(1570 downto 0);
subtype int1571_t is signed(1570 downto 0);
subtype uint1572_t is unsigned(1571 downto 0);
subtype int1572_t is signed(1571 downto 0);
subtype uint1573_t is unsigned(1572 downto 0);
subtype int1573_t is signed(1572 downto 0);
subtype uint1574_t is unsigned(1573 downto 0);
subtype int1574_t is signed(1573 downto 0);
subtype uint1575_t is unsigned(1574 downto 0);
subtype int1575_t is signed(1574 downto 0);
subtype uint1576_t is unsigned(1575 downto 0);
subtype int1576_t is signed(1575 downto 0);
subtype uint1577_t is unsigned(1576 downto 0);
subtype int1577_t is signed(1576 downto 0);
subtype uint1578_t is unsigned(1577 downto 0);
subtype int1578_t is signed(1577 downto 0);
subtype uint1579_t is unsigned(1578 downto 0);
subtype int1579_t is signed(1578 downto 0);
subtype uint1580_t is unsigned(1579 downto 0);
subtype int1580_t is signed(1579 downto 0);
subtype uint1581_t is unsigned(1580 downto 0);
subtype int1581_t is signed(1580 downto 0);
subtype uint1582_t is unsigned(1581 downto 0);
subtype int1582_t is signed(1581 downto 0);
subtype uint1583_t is unsigned(1582 downto 0);
subtype int1583_t is signed(1582 downto 0);
subtype uint1584_t is unsigned(1583 downto 0);
subtype int1584_t is signed(1583 downto 0);
subtype uint1585_t is unsigned(1584 downto 0);
subtype int1585_t is signed(1584 downto 0);
subtype uint1586_t is unsigned(1585 downto 0);
subtype int1586_t is signed(1585 downto 0);
subtype uint1587_t is unsigned(1586 downto 0);
subtype int1587_t is signed(1586 downto 0);
subtype uint1588_t is unsigned(1587 downto 0);
subtype int1588_t is signed(1587 downto 0);
subtype uint1589_t is unsigned(1588 downto 0);
subtype int1589_t is signed(1588 downto 0);
subtype uint1590_t is unsigned(1589 downto 0);
subtype int1590_t is signed(1589 downto 0);
subtype uint1591_t is unsigned(1590 downto 0);
subtype int1591_t is signed(1590 downto 0);
subtype uint1592_t is unsigned(1591 downto 0);
subtype int1592_t is signed(1591 downto 0);
subtype uint1593_t is unsigned(1592 downto 0);
subtype int1593_t is signed(1592 downto 0);
subtype uint1594_t is unsigned(1593 downto 0);
subtype int1594_t is signed(1593 downto 0);
subtype uint1595_t is unsigned(1594 downto 0);
subtype int1595_t is signed(1594 downto 0);
subtype uint1596_t is unsigned(1595 downto 0);
subtype int1596_t is signed(1595 downto 0);
subtype uint1597_t is unsigned(1596 downto 0);
subtype int1597_t is signed(1596 downto 0);
subtype uint1598_t is unsigned(1597 downto 0);
subtype int1598_t is signed(1597 downto 0);
subtype uint1599_t is unsigned(1598 downto 0);
subtype int1599_t is signed(1598 downto 0);
subtype uint1600_t is unsigned(1599 downto 0);
subtype int1600_t is signed(1599 downto 0);
subtype uint1601_t is unsigned(1600 downto 0);
subtype int1601_t is signed(1600 downto 0);
subtype uint1602_t is unsigned(1601 downto 0);
subtype int1602_t is signed(1601 downto 0);
subtype uint1603_t is unsigned(1602 downto 0);
subtype int1603_t is signed(1602 downto 0);
subtype uint1604_t is unsigned(1603 downto 0);
subtype int1604_t is signed(1603 downto 0);
subtype uint1605_t is unsigned(1604 downto 0);
subtype int1605_t is signed(1604 downto 0);
subtype uint1606_t is unsigned(1605 downto 0);
subtype int1606_t is signed(1605 downto 0);
subtype uint1607_t is unsigned(1606 downto 0);
subtype int1607_t is signed(1606 downto 0);
subtype uint1608_t is unsigned(1607 downto 0);
subtype int1608_t is signed(1607 downto 0);
subtype uint1609_t is unsigned(1608 downto 0);
subtype int1609_t is signed(1608 downto 0);
subtype uint1610_t is unsigned(1609 downto 0);
subtype int1610_t is signed(1609 downto 0);
subtype uint1611_t is unsigned(1610 downto 0);
subtype int1611_t is signed(1610 downto 0);
subtype uint1612_t is unsigned(1611 downto 0);
subtype int1612_t is signed(1611 downto 0);
subtype uint1613_t is unsigned(1612 downto 0);
subtype int1613_t is signed(1612 downto 0);
subtype uint1614_t is unsigned(1613 downto 0);
subtype int1614_t is signed(1613 downto 0);
subtype uint1615_t is unsigned(1614 downto 0);
subtype int1615_t is signed(1614 downto 0);
subtype uint1616_t is unsigned(1615 downto 0);
subtype int1616_t is signed(1615 downto 0);
subtype uint1617_t is unsigned(1616 downto 0);
subtype int1617_t is signed(1616 downto 0);
subtype uint1618_t is unsigned(1617 downto 0);
subtype int1618_t is signed(1617 downto 0);
subtype uint1619_t is unsigned(1618 downto 0);
subtype int1619_t is signed(1618 downto 0);
subtype uint1620_t is unsigned(1619 downto 0);
subtype int1620_t is signed(1619 downto 0);
subtype uint1621_t is unsigned(1620 downto 0);
subtype int1621_t is signed(1620 downto 0);
subtype uint1622_t is unsigned(1621 downto 0);
subtype int1622_t is signed(1621 downto 0);
subtype uint1623_t is unsigned(1622 downto 0);
subtype int1623_t is signed(1622 downto 0);
subtype uint1624_t is unsigned(1623 downto 0);
subtype int1624_t is signed(1623 downto 0);
subtype uint1625_t is unsigned(1624 downto 0);
subtype int1625_t is signed(1624 downto 0);
subtype uint1626_t is unsigned(1625 downto 0);
subtype int1626_t is signed(1625 downto 0);
subtype uint1627_t is unsigned(1626 downto 0);
subtype int1627_t is signed(1626 downto 0);
subtype uint1628_t is unsigned(1627 downto 0);
subtype int1628_t is signed(1627 downto 0);
subtype uint1629_t is unsigned(1628 downto 0);
subtype int1629_t is signed(1628 downto 0);
subtype uint1630_t is unsigned(1629 downto 0);
subtype int1630_t is signed(1629 downto 0);
subtype uint1631_t is unsigned(1630 downto 0);
subtype int1631_t is signed(1630 downto 0);
subtype uint1632_t is unsigned(1631 downto 0);
subtype int1632_t is signed(1631 downto 0);
subtype uint1633_t is unsigned(1632 downto 0);
subtype int1633_t is signed(1632 downto 0);
subtype uint1634_t is unsigned(1633 downto 0);
subtype int1634_t is signed(1633 downto 0);
subtype uint1635_t is unsigned(1634 downto 0);
subtype int1635_t is signed(1634 downto 0);
subtype uint1636_t is unsigned(1635 downto 0);
subtype int1636_t is signed(1635 downto 0);
subtype uint1637_t is unsigned(1636 downto 0);
subtype int1637_t is signed(1636 downto 0);
subtype uint1638_t is unsigned(1637 downto 0);
subtype int1638_t is signed(1637 downto 0);
subtype uint1639_t is unsigned(1638 downto 0);
subtype int1639_t is signed(1638 downto 0);
subtype uint1640_t is unsigned(1639 downto 0);
subtype int1640_t is signed(1639 downto 0);
subtype uint1641_t is unsigned(1640 downto 0);
subtype int1641_t is signed(1640 downto 0);
subtype uint1642_t is unsigned(1641 downto 0);
subtype int1642_t is signed(1641 downto 0);
subtype uint1643_t is unsigned(1642 downto 0);
subtype int1643_t is signed(1642 downto 0);
subtype uint1644_t is unsigned(1643 downto 0);
subtype int1644_t is signed(1643 downto 0);
subtype uint1645_t is unsigned(1644 downto 0);
subtype int1645_t is signed(1644 downto 0);
subtype uint1646_t is unsigned(1645 downto 0);
subtype int1646_t is signed(1645 downto 0);
subtype uint1647_t is unsigned(1646 downto 0);
subtype int1647_t is signed(1646 downto 0);
subtype uint1648_t is unsigned(1647 downto 0);
subtype int1648_t is signed(1647 downto 0);
subtype uint1649_t is unsigned(1648 downto 0);
subtype int1649_t is signed(1648 downto 0);
subtype uint1650_t is unsigned(1649 downto 0);
subtype int1650_t is signed(1649 downto 0);
subtype uint1651_t is unsigned(1650 downto 0);
subtype int1651_t is signed(1650 downto 0);
subtype uint1652_t is unsigned(1651 downto 0);
subtype int1652_t is signed(1651 downto 0);
subtype uint1653_t is unsigned(1652 downto 0);
subtype int1653_t is signed(1652 downto 0);
subtype uint1654_t is unsigned(1653 downto 0);
subtype int1654_t is signed(1653 downto 0);
subtype uint1655_t is unsigned(1654 downto 0);
subtype int1655_t is signed(1654 downto 0);
subtype uint1656_t is unsigned(1655 downto 0);
subtype int1656_t is signed(1655 downto 0);
subtype uint1657_t is unsigned(1656 downto 0);
subtype int1657_t is signed(1656 downto 0);
subtype uint1658_t is unsigned(1657 downto 0);
subtype int1658_t is signed(1657 downto 0);
subtype uint1659_t is unsigned(1658 downto 0);
subtype int1659_t is signed(1658 downto 0);
subtype uint1660_t is unsigned(1659 downto 0);
subtype int1660_t is signed(1659 downto 0);
subtype uint1661_t is unsigned(1660 downto 0);
subtype int1661_t is signed(1660 downto 0);
subtype uint1662_t is unsigned(1661 downto 0);
subtype int1662_t is signed(1661 downto 0);
subtype uint1663_t is unsigned(1662 downto 0);
subtype int1663_t is signed(1662 downto 0);
subtype uint1664_t is unsigned(1663 downto 0);
subtype int1664_t is signed(1663 downto 0);
subtype uint1665_t is unsigned(1664 downto 0);
subtype int1665_t is signed(1664 downto 0);
subtype uint1666_t is unsigned(1665 downto 0);
subtype int1666_t is signed(1665 downto 0);
subtype uint1667_t is unsigned(1666 downto 0);
subtype int1667_t is signed(1666 downto 0);
subtype uint1668_t is unsigned(1667 downto 0);
subtype int1668_t is signed(1667 downto 0);
subtype uint1669_t is unsigned(1668 downto 0);
subtype int1669_t is signed(1668 downto 0);
subtype uint1670_t is unsigned(1669 downto 0);
subtype int1670_t is signed(1669 downto 0);
subtype uint1671_t is unsigned(1670 downto 0);
subtype int1671_t is signed(1670 downto 0);
subtype uint1672_t is unsigned(1671 downto 0);
subtype int1672_t is signed(1671 downto 0);
subtype uint1673_t is unsigned(1672 downto 0);
subtype int1673_t is signed(1672 downto 0);
subtype uint1674_t is unsigned(1673 downto 0);
subtype int1674_t is signed(1673 downto 0);
subtype uint1675_t is unsigned(1674 downto 0);
subtype int1675_t is signed(1674 downto 0);
subtype uint1676_t is unsigned(1675 downto 0);
subtype int1676_t is signed(1675 downto 0);
subtype uint1677_t is unsigned(1676 downto 0);
subtype int1677_t is signed(1676 downto 0);
subtype uint1678_t is unsigned(1677 downto 0);
subtype int1678_t is signed(1677 downto 0);
subtype uint1679_t is unsigned(1678 downto 0);
subtype int1679_t is signed(1678 downto 0);
subtype uint1680_t is unsigned(1679 downto 0);
subtype int1680_t is signed(1679 downto 0);
subtype uint1681_t is unsigned(1680 downto 0);
subtype int1681_t is signed(1680 downto 0);
subtype uint1682_t is unsigned(1681 downto 0);
subtype int1682_t is signed(1681 downto 0);
subtype uint1683_t is unsigned(1682 downto 0);
subtype int1683_t is signed(1682 downto 0);
subtype uint1684_t is unsigned(1683 downto 0);
subtype int1684_t is signed(1683 downto 0);
subtype uint1685_t is unsigned(1684 downto 0);
subtype int1685_t is signed(1684 downto 0);
subtype uint1686_t is unsigned(1685 downto 0);
subtype int1686_t is signed(1685 downto 0);
subtype uint1687_t is unsigned(1686 downto 0);
subtype int1687_t is signed(1686 downto 0);
subtype uint1688_t is unsigned(1687 downto 0);
subtype int1688_t is signed(1687 downto 0);
subtype uint1689_t is unsigned(1688 downto 0);
subtype int1689_t is signed(1688 downto 0);
subtype uint1690_t is unsigned(1689 downto 0);
subtype int1690_t is signed(1689 downto 0);
subtype uint1691_t is unsigned(1690 downto 0);
subtype int1691_t is signed(1690 downto 0);
subtype uint1692_t is unsigned(1691 downto 0);
subtype int1692_t is signed(1691 downto 0);
subtype uint1693_t is unsigned(1692 downto 0);
subtype int1693_t is signed(1692 downto 0);
subtype uint1694_t is unsigned(1693 downto 0);
subtype int1694_t is signed(1693 downto 0);
subtype uint1695_t is unsigned(1694 downto 0);
subtype int1695_t is signed(1694 downto 0);
subtype uint1696_t is unsigned(1695 downto 0);
subtype int1696_t is signed(1695 downto 0);
subtype uint1697_t is unsigned(1696 downto 0);
subtype int1697_t is signed(1696 downto 0);
subtype uint1698_t is unsigned(1697 downto 0);
subtype int1698_t is signed(1697 downto 0);
subtype uint1699_t is unsigned(1698 downto 0);
subtype int1699_t is signed(1698 downto 0);
subtype uint1700_t is unsigned(1699 downto 0);
subtype int1700_t is signed(1699 downto 0);
subtype uint1701_t is unsigned(1700 downto 0);
subtype int1701_t is signed(1700 downto 0);
subtype uint1702_t is unsigned(1701 downto 0);
subtype int1702_t is signed(1701 downto 0);
subtype uint1703_t is unsigned(1702 downto 0);
subtype int1703_t is signed(1702 downto 0);
subtype uint1704_t is unsigned(1703 downto 0);
subtype int1704_t is signed(1703 downto 0);
subtype uint1705_t is unsigned(1704 downto 0);
subtype int1705_t is signed(1704 downto 0);
subtype uint1706_t is unsigned(1705 downto 0);
subtype int1706_t is signed(1705 downto 0);
subtype uint1707_t is unsigned(1706 downto 0);
subtype int1707_t is signed(1706 downto 0);
subtype uint1708_t is unsigned(1707 downto 0);
subtype int1708_t is signed(1707 downto 0);
subtype uint1709_t is unsigned(1708 downto 0);
subtype int1709_t is signed(1708 downto 0);
subtype uint1710_t is unsigned(1709 downto 0);
subtype int1710_t is signed(1709 downto 0);
subtype uint1711_t is unsigned(1710 downto 0);
subtype int1711_t is signed(1710 downto 0);
subtype uint1712_t is unsigned(1711 downto 0);
subtype int1712_t is signed(1711 downto 0);
subtype uint1713_t is unsigned(1712 downto 0);
subtype int1713_t is signed(1712 downto 0);
subtype uint1714_t is unsigned(1713 downto 0);
subtype int1714_t is signed(1713 downto 0);
subtype uint1715_t is unsigned(1714 downto 0);
subtype int1715_t is signed(1714 downto 0);
subtype uint1716_t is unsigned(1715 downto 0);
subtype int1716_t is signed(1715 downto 0);
subtype uint1717_t is unsigned(1716 downto 0);
subtype int1717_t is signed(1716 downto 0);
subtype uint1718_t is unsigned(1717 downto 0);
subtype int1718_t is signed(1717 downto 0);
subtype uint1719_t is unsigned(1718 downto 0);
subtype int1719_t is signed(1718 downto 0);
subtype uint1720_t is unsigned(1719 downto 0);
subtype int1720_t is signed(1719 downto 0);
subtype uint1721_t is unsigned(1720 downto 0);
subtype int1721_t is signed(1720 downto 0);
subtype uint1722_t is unsigned(1721 downto 0);
subtype int1722_t is signed(1721 downto 0);
subtype uint1723_t is unsigned(1722 downto 0);
subtype int1723_t is signed(1722 downto 0);
subtype uint1724_t is unsigned(1723 downto 0);
subtype int1724_t is signed(1723 downto 0);
subtype uint1725_t is unsigned(1724 downto 0);
subtype int1725_t is signed(1724 downto 0);
subtype uint1726_t is unsigned(1725 downto 0);
subtype int1726_t is signed(1725 downto 0);
subtype uint1727_t is unsigned(1726 downto 0);
subtype int1727_t is signed(1726 downto 0);
subtype uint1728_t is unsigned(1727 downto 0);
subtype int1728_t is signed(1727 downto 0);
subtype uint1729_t is unsigned(1728 downto 0);
subtype int1729_t is signed(1728 downto 0);
subtype uint1730_t is unsigned(1729 downto 0);
subtype int1730_t is signed(1729 downto 0);
subtype uint1731_t is unsigned(1730 downto 0);
subtype int1731_t is signed(1730 downto 0);
subtype uint1732_t is unsigned(1731 downto 0);
subtype int1732_t is signed(1731 downto 0);
subtype uint1733_t is unsigned(1732 downto 0);
subtype int1733_t is signed(1732 downto 0);
subtype uint1734_t is unsigned(1733 downto 0);
subtype int1734_t is signed(1733 downto 0);
subtype uint1735_t is unsigned(1734 downto 0);
subtype int1735_t is signed(1734 downto 0);
subtype uint1736_t is unsigned(1735 downto 0);
subtype int1736_t is signed(1735 downto 0);
subtype uint1737_t is unsigned(1736 downto 0);
subtype int1737_t is signed(1736 downto 0);
subtype uint1738_t is unsigned(1737 downto 0);
subtype int1738_t is signed(1737 downto 0);
subtype uint1739_t is unsigned(1738 downto 0);
subtype int1739_t is signed(1738 downto 0);
subtype uint1740_t is unsigned(1739 downto 0);
subtype int1740_t is signed(1739 downto 0);
subtype uint1741_t is unsigned(1740 downto 0);
subtype int1741_t is signed(1740 downto 0);
subtype uint1742_t is unsigned(1741 downto 0);
subtype int1742_t is signed(1741 downto 0);
subtype uint1743_t is unsigned(1742 downto 0);
subtype int1743_t is signed(1742 downto 0);
subtype uint1744_t is unsigned(1743 downto 0);
subtype int1744_t is signed(1743 downto 0);
subtype uint1745_t is unsigned(1744 downto 0);
subtype int1745_t is signed(1744 downto 0);
subtype uint1746_t is unsigned(1745 downto 0);
subtype int1746_t is signed(1745 downto 0);
subtype uint1747_t is unsigned(1746 downto 0);
subtype int1747_t is signed(1746 downto 0);
subtype uint1748_t is unsigned(1747 downto 0);
subtype int1748_t is signed(1747 downto 0);
subtype uint1749_t is unsigned(1748 downto 0);
subtype int1749_t is signed(1748 downto 0);
subtype uint1750_t is unsigned(1749 downto 0);
subtype int1750_t is signed(1749 downto 0);
subtype uint1751_t is unsigned(1750 downto 0);
subtype int1751_t is signed(1750 downto 0);
subtype uint1752_t is unsigned(1751 downto 0);
subtype int1752_t is signed(1751 downto 0);
subtype uint1753_t is unsigned(1752 downto 0);
subtype int1753_t is signed(1752 downto 0);
subtype uint1754_t is unsigned(1753 downto 0);
subtype int1754_t is signed(1753 downto 0);
subtype uint1755_t is unsigned(1754 downto 0);
subtype int1755_t is signed(1754 downto 0);
subtype uint1756_t is unsigned(1755 downto 0);
subtype int1756_t is signed(1755 downto 0);
subtype uint1757_t is unsigned(1756 downto 0);
subtype int1757_t is signed(1756 downto 0);
subtype uint1758_t is unsigned(1757 downto 0);
subtype int1758_t is signed(1757 downto 0);
subtype uint1759_t is unsigned(1758 downto 0);
subtype int1759_t is signed(1758 downto 0);
subtype uint1760_t is unsigned(1759 downto 0);
subtype int1760_t is signed(1759 downto 0);
subtype uint1761_t is unsigned(1760 downto 0);
subtype int1761_t is signed(1760 downto 0);
subtype uint1762_t is unsigned(1761 downto 0);
subtype int1762_t is signed(1761 downto 0);
subtype uint1763_t is unsigned(1762 downto 0);
subtype int1763_t is signed(1762 downto 0);
subtype uint1764_t is unsigned(1763 downto 0);
subtype int1764_t is signed(1763 downto 0);
subtype uint1765_t is unsigned(1764 downto 0);
subtype int1765_t is signed(1764 downto 0);
subtype uint1766_t is unsigned(1765 downto 0);
subtype int1766_t is signed(1765 downto 0);
subtype uint1767_t is unsigned(1766 downto 0);
subtype int1767_t is signed(1766 downto 0);
subtype uint1768_t is unsigned(1767 downto 0);
subtype int1768_t is signed(1767 downto 0);
subtype uint1769_t is unsigned(1768 downto 0);
subtype int1769_t is signed(1768 downto 0);
subtype uint1770_t is unsigned(1769 downto 0);
subtype int1770_t is signed(1769 downto 0);
subtype uint1771_t is unsigned(1770 downto 0);
subtype int1771_t is signed(1770 downto 0);
subtype uint1772_t is unsigned(1771 downto 0);
subtype int1772_t is signed(1771 downto 0);
subtype uint1773_t is unsigned(1772 downto 0);
subtype int1773_t is signed(1772 downto 0);
subtype uint1774_t is unsigned(1773 downto 0);
subtype int1774_t is signed(1773 downto 0);
subtype uint1775_t is unsigned(1774 downto 0);
subtype int1775_t is signed(1774 downto 0);
subtype uint1776_t is unsigned(1775 downto 0);
subtype int1776_t is signed(1775 downto 0);
subtype uint1777_t is unsigned(1776 downto 0);
subtype int1777_t is signed(1776 downto 0);
subtype uint1778_t is unsigned(1777 downto 0);
subtype int1778_t is signed(1777 downto 0);
subtype uint1779_t is unsigned(1778 downto 0);
subtype int1779_t is signed(1778 downto 0);
subtype uint1780_t is unsigned(1779 downto 0);
subtype int1780_t is signed(1779 downto 0);
subtype uint1781_t is unsigned(1780 downto 0);
subtype int1781_t is signed(1780 downto 0);
subtype uint1782_t is unsigned(1781 downto 0);
subtype int1782_t is signed(1781 downto 0);
subtype uint1783_t is unsigned(1782 downto 0);
subtype int1783_t is signed(1782 downto 0);
subtype uint1784_t is unsigned(1783 downto 0);
subtype int1784_t is signed(1783 downto 0);
subtype uint1785_t is unsigned(1784 downto 0);
subtype int1785_t is signed(1784 downto 0);
subtype uint1786_t is unsigned(1785 downto 0);
subtype int1786_t is signed(1785 downto 0);
subtype uint1787_t is unsigned(1786 downto 0);
subtype int1787_t is signed(1786 downto 0);
subtype uint1788_t is unsigned(1787 downto 0);
subtype int1788_t is signed(1787 downto 0);
subtype uint1789_t is unsigned(1788 downto 0);
subtype int1789_t is signed(1788 downto 0);
subtype uint1790_t is unsigned(1789 downto 0);
subtype int1790_t is signed(1789 downto 0);
subtype uint1791_t is unsigned(1790 downto 0);
subtype int1791_t is signed(1790 downto 0);
subtype uint1792_t is unsigned(1791 downto 0);
subtype int1792_t is signed(1791 downto 0);
subtype uint1793_t is unsigned(1792 downto 0);
subtype int1793_t is signed(1792 downto 0);
subtype uint1794_t is unsigned(1793 downto 0);
subtype int1794_t is signed(1793 downto 0);
subtype uint1795_t is unsigned(1794 downto 0);
subtype int1795_t is signed(1794 downto 0);
subtype uint1796_t is unsigned(1795 downto 0);
subtype int1796_t is signed(1795 downto 0);
subtype uint1797_t is unsigned(1796 downto 0);
subtype int1797_t is signed(1796 downto 0);
subtype uint1798_t is unsigned(1797 downto 0);
subtype int1798_t is signed(1797 downto 0);
subtype uint1799_t is unsigned(1798 downto 0);
subtype int1799_t is signed(1798 downto 0);
subtype uint1800_t is unsigned(1799 downto 0);
subtype int1800_t is signed(1799 downto 0);
subtype uint1801_t is unsigned(1800 downto 0);
subtype int1801_t is signed(1800 downto 0);
subtype uint1802_t is unsigned(1801 downto 0);
subtype int1802_t is signed(1801 downto 0);
subtype uint1803_t is unsigned(1802 downto 0);
subtype int1803_t is signed(1802 downto 0);
subtype uint1804_t is unsigned(1803 downto 0);
subtype int1804_t is signed(1803 downto 0);
subtype uint1805_t is unsigned(1804 downto 0);
subtype int1805_t is signed(1804 downto 0);
subtype uint1806_t is unsigned(1805 downto 0);
subtype int1806_t is signed(1805 downto 0);
subtype uint1807_t is unsigned(1806 downto 0);
subtype int1807_t is signed(1806 downto 0);
subtype uint1808_t is unsigned(1807 downto 0);
subtype int1808_t is signed(1807 downto 0);
subtype uint1809_t is unsigned(1808 downto 0);
subtype int1809_t is signed(1808 downto 0);
subtype uint1810_t is unsigned(1809 downto 0);
subtype int1810_t is signed(1809 downto 0);
subtype uint1811_t is unsigned(1810 downto 0);
subtype int1811_t is signed(1810 downto 0);
subtype uint1812_t is unsigned(1811 downto 0);
subtype int1812_t is signed(1811 downto 0);
subtype uint1813_t is unsigned(1812 downto 0);
subtype int1813_t is signed(1812 downto 0);
subtype uint1814_t is unsigned(1813 downto 0);
subtype int1814_t is signed(1813 downto 0);
subtype uint1815_t is unsigned(1814 downto 0);
subtype int1815_t is signed(1814 downto 0);
subtype uint1816_t is unsigned(1815 downto 0);
subtype int1816_t is signed(1815 downto 0);
subtype uint1817_t is unsigned(1816 downto 0);
subtype int1817_t is signed(1816 downto 0);
subtype uint1818_t is unsigned(1817 downto 0);
subtype int1818_t is signed(1817 downto 0);
subtype uint1819_t is unsigned(1818 downto 0);
subtype int1819_t is signed(1818 downto 0);
subtype uint1820_t is unsigned(1819 downto 0);
subtype int1820_t is signed(1819 downto 0);
subtype uint1821_t is unsigned(1820 downto 0);
subtype int1821_t is signed(1820 downto 0);
subtype uint1822_t is unsigned(1821 downto 0);
subtype int1822_t is signed(1821 downto 0);
subtype uint1823_t is unsigned(1822 downto 0);
subtype int1823_t is signed(1822 downto 0);
subtype uint1824_t is unsigned(1823 downto 0);
subtype int1824_t is signed(1823 downto 0);
subtype uint1825_t is unsigned(1824 downto 0);
subtype int1825_t is signed(1824 downto 0);
subtype uint1826_t is unsigned(1825 downto 0);
subtype int1826_t is signed(1825 downto 0);
subtype uint1827_t is unsigned(1826 downto 0);
subtype int1827_t is signed(1826 downto 0);
subtype uint1828_t is unsigned(1827 downto 0);
subtype int1828_t is signed(1827 downto 0);
subtype uint1829_t is unsigned(1828 downto 0);
subtype int1829_t is signed(1828 downto 0);
subtype uint1830_t is unsigned(1829 downto 0);
subtype int1830_t is signed(1829 downto 0);
subtype uint1831_t is unsigned(1830 downto 0);
subtype int1831_t is signed(1830 downto 0);
subtype uint1832_t is unsigned(1831 downto 0);
subtype int1832_t is signed(1831 downto 0);
subtype uint1833_t is unsigned(1832 downto 0);
subtype int1833_t is signed(1832 downto 0);
subtype uint1834_t is unsigned(1833 downto 0);
subtype int1834_t is signed(1833 downto 0);
subtype uint1835_t is unsigned(1834 downto 0);
subtype int1835_t is signed(1834 downto 0);
subtype uint1836_t is unsigned(1835 downto 0);
subtype int1836_t is signed(1835 downto 0);
subtype uint1837_t is unsigned(1836 downto 0);
subtype int1837_t is signed(1836 downto 0);
subtype uint1838_t is unsigned(1837 downto 0);
subtype int1838_t is signed(1837 downto 0);
subtype uint1839_t is unsigned(1838 downto 0);
subtype int1839_t is signed(1838 downto 0);
subtype uint1840_t is unsigned(1839 downto 0);
subtype int1840_t is signed(1839 downto 0);
subtype uint1841_t is unsigned(1840 downto 0);
subtype int1841_t is signed(1840 downto 0);
subtype uint1842_t is unsigned(1841 downto 0);
subtype int1842_t is signed(1841 downto 0);
subtype uint1843_t is unsigned(1842 downto 0);
subtype int1843_t is signed(1842 downto 0);
subtype uint1844_t is unsigned(1843 downto 0);
subtype int1844_t is signed(1843 downto 0);
subtype uint1845_t is unsigned(1844 downto 0);
subtype int1845_t is signed(1844 downto 0);
subtype uint1846_t is unsigned(1845 downto 0);
subtype int1846_t is signed(1845 downto 0);
subtype uint1847_t is unsigned(1846 downto 0);
subtype int1847_t is signed(1846 downto 0);
subtype uint1848_t is unsigned(1847 downto 0);
subtype int1848_t is signed(1847 downto 0);
subtype uint1849_t is unsigned(1848 downto 0);
subtype int1849_t is signed(1848 downto 0);
subtype uint1850_t is unsigned(1849 downto 0);
subtype int1850_t is signed(1849 downto 0);
subtype uint1851_t is unsigned(1850 downto 0);
subtype int1851_t is signed(1850 downto 0);
subtype uint1852_t is unsigned(1851 downto 0);
subtype int1852_t is signed(1851 downto 0);
subtype uint1853_t is unsigned(1852 downto 0);
subtype int1853_t is signed(1852 downto 0);
subtype uint1854_t is unsigned(1853 downto 0);
subtype int1854_t is signed(1853 downto 0);
subtype uint1855_t is unsigned(1854 downto 0);
subtype int1855_t is signed(1854 downto 0);
subtype uint1856_t is unsigned(1855 downto 0);
subtype int1856_t is signed(1855 downto 0);
subtype uint1857_t is unsigned(1856 downto 0);
subtype int1857_t is signed(1856 downto 0);
subtype uint1858_t is unsigned(1857 downto 0);
subtype int1858_t is signed(1857 downto 0);
subtype uint1859_t is unsigned(1858 downto 0);
subtype int1859_t is signed(1858 downto 0);
subtype uint1860_t is unsigned(1859 downto 0);
subtype int1860_t is signed(1859 downto 0);
subtype uint1861_t is unsigned(1860 downto 0);
subtype int1861_t is signed(1860 downto 0);
subtype uint1862_t is unsigned(1861 downto 0);
subtype int1862_t is signed(1861 downto 0);
subtype uint1863_t is unsigned(1862 downto 0);
subtype int1863_t is signed(1862 downto 0);
subtype uint1864_t is unsigned(1863 downto 0);
subtype int1864_t is signed(1863 downto 0);
subtype uint1865_t is unsigned(1864 downto 0);
subtype int1865_t is signed(1864 downto 0);
subtype uint1866_t is unsigned(1865 downto 0);
subtype int1866_t is signed(1865 downto 0);
subtype uint1867_t is unsigned(1866 downto 0);
subtype int1867_t is signed(1866 downto 0);
subtype uint1868_t is unsigned(1867 downto 0);
subtype int1868_t is signed(1867 downto 0);
subtype uint1869_t is unsigned(1868 downto 0);
subtype int1869_t is signed(1868 downto 0);
subtype uint1870_t is unsigned(1869 downto 0);
subtype int1870_t is signed(1869 downto 0);
subtype uint1871_t is unsigned(1870 downto 0);
subtype int1871_t is signed(1870 downto 0);
subtype uint1872_t is unsigned(1871 downto 0);
subtype int1872_t is signed(1871 downto 0);
subtype uint1873_t is unsigned(1872 downto 0);
subtype int1873_t is signed(1872 downto 0);
subtype uint1874_t is unsigned(1873 downto 0);
subtype int1874_t is signed(1873 downto 0);
subtype uint1875_t is unsigned(1874 downto 0);
subtype int1875_t is signed(1874 downto 0);
subtype uint1876_t is unsigned(1875 downto 0);
subtype int1876_t is signed(1875 downto 0);
subtype uint1877_t is unsigned(1876 downto 0);
subtype int1877_t is signed(1876 downto 0);
subtype uint1878_t is unsigned(1877 downto 0);
subtype int1878_t is signed(1877 downto 0);
subtype uint1879_t is unsigned(1878 downto 0);
subtype int1879_t is signed(1878 downto 0);
subtype uint1880_t is unsigned(1879 downto 0);
subtype int1880_t is signed(1879 downto 0);
subtype uint1881_t is unsigned(1880 downto 0);
subtype int1881_t is signed(1880 downto 0);
subtype uint1882_t is unsigned(1881 downto 0);
subtype int1882_t is signed(1881 downto 0);
subtype uint1883_t is unsigned(1882 downto 0);
subtype int1883_t is signed(1882 downto 0);
subtype uint1884_t is unsigned(1883 downto 0);
subtype int1884_t is signed(1883 downto 0);
subtype uint1885_t is unsigned(1884 downto 0);
subtype int1885_t is signed(1884 downto 0);
subtype uint1886_t is unsigned(1885 downto 0);
subtype int1886_t is signed(1885 downto 0);
subtype uint1887_t is unsigned(1886 downto 0);
subtype int1887_t is signed(1886 downto 0);
subtype uint1888_t is unsigned(1887 downto 0);
subtype int1888_t is signed(1887 downto 0);
subtype uint1889_t is unsigned(1888 downto 0);
subtype int1889_t is signed(1888 downto 0);
subtype uint1890_t is unsigned(1889 downto 0);
subtype int1890_t is signed(1889 downto 0);
subtype uint1891_t is unsigned(1890 downto 0);
subtype int1891_t is signed(1890 downto 0);
subtype uint1892_t is unsigned(1891 downto 0);
subtype int1892_t is signed(1891 downto 0);
subtype uint1893_t is unsigned(1892 downto 0);
subtype int1893_t is signed(1892 downto 0);
subtype uint1894_t is unsigned(1893 downto 0);
subtype int1894_t is signed(1893 downto 0);
subtype uint1895_t is unsigned(1894 downto 0);
subtype int1895_t is signed(1894 downto 0);
subtype uint1896_t is unsigned(1895 downto 0);
subtype int1896_t is signed(1895 downto 0);
subtype uint1897_t is unsigned(1896 downto 0);
subtype int1897_t is signed(1896 downto 0);
subtype uint1898_t is unsigned(1897 downto 0);
subtype int1898_t is signed(1897 downto 0);
subtype uint1899_t is unsigned(1898 downto 0);
subtype int1899_t is signed(1898 downto 0);
subtype uint1900_t is unsigned(1899 downto 0);
subtype int1900_t is signed(1899 downto 0);
subtype uint1901_t is unsigned(1900 downto 0);
subtype int1901_t is signed(1900 downto 0);
subtype uint1902_t is unsigned(1901 downto 0);
subtype int1902_t is signed(1901 downto 0);
subtype uint1903_t is unsigned(1902 downto 0);
subtype int1903_t is signed(1902 downto 0);
subtype uint1904_t is unsigned(1903 downto 0);
subtype int1904_t is signed(1903 downto 0);
subtype uint1905_t is unsigned(1904 downto 0);
subtype int1905_t is signed(1904 downto 0);
subtype uint1906_t is unsigned(1905 downto 0);
subtype int1906_t is signed(1905 downto 0);
subtype uint1907_t is unsigned(1906 downto 0);
subtype int1907_t is signed(1906 downto 0);
subtype uint1908_t is unsigned(1907 downto 0);
subtype int1908_t is signed(1907 downto 0);
subtype uint1909_t is unsigned(1908 downto 0);
subtype int1909_t is signed(1908 downto 0);
subtype uint1910_t is unsigned(1909 downto 0);
subtype int1910_t is signed(1909 downto 0);
subtype uint1911_t is unsigned(1910 downto 0);
subtype int1911_t is signed(1910 downto 0);
subtype uint1912_t is unsigned(1911 downto 0);
subtype int1912_t is signed(1911 downto 0);
subtype uint1913_t is unsigned(1912 downto 0);
subtype int1913_t is signed(1912 downto 0);
subtype uint1914_t is unsigned(1913 downto 0);
subtype int1914_t is signed(1913 downto 0);
subtype uint1915_t is unsigned(1914 downto 0);
subtype int1915_t is signed(1914 downto 0);
subtype uint1916_t is unsigned(1915 downto 0);
subtype int1916_t is signed(1915 downto 0);
subtype uint1917_t is unsigned(1916 downto 0);
subtype int1917_t is signed(1916 downto 0);
subtype uint1918_t is unsigned(1917 downto 0);
subtype int1918_t is signed(1917 downto 0);
subtype uint1919_t is unsigned(1918 downto 0);
subtype int1919_t is signed(1918 downto 0);
subtype uint1920_t is unsigned(1919 downto 0);
subtype int1920_t is signed(1919 downto 0);
subtype uint1921_t is unsigned(1920 downto 0);
subtype int1921_t is signed(1920 downto 0);
subtype uint1922_t is unsigned(1921 downto 0);
subtype int1922_t is signed(1921 downto 0);
subtype uint1923_t is unsigned(1922 downto 0);
subtype int1923_t is signed(1922 downto 0);
subtype uint1924_t is unsigned(1923 downto 0);
subtype int1924_t is signed(1923 downto 0);
subtype uint1925_t is unsigned(1924 downto 0);
subtype int1925_t is signed(1924 downto 0);
subtype uint1926_t is unsigned(1925 downto 0);
subtype int1926_t is signed(1925 downto 0);
subtype uint1927_t is unsigned(1926 downto 0);
subtype int1927_t is signed(1926 downto 0);
subtype uint1928_t is unsigned(1927 downto 0);
subtype int1928_t is signed(1927 downto 0);
subtype uint1929_t is unsigned(1928 downto 0);
subtype int1929_t is signed(1928 downto 0);
subtype uint1930_t is unsigned(1929 downto 0);
subtype int1930_t is signed(1929 downto 0);
subtype uint1931_t is unsigned(1930 downto 0);
subtype int1931_t is signed(1930 downto 0);
subtype uint1932_t is unsigned(1931 downto 0);
subtype int1932_t is signed(1931 downto 0);
subtype uint1933_t is unsigned(1932 downto 0);
subtype int1933_t is signed(1932 downto 0);
subtype uint1934_t is unsigned(1933 downto 0);
subtype int1934_t is signed(1933 downto 0);
subtype uint1935_t is unsigned(1934 downto 0);
subtype int1935_t is signed(1934 downto 0);
subtype uint1936_t is unsigned(1935 downto 0);
subtype int1936_t is signed(1935 downto 0);
subtype uint1937_t is unsigned(1936 downto 0);
subtype int1937_t is signed(1936 downto 0);
subtype uint1938_t is unsigned(1937 downto 0);
subtype int1938_t is signed(1937 downto 0);
subtype uint1939_t is unsigned(1938 downto 0);
subtype int1939_t is signed(1938 downto 0);
subtype uint1940_t is unsigned(1939 downto 0);
subtype int1940_t is signed(1939 downto 0);
subtype uint1941_t is unsigned(1940 downto 0);
subtype int1941_t is signed(1940 downto 0);
subtype uint1942_t is unsigned(1941 downto 0);
subtype int1942_t is signed(1941 downto 0);
subtype uint1943_t is unsigned(1942 downto 0);
subtype int1943_t is signed(1942 downto 0);
subtype uint1944_t is unsigned(1943 downto 0);
subtype int1944_t is signed(1943 downto 0);
subtype uint1945_t is unsigned(1944 downto 0);
subtype int1945_t is signed(1944 downto 0);
subtype uint1946_t is unsigned(1945 downto 0);
subtype int1946_t is signed(1945 downto 0);
subtype uint1947_t is unsigned(1946 downto 0);
subtype int1947_t is signed(1946 downto 0);
subtype uint1948_t is unsigned(1947 downto 0);
subtype int1948_t is signed(1947 downto 0);
subtype uint1949_t is unsigned(1948 downto 0);
subtype int1949_t is signed(1948 downto 0);
subtype uint1950_t is unsigned(1949 downto 0);
subtype int1950_t is signed(1949 downto 0);
subtype uint1951_t is unsigned(1950 downto 0);
subtype int1951_t is signed(1950 downto 0);
subtype uint1952_t is unsigned(1951 downto 0);
subtype int1952_t is signed(1951 downto 0);
subtype uint1953_t is unsigned(1952 downto 0);
subtype int1953_t is signed(1952 downto 0);
subtype uint1954_t is unsigned(1953 downto 0);
subtype int1954_t is signed(1953 downto 0);
subtype uint1955_t is unsigned(1954 downto 0);
subtype int1955_t is signed(1954 downto 0);
subtype uint1956_t is unsigned(1955 downto 0);
subtype int1956_t is signed(1955 downto 0);
subtype uint1957_t is unsigned(1956 downto 0);
subtype int1957_t is signed(1956 downto 0);
subtype uint1958_t is unsigned(1957 downto 0);
subtype int1958_t is signed(1957 downto 0);
subtype uint1959_t is unsigned(1958 downto 0);
subtype int1959_t is signed(1958 downto 0);
subtype uint1960_t is unsigned(1959 downto 0);
subtype int1960_t is signed(1959 downto 0);
subtype uint1961_t is unsigned(1960 downto 0);
subtype int1961_t is signed(1960 downto 0);
subtype uint1962_t is unsigned(1961 downto 0);
subtype int1962_t is signed(1961 downto 0);
subtype uint1963_t is unsigned(1962 downto 0);
subtype int1963_t is signed(1962 downto 0);
subtype uint1964_t is unsigned(1963 downto 0);
subtype int1964_t is signed(1963 downto 0);
subtype uint1965_t is unsigned(1964 downto 0);
subtype int1965_t is signed(1964 downto 0);
subtype uint1966_t is unsigned(1965 downto 0);
subtype int1966_t is signed(1965 downto 0);
subtype uint1967_t is unsigned(1966 downto 0);
subtype int1967_t is signed(1966 downto 0);
subtype uint1968_t is unsigned(1967 downto 0);
subtype int1968_t is signed(1967 downto 0);
subtype uint1969_t is unsigned(1968 downto 0);
subtype int1969_t is signed(1968 downto 0);
subtype uint1970_t is unsigned(1969 downto 0);
subtype int1970_t is signed(1969 downto 0);
subtype uint1971_t is unsigned(1970 downto 0);
subtype int1971_t is signed(1970 downto 0);
subtype uint1972_t is unsigned(1971 downto 0);
subtype int1972_t is signed(1971 downto 0);
subtype uint1973_t is unsigned(1972 downto 0);
subtype int1973_t is signed(1972 downto 0);
subtype uint1974_t is unsigned(1973 downto 0);
subtype int1974_t is signed(1973 downto 0);
subtype uint1975_t is unsigned(1974 downto 0);
subtype int1975_t is signed(1974 downto 0);
subtype uint1976_t is unsigned(1975 downto 0);
subtype int1976_t is signed(1975 downto 0);
subtype uint1977_t is unsigned(1976 downto 0);
subtype int1977_t is signed(1976 downto 0);
subtype uint1978_t is unsigned(1977 downto 0);
subtype int1978_t is signed(1977 downto 0);
subtype uint1979_t is unsigned(1978 downto 0);
subtype int1979_t is signed(1978 downto 0);
subtype uint1980_t is unsigned(1979 downto 0);
subtype int1980_t is signed(1979 downto 0);
subtype uint1981_t is unsigned(1980 downto 0);
subtype int1981_t is signed(1980 downto 0);
subtype uint1982_t is unsigned(1981 downto 0);
subtype int1982_t is signed(1981 downto 0);
subtype uint1983_t is unsigned(1982 downto 0);
subtype int1983_t is signed(1982 downto 0);
subtype uint1984_t is unsigned(1983 downto 0);
subtype int1984_t is signed(1983 downto 0);
subtype uint1985_t is unsigned(1984 downto 0);
subtype int1985_t is signed(1984 downto 0);
subtype uint1986_t is unsigned(1985 downto 0);
subtype int1986_t is signed(1985 downto 0);
subtype uint1987_t is unsigned(1986 downto 0);
subtype int1987_t is signed(1986 downto 0);
subtype uint1988_t is unsigned(1987 downto 0);
subtype int1988_t is signed(1987 downto 0);
subtype uint1989_t is unsigned(1988 downto 0);
subtype int1989_t is signed(1988 downto 0);
subtype uint1990_t is unsigned(1989 downto 0);
subtype int1990_t is signed(1989 downto 0);
subtype uint1991_t is unsigned(1990 downto 0);
subtype int1991_t is signed(1990 downto 0);
subtype uint1992_t is unsigned(1991 downto 0);
subtype int1992_t is signed(1991 downto 0);
subtype uint1993_t is unsigned(1992 downto 0);
subtype int1993_t is signed(1992 downto 0);
subtype uint1994_t is unsigned(1993 downto 0);
subtype int1994_t is signed(1993 downto 0);
subtype uint1995_t is unsigned(1994 downto 0);
subtype int1995_t is signed(1994 downto 0);
subtype uint1996_t is unsigned(1995 downto 0);
subtype int1996_t is signed(1995 downto 0);
subtype uint1997_t is unsigned(1996 downto 0);
subtype int1997_t is signed(1996 downto 0);
subtype uint1998_t is unsigned(1997 downto 0);
subtype int1998_t is signed(1997 downto 0);
subtype uint1999_t is unsigned(1998 downto 0);
subtype int1999_t is signed(1998 downto 0);
subtype uint2000_t is unsigned(1999 downto 0);
subtype int2000_t is signed(1999 downto 0);
subtype uint2001_t is unsigned(2000 downto 0);
subtype int2001_t is signed(2000 downto 0);
subtype uint2002_t is unsigned(2001 downto 0);
subtype int2002_t is signed(2001 downto 0);
subtype uint2003_t is unsigned(2002 downto 0);
subtype int2003_t is signed(2002 downto 0);
subtype uint2004_t is unsigned(2003 downto 0);
subtype int2004_t is signed(2003 downto 0);
subtype uint2005_t is unsigned(2004 downto 0);
subtype int2005_t is signed(2004 downto 0);
subtype uint2006_t is unsigned(2005 downto 0);
subtype int2006_t is signed(2005 downto 0);
subtype uint2007_t is unsigned(2006 downto 0);
subtype int2007_t is signed(2006 downto 0);
subtype uint2008_t is unsigned(2007 downto 0);
subtype int2008_t is signed(2007 downto 0);
subtype uint2009_t is unsigned(2008 downto 0);
subtype int2009_t is signed(2008 downto 0);
subtype uint2010_t is unsigned(2009 downto 0);
subtype int2010_t is signed(2009 downto 0);
subtype uint2011_t is unsigned(2010 downto 0);
subtype int2011_t is signed(2010 downto 0);
subtype uint2012_t is unsigned(2011 downto 0);
subtype int2012_t is signed(2011 downto 0);
subtype uint2013_t is unsigned(2012 downto 0);
subtype int2013_t is signed(2012 downto 0);
subtype uint2014_t is unsigned(2013 downto 0);
subtype int2014_t is signed(2013 downto 0);
subtype uint2015_t is unsigned(2014 downto 0);
subtype int2015_t is signed(2014 downto 0);
subtype uint2016_t is unsigned(2015 downto 0);
subtype int2016_t is signed(2015 downto 0);
subtype uint2017_t is unsigned(2016 downto 0);
subtype int2017_t is signed(2016 downto 0);
subtype uint2018_t is unsigned(2017 downto 0);
subtype int2018_t is signed(2017 downto 0);
subtype uint2019_t is unsigned(2018 downto 0);
subtype int2019_t is signed(2018 downto 0);
subtype uint2020_t is unsigned(2019 downto 0);
subtype int2020_t is signed(2019 downto 0);
subtype uint2021_t is unsigned(2020 downto 0);
subtype int2021_t is signed(2020 downto 0);
subtype uint2022_t is unsigned(2021 downto 0);
subtype int2022_t is signed(2021 downto 0);
subtype uint2023_t is unsigned(2022 downto 0);
subtype int2023_t is signed(2022 downto 0);
subtype uint2024_t is unsigned(2023 downto 0);
subtype int2024_t is signed(2023 downto 0);
subtype uint2025_t is unsigned(2024 downto 0);
subtype int2025_t is signed(2024 downto 0);
subtype uint2026_t is unsigned(2025 downto 0);
subtype int2026_t is signed(2025 downto 0);
subtype uint2027_t is unsigned(2026 downto 0);
subtype int2027_t is signed(2026 downto 0);
subtype uint2028_t is unsigned(2027 downto 0);
subtype int2028_t is signed(2027 downto 0);
subtype uint2029_t is unsigned(2028 downto 0);
subtype int2029_t is signed(2028 downto 0);
subtype uint2030_t is unsigned(2029 downto 0);
subtype int2030_t is signed(2029 downto 0);
subtype uint2031_t is unsigned(2030 downto 0);
subtype int2031_t is signed(2030 downto 0);
subtype uint2032_t is unsigned(2031 downto 0);
subtype int2032_t is signed(2031 downto 0);
subtype uint2033_t is unsigned(2032 downto 0);
subtype int2033_t is signed(2032 downto 0);
subtype uint2034_t is unsigned(2033 downto 0);
subtype int2034_t is signed(2033 downto 0);
subtype uint2035_t is unsigned(2034 downto 0);
subtype int2035_t is signed(2034 downto 0);
subtype uint2036_t is unsigned(2035 downto 0);
subtype int2036_t is signed(2035 downto 0);
subtype uint2037_t is unsigned(2036 downto 0);
subtype int2037_t is signed(2036 downto 0);
subtype uint2038_t is unsigned(2037 downto 0);
subtype int2038_t is signed(2037 downto 0);
subtype uint2039_t is unsigned(2038 downto 0);
subtype int2039_t is signed(2038 downto 0);
subtype uint2040_t is unsigned(2039 downto 0);
subtype int2040_t is signed(2039 downto 0);
subtype uint2041_t is unsigned(2040 downto 0);
subtype int2041_t is signed(2040 downto 0);
subtype uint2042_t is unsigned(2041 downto 0);
subtype int2042_t is signed(2041 downto 0);
subtype uint2043_t is unsigned(2042 downto 0);
subtype int2043_t is signed(2042 downto 0);
subtype uint2044_t is unsigned(2043 downto 0);
subtype int2044_t is signed(2043 downto 0);
subtype uint2045_t is unsigned(2044 downto 0);
subtype int2045_t is signed(2044 downto 0);
subtype uint2046_t is unsigned(2045 downto 0);
subtype int2046_t is signed(2045 downto 0);
subtype uint2047_t is unsigned(2046 downto 0);
subtype int2047_t is signed(2046 downto 0);
subtype uint2048_t is unsigned(2047 downto 0);
subtype int2048_t is signed(2047 downto 0);

  type byte_array_t is array (natural range <>) of unsigned(7 downto 0);
  function to_byte_array(s : string) return byte_array_t;
  
  function resize_float_e_m_t(
    x : std_logic_vector; 
    in_exponent_width : integer;
    in_mantissa_width : integer;
    out_exponent_width : integer;
    out_mantissa_width : integer) return std_logic_vector; 
   
  type ext_vga_state_t is (
    
      STALL_AT_FEEDBACK_SOF,
      START_AT_EXTERNAL_SOF,
      WAIT_PIPELINE_FLUSH,
      MONITOR_ALIGNMENT
  );
  
function ext_vga_state_t_to_integer(e : ext_vga_state_t) return integer;

function ext_vga_state_t_from_integer(i : integer) return ext_vga_state_t;

  type get_uart_input_FSM_STATE_t is (
    
      ENTRY_REG,
      L56_C3_Return,
      RETURN_REG
  );
  
function get_uart_input_FSM_STATE_t_to_integer(e : get_uart_input_FSM_STATE_t) return integer;

function get_uart_input_FSM_STATE_t_from_integer(i : integer) return get_uart_input_FSM_STATE_t;

  type uart_rx_mac_state_t is (
    
      IDLE,
      WAIT_START,
      RECEIVE
  );
  
function uart_rx_mac_state_t_to_integer(e : uart_rx_mac_state_t) return integer;

function uart_rx_mac_state_t_from_integer(i : integer) return uart_rx_mac_state_t;

  type uart_tx_mac_state_t is (
    
      IDLE,
      SEND_START,
      TRANSMIT,
      SEND_STOP
  );
  
function uart_tx_mac_state_t_to_integer(e : uart_tx_mac_state_t) return integer;

function uart_tx_mac_state_t_from_integer(i : integer) return uart_tx_mac_state_t;
type uint1_t_8 is array(0 to 7) of unsigned(0 downto 0);
constant uint1_t_8_SLV_LEN : integer := 1 * 8;

      function uint1_t_8_to_slv(data : uint1_t_8) return std_logic_vector;

      function slv_to_uint1_t_8(data : std_logic_vector) return uint1_t_8;
type uint4_t_2 is array(0 to 1) of unsigned(3 downto 0);
constant uint4_t_2_SLV_LEN : integer := 4 * 2;

      function uint4_t_2_to_slv(data : uint4_t_2) return std_logic_vector;

      function slv_to_uint4_t_2(data : std_logic_vector) return uint4_t_2;
type uint1_t_2 is array(0 to 1) of unsigned(0 downto 0);
constant uint1_t_2_SLV_LEN : integer := 1 * 2;

      function uint1_t_2_to_slv(data : uint1_t_2) return std_logic_vector;

      function slv_to_uint1_t_2(data : std_logic_vector) return uint1_t_2;

  type vga_pos_t is record
  
    x : unsigned(11 downto 0);
    y : unsigned(11 downto 0);
  end record;
  
  constant vga_pos_t_NULL : vga_pos_t := (
  
    x => to_unsigned(0, 12),
    y => to_unsigned(0, 12)
  );
  
  constant vga_pos_t_SLV_LEN : integer := (
  12+12
  );
  
  function vga_pos_t_to_slv(data : vga_pos_t) return std_logic_vector;

  function slv_to_vga_pos_t(data : std_logic_vector) return vga_pos_t;

  type vga_signals_t is record
  
    pos : vga_pos_t;
    hsync : unsigned(0 downto 0);
    vsync : unsigned(0 downto 0);
    active : unsigned(0 downto 0);
    start_of_frame : unsigned(0 downto 0);
    end_of_frame : unsigned(0 downto 0);
    valid : unsigned(0 downto 0);
  end record;
  
  constant vga_signals_t_NULL : vga_signals_t := (
  
    pos => vga_pos_t_NULL,
    hsync => to_unsigned(0, 1),
    vsync => to_unsigned(0, 1),
    active => to_unsigned(0, 1),
    start_of_frame => to_unsigned(0, 1),
    end_of_frame => to_unsigned(0, 1),
    valid => to_unsigned(0, 1)
  );
  
  constant vga_signals_t_SLV_LEN : integer := (
  vga_pos_t_SLV_LEN+1+1+1+1+1+1
  );
  
  function vga_signals_t_to_slv(data : vga_signals_t) return std_logic_vector;

  function slv_to_vga_signals_t(data : std_logic_vector) return vga_signals_t;

  type pixel_t is record
  
    b : unsigned(7 downto 0);
    g : unsigned(7 downto 0);
    r : unsigned(7 downto 0);
    a : unsigned(7 downto 0);
  end record;
  
  constant pixel_t_NULL : pixel_t := (
  
    b => to_unsigned(0, 8),
    g => to_unsigned(0, 8),
    r => to_unsigned(0, 8),
    a => to_unsigned(0, 8)
  );
  
  constant pixel_t_SLV_LEN : integer := (
  8+8+8+8
  );
  
  function pixel_t_to_slv(data : pixel_t) return std_logic_vector;

  function slv_to_pixel_t(data : std_logic_vector) return pixel_t;

  type float3 is record
  
    x : std_logic_vector(22 downto 0);
    y : std_logic_vector(22 downto 0);
    z : std_logic_vector(22 downto 0);
  end record;
  
  constant float3_NULL : float3 := (
  
    x => std_logic_vector(to_unsigned(0, 23)),
    y => std_logic_vector(to_unsigned(0, 23)),
    z => std_logic_vector(to_unsigned(0, 23))
  );
  
  constant float3_SLV_LEN : integer := (
  23+23+23
  );
  
  function float3_to_slv(data : float3) return std_logic_vector;

  function slv_to_float3(data : std_logic_vector) return float3;

  type fixed is record
  
    f : signed(21 downto 0);
  end record;
  
  constant fixed_NULL : fixed := (
  
    f => to_signed(0, 22)
  );
  
  constant fixed_SLV_LEN : integer := (
  22
  );
  
  function fixed_to_slv(data : fixed) return std_logic_vector;

  function slv_to_fixed(data : std_logic_vector) return fixed;

  type fixed3 is record
  
    x : fixed;
    y : fixed;
    z : fixed;
  end record;
  
  constant fixed3_NULL : fixed3 := (
  
    x => fixed_NULL,
    y => fixed_NULL,
    z => fixed_NULL
  );
  
  constant fixed3_SLV_LEN : integer := (
  fixed_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN
  );
  
  function fixed3_to_slv(data : fixed3) return std_logic_vector;

  function slv_to_fixed3(data : std_logic_vector) return fixed3;

  type material_t is record
  
    diffuse_color : fixed3;
    reflect_color : fixed3;
  end record;
  
  constant material_t_NULL : material_t := (
  
    diffuse_color => fixed3_NULL,
    reflect_color => fixed3_NULL
  );
  
  constant material_t_SLV_LEN : integer := (
  fixed3_SLV_LEN+fixed3_SLV_LEN
  );
  
  function material_t_to_slv(data : material_t) return std_logic_vector;

  function slv_to_material_t(data : std_logic_vector) return material_t;

  type sphere_t is record
  
    center : fixed3;
    material : material_t;
    heat : fixed;
    yvel : fixed;
  end record;
  
  constant sphere_t_NULL : sphere_t := (
  
    center => fixed3_NULL,
    material => material_t_NULL,
    heat => fixed_NULL,
    yvel => fixed_NULL
  );
  
  constant sphere_t_SLV_LEN : integer := (
  fixed3_SLV_LEN+material_t_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN
  );
  
  function sphere_t_to_slv(data : sphere_t) return std_logic_vector;

  function slv_to_sphere_t(data : std_logic_vector) return sphere_t;

  type plane_t is record
  
    center : fixed3;
    material : material_t;
    color1 : fixed3;
    color2 : fixed3;
  end record;
  
  constant plane_t_NULL : plane_t := (
  
    center => fixed3_NULL,
    material => material_t_NULL,
    color1 => fixed3_NULL,
    color2 => fixed3_NULL
  );
  
  constant plane_t_SLV_LEN : integer := (
  fixed3_SLV_LEN+material_t_SLV_LEN+fixed3_SLV_LEN+fixed3_SLV_LEN
  );
  
  function plane_t_to_slv(data : plane_t) return std_logic_vector;

  function slv_to_plane_t(data : std_logic_vector) return plane_t;

  type scene_t is record
  
    sphere : sphere_t;
    plane : plane_t;
    camera : fixed3;
    fog : fixed3;
    frame : unsigned(15 downto 0);
    scorebar : unsigned(15 downto 0);
  end record;
  
  constant scene_t_NULL : scene_t := (
  
    sphere => sphere_t_NULL,
    plane => plane_t_NULL,
    camera => fixed3_NULL,
    fog => fixed3_NULL,
    frame => to_unsigned(0, 16),
    scorebar => to_unsigned(0, 16)
  );
  
  constant scene_t_SLV_LEN : integer := (
  sphere_t_SLV_LEN+plane_t_SLV_LEN+fixed3_SLV_LEN+fixed3_SLV_LEN+16+16
  );
  
  function scene_t_to_slv(data : scene_t) return std_logic_vector;

  function slv_to_scene_t(data : std_logic_vector) return scene_t;

  type scene_colors_t is record
  
    sphere : material_t;
    plane : material_t;
    plane_color1 : fixed3;
    plane_color2 : fixed3;
    fog : fixed3;
  end record;
  
  constant scene_colors_t_NULL : scene_colors_t := (
  
    sphere => material_t_NULL,
    plane => material_t_NULL,
    plane_color1 => fixed3_NULL,
    plane_color2 => fixed3_NULL,
    fog => fixed3_NULL
  );
  
  constant scene_colors_t_SLV_LEN : integer := (
  material_t_SLV_LEN+material_t_SLV_LEN+fixed3_SLV_LEN+fixed3_SLV_LEN+fixed3_SLV_LEN
  );
  
  function scene_colors_t_to_slv(data : scene_colors_t) return std_logic_vector;

  function slv_to_scene_colors_t(data : std_logic_vector) return scene_colors_t;

  type full_state_t is record
  
    scene : scene_t;
    gold_color : fixed3;
    gold_reflect_color : fixed3;
    lava_color : fixed3;
    plane_y : fixed;
    sphere_x : fixed;
    sphere_z : fixed;
    sphere_y : fixed;
    heat : fixed;
    camera_y : fixed;
    camera_z : fixed;
    plane_x : fixed;
    sphere_xvel : fixed;
    sphere_yvel : fixed;
    diffuse_color : fixed3;
    reflect_color : fixed3;
    scorebar : unsigned(15 downto 0);
    score : unsigned(15 downto 0);
    won : unsigned(0 downto 0);
    lose : unsigned(0 downto 0);
  end record;
  
  constant full_state_t_NULL : full_state_t := (
  
    scene => scene_t_NULL,
    gold_color => fixed3_NULL,
    gold_reflect_color => fixed3_NULL,
    lava_color => fixed3_NULL,
    plane_y => fixed_NULL,
    sphere_x => fixed_NULL,
    sphere_z => fixed_NULL,
    sphere_y => fixed_NULL,
    heat => fixed_NULL,
    camera_y => fixed_NULL,
    camera_z => fixed_NULL,
    plane_x => fixed_NULL,
    sphere_xvel => fixed_NULL,
    sphere_yvel => fixed_NULL,
    diffuse_color => fixed3_NULL,
    reflect_color => fixed3_NULL,
    scorebar => to_unsigned(0, 16),
    score => to_unsigned(0, 16),
    won => to_unsigned(0, 1),
    lose => to_unsigned(0, 1)
  );
  
  constant full_state_t_SLV_LEN : integer := (
  scene_t_SLV_LEN+fixed3_SLV_LEN+fixed3_SLV_LEN+fixed3_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN+fixed_SLV_LEN+fixed3_SLV_LEN+fixed3_SLV_LEN+16+16+1+1
  );
  
  function full_state_t_to_slv(data : full_state_t) return std_logic_vector;

  function slv_to_full_state_t(data : std_logic_vector) return full_state_t;

  type point_and_dir is record
  
    orig : float3;
    dir : float3;
  end record;
  
  constant point_and_dir_NULL : point_and_dir := (
  
    orig => float3_NULL,
    dir => float3_NULL
  );
  
  constant point_and_dir_SLV_LEN : integer := (
  float3_SLV_LEN+float3_SLV_LEN
  );
  
  function point_and_dir_to_slv(data : point_and_dir) return std_logic_vector;

  function slv_to_point_and_dir(data : std_logic_vector) return point_and_dir;

  type hit_out is record
  
    dist : std_logic_vector(22 downto 0);
    borderdist : std_logic_vector(22 downto 0);
    hit : point_and_dir;
  end record;
  
  constant hit_out_NULL : hit_out := (
  
    dist => std_logic_vector(to_unsigned(0, 23)),
    borderdist => std_logic_vector(to_unsigned(0, 23)),
    hit => point_and_dir_NULL
  );
  
  constant hit_out_SLV_LEN : integer := (
  23+23+point_and_dir_SLV_LEN
  );
  
  function hit_out_to_slv(data : hit_out) return std_logic_vector;

  function slv_to_hit_out(data : std_logic_vector) return hit_out;

  type uart_mac_s is record
  
    data : unsigned(7 downto 0);
    valid : unsigned(0 downto 0);
  end record;
  
  constant uart_mac_s_NULL : uart_mac_s := (
  
    data => to_unsigned(0, 8),
    valid => to_unsigned(0, 1)
  );
  
  constant uart_mac_s_SLV_LEN : integer := (
  8+1
  );
  
  function uart_mac_s_to_slv(data : uart_mac_s) return std_logic_vector;

  function slv_to_uart_mac_s(data : std_logic_vector) return uart_mac_s;

  type uart_deserializer_o_t is record
  
    out_data : uint1_t_8;
    out_data_valid : unsigned(0 downto 0);
    in_data_ready : unsigned(0 downto 0);
  end record;
  
  constant uart_deserializer_o_t_NULL : uart_deserializer_o_t := (
  
    out_data => (others => to_unsigned(0, 1)),
    out_data_valid => to_unsigned(0, 1),
    in_data_ready => to_unsigned(0, 1)
  );
  
  constant uart_deserializer_o_t_SLV_LEN : integer := (
  uint1_t_8_SLV_LEN+1+1
  );
  
  function uart_deserializer_o_t_to_slv(data : uart_deserializer_o_t) return std_logic_vector;

  function slv_to_uart_deserializer_o_t(data : std_logic_vector) return uart_deserializer_o_t;

  type uart_serializer_o_t is record
  
    out_data : unsigned(0 downto 0);
    out_data_valid : unsigned(0 downto 0);
    in_data_ready : unsigned(0 downto 0);
  end record;
  
  constant uart_serializer_o_t_NULL : uart_serializer_o_t := (
  
    out_data => to_unsigned(0, 1),
    out_data_valid => to_unsigned(0, 1),
    in_data_ready => to_unsigned(0, 1)
  );
  
  constant uart_serializer_o_t_SLV_LEN : integer := (
  1+1+1
  );
  
  function uart_serializer_o_t_to_slv(data : uart_serializer_o_t) return std_logic_vector;

  function slv_to_uart_serializer_o_t(data : std_logic_vector) return uart_serializer_o_t;

  type user_input_t is record
  
    jump_pressed : unsigned(0 downto 0);
    reset_pressed : unsigned(0 downto 0);
  end record;
  
  constant user_input_t_NULL : user_input_t := (
  
    jump_pressed => to_unsigned(0, 1),
    reset_pressed => to_unsigned(0, 1)
  );
  
  constant user_input_t_SLV_LEN : integer := (
  1+1
  );
  
  function user_input_t_to_slv(data : user_input_t) return std_logic_vector;

  function slv_to_user_input_t(data : std_logic_vector) return user_input_t;

  type get_uart_input_INPUT_t is record
  
    input_valid : unsigned(0 downto 0);
    output_ready : unsigned(0 downto 0);
  end record;
  
  constant get_uart_input_INPUT_t_NULL : get_uart_input_INPUT_t := (
  
    input_valid => to_unsigned(0, 1),
    output_ready => to_unsigned(0, 1)
  );
  
  constant get_uart_input_INPUT_t_SLV_LEN : integer := (
  1+1
  );
  
  function get_uart_input_INPUT_t_to_slv(data : get_uart_input_INPUT_t) return std_logic_vector;

  function slv_to_get_uart_input_INPUT_t(data : std_logic_vector) return get_uart_input_INPUT_t;

  type get_uart_input_OUTPUT_t is record
  
    input_ready : unsigned(0 downto 0);
    return_output : unsigned(0 downto 0);
    output_valid : unsigned(0 downto 0);
  end record;
  
  constant get_uart_input_OUTPUT_t_NULL : get_uart_input_OUTPUT_t := (
  
    input_ready => to_unsigned(0, 1),
    return_output => to_unsigned(0, 1),
    output_valid => to_unsigned(0, 1)
  );
  
  constant get_uart_input_OUTPUT_t_SLV_LEN : integer := (
  1+1+1
  );
  
  function get_uart_input_OUTPUT_t_to_slv(data : get_uart_input_OUTPUT_t) return std_logic_vector;

  function slv_to_get_uart_input_OUTPUT_t(data : std_logic_vector) return get_uart_input_OUTPUT_t;
type vga_signals_t_1 is array(0 to 0) of vga_signals_t;
constant vga_signals_t_1_SLV_LEN : integer := vga_signals_t_SLV_LEN * 1;

      function vga_signals_t_1_to_slv(data : vga_signals_t_1) return std_logic_vector;

      function slv_to_vga_signals_t_1(data : std_logic_vector) return vga_signals_t_1;

  type vga_signals_t_array_1_t is record
  
    data : vga_signals_t_1;
  end record;
  
  constant vga_signals_t_array_1_t_NULL : vga_signals_t_array_1_t := (
  
    data => (others => vga_signals_t_NULL)
  );
  
  constant vga_signals_t_array_1_t_SLV_LEN : integer := (
  vga_signals_t_1_SLV_LEN
  );
  
  function vga_signals_t_array_1_t_to_slv(data : vga_signals_t_array_1_t) return std_logic_vector;

  function slv_to_vga_signals_t_array_1_t(data : std_logic_vector) return vga_signals_t_array_1_t;

end c_structs_pkg;
package body c_structs_pkg is

  function to_byte_array(s : string) return byte_array_t is
    variable rv : byte_array_t(0 to s'length-1);
  begin
    for i in 0 to s'length-1 loop
        -- i+1 since strings start at index 1
        rv(i) := to_unsigned(character'pos(s(i+1)), 8);
    end loop;
    return rv;
  end function;
  
  function resize_float_e_m_t(
    x : std_logic_vector; 
    in_exponent_width : integer;
    in_mantissa_width : integer;
    out_exponent_width : integer;
    out_mantissa_width : integer) return std_logic_vector
  is
    variable x_s : std_logic;
    variable x_e : signed(in_exponent_width-1 downto 0);
    variable x_m : unsigned(in_mantissa_width-1 downto 0);
    variable x_bias : integer := (2**(in_exponent_width-1)) - 1;
    variable rv_s : std_logic;
    variable rv_e : signed(out_exponent_width-1 downto 0);
    variable rv_m : unsigned(out_mantissa_width-1 downto 0);
    variable rv_bias : integer := (2**(out_exponent_width-1)) - 1;
    variable rv : std_logic_vector((1+out_exponent_width+out_mantissa_width)-1 downto 0);
  begin
    x_s := x(in_exponent_width+in_mantissa_width);
    x_e := signed(x((in_exponent_width+in_mantissa_width)-1 downto in_mantissa_width));
    x_m := unsigned(x(in_mantissa_width-1 downto 0));
    
    -- Default zero
    rv_s := x_s;
    rv_e := (others => '0');
    rv_m := (others => '0');
    
    -- Check if non zero
    if not(x_e = to_signed(0, in_exponent_width)) then
      -- Exponent change bias
      rv_e := resize(signed('0' & x_e) - x_bias, out_exponent_width); -- De-bias
      rv_e := rv_e + rv_bias; -- Re-bias
            
      -- Top left n bits of mantissa
      if out_mantissa_width <= in_mantissa_width then
        rv_m := x_m(in_mantissa_width-1 downto (in_mantissa_width-out_mantissa_width));
      else
        -- All bits padded with zeros on right
        rv_m := x_m & to_unsigned(0, out_mantissa_width-in_mantissa_width);
      end if;
    end if;
    
    rv := rv_s & std_logic_vector(rv_e) & std_logic_vector(rv_m);
    return rv;
  end function;
function ext_vga_state_t_to_integer(e : ext_vga_state_t) return integer is
begin
    
case(e) is
when STALL_AT_FEEDBACK_SOF => return 0;
when START_AT_EXTERNAL_SOF => return 1;
when WAIT_PIPELINE_FLUSH => return 2;
when MONITOR_ALIGNMENT => return 3;

end case;
end function;
    
function ext_vga_state_t_from_integer(i : integer) return ext_vga_state_t is
begin
    
case(i) is
when 0 => return STALL_AT_FEEDBACK_SOF;
when 1 => return START_AT_EXTERNAL_SOF;
when 2 => return WAIT_PIPELINE_FLUSH;
when 3 => return MONITOR_ALIGNMENT;

when others => assert False report "integer " & integer'image(i) & " to ext_vga_state_t failed! Returning STALL_AT_FEEDBACK_SOF." severity ERROR; return STALL_AT_FEEDBACK_SOF;
end case;
end function;
    
function get_uart_input_FSM_STATE_t_to_integer(e : get_uart_input_FSM_STATE_t) return integer is
begin
    
case(e) is
when ENTRY_REG => return 0;
when L56_C3_Return => return 1;
when RETURN_REG => return 2;

end case;
end function;
    
function get_uart_input_FSM_STATE_t_from_integer(i : integer) return get_uart_input_FSM_STATE_t is
begin
    
case(i) is
when 0 => return ENTRY_REG;
when 1 => return L56_C3_Return;
when 2 => return RETURN_REG;

when others => assert False report "integer " & integer'image(i) & " to get_uart_input_FSM_STATE_t failed! Returning ENTRY_REG." severity ERROR; return ENTRY_REG;
end case;
end function;
    
function uart_rx_mac_state_t_to_integer(e : uart_rx_mac_state_t) return integer is
begin
    
case(e) is
when IDLE => return 0;
when WAIT_START => return 1;
when RECEIVE => return 2;

end case;
end function;
    
function uart_rx_mac_state_t_from_integer(i : integer) return uart_rx_mac_state_t is
begin
    
case(i) is
when 0 => return IDLE;
when 1 => return WAIT_START;
when 2 => return RECEIVE;

when others => assert False report "integer " & integer'image(i) & " to uart_rx_mac_state_t failed! Returning IDLE." severity ERROR; return IDLE;
end case;
end function;
    
function uart_tx_mac_state_t_to_integer(e : uart_tx_mac_state_t) return integer is
begin
    
case(e) is
when IDLE => return 0;
when SEND_START => return 1;
when TRANSMIT => return 2;
when SEND_STOP => return 3;

end case;
end function;
    
function uart_tx_mac_state_t_from_integer(i : integer) return uart_tx_mac_state_t is
begin
    
case(i) is
when 0 => return IDLE;
when 1 => return SEND_START;
when 2 => return TRANSMIT;
when 3 => return SEND_STOP;

when others => assert False report "integer " & integer'image(i) & " to uart_tx_mac_state_t failed! Returning IDLE." severity ERROR; return IDLE;
end case;
end function;
    
      function uint1_t_8_to_slv(data : uint1_t_8) return std_logic_vector is
        variable rv : std_logic_vector(uint1_t_8_SLV_LEN-1 downto 0);
        variable pos : integer := 0;
      begin
    
            rv((pos+1)-1 downto pos) := std_logic_vector(data(0));
            pos := pos + 1;
    
            rv((pos+1)-1 downto pos) := std_logic_vector(data(1));
            pos := pos + 1;
    
            rv((pos+1)-1 downto pos) := std_logic_vector(data(2));
            pos := pos + 1;
    
            rv((pos+1)-1 downto pos) := std_logic_vector(data(3));
            pos := pos + 1;
    
            rv((pos+1)-1 downto pos) := std_logic_vector(data(4));
            pos := pos + 1;
    
            rv((pos+1)-1 downto pos) := std_logic_vector(data(5));
            pos := pos + 1;
    
            rv((pos+1)-1 downto pos) := std_logic_vector(data(6));
            pos := pos + 1;
    
            rv((pos+1)-1 downto pos) := std_logic_vector(data(7));
            pos := pos + 1;
    
          return rv;
      end function;
    
      function slv_to_uint1_t_8(data : std_logic_vector) return uint1_t_8 is
        variable rv : uint1_t_8;
        variable elem_slv : std_logic_vector(1-1 downto 0);
        variable pos : integer := 0;
      begin
    
            elem_slv := data((pos+1)-1 downto pos);
            rv(0) := unsigned(elem_slv);
            pos := pos + 1;
    
            elem_slv := data((pos+1)-1 downto pos);
            rv(1) := unsigned(elem_slv);
            pos := pos + 1;
    
            elem_slv := data((pos+1)-1 downto pos);
            rv(2) := unsigned(elem_slv);
            pos := pos + 1;
    
            elem_slv := data((pos+1)-1 downto pos);
            rv(3) := unsigned(elem_slv);
            pos := pos + 1;
    
            elem_slv := data((pos+1)-1 downto pos);
            rv(4) := unsigned(elem_slv);
            pos := pos + 1;
    
            elem_slv := data((pos+1)-1 downto pos);
            rv(5) := unsigned(elem_slv);
            pos := pos + 1;
    
            elem_slv := data((pos+1)-1 downto pos);
            rv(6) := unsigned(elem_slv);
            pos := pos + 1;
    
            elem_slv := data((pos+1)-1 downto pos);
            rv(7) := unsigned(elem_slv);
            pos := pos + 1;
    
          return rv;
      end function;
    
      function uint4_t_2_to_slv(data : uint4_t_2) return std_logic_vector is
        variable rv : std_logic_vector(uint4_t_2_SLV_LEN-1 downto 0);
        variable pos : integer := 0;
      begin
    
            rv((pos+4)-1 downto pos) := std_logic_vector(data(0));
            pos := pos + 4;
    
            rv((pos+4)-1 downto pos) := std_logic_vector(data(1));
            pos := pos + 4;
    
          return rv;
      end function;
    
      function slv_to_uint4_t_2(data : std_logic_vector) return uint4_t_2 is
        variable rv : uint4_t_2;
        variable elem_slv : std_logic_vector(4-1 downto 0);
        variable pos : integer := 0;
      begin
    
            elem_slv := data((pos+4)-1 downto pos);
            rv(0) := unsigned(elem_slv);
            pos := pos + 4;
    
            elem_slv := data((pos+4)-1 downto pos);
            rv(1) := unsigned(elem_slv);
            pos := pos + 4;
    
          return rv;
      end function;
    
      function uint1_t_2_to_slv(data : uint1_t_2) return std_logic_vector is
        variable rv : std_logic_vector(uint1_t_2_SLV_LEN-1 downto 0);
        variable pos : integer := 0;
      begin
    
            rv((pos+1)-1 downto pos) := std_logic_vector(data(0));
            pos := pos + 1;
    
            rv((pos+1)-1 downto pos) := std_logic_vector(data(1));
            pos := pos + 1;
    
          return rv;
      end function;
    
      function slv_to_uint1_t_2(data : std_logic_vector) return uint1_t_2 is
        variable rv : uint1_t_2;
        variable elem_slv : std_logic_vector(1-1 downto 0);
        variable pos : integer := 0;
      begin
    
            elem_slv := data((pos+1)-1 downto pos);
            rv(0) := unsigned(elem_slv);
            pos := pos + 1;
    
            elem_slv := data((pos+1)-1 downto pos);
            rv(1) := unsigned(elem_slv);
            pos := pos + 1;
    
          return rv;
      end function;
    
  function vga_pos_t_to_slv(data : vga_pos_t) return std_logic_vector is
    variable rv : std_logic_vector(vga_pos_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+12)-1 downto pos) := std_logic_vector(data.x);
        pos := pos + 12;

        rv((pos+12)-1 downto pos) := std_logic_vector(data.y);
        pos := pos + 12;

      return rv;
  end function;

  function slv_to_vga_pos_t(data : std_logic_vector) return vga_pos_t is
    variable rv : vga_pos_t;
    variable pos : integer := 0;
    variable x_slv : std_logic_vector(12-1 downto 0);
    variable y_slv : std_logic_vector(12-1 downto 0);
  begin

        x_slv := data((pos+12)-1 downto pos);
        rv.x := unsigned(x_slv);
        pos := pos + 12;

        y_slv := data((pos+12)-1 downto pos);
        rv.y := unsigned(y_slv);
        pos := pos + 12;

      return rv;
  end function;

  function vga_signals_t_to_slv(data : vga_signals_t) return std_logic_vector is
    variable rv : std_logic_vector(vga_signals_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+vga_pos_t_SLV_LEN)-1 downto pos) := vga_pos_t_to_slv(data.pos);
        pos := pos + vga_pos_t_SLV_LEN;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.hsync);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.vsync);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.active);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.start_of_frame);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.end_of_frame);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.valid);
        pos := pos + 1;

      return rv;
  end function;

  function slv_to_vga_signals_t(data : std_logic_vector) return vga_signals_t is
    variable rv : vga_signals_t;
    variable pos : integer := 0;
    variable pos_slv : std_logic_vector(vga_pos_t_SLV_LEN-1 downto 0);
    variable hsync_slv : std_logic_vector(1-1 downto 0);
    variable vsync_slv : std_logic_vector(1-1 downto 0);
    variable active_slv : std_logic_vector(1-1 downto 0);
    variable start_of_frame_slv : std_logic_vector(1-1 downto 0);
    variable end_of_frame_slv : std_logic_vector(1-1 downto 0);
    variable valid_slv : std_logic_vector(1-1 downto 0);
  begin

        pos_slv := data((pos+vga_pos_t_SLV_LEN)-1 downto pos);
        rv.pos := slv_to_vga_pos_t(pos_slv);
        pos := pos + vga_pos_t_SLV_LEN;

        hsync_slv := data((pos+1)-1 downto pos);
        rv.hsync := unsigned(hsync_slv);
        pos := pos + 1;

        vsync_slv := data((pos+1)-1 downto pos);
        rv.vsync := unsigned(vsync_slv);
        pos := pos + 1;

        active_slv := data((pos+1)-1 downto pos);
        rv.active := unsigned(active_slv);
        pos := pos + 1;

        start_of_frame_slv := data((pos+1)-1 downto pos);
        rv.start_of_frame := unsigned(start_of_frame_slv);
        pos := pos + 1;

        end_of_frame_slv := data((pos+1)-1 downto pos);
        rv.end_of_frame := unsigned(end_of_frame_slv);
        pos := pos + 1;

        valid_slv := data((pos+1)-1 downto pos);
        rv.valid := unsigned(valid_slv);
        pos := pos + 1;

      return rv;
  end function;

  function pixel_t_to_slv(data : pixel_t) return std_logic_vector is
    variable rv : std_logic_vector(pixel_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+8)-1 downto pos) := std_logic_vector(data.b);
        pos := pos + 8;

        rv((pos+8)-1 downto pos) := std_logic_vector(data.g);
        pos := pos + 8;

        rv((pos+8)-1 downto pos) := std_logic_vector(data.r);
        pos := pos + 8;

        rv((pos+8)-1 downto pos) := std_logic_vector(data.a);
        pos := pos + 8;

      return rv;
  end function;

  function slv_to_pixel_t(data : std_logic_vector) return pixel_t is
    variable rv : pixel_t;
    variable pos : integer := 0;
    variable b_slv : std_logic_vector(8-1 downto 0);
    variable g_slv : std_logic_vector(8-1 downto 0);
    variable r_slv : std_logic_vector(8-1 downto 0);
    variable a_slv : std_logic_vector(8-1 downto 0);
  begin

        b_slv := data((pos+8)-1 downto pos);
        rv.b := unsigned(b_slv);
        pos := pos + 8;

        g_slv := data((pos+8)-1 downto pos);
        rv.g := unsigned(g_slv);
        pos := pos + 8;

        r_slv := data((pos+8)-1 downto pos);
        rv.r := unsigned(r_slv);
        pos := pos + 8;

        a_slv := data((pos+8)-1 downto pos);
        rv.a := unsigned(a_slv);
        pos := pos + 8;

      return rv;
  end function;

  function float3_to_slv(data : float3) return std_logic_vector is
    variable rv : std_logic_vector(float3_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+23)-1 downto pos) := data.x;
        pos := pos + 23;

        rv((pos+23)-1 downto pos) := data.y;
        pos := pos + 23;

        rv((pos+23)-1 downto pos) := data.z;
        pos := pos + 23;

      return rv;
  end function;

  function slv_to_float3(data : std_logic_vector) return float3 is
    variable rv : float3;
    variable pos : integer := 0;
    variable x_slv : std_logic_vector(23-1 downto 0);
    variable y_slv : std_logic_vector(23-1 downto 0);
    variable z_slv : std_logic_vector(23-1 downto 0);
  begin

        x_slv := data((pos+23)-1 downto pos);
        rv.x := x_slv;
        pos := pos + 23;

        y_slv := data((pos+23)-1 downto pos);
        rv.y := y_slv;
        pos := pos + 23;

        z_slv := data((pos+23)-1 downto pos);
        rv.z := z_slv;
        pos := pos + 23;

      return rv;
  end function;

  function fixed_to_slv(data : fixed) return std_logic_vector is
    variable rv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+22)-1 downto pos) := std_logic_vector(data.f);
        pos := pos + 22;

      return rv;
  end function;

  function slv_to_fixed(data : std_logic_vector) return fixed is
    variable rv : fixed;
    variable pos : integer := 0;
    variable f_slv : std_logic_vector(22-1 downto 0);
  begin

        f_slv := data((pos+22)-1 downto pos);
        rv.f := signed(f_slv);
        pos := pos + 22;

      return rv;
  end function;

  function fixed3_to_slv(data : fixed3) return std_logic_vector is
    variable rv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.x);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.y);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.z);
        pos := pos + fixed_SLV_LEN;

      return rv;
  end function;

  function slv_to_fixed3(data : std_logic_vector) return fixed3 is
    variable rv : fixed3;
    variable pos : integer := 0;
    variable x_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable y_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable z_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
  begin

        x_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.x := slv_to_fixed(x_slv);
        pos := pos + fixed_SLV_LEN;

        y_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.y := slv_to_fixed(y_slv);
        pos := pos + fixed_SLV_LEN;

        z_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.z := slv_to_fixed(z_slv);
        pos := pos + fixed_SLV_LEN;

      return rv;
  end function;

  function material_t_to_slv(data : material_t) return std_logic_vector is
    variable rv : std_logic_vector(material_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.diffuse_color);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.reflect_color);
        pos := pos + fixed3_SLV_LEN;

      return rv;
  end function;

  function slv_to_material_t(data : std_logic_vector) return material_t is
    variable rv : material_t;
    variable pos : integer := 0;
    variable diffuse_color_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable reflect_color_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
  begin

        diffuse_color_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.diffuse_color := slv_to_fixed3(diffuse_color_slv);
        pos := pos + fixed3_SLV_LEN;

        reflect_color_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.reflect_color := slv_to_fixed3(reflect_color_slv);
        pos := pos + fixed3_SLV_LEN;

      return rv;
  end function;

  function sphere_t_to_slv(data : sphere_t) return std_logic_vector is
    variable rv : std_logic_vector(sphere_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.center);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+material_t_SLV_LEN)-1 downto pos) := material_t_to_slv(data.material);
        pos := pos + material_t_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.heat);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.yvel);
        pos := pos + fixed_SLV_LEN;

      return rv;
  end function;

  function slv_to_sphere_t(data : std_logic_vector) return sphere_t is
    variable rv : sphere_t;
    variable pos : integer := 0;
    variable center_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable material_slv : std_logic_vector(material_t_SLV_LEN-1 downto 0);
    variable heat_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable yvel_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
  begin

        center_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.center := slv_to_fixed3(center_slv);
        pos := pos + fixed3_SLV_LEN;

        material_slv := data((pos+material_t_SLV_LEN)-1 downto pos);
        rv.material := slv_to_material_t(material_slv);
        pos := pos + material_t_SLV_LEN;

        heat_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.heat := slv_to_fixed(heat_slv);
        pos := pos + fixed_SLV_LEN;

        yvel_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.yvel := slv_to_fixed(yvel_slv);
        pos := pos + fixed_SLV_LEN;

      return rv;
  end function;

  function plane_t_to_slv(data : plane_t) return std_logic_vector is
    variable rv : std_logic_vector(plane_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.center);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+material_t_SLV_LEN)-1 downto pos) := material_t_to_slv(data.material);
        pos := pos + material_t_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.color1);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.color2);
        pos := pos + fixed3_SLV_LEN;

      return rv;
  end function;

  function slv_to_plane_t(data : std_logic_vector) return plane_t is
    variable rv : plane_t;
    variable pos : integer := 0;
    variable center_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable material_slv : std_logic_vector(material_t_SLV_LEN-1 downto 0);
    variable color1_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable color2_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
  begin

        center_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.center := slv_to_fixed3(center_slv);
        pos := pos + fixed3_SLV_LEN;

        material_slv := data((pos+material_t_SLV_LEN)-1 downto pos);
        rv.material := slv_to_material_t(material_slv);
        pos := pos + material_t_SLV_LEN;

        color1_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.color1 := slv_to_fixed3(color1_slv);
        pos := pos + fixed3_SLV_LEN;

        color2_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.color2 := slv_to_fixed3(color2_slv);
        pos := pos + fixed3_SLV_LEN;

      return rv;
  end function;

  function scene_t_to_slv(data : scene_t) return std_logic_vector is
    variable rv : std_logic_vector(scene_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+sphere_t_SLV_LEN)-1 downto pos) := sphere_t_to_slv(data.sphere);
        pos := pos + sphere_t_SLV_LEN;

        rv((pos+plane_t_SLV_LEN)-1 downto pos) := plane_t_to_slv(data.plane);
        pos := pos + plane_t_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.camera);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.fog);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+16)-1 downto pos) := std_logic_vector(data.frame);
        pos := pos + 16;

        rv((pos+16)-1 downto pos) := std_logic_vector(data.scorebar);
        pos := pos + 16;

      return rv;
  end function;

  function slv_to_scene_t(data : std_logic_vector) return scene_t is
    variable rv : scene_t;
    variable pos : integer := 0;
    variable sphere_slv : std_logic_vector(sphere_t_SLV_LEN-1 downto 0);
    variable plane_slv : std_logic_vector(plane_t_SLV_LEN-1 downto 0);
    variable camera_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable fog_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable frame_slv : std_logic_vector(16-1 downto 0);
    variable scorebar_slv : std_logic_vector(16-1 downto 0);
  begin

        sphere_slv := data((pos+sphere_t_SLV_LEN)-1 downto pos);
        rv.sphere := slv_to_sphere_t(sphere_slv);
        pos := pos + sphere_t_SLV_LEN;

        plane_slv := data((pos+plane_t_SLV_LEN)-1 downto pos);
        rv.plane := slv_to_plane_t(plane_slv);
        pos := pos + plane_t_SLV_LEN;

        camera_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.camera := slv_to_fixed3(camera_slv);
        pos := pos + fixed3_SLV_LEN;

        fog_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.fog := slv_to_fixed3(fog_slv);
        pos := pos + fixed3_SLV_LEN;

        frame_slv := data((pos+16)-1 downto pos);
        rv.frame := unsigned(frame_slv);
        pos := pos + 16;

        scorebar_slv := data((pos+16)-1 downto pos);
        rv.scorebar := unsigned(scorebar_slv);
        pos := pos + 16;

      return rv;
  end function;

  function scene_colors_t_to_slv(data : scene_colors_t) return std_logic_vector is
    variable rv : std_logic_vector(scene_colors_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+material_t_SLV_LEN)-1 downto pos) := material_t_to_slv(data.sphere);
        pos := pos + material_t_SLV_LEN;

        rv((pos+material_t_SLV_LEN)-1 downto pos) := material_t_to_slv(data.plane);
        pos := pos + material_t_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.plane_color1);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.plane_color2);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.fog);
        pos := pos + fixed3_SLV_LEN;

      return rv;
  end function;

  function slv_to_scene_colors_t(data : std_logic_vector) return scene_colors_t is
    variable rv : scene_colors_t;
    variable pos : integer := 0;
    variable sphere_slv : std_logic_vector(material_t_SLV_LEN-1 downto 0);
    variable plane_slv : std_logic_vector(material_t_SLV_LEN-1 downto 0);
    variable plane_color1_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable plane_color2_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable fog_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
  begin

        sphere_slv := data((pos+material_t_SLV_LEN)-1 downto pos);
        rv.sphere := slv_to_material_t(sphere_slv);
        pos := pos + material_t_SLV_LEN;

        plane_slv := data((pos+material_t_SLV_LEN)-1 downto pos);
        rv.plane := slv_to_material_t(plane_slv);
        pos := pos + material_t_SLV_LEN;

        plane_color1_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.plane_color1 := slv_to_fixed3(plane_color1_slv);
        pos := pos + fixed3_SLV_LEN;

        plane_color2_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.plane_color2 := slv_to_fixed3(plane_color2_slv);
        pos := pos + fixed3_SLV_LEN;

        fog_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.fog := slv_to_fixed3(fog_slv);
        pos := pos + fixed3_SLV_LEN;

      return rv;
  end function;

  function full_state_t_to_slv(data : full_state_t) return std_logic_vector is
    variable rv : std_logic_vector(full_state_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+scene_t_SLV_LEN)-1 downto pos) := scene_t_to_slv(data.scene);
        pos := pos + scene_t_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.gold_color);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.gold_reflect_color);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.lava_color);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.plane_y);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.sphere_x);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.sphere_z);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.sphere_y);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.heat);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.camera_y);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.camera_z);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.plane_x);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.sphere_xvel);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed_SLV_LEN)-1 downto pos) := fixed_to_slv(data.sphere_yvel);
        pos := pos + fixed_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.diffuse_color);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+fixed3_SLV_LEN)-1 downto pos) := fixed3_to_slv(data.reflect_color);
        pos := pos + fixed3_SLV_LEN;

        rv((pos+16)-1 downto pos) := std_logic_vector(data.scorebar);
        pos := pos + 16;

        rv((pos+16)-1 downto pos) := std_logic_vector(data.score);
        pos := pos + 16;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.won);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.lose);
        pos := pos + 1;

      return rv;
  end function;

  function slv_to_full_state_t(data : std_logic_vector) return full_state_t is
    variable rv : full_state_t;
    variable pos : integer := 0;
    variable scene_slv : std_logic_vector(scene_t_SLV_LEN-1 downto 0);
    variable gold_color_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable gold_reflect_color_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable lava_color_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable plane_y_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable sphere_x_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable sphere_z_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable sphere_y_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable heat_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable camera_y_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable camera_z_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable plane_x_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable sphere_xvel_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable sphere_yvel_slv : std_logic_vector(fixed_SLV_LEN-1 downto 0);
    variable diffuse_color_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable reflect_color_slv : std_logic_vector(fixed3_SLV_LEN-1 downto 0);
    variable scorebar_slv : std_logic_vector(16-1 downto 0);
    variable score_slv : std_logic_vector(16-1 downto 0);
    variable won_slv : std_logic_vector(1-1 downto 0);
    variable lose_slv : std_logic_vector(1-1 downto 0);
  begin

        scene_slv := data((pos+scene_t_SLV_LEN)-1 downto pos);
        rv.scene := slv_to_scene_t(scene_slv);
        pos := pos + scene_t_SLV_LEN;

        gold_color_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.gold_color := slv_to_fixed3(gold_color_slv);
        pos := pos + fixed3_SLV_LEN;

        gold_reflect_color_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.gold_reflect_color := slv_to_fixed3(gold_reflect_color_slv);
        pos := pos + fixed3_SLV_LEN;

        lava_color_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.lava_color := slv_to_fixed3(lava_color_slv);
        pos := pos + fixed3_SLV_LEN;

        plane_y_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.plane_y := slv_to_fixed(plane_y_slv);
        pos := pos + fixed_SLV_LEN;

        sphere_x_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.sphere_x := slv_to_fixed(sphere_x_slv);
        pos := pos + fixed_SLV_LEN;

        sphere_z_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.sphere_z := slv_to_fixed(sphere_z_slv);
        pos := pos + fixed_SLV_LEN;

        sphere_y_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.sphere_y := slv_to_fixed(sphere_y_slv);
        pos := pos + fixed_SLV_LEN;

        heat_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.heat := slv_to_fixed(heat_slv);
        pos := pos + fixed_SLV_LEN;

        camera_y_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.camera_y := slv_to_fixed(camera_y_slv);
        pos := pos + fixed_SLV_LEN;

        camera_z_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.camera_z := slv_to_fixed(camera_z_slv);
        pos := pos + fixed_SLV_LEN;

        plane_x_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.plane_x := slv_to_fixed(plane_x_slv);
        pos := pos + fixed_SLV_LEN;

        sphere_xvel_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.sphere_xvel := slv_to_fixed(sphere_xvel_slv);
        pos := pos + fixed_SLV_LEN;

        sphere_yvel_slv := data((pos+fixed_SLV_LEN)-1 downto pos);
        rv.sphere_yvel := slv_to_fixed(sphere_yvel_slv);
        pos := pos + fixed_SLV_LEN;

        diffuse_color_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.diffuse_color := slv_to_fixed3(diffuse_color_slv);
        pos := pos + fixed3_SLV_LEN;

        reflect_color_slv := data((pos+fixed3_SLV_LEN)-1 downto pos);
        rv.reflect_color := slv_to_fixed3(reflect_color_slv);
        pos := pos + fixed3_SLV_LEN;

        scorebar_slv := data((pos+16)-1 downto pos);
        rv.scorebar := unsigned(scorebar_slv);
        pos := pos + 16;

        score_slv := data((pos+16)-1 downto pos);
        rv.score := unsigned(score_slv);
        pos := pos + 16;

        won_slv := data((pos+1)-1 downto pos);
        rv.won := unsigned(won_slv);
        pos := pos + 1;

        lose_slv := data((pos+1)-1 downto pos);
        rv.lose := unsigned(lose_slv);
        pos := pos + 1;

      return rv;
  end function;

  function point_and_dir_to_slv(data : point_and_dir) return std_logic_vector is
    variable rv : std_logic_vector(point_and_dir_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+float3_SLV_LEN)-1 downto pos) := float3_to_slv(data.orig);
        pos := pos + float3_SLV_LEN;

        rv((pos+float3_SLV_LEN)-1 downto pos) := float3_to_slv(data.dir);
        pos := pos + float3_SLV_LEN;

      return rv;
  end function;

  function slv_to_point_and_dir(data : std_logic_vector) return point_and_dir is
    variable rv : point_and_dir;
    variable pos : integer := 0;
    variable orig_slv : std_logic_vector(float3_SLV_LEN-1 downto 0);
    variable dir_slv : std_logic_vector(float3_SLV_LEN-1 downto 0);
  begin

        orig_slv := data((pos+float3_SLV_LEN)-1 downto pos);
        rv.orig := slv_to_float3(orig_slv);
        pos := pos + float3_SLV_LEN;

        dir_slv := data((pos+float3_SLV_LEN)-1 downto pos);
        rv.dir := slv_to_float3(dir_slv);
        pos := pos + float3_SLV_LEN;

      return rv;
  end function;

  function hit_out_to_slv(data : hit_out) return std_logic_vector is
    variable rv : std_logic_vector(hit_out_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+23)-1 downto pos) := data.dist;
        pos := pos + 23;

        rv((pos+23)-1 downto pos) := data.borderdist;
        pos := pos + 23;

        rv((pos+point_and_dir_SLV_LEN)-1 downto pos) := point_and_dir_to_slv(data.hit);
        pos := pos + point_and_dir_SLV_LEN;

      return rv;
  end function;

  function slv_to_hit_out(data : std_logic_vector) return hit_out is
    variable rv : hit_out;
    variable pos : integer := 0;
    variable dist_slv : std_logic_vector(23-1 downto 0);
    variable borderdist_slv : std_logic_vector(23-1 downto 0);
    variable hit_slv : std_logic_vector(point_and_dir_SLV_LEN-1 downto 0);
  begin

        dist_slv := data((pos+23)-1 downto pos);
        rv.dist := dist_slv;
        pos := pos + 23;

        borderdist_slv := data((pos+23)-1 downto pos);
        rv.borderdist := borderdist_slv;
        pos := pos + 23;

        hit_slv := data((pos+point_and_dir_SLV_LEN)-1 downto pos);
        rv.hit := slv_to_point_and_dir(hit_slv);
        pos := pos + point_and_dir_SLV_LEN;

      return rv;
  end function;

  function uart_mac_s_to_slv(data : uart_mac_s) return std_logic_vector is
    variable rv : std_logic_vector(uart_mac_s_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+8)-1 downto pos) := std_logic_vector(data.data);
        pos := pos + 8;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.valid);
        pos := pos + 1;

      return rv;
  end function;

  function slv_to_uart_mac_s(data : std_logic_vector) return uart_mac_s is
    variable rv : uart_mac_s;
    variable pos : integer := 0;
    variable data_slv : std_logic_vector(8-1 downto 0);
    variable valid_slv : std_logic_vector(1-1 downto 0);
  begin

        data_slv := data((pos+8)-1 downto pos);
        rv.data := unsigned(data_slv);
        pos := pos + 8;

        valid_slv := data((pos+1)-1 downto pos);
        rv.valid := unsigned(valid_slv);
        pos := pos + 1;

      return rv;
  end function;

  function uart_deserializer_o_t_to_slv(data : uart_deserializer_o_t) return std_logic_vector is
    variable rv : std_logic_vector(uart_deserializer_o_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+uint1_t_8_SLV_LEN)-1 downto pos) := uint1_t_8_to_slv(data.out_data);
        pos := pos + uint1_t_8_SLV_LEN;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.out_data_valid);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.in_data_ready);
        pos := pos + 1;

      return rv;
  end function;

  function slv_to_uart_deserializer_o_t(data : std_logic_vector) return uart_deserializer_o_t is
    variable rv : uart_deserializer_o_t;
    variable pos : integer := 0;
    variable out_data_slv : std_logic_vector(uint1_t_8_SLV_LEN-1 downto 0);
    variable out_data_valid_slv : std_logic_vector(1-1 downto 0);
    variable in_data_ready_slv : std_logic_vector(1-1 downto 0);
  begin

        out_data_slv := data((pos+uint1_t_8_SLV_LEN)-1 downto pos);
        rv.out_data := slv_to_uint1_t_8(out_data_slv);
        pos := pos + uint1_t_8_SLV_LEN;

        out_data_valid_slv := data((pos+1)-1 downto pos);
        rv.out_data_valid := unsigned(out_data_valid_slv);
        pos := pos + 1;

        in_data_ready_slv := data((pos+1)-1 downto pos);
        rv.in_data_ready := unsigned(in_data_ready_slv);
        pos := pos + 1;

      return rv;
  end function;

  function uart_serializer_o_t_to_slv(data : uart_serializer_o_t) return std_logic_vector is
    variable rv : std_logic_vector(uart_serializer_o_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+1)-1 downto pos) := std_logic_vector(data.out_data);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.out_data_valid);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.in_data_ready);
        pos := pos + 1;

      return rv;
  end function;

  function slv_to_uart_serializer_o_t(data : std_logic_vector) return uart_serializer_o_t is
    variable rv : uart_serializer_o_t;
    variable pos : integer := 0;
    variable out_data_slv : std_logic_vector(1-1 downto 0);
    variable out_data_valid_slv : std_logic_vector(1-1 downto 0);
    variable in_data_ready_slv : std_logic_vector(1-1 downto 0);
  begin

        out_data_slv := data((pos+1)-1 downto pos);
        rv.out_data := unsigned(out_data_slv);
        pos := pos + 1;

        out_data_valid_slv := data((pos+1)-1 downto pos);
        rv.out_data_valid := unsigned(out_data_valid_slv);
        pos := pos + 1;

        in_data_ready_slv := data((pos+1)-1 downto pos);
        rv.in_data_ready := unsigned(in_data_ready_slv);
        pos := pos + 1;

      return rv;
  end function;

  function user_input_t_to_slv(data : user_input_t) return std_logic_vector is
    variable rv : std_logic_vector(user_input_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+1)-1 downto pos) := std_logic_vector(data.jump_pressed);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.reset_pressed);
        pos := pos + 1;

      return rv;
  end function;

  function slv_to_user_input_t(data : std_logic_vector) return user_input_t is
    variable rv : user_input_t;
    variable pos : integer := 0;
    variable jump_pressed_slv : std_logic_vector(1-1 downto 0);
    variable reset_pressed_slv : std_logic_vector(1-1 downto 0);
  begin

        jump_pressed_slv := data((pos+1)-1 downto pos);
        rv.jump_pressed := unsigned(jump_pressed_slv);
        pos := pos + 1;

        reset_pressed_slv := data((pos+1)-1 downto pos);
        rv.reset_pressed := unsigned(reset_pressed_slv);
        pos := pos + 1;

      return rv;
  end function;

  function get_uart_input_INPUT_t_to_slv(data : get_uart_input_INPUT_t) return std_logic_vector is
    variable rv : std_logic_vector(get_uart_input_INPUT_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+1)-1 downto pos) := std_logic_vector(data.input_valid);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.output_ready);
        pos := pos + 1;

      return rv;
  end function;

  function slv_to_get_uart_input_INPUT_t(data : std_logic_vector) return get_uart_input_INPUT_t is
    variable rv : get_uart_input_INPUT_t;
    variable pos : integer := 0;
    variable input_valid_slv : std_logic_vector(1-1 downto 0);
    variable output_ready_slv : std_logic_vector(1-1 downto 0);
  begin

        input_valid_slv := data((pos+1)-1 downto pos);
        rv.input_valid := unsigned(input_valid_slv);
        pos := pos + 1;

        output_ready_slv := data((pos+1)-1 downto pos);
        rv.output_ready := unsigned(output_ready_slv);
        pos := pos + 1;

      return rv;
  end function;

  function get_uart_input_OUTPUT_t_to_slv(data : get_uart_input_OUTPUT_t) return std_logic_vector is
    variable rv : std_logic_vector(get_uart_input_OUTPUT_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+1)-1 downto pos) := std_logic_vector(data.input_ready);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.return_output);
        pos := pos + 1;

        rv((pos+1)-1 downto pos) := std_logic_vector(data.output_valid);
        pos := pos + 1;

      return rv;
  end function;

  function slv_to_get_uart_input_OUTPUT_t(data : std_logic_vector) return get_uart_input_OUTPUT_t is
    variable rv : get_uart_input_OUTPUT_t;
    variable pos : integer := 0;
    variable input_ready_slv : std_logic_vector(1-1 downto 0);
    variable return_output_slv : std_logic_vector(1-1 downto 0);
    variable output_valid_slv : std_logic_vector(1-1 downto 0);
  begin

        input_ready_slv := data((pos+1)-1 downto pos);
        rv.input_ready := unsigned(input_ready_slv);
        pos := pos + 1;

        return_output_slv := data((pos+1)-1 downto pos);
        rv.return_output := unsigned(return_output_slv);
        pos := pos + 1;

        output_valid_slv := data((pos+1)-1 downto pos);
        rv.output_valid := unsigned(output_valid_slv);
        pos := pos + 1;

      return rv;
  end function;

      function vga_signals_t_1_to_slv(data : vga_signals_t_1) return std_logic_vector is
        variable rv : std_logic_vector(vga_signals_t_1_SLV_LEN-1 downto 0);
        variable pos : integer := 0;
      begin
    
            rv((pos+vga_signals_t_SLV_LEN)-1 downto pos) := vga_signals_t_to_slv(data(0));
            pos := pos + vga_signals_t_SLV_LEN;
    
          return rv;
      end function;
    
      function slv_to_vga_signals_t_1(data : std_logic_vector) return vga_signals_t_1 is
        variable rv : vga_signals_t_1;
        variable elem_slv : std_logic_vector(vga_signals_t_SLV_LEN-1 downto 0);
        variable pos : integer := 0;
      begin
    
            elem_slv := data((pos+vga_signals_t_SLV_LEN)-1 downto pos);
            rv(0) := slv_to_vga_signals_t(elem_slv);
            pos := pos + vga_signals_t_SLV_LEN;
    
          return rv;
      end function;
    
  function vga_signals_t_array_1_t_to_slv(data : vga_signals_t_array_1_t) return std_logic_vector is
    variable rv : std_logic_vector(vga_signals_t_array_1_t_SLV_LEN-1 downto 0);
    variable pos : integer := 0;
  begin

        rv((pos+vga_signals_t_1_SLV_LEN)-1 downto pos) := vga_signals_t_1_to_slv(data.data);
        pos := pos + vga_signals_t_1_SLV_LEN;

      return rv;
  end function;

  function slv_to_vga_signals_t_array_1_t(data : std_logic_vector) return vga_signals_t_array_1_t is
    variable rv : vga_signals_t_array_1_t;
    variable pos : integer := 0;
    variable data_slv : std_logic_vector(vga_signals_t_1_SLV_LEN-1 downto 0);
  begin

        data_slv := data((pos+vga_signals_t_1_SLV_LEN)-1 downto pos);
        rv.data := slv_to_vga_signals_t_1(data_slv);
        pos := pos + vga_signals_t_1_SLV_LEN;

      return rv;
  end function;
end package body c_structs_pkg;
