-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.2350991951041837, 0.5454502139046236, 0.8558012327050589]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 3
entity color_select_6CLK_20edd937 is
port(
 clk : in std_logic;
 x : in fixed;
 a : in fixed3;
 b : in fixed3;
 return_output : out fixed3);
end color_select_6CLK_20edd937;
architecture arch of color_select_6CLK_20edd937 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 6;
-- All of the wires/regs in function
-- Stage 0
signal REG_STAGE0_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
signal COMB_STAGE0_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
-- Stage 1
signal REG_STAGE1_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
signal COMB_STAGE1_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
-- Stage 2
signal REG_STAGE2_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
signal COMB_STAGE2_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
-- Stage 3
signal REG_STAGE3_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
signal COMB_STAGE3_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
-- Stage 4
signal REG_STAGE4_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
signal COMB_STAGE4_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
-- Stage 5
-- Each function instance gets signals
-- fixed3_sub[tr_pipelinec_gen_c_l82_c42_64c0]
signal fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_left : fixed3;
signal fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_right : fixed3;
signal fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_return_output : fixed3;

-- fixed3_mul_fixed[tr_pipelinec_gen_c_l82_c24_82f7]
signal fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_left : fixed3;
signal fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_right : fixed;
signal fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_return_output : fixed3;

-- fixed3_add[tr_pipelinec_gen_c_l82_c10_def4]
signal fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
signal fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_right : fixed3;
signal fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_return_output : fixed3;


begin

-- SUBMODULE INSTANCES 
-- fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0
fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0 : entity work.fixed3_sub_0CLK_f982eca9 port map (
fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_left,
fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_right,
fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_return_output);

-- fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7
fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7 : entity work.fixed3_mul_fixed_5CLK_c4855664 port map (
clk,
fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_left,
fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_right,
fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_return_output);

-- fixed3_add_tr_pipelinec_gen_c_l82_c10_def4
fixed3_add_tr_pipelinec_gen_c_l82_c10_def4 : entity work.fixed3_add_1CLK_ed170dad port map (
clk,
fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left,
fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_right,
fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 a,
 b,
 -- Registers
 -- Stage 0
 REG_STAGE0_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left,
 -- Stage 1
 REG_STAGE1_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left,
 -- Stage 2
 REG_STAGE2_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left,
 -- Stage 3
 REG_STAGE3_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left,
 -- Stage 4
 REG_STAGE4_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left,
 -- Stage 5
 -- All submodule outputs
 fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_return_output,
 fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_return_output,
 fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed3;
 variable VAR_x : fixed;
 variable VAR_a : fixed3;
 variable VAR_b : fixed3;
 variable VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left : fixed3;
 variable VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_right : fixed3;
 variable VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_left : fixed3;
 variable VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_right : fixed;
 variable VAR_fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_left : fixed3;
 variable VAR_fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_right : fixed3;
 variable VAR_fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_return_output : fixed3;
 variable VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_return_output : fixed3;
 variable VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_return_output : fixed3;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;
     VAR_a := a;
     VAR_b := b;

     -- Submodule level 0
     VAR_fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_left := VAR_a;
     VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left := VAR_b;
     VAR_fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_right := VAR_b;
     VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_right := VAR_x;
     -- fixed3_sub[tr_pipelinec_gen_c_l82_c42_64c0] LATENCY=0
     -- Inputs
     fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_left <= VAR_fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_left;
     fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_right <= VAR_fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_right;
     -- Outputs
     VAR_fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_return_output := fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_return_output;

     -- Submodule level 1
     VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_left := VAR_fixed3_sub_tr_pipelinec_gen_c_l82_c42_64c0_return_output;
     -- fixed3_mul_fixed[tr_pipelinec_gen_c_l82_c24_82f7] LATENCY=5
     -- Inputs
     fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_left <= VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_left;
     fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_right <= VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_right;

     -- Write to comb signals
     COMB_STAGE0_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
   elsif STAGE = 1 then
     -- Read from prev stage
     VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left := REG_STAGE0_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;

     -- Write to comb signals
     COMB_STAGE1_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
   elsif STAGE = 2 then
     -- Read from prev stage
     VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left := REG_STAGE1_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;

     -- Write to comb signals
     COMB_STAGE2_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
   elsif STAGE = 3 then
     -- Read from prev stage
     VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left := REG_STAGE2_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;

     -- Write to comb signals
     COMB_STAGE3_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
   elsif STAGE = 4 then
     -- Read from prev stage
     VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left := REG_STAGE3_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;

     -- Write to comb signals
     COMB_STAGE4_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
   elsif STAGE = 5 then
     -- Read from prev stage
     VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left := REG_STAGE4_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
     -- Submodule outputs
     VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_return_output := fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_return_output;

     -- Submodule level 0
     VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_right := VAR_fixed3_mul_fixed_tr_pipelinec_gen_c_l82_c24_82f7_return_output;
     -- fixed3_add[tr_pipelinec_gen_c_l82_c10_def4] LATENCY=1
     -- Inputs
     fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
     fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_right <= VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_right;

     -- Write to comb signals
   elsif STAGE = 6 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_return_output := fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_return_output;
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
     REG_STAGE0_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= COMB_STAGE0_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
     -- Stage 1
     REG_STAGE1_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= COMB_STAGE1_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
     -- Stage 2
     REG_STAGE2_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= COMB_STAGE2_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
     -- Stage 3
     REG_STAGE3_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= COMB_STAGE3_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
     -- Stage 4
     REG_STAGE4_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left <= COMB_STAGE4_fixed3_add_tr_pipelinec_gen_c_l82_c10_def4_left;
     -- Stage 5
 end if;
end process;

end arch;
