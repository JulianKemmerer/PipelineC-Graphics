-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.4657831381011642]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 6
entity background_color_5CLK_890b8db0 is
port(
 clk : in std_logic;
 dir_y : in std_logic_vector(22 downto 0);
 return_output : out fixed3);
end background_color_5CLK_890b8db0;
architecture arch of background_color_5CLK_890b8db0 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 5;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
signal COMB_STAGE0_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
-- Stage 1
signal REG_STAGE1_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
signal COMB_STAGE1_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
-- Stage 2
signal REG_STAGE2_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
signal COMB_STAGE2_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
-- Stage 3
signal REG_STAGE3_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
signal COMB_STAGE3_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
-- Stage 4
signal REG_STAGE4_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
signal COMB_STAGE4_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
-- Each function instance gets signals
-- fixed_make_from_double[tr_pipelinec_gen_c_l334_c40_f5a7]
signal fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_a : std_logic_vector(22 downto 0);
signal fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_return_output : fixed;

-- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l334_c105_c5f4]
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_left : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_right : std_logic_vector(22 downto 0);
signal BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_return_output : std_logic_vector(22 downto 0);

-- fixed_make_from_float[tr_pipelinec_gen_c_l334_c83_9761]
signal fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_a : std_logic_vector(22 downto 0);
signal fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_return_output : fixed;

-- MUX[tr_pipelinec_gen_c_l334_c13_5174]
signal MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
signal MUX_tr_pipelinec_gen_c_l334_c13_5174_iftrue : fixed;
signal MUX_tr_pipelinec_gen_c_l334_c13_5174_iffalse : fixed;
signal MUX_tr_pipelinec_gen_c_l334_c13_5174_return_output : fixed;

-- fixed3_make_from_fixed[tr_pipelinec_gen_c_l335_c10_b986]
signal fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_left : fixed;
signal fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_return_output : fixed3;

function float_8_14_t_sign( x : std_logic_vector) return unsigned is

  --variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(0 downto 0);

begin

    return_output(0) := x(x'left); -- left most sign bit
    return return_output;

end function;


begin

-- SUBMODULE INSTANCES 
-- fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7
fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7 : entity work.fixed_make_from_double_0CLK_38477f9e port map (
fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_a,
fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_return_output);

-- BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4 : entity work.BIN_OP_INFERRED_MULT_float_8_14_t_float_8_14_t_2CLK_7f854316 port map (
clk,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_left,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_right,
BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_return_output);

-- fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761
fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761 : entity work.fixed_make_from_float_3CLK_ddf017a3 port map (
clk,
fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_a,
fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_return_output);

-- MUX_tr_pipelinec_gen_c_l334_c13_5174
MUX_tr_pipelinec_gen_c_l334_c13_5174 : entity work.MUX_uint1_t_fixed_fixed_0CLK_de264c78 port map (
MUX_tr_pipelinec_gen_c_l334_c13_5174_cond,
MUX_tr_pipelinec_gen_c_l334_c13_5174_iftrue,
MUX_tr_pipelinec_gen_c_l334_c13_5174_iffalse,
MUX_tr_pipelinec_gen_c_l334_c13_5174_return_output);

-- fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986
fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986 : entity work.fixed3_make_from_fixed_0CLK_b45f1687 port map (
fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_left,
fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 dir_y,
 -- Registers
 -- Stage 0
 REG_STAGE0_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond,
 -- Stage 1
 REG_STAGE1_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond,
 -- Stage 2
 REG_STAGE2_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond,
 -- Stage 3
 REG_STAGE3_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond,
 -- Stage 4
 REG_STAGE4_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond,
 -- All submodule outputs
 fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_return_output,
 BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_return_output,
 fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_return_output,
 MUX_tr_pipelinec_gen_c_l334_c13_5174_return_output,
 fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed3;
 variable VAR_dir_y : std_logic_vector(22 downto 0);
 variable VAR_y : fixed;
 variable VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond : unsigned(0 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_iftrue : fixed;
 variable VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_iffalse : fixed;
 variable VAR_float_8_14_t_sign_tr_pipelinec_gen_c_l334_c13_422b_return_output : unsigned(0 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_a : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_return_output : fixed;
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_a : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_left : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_right : std_logic_vector(22 downto 0);
 variable VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_return_output : std_logic_vector(22 downto 0);
 variable VAR_fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_return_output : fixed;
 variable VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_return_output : fixed;
 variable VAR_fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_left : fixed;
 variable VAR_fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_return_output : fixed3;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_a := to_slv(to_float(0.0, 8, 14));
     -- fixed_make_from_double[tr_pipelinec_gen_c_l334_c40_f5a7] LATENCY=0
     -- Inputs
     fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_a <= VAR_fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_a;
     -- Outputs
     VAR_fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_return_output := fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_return_output;

     -- Submodule level 1
     VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_iftrue := VAR_fixed_make_from_double_tr_pipelinec_gen_c_l334_c40_f5a7_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_dir_y := dir_y;

     -- Submodule level 0
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_left := VAR_dir_y;
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_right := VAR_dir_y;
     -- BIN_OP_INFERRED_MULT[tr_pipelinec_gen_c_l334_c105_c5f4] LATENCY=2
     -- Inputs
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_left <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_left;
     BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_right <= VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_right;

     -- float_8_14_t_sign[tr_pipelinec_gen_c_l334_c13_422b] LATENCY=0
     VAR_float_8_14_t_sign_tr_pipelinec_gen_c_l334_c13_422b_return_output := float_8_14_t_sign(
     VAR_dir_y);

     -- Submodule level 1
     VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond := VAR_float_8_14_t_sign_tr_pipelinec_gen_c_l334_c13_422b_return_output;
     -- Write to comb signals
     COMB_STAGE0_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond := REG_STAGE0_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;

     -- Write to comb signals
     COMB_STAGE1_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
   elsif STAGE = 2 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond := REG_STAGE1_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
     -- Submodule outputs
     VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_return_output := BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_return_output;

     -- Submodule level 0
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_a := VAR_BIN_OP_INFERRED_MULT_tr_pipelinec_gen_c_l334_c105_c5f4_return_output;
     -- fixed_make_from_float[tr_pipelinec_gen_c_l334_c83_9761] LATENCY=3
     -- Inputs
     fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_a <= VAR_fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_a;

     -- Write to comb signals
     COMB_STAGE2_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
   elsif STAGE = 3 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond := REG_STAGE2_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;

     -- Write to comb signals
     COMB_STAGE3_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond := REG_STAGE3_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;

     -- Write to comb signals
     COMB_STAGE4_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond := REG_STAGE4_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
     -- Submodule outputs
     VAR_fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_return_output := fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_return_output;

     -- Submodule level 0
     VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_iffalse := VAR_fixed_make_from_float_tr_pipelinec_gen_c_l334_c83_9761_return_output;
     -- MUX[tr_pipelinec_gen_c_l334_c13_5174] LATENCY=0
     -- Inputs
     MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
     MUX_tr_pipelinec_gen_c_l334_c13_5174_iftrue <= VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_iftrue;
     MUX_tr_pipelinec_gen_c_l334_c13_5174_iffalse <= VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_iffalse;
     -- Outputs
     VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_return_output := MUX_tr_pipelinec_gen_c_l334_c13_5174_return_output;

     -- Submodule level 1
     VAR_fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_left := VAR_MUX_tr_pipelinec_gen_c_l334_c13_5174_return_output;
     -- fixed3_make_from_fixed[tr_pipelinec_gen_c_l335_c10_b986] LATENCY=0
     -- Inputs
     fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_left <= VAR_fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_left;
     -- Outputs
     VAR_fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_return_output := fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_return_output;

     -- Submodule level 2
     VAR_return_output := VAR_fixed3_make_from_fixed_tr_pipelinec_gen_c_l335_c10_b986_return_output;
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
     REG_STAGE0_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= COMB_STAGE0_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
     -- Stage 1
     REG_STAGE1_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= COMB_STAGE1_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
     -- Stage 2
     REG_STAGE2_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= COMB_STAGE2_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
     -- Stage 3
     REG_STAGE3_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= COMB_STAGE3_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
     -- Stage 4
     REG_STAGE4_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond <= COMB_STAGE4_MUX_tr_pipelinec_gen_c_l334_c13_5174_cond;
 end if;
end process;

end arch;
