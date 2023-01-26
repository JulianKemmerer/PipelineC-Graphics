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
entity uint15_negate_0CLK_23f04728 is
port(
 x : in unsigned(14 downto 0);
 return_output : out signed(15 downto 0));
end uint15_negate_0CLK_23f04728;
architecture arch of uint15_negate_0CLK_23f04728 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- UNARY_OP_NOT[bit_math_h_l14_c17_730b]
signal UNARY_OP_NOT_bit_math_h_l14_c17_730b_expr : unsigned(15 downto 0);
signal UNARY_OP_NOT_bit_math_h_l14_c17_730b_return_output : unsigned(15 downto 0);

-- BIN_OP_PLUS[bit_math_h_l17_c22_1441]
signal BIN_OP_PLUS_bit_math_h_l17_c22_1441_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_bit_math_h_l17_c22_1441_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_bit_math_h_l17_c22_1441_return_output : unsigned(16 downto 0);


begin

-- SUBMODULE INSTANCES 
-- UNARY_OP_NOT_bit_math_h_l14_c17_730b
UNARY_OP_NOT_bit_math_h_l14_c17_730b : entity work.UNARY_OP_NOT_uint16_t_0CLK_de264c78 port map (
UNARY_OP_NOT_bit_math_h_l14_c17_730b_expr,
UNARY_OP_NOT_bit_math_h_l14_c17_730b_return_output);

-- BIN_OP_PLUS_bit_math_h_l17_c22_1441
BIN_OP_PLUS_bit_math_h_l17_c22_1441 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_bit_math_h_l17_c22_1441_left,
BIN_OP_PLUS_bit_math_h_l17_c22_1441_right,
BIN_OP_PLUS_bit_math_h_l17_c22_1441_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- All submodule outputs
 UNARY_OP_NOT_bit_math_h_l14_c17_730b_return_output,
 BIN_OP_PLUS_bit_math_h_l17_c22_1441_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : signed(15 downto 0);
 variable VAR_x : unsigned(14 downto 0);
 variable VAR_x_wide : unsigned(15 downto 0);
 variable VAR_x_wide_bit_math_h_l11_c3_40e9 : unsigned(15 downto 0);
 variable VAR_x_wide_neg : unsigned(15 downto 0);
 variable VAR_UNARY_OP_NOT_bit_math_h_l14_c17_730b_expr : unsigned(15 downto 0);
 variable VAR_UNARY_OP_NOT_bit_math_h_l14_c17_730b_return_output : unsigned(15 downto 0);
 variable VAR_x_neg_wide_plus1 : unsigned(15 downto 0);
 variable VAR_x_neg_wide_plus1_bit_math_h_l17_c3_cb4f : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_bit_math_h_l17_c22_1441_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_bit_math_h_l17_c22_1441_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_bit_math_h_l17_c22_1441_return_output : unsigned(16 downto 0);
 variable VAR_rv : signed(15 downto 0);
 variable VAR_rv_bit_math_h_l20_c3_36d4 : signed(15 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_PLUS_bit_math_h_l17_c22_1441_right := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     VAR_x_wide_bit_math_h_l11_c3_40e9 := resize(VAR_x, 16);
     VAR_UNARY_OP_NOT_bit_math_h_l14_c17_730b_expr := VAR_x_wide_bit_math_h_l11_c3_40e9;
     -- UNARY_OP_NOT[bit_math_h_l14_c17_730b] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_bit_math_h_l14_c17_730b_expr <= VAR_UNARY_OP_NOT_bit_math_h_l14_c17_730b_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_bit_math_h_l14_c17_730b_return_output := UNARY_OP_NOT_bit_math_h_l14_c17_730b_return_output;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_bit_math_h_l17_c22_1441_left := VAR_UNARY_OP_NOT_bit_math_h_l14_c17_730b_return_output;
     -- BIN_OP_PLUS[bit_math_h_l17_c22_1441] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_bit_math_h_l17_c22_1441_left <= VAR_BIN_OP_PLUS_bit_math_h_l17_c22_1441_left;
     BIN_OP_PLUS_bit_math_h_l17_c22_1441_right <= VAR_BIN_OP_PLUS_bit_math_h_l17_c22_1441_right;
     -- Outputs
     VAR_BIN_OP_PLUS_bit_math_h_l17_c22_1441_return_output := BIN_OP_PLUS_bit_math_h_l17_c22_1441_return_output;

     -- Submodule level 2
     VAR_x_neg_wide_plus1_bit_math_h_l17_c3_cb4f := resize(VAR_BIN_OP_PLUS_bit_math_h_l17_c22_1441_return_output, 16);
     VAR_rv_bit_math_h_l20_c3_36d4 := signed(std_logic_vector(resize(VAR_x_neg_wide_plus1_bit_math_h_l17_c3_cb4f, 16)));
     VAR_return_output := VAR_rv_bit_math_h_l20_c3_36d4;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
