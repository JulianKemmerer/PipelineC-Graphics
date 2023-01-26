-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.8314169221185305]
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
entity color_max_1CLK_71e85ea2 is
port(
 clk : in std_logic;
 a : in fixed;
 b : in fixed;
 return_output : out fixed);
end color_max_1CLK_71e85ea2;
architecture arch of color_max_1CLK_71e85ea2 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;
-- All of the wires/regs in function
-- Stage 0
-- Each function instance gets signals
-- fixed_gt[tr_pipelinec_gen_c_l87_c10_b4da]
signal fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_left : fixed;
signal fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_right : fixed;
signal fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_return_output : unsigned(0 downto 0);

-- MUX[tr_pipelinec_gen_c_l87_c10_18cd]
signal MUX_tr_pipelinec_gen_c_l87_c10_18cd_cond : unsigned(0 downto 0);
signal MUX_tr_pipelinec_gen_c_l87_c10_18cd_iftrue : fixed;
signal MUX_tr_pipelinec_gen_c_l87_c10_18cd_iffalse : fixed;
signal MUX_tr_pipelinec_gen_c_l87_c10_18cd_return_output : fixed;


begin

-- SUBMODULE INSTANCES 
-- fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da
fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da : entity work.fixed_gt_0CLK_380ecc95 port map (
fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_left,
fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_right,
fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_return_output);

-- MUX_tr_pipelinec_gen_c_l87_c10_18cd
MUX_tr_pipelinec_gen_c_l87_c10_18cd : entity work.MUX_uint1_t_fixed_fixed_1CLK_6b87fe4c port map (
clk,
MUX_tr_pipelinec_gen_c_l87_c10_18cd_cond,
MUX_tr_pipelinec_gen_c_l87_c10_18cd_iftrue,
MUX_tr_pipelinec_gen_c_l87_c10_18cd_iffalse,
MUX_tr_pipelinec_gen_c_l87_c10_18cd_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 a,
 b,
 -- Registers
 -- Stage 0
 -- All submodule outputs
 fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_return_output,
 MUX_tr_pipelinec_gen_c_l87_c10_18cd_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : fixed;
 variable VAR_a : fixed;
 variable VAR_b : fixed;
 variable VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_cond : unsigned(0 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_iftrue : fixed;
 variable VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_iffalse : fixed;
 variable VAR_fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_left : fixed;
 variable VAR_fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_right : fixed;
 variable VAR_fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_return_output : unsigned(0 downto 0);
 variable VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_return_output : fixed;
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_a := a;
     VAR_b := b;

     -- Submodule level 0
     VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_iftrue := VAR_a;
     VAR_fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_left := VAR_a;
     VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_iffalse := VAR_b;
     VAR_fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_right := VAR_b;
     -- fixed_gt[tr_pipelinec_gen_c_l87_c10_b4da] LATENCY=0
     -- Inputs
     fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_left <= VAR_fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_left;
     fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_right <= VAR_fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_right;
     -- Outputs
     VAR_fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_return_output := fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_return_output;

     -- Submodule level 1
     VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_cond := VAR_fixed_gt_tr_pipelinec_gen_c_l87_c10_b4da_return_output;
     -- MUX[tr_pipelinec_gen_c_l87_c10_18cd] LATENCY=1
     -- Inputs
     MUX_tr_pipelinec_gen_c_l87_c10_18cd_cond <= VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_cond;
     MUX_tr_pipelinec_gen_c_l87_c10_18cd_iftrue <= VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_iftrue;
     MUX_tr_pipelinec_gen_c_l87_c10_18cd_iffalse <= VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_iffalse;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_return_output := MUX_tr_pipelinec_gen_c_l87_c10_18cd_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_MUX_tr_pipelinec_gen_c_l87_c10_18cd_return_output;
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
