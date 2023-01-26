-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.007463928564423117, 0.05812363121141653, 0.10878333385841064, 0.15944303650540265, 0.21010273915239677, 0.2607624417993902, 0.3114221444463836, 0.3620818470933777, 0.41274154974037036, 0.4634012523873645, 0.5140609550343587, 0.5647206576813499, 0.6153803603283446, 0.6660400629753381, 0.7166997656223331, 0.7673594682693271, 0.8180191709163183, 0.8686788735633111, 0.9193385762103052, 0.9699982788572993]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 16
entity light_intensity_34CLK_55880f91 is
port(
 clk : in std_logic;
 hit : in float3;
 return_output : out fixed);
end light_intensity_34CLK_55880f91;
architecture arch of light_intensity_34CLK_55880f91 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 34;
-- All of the wires/regs in function
-- Stage 0
-- Stage 1
-- Stage 2
-- Stage 3
-- Stage 4
-- Stage 5
-- Stage 6
-- Stage 7
-- Stage 8
-- Stage 9
-- Stage 10
-- Stage 11
-- Stage 12
-- Stage 13
-- Stage 14
-- Stage 15
-- Stage 16
-- Stage 17
-- Stage 18
-- Stage 19
-- Stage 20
-- Stage 21
-- Stage 22
-- Stage 23
-- Stage 24
-- Stage 25
-- Stage 26
-- Stage 27
-- Stage 28
-- Stage 29
-- Stage 30
-- Stage 31
-- Stage 32
-- Stage 33
-- Each function instance gets signals
-- fixed_make_from_float[tr_pipelinec_gen_c_l340_c35_7823]
signal fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_a : std_logic_vector(22 downto 0);
signal fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l340_c65_80b0]
signal fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l340_c25_dbe7]
signal fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l340_c113_060d]
signal fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_return_output : fixed;

-- fixed_mul[tr_pipelinec_gen_c_l340_c14_3cff]
signal fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_left : fixed;
signal fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_right : fixed;
signal fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_return_output : fixed;

-- fixed_make_from_float[tr_pipelinec_gen_c_l341_c24_73dc]
signal fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_a : std_logic_vector(22 downto 0);
signal fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l341_c54_42a0]
signal fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_return_output : fixed;

-- fixed_mul[tr_pipelinec_gen_c_l341_c14_5158]
signal fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_left : fixed;
signal fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_right : fixed;
signal fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_return_output : fixed;

-- fixed_mul[tr_pipelinec_gen_c_l342_c34_9624]
signal fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_left : fixed;
signal fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_right : fixed;
signal fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_return_output : fixed;

-- fixed_make_from_double[tr_pipelinec_gen_c_l342_c53_5e8e]
signal fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_return_output : fixed;

-- fixed_add[tr_pipelinec_gen_c_l342_c24_2e4d]
signal fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_left : fixed;
signal fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_right : fixed;
signal fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_return_output : fixed;

-- fixed_mul[tr_pipelinec_gen_c_l342_c96_cf80]
signal fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_left : fixed;
signal fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_right : fixed;
signal fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_return_output : fixed;

-- fixed_add[tr_pipelinec_gen_c_l342_c14_da39]
signal fixed_add_tr_pipelinec_gen_c_l342_c14_da39_left : fixed;
signal fixed_add_tr_pipelinec_gen_c_l342_c14_da39_right : fixed;
signal fixed_add_tr_pipelinec_gen_c_l342_c14_da39_return_output : fixed;

-- fixed_to_float[tr_pipelinec_gen_c_l343_c44_7851]
signal fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_a : fixed;
signal fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_return_output : std_logic_vector(22 downto 0);

-- float_rsqrt[tr_pipelinec_gen_c_l343_c32_5846]
signal float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_number : std_logic_vector(22 downto 0);
signal float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_return_output : std_logic_vector(22 downto 0);

-- fixed_make_from_float[tr_pipelinec_gen_c_l343_c10_3d87]
signal fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_a : std_logic_vector(22 downto 0);
signal fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_return_output : fixed;


begin

-- SUBMODULE INSTANCES 
-- fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823
fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823 : entity work.fixed_make_from_float_3CLK_ab228133 port map (
clk,
fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_a,
fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0
fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_a,
fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7
fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7 : entity work.fixed_sub_1CLK_812f84af port map (
clk,
fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_left,
fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_right,
fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d
fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_a,
fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_return_output);

-- fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff
fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff : entity work.fixed_mul_5CLK_70b28c19 port map (
clk,
fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_left,
fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_right,
fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_return_output);

-- fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc
fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc : entity work.fixed_make_from_float_3CLK_ab228133 port map (
clk,
fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_a,
fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0
fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_a,
fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_return_output);

-- fixed_mul_tr_pipelinec_gen_c_l341_c14_5158
fixed_mul_tr_pipelinec_gen_c_l341_c14_5158 : entity work.fixed_mul_5CLK_70b28c19 port map (
clk,
fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_left,
fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_right,
fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_return_output);

-- fixed_mul_tr_pipelinec_gen_c_l342_c34_9624
fixed_mul_tr_pipelinec_gen_c_l342_c34_9624 : entity work.fixed_mul_5CLK_70b28c19 port map (
clk,
fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_left,
fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_right,
fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_return_output);

-- fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e
fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_a,
fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_return_output);

-- fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d
fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d : entity work.fixed_add_1CLK_1ae6ac2b port map (
clk,
fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_left,
fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_right,
fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_return_output);

-- fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80
fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80 : entity work.fixed_mul_5CLK_70b28c19 port map (
clk,
fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_left,
fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_right,
fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_return_output);

-- fixed_add_tr_pipelinec_gen_c_l342_c14_da39
fixed_add_tr_pipelinec_gen_c_l342_c14_da39 : entity work.fixed_add_0CLK_6f2c5aad port map (
fixed_add_tr_pipelinec_gen_c_l342_c14_da39_left,
fixed_add_tr_pipelinec_gen_c_l342_c14_da39_right,
fixed_add_tr_pipelinec_gen_c_l342_c14_da39_return_output);

-- fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851
fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851 : entity work.fixed_to_float_3CLK_adafa2ea port map (
clk,
fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_a,
fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_return_output);

-- float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846
float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846 : entity work.float_rsqrt_14CLK_25a48b71 port map (
clk,
float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_number,
float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_return_output);

-- fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87
fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87 : entity work.fixed_make_from_float_3CLK_d2470dc7 port map (
clk,
fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_a,
fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 hit,
 -- Registers
 -- Stage 0
 -- Stage 1
 -- Stage 2
 -- Stage 3
 -- Stage 4
 -- Stage 5
 -- Stage 6
 -- Stage 7
 -- Stage 8
 -- Stage 9
 -- Stage 10
 -- Stage 11
 -- Stage 12
 -- Stage 13
 -- Stage 14
 -- Stage 15
 -- Stage 16
 -- Stage 17
 -- Stage 18
 -- Stage 19
 -- Stage 20
 -- Stage 21
 -- Stage 22
 -- Stage 23
 -- Stage 24
 -- Stage 25
 -- Stage 26
 -- Stage 27
 -- Stage 28
 -- Stage 29
 -- Stage 30
 -- Stage 31
 -- Stage 32
 -- Stage 33
 -- All submodule outputs
 fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_return_output,
 fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_return_output,
 fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_return_output,
 fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_return_output,
 fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_return_output,
 fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_return_output,
 fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_return_output,
 fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_return_output,
 fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_return_output,
 fixed_add_tr_pipelinec_gen_c_l342_c14_da39_return_output,
 fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_return_output,
 float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_return_output,
 fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_hit : float3;
 variable VAR_lz : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_left : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_right : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_right : fixed;
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_a : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l340_c57_c6ab_return_output : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_return_output : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_return_output : fixed;
 variable VAR_lx : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_left : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_right : fixed;
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_a : std_logic_vector(22 downto 0);
 variable VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l341_c46_4a2f_return_output : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_return_output : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_return_output : fixed;
 variable VAR_dl : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l342_c14_da39_left : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l342_c14_da39_right : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_left : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_right : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_left : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_right : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_return_output : fixed;
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_return_output : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_return_output : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_left : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_right : fixed;
 variable VAR_fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_return_output : fixed;
 variable VAR_fixed_add_tr_pipelinec_gen_c_l342_c14_da39_return_output : fixed;
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_a : std_logic_vector(22 downto 0);
 variable VAR_float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_number : std_logic_vector(22 downto 0);
 variable VAR_fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_a : fixed;
 variable VAR_fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_return_output : std_logic_vector(22 downto 0);
 variable VAR_float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_return_output : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_return_output : fixed;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_a := resize_float_e_m_t(to_slv(to_float(0.0625, 8, 23)),8,23,8,14);
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_a := to_slv(to_float(1.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_a := to_slv(to_float(-10.0, 8, 14));
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_a := resize_float_e_m_t(to_slv(to_float(0.0625, 8, 23)),8,23,8,14);
     -- fixed_make_from_double[tr_pipelinec_gen_c_l340_c65_80b0] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l342_c53_5e8e] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l341_c54_42a0] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_return_output;

     -- fixed_make_from_double[tr_pipelinec_gen_c_l340_c113_060d] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_return_output;

     -- Submodule level 1
     VAR_fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c65_80b0_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l342_c53_5e8e_return_output;
     VAR_fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l340_c113_060d_return_output;
     VAR_fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_right := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l341_c54_42a0_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_hit := hit;

     -- Submodule level 0
     -- CONST_REF_RD_float_8_14_t_float3_z_d41d[tr_pipelinec_gen_c_l340_c57_c6ab] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l340_c57_c6ab_return_output := VAR_hit.z;

     -- CONST_REF_RD_float_8_14_t_float3_x_d41d[tr_pipelinec_gen_c_l341_c46_4a2f] LATENCY=0
     VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l341_c46_4a2f_return_output := VAR_hit.x;

     -- Submodule level 1
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_a := VAR_CONST_REF_RD_float_8_14_t_float3_x_d41d_tr_pipelinec_gen_c_l341_c46_4a2f_return_output;
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_a := VAR_CONST_REF_RD_float_8_14_t_float3_z_d41d_tr_pipelinec_gen_c_l340_c57_c6ab_return_output;
     -- fixed_make_from_float[tr_pipelinec_gen_c_l341_c24_73dc] LATENCY=3
     -- Inputs
     fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_a <= VAR_fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_a;

     -- fixed_make_from_float[tr_pipelinec_gen_c_l340_c35_7823] LATENCY=3
     -- Inputs
     fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_a <= VAR_fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_a;

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
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_return_output := fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_return_output;
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_return_output := fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_return_output;

     -- Submodule level 0
     VAR_fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_left := VAR_fixed_make_from_float_tr_pipelinec_gen_c_l340_c35_7823_return_output;
     VAR_fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_left := VAR_fixed_make_from_float_tr_pipelinec_gen_c_l341_c24_73dc_return_output;
     -- fixed_sub[tr_pipelinec_gen_c_l340_c25_dbe7] LATENCY=1
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_left;
     fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_right;

     -- fixed_mul[tr_pipelinec_gen_c_l341_c14_5158] LATENCY=5
     -- Inputs
     fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_left <= VAR_fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_left;
     fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_right <= VAR_fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_right;

     -- Write to comb signals
   elsif STAGE = 4 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_return_output := fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_return_output;

     -- Submodule level 0
     VAR_fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_left := VAR_fixed_sub_tr_pipelinec_gen_c_l340_c25_dbe7_return_output;
     -- fixed_mul[tr_pipelinec_gen_c_l340_c14_3cff] LATENCY=5
     -- Inputs
     fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_left <= VAR_fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_left;
     fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_right <= VAR_fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_right;

     -- Write to comb signals
   elsif STAGE = 5 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 6 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 7 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 8 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_return_output := fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_return_output;

     -- Submodule level 0
     VAR_fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_left := VAR_fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_return_output;
     VAR_fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_right := VAR_fixed_mul_tr_pipelinec_gen_c_l341_c14_5158_return_output;
     -- fixed_mul[tr_pipelinec_gen_c_l342_c34_9624] LATENCY=5
     -- Inputs
     fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_left <= VAR_fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_left;
     fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_right <= VAR_fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_right;

     -- Write to comb signals
   elsif STAGE = 9 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_return_output := fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_return_output;

     -- Submodule level 0
     VAR_fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_left := VAR_fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_return_output;
     VAR_fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_right := VAR_fixed_mul_tr_pipelinec_gen_c_l340_c14_3cff_return_output;
     -- fixed_mul[tr_pipelinec_gen_c_l342_c96_cf80] LATENCY=5
     -- Inputs
     fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_left <= VAR_fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_left;
     fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_right <= VAR_fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_right;

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
     -- Submodule outputs
     VAR_fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_return_output := fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_return_output;

     -- Submodule level 0
     VAR_fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_left := VAR_fixed_mul_tr_pipelinec_gen_c_l342_c34_9624_return_output;
     -- fixed_add[tr_pipelinec_gen_c_l342_c24_2e4d] LATENCY=1
     -- Inputs
     fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_left <= VAR_fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_left;
     fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_right <= VAR_fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_right;

     -- Write to comb signals
   elsif STAGE = 14 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_return_output := fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_return_output;
     VAR_fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_return_output := fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_return_output;

     -- Submodule level 0
     VAR_fixed_add_tr_pipelinec_gen_c_l342_c14_da39_left := VAR_fixed_add_tr_pipelinec_gen_c_l342_c24_2e4d_return_output;
     VAR_fixed_add_tr_pipelinec_gen_c_l342_c14_da39_right := VAR_fixed_mul_tr_pipelinec_gen_c_l342_c96_cf80_return_output;
     -- fixed_add[tr_pipelinec_gen_c_l342_c14_da39] LATENCY=0
     -- Inputs
     fixed_add_tr_pipelinec_gen_c_l342_c14_da39_left <= VAR_fixed_add_tr_pipelinec_gen_c_l342_c14_da39_left;
     fixed_add_tr_pipelinec_gen_c_l342_c14_da39_right <= VAR_fixed_add_tr_pipelinec_gen_c_l342_c14_da39_right;
     -- Outputs
     VAR_fixed_add_tr_pipelinec_gen_c_l342_c14_da39_return_output := fixed_add_tr_pipelinec_gen_c_l342_c14_da39_return_output;

     -- Submodule level 1
     VAR_fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_a := VAR_fixed_add_tr_pipelinec_gen_c_l342_c14_da39_return_output;
     -- fixed_to_float[tr_pipelinec_gen_c_l343_c44_7851] LATENCY=3
     -- Inputs
     fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_a <= VAR_fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_a;

     -- Write to comb signals
   elsif STAGE = 15 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 16 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 17 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_return_output := fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_return_output;

     -- Submodule level 0
     VAR_float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_number := VAR_fixed_to_float_tr_pipelinec_gen_c_l343_c44_7851_return_output;
     -- float_rsqrt[tr_pipelinec_gen_c_l343_c32_5846] LATENCY=14
     -- Inputs
     float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_number <= VAR_float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_number;

     -- Write to comb signals
   elsif STAGE = 18 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 19 then
     -- Read from prev stage

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

     -- Write to comb signals
   elsif STAGE = 27 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 28 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 29 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 30 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 31 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_return_output := float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_return_output;

     -- Submodule level 0
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_a := VAR_float_rsqrt_tr_pipelinec_gen_c_l343_c32_5846_return_output;
     -- fixed_make_from_float[tr_pipelinec_gen_c_l343_c10_3d87] LATENCY=3
     -- Inputs
     fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_a <= VAR_fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_a;

     -- Write to comb signals
   elsif STAGE = 32 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 33 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 34 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_return_output := fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_fixed_make_from_float_tr_pipelinec_gen_c_l343_c10_3d87_return_output;
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
     -- Stage 4
     -- Stage 5
     -- Stage 6
     -- Stage 7
     -- Stage 8
     -- Stage 9
     -- Stage 10
     -- Stage 11
     -- Stage 12
     -- Stage 13
     -- Stage 14
     -- Stage 15
     -- Stage 16
     -- Stage 17
     -- Stage 18
     -- Stage 19
     -- Stage 20
     -- Stage 21
     -- Stage 22
     -- Stage 23
     -- Stage 24
     -- Stage 25
     -- Stage 26
     -- Stage 27
     -- Stage 28
     -- Stage 29
     -- Stage 30
     -- Stage 31
     -- Stage 32
     -- Stage 33
 end if;
end process;

end arch;
