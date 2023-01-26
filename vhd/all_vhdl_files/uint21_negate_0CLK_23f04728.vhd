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
-- Submodules: 2
entity uint21_negate_0CLK_23f04728 is
port(
 x : in unsigned(20 downto 0);
 return_output : out signed(21 downto 0));
end uint21_negate_0CLK_23f04728;
architecture arch of uint21_negate_0CLK_23f04728 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- UNARY_OP_NOT[bit_math_h_l14_c17_0122]
signal UNARY_OP_NOT_bit_math_h_l14_c17_0122_expr : unsigned(21 downto 0);
signal UNARY_OP_NOT_bit_math_h_l14_c17_0122_return_output : unsigned(21 downto 0);

-- BIN_OP_PLUS[bit_math_h_l17_c22_cad2]
signal BIN_OP_PLUS_bit_math_h_l17_c22_cad2_left : unsigned(21 downto 0);
signal BIN_OP_PLUS_bit_math_h_l17_c22_cad2_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_bit_math_h_l17_c22_cad2_return_output : unsigned(22 downto 0);


begin

-- SUBMODULE INSTANCES 
-- UNARY_OP_NOT_bit_math_h_l14_c17_0122
UNARY_OP_NOT_bit_math_h_l14_c17_0122 : entity work.UNARY_OP_NOT_uint22_t_0CLK_de264c78 port map (
UNARY_OP_NOT_bit_math_h_l14_c17_0122_expr,
UNARY_OP_NOT_bit_math_h_l14_c17_0122_return_output);

-- BIN_OP_PLUS_bit_math_h_l17_c22_cad2
BIN_OP_PLUS_bit_math_h_l17_c22_cad2 : entity work.BIN_OP_PLUS_uint22_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_bit_math_h_l17_c22_cad2_left,
BIN_OP_PLUS_bit_math_h_l17_c22_cad2_right,
BIN_OP_PLUS_bit_math_h_l17_c22_cad2_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- All submodule outputs
 UNARY_OP_NOT_bit_math_h_l14_c17_0122_return_output,
 BIN_OP_PLUS_bit_math_h_l17_c22_cad2_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : signed(21 downto 0);
 variable VAR_x : unsigned(20 downto 0);
 variable VAR_x_wide : unsigned(21 downto 0);
 variable VAR_x_wide_bit_math_h_l11_c3_5293 : unsigned(21 downto 0);
 variable VAR_x_wide_neg : unsigned(21 downto 0);
 variable VAR_UNARY_OP_NOT_bit_math_h_l14_c17_0122_expr : unsigned(21 downto 0);
 variable VAR_UNARY_OP_NOT_bit_math_h_l14_c17_0122_return_output : unsigned(21 downto 0);
 variable VAR_x_neg_wide_plus1 : unsigned(21 downto 0);
 variable VAR_x_neg_wide_plus1_bit_math_h_l17_c3_b70b : unsigned(21 downto 0);
 variable VAR_BIN_OP_PLUS_bit_math_h_l17_c22_cad2_left : unsigned(21 downto 0);
 variable VAR_BIN_OP_PLUS_bit_math_h_l17_c22_cad2_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_bit_math_h_l17_c22_cad2_return_output : unsigned(22 downto 0);
 variable VAR_rv : signed(21 downto 0);
 variable VAR_rv_bit_math_h_l20_c3_a1db : signed(21 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_PLUS_bit_math_h_l17_c22_cad2_right := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     VAR_x_wide_bit_math_h_l11_c3_5293 := resize(VAR_x, 22);
     VAR_UNARY_OP_NOT_bit_math_h_l14_c17_0122_expr := VAR_x_wide_bit_math_h_l11_c3_5293;
     -- UNARY_OP_NOT[bit_math_h_l14_c17_0122] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_bit_math_h_l14_c17_0122_expr <= VAR_UNARY_OP_NOT_bit_math_h_l14_c17_0122_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_bit_math_h_l14_c17_0122_return_output := UNARY_OP_NOT_bit_math_h_l14_c17_0122_return_output;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_bit_math_h_l17_c22_cad2_left := VAR_UNARY_OP_NOT_bit_math_h_l14_c17_0122_return_output;
     -- BIN_OP_PLUS[bit_math_h_l17_c22_cad2] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_bit_math_h_l17_c22_cad2_left <= VAR_BIN_OP_PLUS_bit_math_h_l17_c22_cad2_left;
     BIN_OP_PLUS_bit_math_h_l17_c22_cad2_right <= VAR_BIN_OP_PLUS_bit_math_h_l17_c22_cad2_right;
     -- Outputs
     VAR_BIN_OP_PLUS_bit_math_h_l17_c22_cad2_return_output := BIN_OP_PLUS_bit_math_h_l17_c22_cad2_return_output;

     -- Submodule level 2
     VAR_x_neg_wide_plus1_bit_math_h_l17_c3_b70b := resize(VAR_BIN_OP_PLUS_bit_math_h_l17_c22_cad2_return_output, 22);
     VAR_rv_bit_math_h_l20_c3_a1db := signed(std_logic_vector(resize(VAR_x_neg_wide_plus1_bit_math_h_l17_c3_b70b, 22)));
     VAR_return_output := VAR_rv_bit_math_h_l20_c3_a1db;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
