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
entity UNARY_OP_NEGATE_int16_t_0CLK_23f04728 is
port(
 expr : in signed(15 downto 0);
 return_output : out signed(16 downto 0));
end UNARY_OP_NEGATE_int16_t_0CLK_23f04728;
architecture arch of UNARY_OP_NEGATE_int16_t_0CLK_23f04728 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- UNARY_OP_NOT[UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea]
signal UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_expr : unsigned(16 downto 0);
signal UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_return_output : unsigned(16 downto 0);

-- BIN_OP_PLUS[UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8]
signal BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_left : unsigned(16 downto 0);
signal BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_return_output : unsigned(17 downto 0);


begin

-- SUBMODULE INSTANCES 
-- UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea
UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea : entity work.UNARY_OP_NOT_uint17_t_0CLK_de264c78 port map (
UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_expr,
UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_return_output);

-- BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8
BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8 : entity work.BIN_OP_PLUS_uint17_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_left,
BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_right,
BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 expr,
 -- All submodule outputs
 UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_return_output,
 BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_expr : signed(15 downto 0);
 variable VAR_return_output : signed(16 downto 0);
 variable VAR_x_wide : unsigned(16 downto 0);
 variable VAR_x_wide_UNARY_OP_NEGATE_int16_t_c_l10_c3_f061 : unsigned(16 downto 0);
 variable VAR_x_wide_neg : unsigned(16 downto 0);
 variable VAR_UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_expr : unsigned(16 downto 0);
 variable VAR_UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_return_output : unsigned(16 downto 0);
 variable VAR_x_neg_wide_plus1 : unsigned(16 downto 0);
 variable VAR_x_neg_wide_plus1_UNARY_OP_NEGATE_int16_t_c_l16_c3_dac4 : unsigned(16 downto 0);
 variable VAR_BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_left : unsigned(16 downto 0);
 variable VAR_BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_return_output : unsigned(17 downto 0);
 variable VAR_rv : signed(16 downto 0);
 variable VAR_rv_UNARY_OP_NEGATE_int16_t_c_l19_c3_3714 : signed(16 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_right := to_unsigned(1, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_expr := expr;

     -- Submodule level 0
     VAR_x_wide_UNARY_OP_NEGATE_int16_t_c_l10_c3_f061 := unsigned(std_logic_vector(resize(VAR_expr,17)));
     VAR_UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_expr := VAR_x_wide_UNARY_OP_NEGATE_int16_t_c_l10_c3_f061;
     -- UNARY_OP_NOT[UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_expr <= VAR_UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_return_output := UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_return_output;

     -- Submodule level 1
     VAR_BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_left := VAR_UNARY_OP_NOT_UNARY_OP_NEGATE_int16_t_c_l13_c17_63ea_return_output;
     -- BIN_OP_PLUS[UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_left <= VAR_BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_left;
     BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_right <= VAR_BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_right;
     -- Outputs
     VAR_BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_return_output := BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_return_output;

     -- Submodule level 2
     VAR_x_neg_wide_plus1_UNARY_OP_NEGATE_int16_t_c_l16_c3_dac4 := resize(VAR_BIN_OP_PLUS_UNARY_OP_NEGATE_int16_t_c_l16_c22_b5b8_return_output, 17);
     VAR_rv_UNARY_OP_NEGATE_int16_t_c_l19_c3_3714 := signed(std_logic_vector(resize(VAR_x_neg_wide_plus1_UNARY_OP_NEGATE_int16_t_c_l16_c3_dac4, 17)));
     VAR_return_output := VAR_rv_UNARY_OP_NEGATE_int16_t_c_l19_c3_3714;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
