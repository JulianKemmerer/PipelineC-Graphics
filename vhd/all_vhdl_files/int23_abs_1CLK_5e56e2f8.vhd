-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.07272727272727376]
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
entity int23_abs_1CLK_5e56e2f8 is
port(
 clk : in std_logic;
 x : in signed(22 downto 0);
 return_output : out unsigned(22 downto 0));
end int23_abs_1CLK_5e56e2f8;
architecture arch of int23_abs_1CLK_5e56e2f8 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_rv_MUX_bit_math_h_l52_c3_3318_iffalse : unsigned(22 downto 0);
signal COMB_STAGE0_rv_MUX_bit_math_h_l52_c3_3318_iffalse : unsigned(22 downto 0);
-- Each function instance gets signals
-- BIN_OP_MINUS[bit_math_h_l45_c19_4395]
signal BIN_OP_MINUS_bit_math_h_l45_c19_4395_left : unsigned(22 downto 0);
signal BIN_OP_MINUS_bit_math_h_l45_c19_4395_right : unsigned(0 downto 0);
signal BIN_OP_MINUS_bit_math_h_l45_c19_4395_return_output : unsigned(22 downto 0);

-- UNARY_OP_NOT[bit_math_h_l49_c24_b339]
signal UNARY_OP_NOT_bit_math_h_l49_c24_b339_expr : unsigned(22 downto 0);
signal UNARY_OP_NOT_bit_math_h_l49_c24_b339_return_output : unsigned(22 downto 0);

-- BIN_OP_EQ[bit_math_h_l52_c6_7789]
signal BIN_OP_EQ_bit_math_h_l52_c6_7789_left : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l52_c6_7789_right : unsigned(0 downto 0);
signal BIN_OP_EQ_bit_math_h_l52_c6_7789_return_output : unsigned(0 downto 0);

-- rv_MUX[bit_math_h_l52_c3_3318]
signal rv_MUX_bit_math_h_l52_c3_3318_cond : unsigned(0 downto 0);
signal rv_MUX_bit_math_h_l52_c3_3318_iftrue : unsigned(22 downto 0);
signal rv_MUX_bit_math_h_l52_c3_3318_iffalse : unsigned(22 downto 0);
signal rv_MUX_bit_math_h_l52_c3_3318_return_output : unsigned(22 downto 0);

function int23_22_22( x : signed) return unsigned is
--variable x : signed(22 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(22- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_MINUS_bit_math_h_l45_c19_4395
BIN_OP_MINUS_bit_math_h_l45_c19_4395 : entity work.BIN_OP_MINUS_uint23_t_uint1_t_1CLK_a95d2991 port map (
clk,
BIN_OP_MINUS_bit_math_h_l45_c19_4395_left,
BIN_OP_MINUS_bit_math_h_l45_c19_4395_right,
BIN_OP_MINUS_bit_math_h_l45_c19_4395_return_output);

-- UNARY_OP_NOT_bit_math_h_l49_c24_b339
UNARY_OP_NOT_bit_math_h_l49_c24_b339 : entity work.UNARY_OP_NOT_uint23_t_0CLK_de264c78 port map (
UNARY_OP_NOT_bit_math_h_l49_c24_b339_expr,
UNARY_OP_NOT_bit_math_h_l49_c24_b339_return_output);

-- BIN_OP_EQ_bit_math_h_l52_c6_7789
BIN_OP_EQ_bit_math_h_l52_c6_7789 : entity work.BIN_OP_EQ_uint1_t_uint1_t_1CLK_047da1d7 port map (
clk,
BIN_OP_EQ_bit_math_h_l52_c6_7789_left,
BIN_OP_EQ_bit_math_h_l52_c6_7789_right,
BIN_OP_EQ_bit_math_h_l52_c6_7789_return_output);

-- rv_MUX_bit_math_h_l52_c3_3318
rv_MUX_bit_math_h_l52_c3_3318 : entity work.MUX_uint1_t_uint23_t_uint23_t_0CLK_de264c78 port map (
rv_MUX_bit_math_h_l52_c3_3318_cond,
rv_MUX_bit_math_h_l52_c3_3318_iftrue,
rv_MUX_bit_math_h_l52_c3_3318_iffalse,
rv_MUX_bit_math_h_l52_c3_3318_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- Registers
 -- Stage 0
 REG_STAGE0_rv_MUX_bit_math_h_l52_c3_3318_iffalse,
 -- All submodule outputs
 BIN_OP_MINUS_bit_math_h_l45_c19_4395_return_output,
 UNARY_OP_NOT_bit_math_h_l49_c24_b339_return_output,
 BIN_OP_EQ_bit_math_h_l52_c6_7789_return_output,
 rv_MUX_bit_math_h_l52_c3_3318_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(22 downto 0);
 variable VAR_x : signed(22 downto 0);
 variable VAR_sign : unsigned(0 downto 0);
 variable VAR_int23_22_22_bit_math_h_l37_c10_3b5d_return_output : unsigned(0 downto 0);
 variable VAR_x_uint : unsigned(22 downto 0);
 variable VAR_x_uint_bit_math_h_l41_c3_431c : unsigned(22 downto 0);
 variable VAR_x_uint_minus1 : unsigned(22 downto 0);
 variable VAR_BIN_OP_MINUS_bit_math_h_l45_c19_4395_left : unsigned(22 downto 0);
 variable VAR_BIN_OP_MINUS_bit_math_h_l45_c19_4395_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_bit_math_h_l45_c19_4395_return_output : unsigned(22 downto 0);
 variable VAR_x_uint_minus1_neg : unsigned(22 downto 0);
 variable VAR_UNARY_OP_NOT_bit_math_h_l49_c24_b339_expr : unsigned(22 downto 0);
 variable VAR_UNARY_OP_NOT_bit_math_h_l49_c24_b339_return_output : unsigned(22 downto 0);
 variable VAR_rv : unsigned(22 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l52_c6_7789_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l52_c6_7789_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_bit_math_h_l52_c6_7789_return_output : unsigned(0 downto 0);
 variable VAR_rv_MUX_bit_math_h_l52_c3_3318_iftrue : unsigned(22 downto 0);
 variable VAR_rv_MUX_bit_math_h_l52_c3_3318_iffalse : unsigned(22 downto 0);
 variable VAR_rv_bit_math_h_l58_c5_7bb9 : unsigned(22 downto 0);
 variable VAR_rv_MUX_bit_math_h_l52_c3_3318_return_output : unsigned(22 downto 0);
 variable VAR_rv_MUX_bit_math_h_l52_c3_3318_cond : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_MINUS_bit_math_h_l45_c19_4395_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_bit_math_h_l52_c6_7789_right := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     VAR_rv_bit_math_h_l58_c5_7bb9 := resize(unsigned(std_logic_vector(VAR_x)),23);
     VAR_x_uint_bit_math_h_l41_c3_431c := resize(unsigned(std_logic_vector(VAR_x)),23);
     VAR_rv_MUX_bit_math_h_l52_c3_3318_iffalse := VAR_rv_bit_math_h_l58_c5_7bb9;
     VAR_BIN_OP_MINUS_bit_math_h_l45_c19_4395_left := VAR_x_uint_bit_math_h_l41_c3_431c;
     -- BIN_OP_MINUS[bit_math_h_l45_c19_4395] LATENCY=1
     -- Inputs
     BIN_OP_MINUS_bit_math_h_l45_c19_4395_left <= VAR_BIN_OP_MINUS_bit_math_h_l45_c19_4395_left;
     BIN_OP_MINUS_bit_math_h_l45_c19_4395_right <= VAR_BIN_OP_MINUS_bit_math_h_l45_c19_4395_right;

     -- int23_22_22[bit_math_h_l37_c10_3b5d] LATENCY=0
     VAR_int23_22_22_bit_math_h_l37_c10_3b5d_return_output := int23_22_22(
     VAR_x);

     -- Submodule level 1
     VAR_BIN_OP_EQ_bit_math_h_l52_c6_7789_left := VAR_int23_22_22_bit_math_h_l37_c10_3b5d_return_output;
     -- BIN_OP_EQ[bit_math_h_l52_c6_7789] LATENCY=1
     -- Inputs
     BIN_OP_EQ_bit_math_h_l52_c6_7789_left <= VAR_BIN_OP_EQ_bit_math_h_l52_c6_7789_left;
     BIN_OP_EQ_bit_math_h_l52_c6_7789_right <= VAR_BIN_OP_EQ_bit_math_h_l52_c6_7789_right;

     -- Write to comb signals
     COMB_STAGE0_rv_MUX_bit_math_h_l52_c3_3318_iffalse <= VAR_rv_MUX_bit_math_h_l52_c3_3318_iffalse;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_rv_MUX_bit_math_h_l52_c3_3318_iffalse := REG_STAGE0_rv_MUX_bit_math_h_l52_c3_3318_iffalse;
     -- Submodule outputs
     VAR_BIN_OP_EQ_bit_math_h_l52_c6_7789_return_output := BIN_OP_EQ_bit_math_h_l52_c6_7789_return_output;
     VAR_BIN_OP_MINUS_bit_math_h_l45_c19_4395_return_output := BIN_OP_MINUS_bit_math_h_l45_c19_4395_return_output;

     -- Submodule level 0
     VAR_rv_MUX_bit_math_h_l52_c3_3318_cond := VAR_BIN_OP_EQ_bit_math_h_l52_c6_7789_return_output;
     VAR_UNARY_OP_NOT_bit_math_h_l49_c24_b339_expr := VAR_BIN_OP_MINUS_bit_math_h_l45_c19_4395_return_output;
     -- UNARY_OP_NOT[bit_math_h_l49_c24_b339] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_bit_math_h_l49_c24_b339_expr <= VAR_UNARY_OP_NOT_bit_math_h_l49_c24_b339_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_bit_math_h_l49_c24_b339_return_output := UNARY_OP_NOT_bit_math_h_l49_c24_b339_return_output;

     -- Submodule level 1
     VAR_rv_MUX_bit_math_h_l52_c3_3318_iftrue := VAR_UNARY_OP_NOT_bit_math_h_l49_c24_b339_return_output;
     -- rv_MUX[bit_math_h_l52_c3_3318] LATENCY=0
     -- Inputs
     rv_MUX_bit_math_h_l52_c3_3318_cond <= VAR_rv_MUX_bit_math_h_l52_c3_3318_cond;
     rv_MUX_bit_math_h_l52_c3_3318_iftrue <= VAR_rv_MUX_bit_math_h_l52_c3_3318_iftrue;
     rv_MUX_bit_math_h_l52_c3_3318_iffalse <= VAR_rv_MUX_bit_math_h_l52_c3_3318_iffalse;
     -- Outputs
     VAR_rv_MUX_bit_math_h_l52_c3_3318_return_output := rv_MUX_bit_math_h_l52_c3_3318_return_output;

     -- Submodule level 2
     VAR_return_output := VAR_rv_MUX_bit_math_h_l52_c3_3318_return_output;
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
     REG_STAGE0_rv_MUX_bit_math_h_l52_c3_3318_iffalse <= COMB_STAGE0_rv_MUX_bit_math_h_l52_c3_3318_iffalse;
 end if;
end process;

end arch;
