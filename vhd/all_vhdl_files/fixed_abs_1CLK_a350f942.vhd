-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.9726610836585207]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 4
entity fixed_abs_1CLK_a350f942 is
port(
 clk : in std_logic;
 x : in fixed;
 return_output : out fixed);
end fixed_abs_1CLK_a350f942;
architecture arch of fixed_abs_1CLK_a350f942 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;
-- All of the wires/regs in function
-- Stage 0
-- Each function instance gets signals
-- fixed_is_negative[tr_pipelinec_gen_c_l55_c10_2666]
signal fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_x : fixed;
signal fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_return_output : unsigned(0 downto 0);

-- fixed_make_from_int[tr_pipelinec_gen_c_l55_c43_3017]
signal fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_a : signed(31 downto 0);
signal fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_return_output : fixed;

-- fixed_sub[tr_pipelinec_gen_c_l55_c33_83bb]
signal fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_left : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_right : fixed;
signal fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_return_output : fixed;

-- MUX[tr_pipelinec_gen_c_l55_c10_5df7]
signal MUX_tr_pipelinec_gen_c_l55_c10_5df7_cond : unsigned(0 downto 0);
signal MUX_tr_pipelinec_gen_c_l55_c10_5df7_iftrue : fixed;
signal MUX_tr_pipelinec_gen_c_l55_c10_5df7_iffalse : fixed;
signal MUX_tr_pipelinec_gen_c_l55_c10_5df7_return_output : fixed;


begin

-- SUBMODULE INSTANCES 
-- fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666
fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666 : entity work.fixed_is_negative_0CLK_23f04728 port map (
fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_x,
fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_return_output);

-- fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017
fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017 : entity work.fixed_make_from_int_0CLK_23f04728 port map (
fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_a,
fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_return_output);

-- fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb
fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb : entity work.fixed_sub_0CLK_6f2c5aad port map (
fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_left,
fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_right,
fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_return_output);

-- MUX_tr_pipelinec_gen_c_l55_c10_5df7
MUX_tr_pipelinec_gen_c_l55_c10_5df7 : entity work.MUX_uint1_t_fixed_fixed_1CLK_b7b0a9f1 port map (
clk,
MUX_tr_pipelinec_gen_c_l55_c10_5df7_cond,
MUX_tr_pipelinec_gen_c_l55_c10_5df7_iftrue,
MUX_tr_pipelinec_gen_c_l55_c10_5df7_iffalse,
MUX_tr_pipelinec_gen_c_l55_c10_5df7_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 -- Registers
 -- Stage 0
 -- All submodule outputs
 fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_return_output,
 fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_return_output,
 fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_return_output,
 MUX_tr_pipelinec_gen_c_l55_c10_5df7_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_x : fixed;
 variable VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_cond : unsigned(0 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_iftrue : fixed;
 variable VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_iffalse : fixed;
 variable VAR_fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_x : fixed;
 variable VAR_fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_return_output : unsigned(0 downto 0);
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_left : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_right : fixed;
 variable VAR_fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_a : signed(31 downto 0);
 variable VAR_fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_return_output : fixed;
 variable VAR_fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_return_output : fixed;
 variable VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_return_output : fixed;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_a := signed(std_logic_vector(resize(to_unsigned(0, 1), 32)));
     -- fixed_make_from_int[tr_pipelinec_gen_c_l55_c43_3017] LATENCY=0
     -- Inputs
     fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_a <= VAR_fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_a;
     -- Outputs
     VAR_fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_return_output := fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_return_output;

     -- Submodule level 1
     VAR_fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_left := VAR_fixed_make_from_int_tr_pipelinec_gen_c_l55_c43_3017_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;

     -- Submodule level 0
     VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_iffalse := VAR_x;
     VAR_fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_x := VAR_x;
     VAR_fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_right := VAR_x;
     -- fixed_sub[tr_pipelinec_gen_c_l55_c33_83bb] LATENCY=0
     -- Inputs
     fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_left <= VAR_fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_left;
     fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_right <= VAR_fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_right;
     -- Outputs
     VAR_fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_return_output := fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_return_output;

     -- fixed_is_negative[tr_pipelinec_gen_c_l55_c10_2666] LATENCY=0
     -- Inputs
     fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_x <= VAR_fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_x;
     -- Outputs
     VAR_fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_return_output := fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_return_output;

     -- Submodule level 1
     VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_cond := VAR_fixed_is_negative_tr_pipelinec_gen_c_l55_c10_2666_return_output;
     VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_iftrue := VAR_fixed_sub_tr_pipelinec_gen_c_l55_c33_83bb_return_output;
     -- MUX[tr_pipelinec_gen_c_l55_c10_5df7] LATENCY=1
     -- Inputs
     MUX_tr_pipelinec_gen_c_l55_c10_5df7_cond <= VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_cond;
     MUX_tr_pipelinec_gen_c_l55_c10_5df7_iftrue <= VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_iftrue;
     MUX_tr_pipelinec_gen_c_l55_c10_5df7_iffalse <= VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_iffalse;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_return_output := MUX_tr_pipelinec_gen_c_l55_c10_5df7_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_MUX_tr_pipelinec_gen_c_l55_c10_5df7_return_output;
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
 end if;
end process;

end arch;
