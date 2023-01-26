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
-- Submodules: 5
entity int22_abs_0CLK_a5a1cd4e is
port(
 x : in signed(21 downto 0);
 return_output : out unsigned(21 downto 0));
end int22_abs_0CLK_a5a1cd4e;
architecture arch of int22_abs_0CLK_a5a1cd4e is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_MINUS[bit_math_h_l25_c19_bfdd]
signal BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_left : unsigned(21 downto 0);
signal BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_right : unsigned(0 downto 0);
signal BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_return_output : unsigned(21 downto 0);

-- UNARY_OP_NOT[bit_math_h_l29_c24_a928]
signal UNARY_OP_NOT_bit_math_h_l29_c24_a928_expr : unsigned(21 downto 0);
signal UNARY_OP_NOT_bit_math_h_l29_c24_a928_return_output : unsigned(21 downto 0);

-- BIN_OP_EQ[bit_math_h_l32_c6_34cf]
signal BIN_OP_EQ_bit_math_h_l32_c6_34cf_left : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l32_c6_34cf_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l32_c6_34cf_return_output : unsigned(0 downto 0);

-- rv_MUX[bit_math_h_l32_c3_7362]
signal rv_MUX_bit_math_h_l32_c3_7362_cond : unsigned(0 downto 0);
signal rv_MUX_bit_math_h_l32_c3_7362_iftrue : unsigned(21 downto 0);
signal rv_MUX_bit_math_h_l32_c3_7362_iffalse : unsigned(21 downto 0);
signal rv_MUX_bit_math_h_l32_c3_7362_return_output : unsigned(21 downto 0);

function int22_21_21( x : signed) return unsigned is
--variable x : signed(21 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(21- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_MINUS_bit_math_h_l25_c19_bfdd
BIN_OP_MINUS_bit_math_h_l25_c19_bfdd : entity work.BIN_OP_MINUS_uint22_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_left,
BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_right,
BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_return_output);

-- UNARY_OP_NOT_bit_math_h_l29_c24_a928
UNARY_OP_NOT_bit_math_h_l29_c24_a928 : entity work.UNARY_OP_NOT_uint22_t_0CLK_de264c78 port map (
UNARY_OP_NOT_bit_math_h_l29_c24_a928_expr,
UNARY_OP_NOT_bit_math_h_l29_c24_a928_return_output);

-- BIN_OP_EQ_bit_math_h_l32_c6_34cf
BIN_OP_EQ_bit_math_h_l32_c6_34cf : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_bit_math_h_l32_c6_34cf_left,
BIN_OP_EQ_bit_math_h_l32_c6_34cf_right,
BIN_OP_EQ_bit_math_h_l32_c6_34cf_return_output);

-- rv_MUX_bit_math_h_l32_c3_7362
rv_MUX_bit_math_h_l32_c3_7362 : entity work.MUX_uint1_t_uint22_t_uint22_t_0CLK_de264c78 port map (
rv_MUX_bit_math_h_l32_c3_7362_cond,
rv_MUX_bit_math_h_l32_c3_7362_iftrue,
rv_MUX_bit_math_h_l32_c3_7362_iffalse,
rv_MUX_bit_math_h_l32_c3_7362_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- All submodule outputs
 BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_return_output,
 UNARY_OP_NOT_bit_math_h_l29_c24_a928_return_output,
 BIN_OP_EQ_bit_math_h_l32_c6_34cf_return_output,
 rv_MUX_bit_math_h_l32_c3_7362_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(21 downto 0);
 variable VAR_x : signed(21 downto 0);
 variable VAR_sign : unsigned(0 downto 0);
 variable VAR_int22_21_21_bit_math_h_l17_c10_d42b_return_output : unsigned(0 downto 0);
 variable VAR_x_uint : unsigned(21 downto 0);
 variable VAR_x_uint_bit_math_h_l21_c3_049f : unsigned(21 downto 0);
 variable VAR_x_uint_minus1 : unsigned(21 downto 0);
 variable VAR_BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_left : unsigned(21 downto 0);
 variable VAR_BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_return_output : unsigned(21 downto 0);
 variable VAR_x_uint_minus1_neg : unsigned(21 downto 0);
 variable VAR_UNARY_OP_NOT_bit_math_h_l29_c24_a928_expr : unsigned(21 downto 0);
 variable VAR_UNARY_OP_NOT_bit_math_h_l29_c24_a928_return_output : unsigned(21 downto 0);
 variable VAR_rv : unsigned(21 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l32_c6_34cf_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l32_c6_34cf_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l32_c6_34cf_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_bit_math_h_l32_c3_7362_iftrue : unsigned(21 downto 0);
 variable VAR_rv_MUX_bit_math_h_l32_c3_7362_iffalse : unsigned(21 downto 0);
 variable VAR_rv_bit_math_h_l38_c5_a757 : unsigned(21 downto 0);
 variable VAR_rv_MUX_bit_math_h_l32_c3_7362_return_output : unsigned(21 downto 0);
 variable VAR_rv_MUX_bit_math_h_l32_c3_7362_cond : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l32_c6_34cf_right := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     VAR_rv_bit_math_h_l38_c5_a757 := resize(unsigned(std_logic_vector(VAR_x)),22);
     VAR_x_uint_bit_math_h_l21_c3_049f := resize(unsigned(std_logic_vector(VAR_x)),22);
     VAR_rv_MUX_bit_math_h_l32_c3_7362_iffalse := VAR_rv_bit_math_h_l38_c5_a757;
     VAR_BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_left := VAR_x_uint_bit_math_h_l21_c3_049f;
     -- BIN_OP_MINUS[bit_math_h_l25_c19_bfdd] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_left <= VAR_BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_left;
     BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_right <= VAR_BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_right;
     -- Outputs
     VAR_BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_return_output := BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_return_output;

     -- int22_21_21[bit_math_h_l17_c10_d42b] LATENCY=0
     VAR_int22_21_21_bit_math_h_l17_c10_d42b_return_output := int22_21_21(
     VAR_x);

     -- Submodule level 1
     VAR_UNARY_OP_NOT_bit_math_h_l29_c24_a928_expr := VAR_BIN_OP_MINUS_bit_math_h_l25_c19_bfdd_return_output;
     VAR_BIN_OP_EQ_bit_math_h_l32_c6_34cf_left := VAR_int22_21_21_bit_math_h_l17_c10_d42b_return_output;
     -- UNARY_OP_NOT[bit_math_h_l29_c24_a928] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_bit_math_h_l29_c24_a928_expr <= VAR_UNARY_OP_NOT_bit_math_h_l29_c24_a928_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_bit_math_h_l29_c24_a928_return_output := UNARY_OP_NOT_bit_math_h_l29_c24_a928_return_output;

     -- BIN_OP_EQ[bit_math_h_l32_c6_34cf] LATENCY=0
     -- Inputs
     BIN_OP_EQ_bit_math_h_l32_c6_34cf_left <= VAR_BIN_OP_EQ_bit_math_h_l32_c6_34cf_left;
     BIN_OP_EQ_bit_math_h_l32_c6_34cf_right <= VAR_BIN_OP_EQ_bit_math_h_l32_c6_34cf_right;
     -- Outputs
     VAR_BIN_OP_EQ_bit_math_h_l32_c6_34cf_return_output := BIN_OP_EQ_bit_math_h_l32_c6_34cf_return_output;

     -- Submodule level 2
     VAR_rv_MUX_bit_math_h_l32_c3_7362_cond := VAR_BIN_OP_EQ_bit_math_h_l32_c6_34cf_return_output;
     VAR_rv_MUX_bit_math_h_l32_c3_7362_iftrue := VAR_UNARY_OP_NOT_bit_math_h_l29_c24_a928_return_output;
     -- rv_MUX[bit_math_h_l32_c3_7362] LATENCY=0
     -- Inputs
     rv_MUX_bit_math_h_l32_c3_7362_cond <= VAR_rv_MUX_bit_math_h_l32_c3_7362_cond;
     rv_MUX_bit_math_h_l32_c3_7362_iftrue <= VAR_rv_MUX_bit_math_h_l32_c3_7362_iftrue;
     rv_MUX_bit_math_h_l32_c3_7362_iffalse <= VAR_rv_MUX_bit_math_h_l32_c3_7362_iffalse;
     -- Outputs
     VAR_rv_MUX_bit_math_h_l32_c3_7362_return_output := rv_MUX_bit_math_h_l32_c3_7362_return_output;

     -- Submodule level 3
     VAR_return_output := VAR_rv_MUX_bit_math_h_l32_c3_7362_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
