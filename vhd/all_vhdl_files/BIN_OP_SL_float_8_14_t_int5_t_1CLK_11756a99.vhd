-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.4380328440456766]
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
entity BIN_OP_SL_float_8_14_t_int5_t_1CLK_11756a99 is
port(
 clk : in std_logic;
 left : in std_logic_vector(22 downto 0);
 right : in signed(4 downto 0);
 return_output : out std_logic_vector(22 downto 0));
end BIN_OP_SL_float_8_14_t_int5_t_1CLK_11756a99;
architecture arch of BIN_OP_SL_float_8_14_t_int5_t_1CLK_11756a99 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output : unsigned(13 downto 0);
signal REG_STAGE0_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output : unsigned(0 downto 0);
signal COMB_STAGE0_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output : unsigned(13 downto 0);
signal COMB_STAGE0_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output : unsigned(0 downto 0);
-- Each function instance gets signals
-- BIN_OP_NEQ[BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284]
signal BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_left : unsigned(7 downto 0);
signal BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_right : unsigned(0 downto 0);
signal BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_return_output : unsigned(0 downto 0);

-- z_exponent_MUX[BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335]
signal z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_cond : unsigned(0 downto 0);
signal z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iftrue : unsigned(7 downto 0);
signal z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iffalse : unsigned(7 downto 0);
signal z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_return_output : unsigned(7 downto 0);

-- BIN_OP_PLUS[BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9]
signal BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_left : signed(8 downto 0);
signal BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_right : signed(4 downto 0);
signal BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_return_output : signed(9 downto 0);

function float_8_14_t_13_0( x : std_logic_vector) return unsigned is
--variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(13 downto 0);
begin
return_output := unsigned(std_logic_vector(x(13 downto 0)));
return return_output;
end function;

function float_8_14_t_21_14( x : std_logic_vector) return unsigned is
--variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(7 downto 0);
begin
return_output := unsigned(std_logic_vector(x(21 downto 14)));
return return_output;
end function;

function float_8_14_t_22_22( x : std_logic_vector) return unsigned is
--variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(22- i);
      end loop;
return return_output;
end function;

function float_uint8_uint14( sign : unsigned;
 exponent : unsigned;
 mantissa : unsigned) return std_logic_vector is

  --variable sign : unsigned(0 downto 0);
  --variable exponent : unsigned(7 downto 0);
  --variable mantissa : unsigned(13 downto 0);
  variable return_output : std_logic_vector(22 downto 0);

begin

    return_output := std_logic_vector(sign) & std_logic_vector(exponent) & std_logic_vector(mantissa);
    return return_output;

end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284
BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284 : entity work.BIN_OP_NEQ_uint8_t_uint1_t_1CLK_de7dbec0 port map (
clk,
BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_left,
BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_right,
BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_return_output);

-- z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335
z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335 : entity work.MUX_uint1_t_uint8_t_uint8_t_0CLK_de264c78 port map (
z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_cond,
z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iftrue,
z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iffalse,
z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_return_output);

-- BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9
BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9 : entity work.BIN_OP_PLUS_int9_t_int5_t_1CLK_78d9e61c port map (
clk,
BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_left,
BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_right,
BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- Registers
 -- Stage 0
 REG_STAGE0_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output,
 REG_STAGE0_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output,
 -- All submodule outputs
 BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_return_output,
 z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_return_output,
 BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : std_logic_vector(22 downto 0);
 variable VAR_right : signed(4 downto 0);
 variable VAR_return_output : std_logic_vector(22 downto 0);
 variable VAR_left_mantissa : unsigned(13 downto 0);
 variable VAR_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output : unsigned(13 downto 0);
 variable VAR_left_exponent : unsigned(7 downto 0);
 variable VAR_left_exponent_BIN_OP_SL_float_8_14_t_int5_t_c_l14_c3_3afa : unsigned(7 downto 0);
 variable VAR_float_8_14_t_21_14_BIN_OP_SL_float_8_14_t_int5_t_c_l14_c19_a668_return_output : unsigned(7 downto 0);
 variable VAR_left_sign : unsigned(0 downto 0);
 variable VAR_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output : unsigned(0 downto 0);
 variable VAR_z_mantissa : unsigned(13 downto 0);
 variable VAR_z_exponent : unsigned(7 downto 0);
 variable VAR_z_sign : unsigned(0 downto 0);
 variable VAR_z_exponent_BIN_OP_SL_float_8_14_t_int5_t_c_l23_c3_9ba8 : unsigned(7 downto 0);
 variable VAR_BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_return_output : unsigned(0 downto 0);
 variable VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iftrue : unsigned(7 downto 0);
 variable VAR_z_exponent_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c5_c288 : unsigned(7 downto 0);
 variable VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iffalse : unsigned(7 downto 0);
 variable VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_return_output : unsigned(7 downto 0);
 variable VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_left : signed(8 downto 0);
 variable VAR_BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_right : signed(4 downto 0);
 variable VAR_BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_return_output : signed(9 downto 0);
 variable VAR_float_uint8_uint14_BIN_OP_SL_float_8_14_t_int5_t_c_l31_c10_33da_return_output : std_logic_vector(22 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_right := to_unsigned(0, 1);
     VAR_z_exponent_BIN_OP_SL_float_8_14_t_int5_t_c_l23_c3_9ba8 := resize(to_unsigned(0, 1), 8);
     VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iffalse := VAR_z_exponent_BIN_OP_SL_float_8_14_t_int5_t_c_l23_c3_9ba8;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_right := VAR_right;
     -- float_8_14_t_13_0[BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23] LATENCY=0
     VAR_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output := float_8_14_t_13_0(
     VAR_left);

     -- float_8_14_t_22_22[BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2] LATENCY=0
     VAR_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output := float_8_14_t_22_22(
     VAR_left);

     -- float_8_14_t_21_14[BIN_OP_SL_float_8_14_t_int5_t_c_l14_c19_a668] LATENCY=0
     VAR_float_8_14_t_21_14_BIN_OP_SL_float_8_14_t_int5_t_c_l14_c19_a668_return_output := float_8_14_t_21_14(
     VAR_left);

     -- Submodule level 1
     VAR_left_exponent_BIN_OP_SL_float_8_14_t_int5_t_c_l14_c3_3afa := VAR_float_8_14_t_21_14_BIN_OP_SL_float_8_14_t_int5_t_c_l14_c19_a668_return_output;
     VAR_BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_left := VAR_left_exponent_BIN_OP_SL_float_8_14_t_int5_t_c_l14_c3_3afa;
     VAR_BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_left := signed(std_logic_vector(resize(VAR_left_exponent_BIN_OP_SL_float_8_14_t_int5_t_c_l14_c3_3afa, 9)));
     -- BIN_OP_PLUS[BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9] LATENCY=1
     -- Inputs
     BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_left <= VAR_BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_left;
     BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_right <= VAR_BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_right;

     -- BIN_OP_NEQ[BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284] LATENCY=1
     -- Inputs
     BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_left <= VAR_BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_left;
     BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_right <= VAR_BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_right;

     -- Write to comb signals
     COMB_STAGE0_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output <= VAR_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output;
     COMB_STAGE0_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output <= VAR_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output := REG_STAGE0_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output;
     VAR_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output := REG_STAGE0_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output;
     -- Submodule outputs
     VAR_BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_return_output := BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_return_output;
     VAR_BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_return_output := BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_return_output;

     -- Submodule level 0
     VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_cond := VAR_BIN_OP_NEQ_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c6_8284_return_output;
     VAR_z_exponent_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c5_c288 := resize(unsigned(std_logic_vector(VAR_BIN_OP_PLUS_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c18_08e9_return_output)),8);
     VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iftrue := VAR_z_exponent_BIN_OP_SL_float_8_14_t_int5_t_c_l27_c5_c288;
     -- z_exponent_MUX[BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335] LATENCY=0
     -- Inputs
     z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_cond <= VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_cond;
     z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iftrue <= VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iftrue;
     z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iffalse <= VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_iffalse;
     -- Outputs
     VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_return_output := z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_return_output;

     -- Submodule level 1
     -- float_uint8_uint14[BIN_OP_SL_float_8_14_t_int5_t_c_l31_c10_33da] LATENCY=0
     VAR_float_uint8_uint14_BIN_OP_SL_float_8_14_t_int5_t_c_l31_c10_33da_return_output := float_uint8_uint14(
     VAR_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output,
     VAR_z_exponent_MUX_BIN_OP_SL_float_8_14_t_int5_t_c_l25_c3_2335_return_output,
     VAR_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output);

     -- Submodule level 2
     VAR_return_output := VAR_float_uint8_uint14_BIN_OP_SL_float_8_14_t_int5_t_c_l31_c10_33da_return_output;
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
     REG_STAGE0_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output <= COMB_STAGE0_float_8_14_t_13_0_BIN_OP_SL_float_8_14_t_int5_t_c_l12_c19_ea23_return_output;
     REG_STAGE0_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output <= COMB_STAGE0_float_8_14_t_22_22_BIN_OP_SL_float_8_14_t_int5_t_c_l16_c15_a1b2_return_output;
 end if;
end process;

end arch;
