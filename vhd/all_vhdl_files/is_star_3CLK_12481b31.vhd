-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.2953377558184453, 0.7117581101582776]
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
entity is_star_3CLK_12481b31 is
port(
 clk : in std_logic;
 x : in std_logic_vector(22 downto 0);
 y : in std_logic_vector(22 downto 0);
 return_output : out unsigned(0 downto 0));
end is_star_3CLK_12481b31;
architecture arch of is_star_3CLK_12481b31 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 3;
-- All of the wires/regs in function
-- Stage 0
-- Stage 1
-- Stage 2
-- Each function instance gets signals
-- hashf[tr_pipelinec_gen_c_l389_c12_22ee]
signal hashf_tr_pipelinec_gen_c_l389_c12_22ee_f : std_logic_vector(22 downto 0);
signal hashf_tr_pipelinec_gen_c_l389_c12_22ee_return_output : unsigned(15 downto 0);

-- CONST_SR_2[tr_pipelinec_gen_c_l389_c12_6abc]
signal CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_x : unsigned(15 downto 0);
signal CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_return_output : unsigned(15 downto 0);

-- hashf[tr_pipelinec_gen_c_l389_c30_a51e]
signal hashf_tr_pipelinec_gen_c_l389_c30_a51e_f : std_logic_vector(22 downto 0);
signal hashf_tr_pipelinec_gen_c_l389_c30_a51e_return_output : unsigned(15 downto 0);

-- CONST_SR_2[tr_pipelinec_gen_c_l389_c30_f166]
signal CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_x : unsigned(15 downto 0);
signal CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_return_output : unsigned(15 downto 0);

-- BIN_OP_AND[tr_pipelinec_gen_c_l389_c12_e72f]
signal BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_left : unsigned(15 downto 0);
signal BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_right : unsigned(15 downto 0);
signal BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_return_output : unsigned(15 downto 0);

-- BIN_OP_GT[tr_pipelinec_gen_c_l389_c12_d5a8]
signal BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_left : unsigned(15 downto 0);
signal BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_right : unsigned(13 downto 0);
signal BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_return_output : unsigned(0 downto 0);


begin

-- SUBMODULE INSTANCES 
-- hashf_tr_pipelinec_gen_c_l389_c12_22ee
hashf_tr_pipelinec_gen_c_l389_c12_22ee : entity work.hashf_2CLK_f336b191 port map (
clk,
hashf_tr_pipelinec_gen_c_l389_c12_22ee_f,
hashf_tr_pipelinec_gen_c_l389_c12_22ee_return_output);

-- CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc
CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc : entity work.CONST_SR_2_uint16_t_0CLK_de264c78 port map (
CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_x,
CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_return_output);

-- hashf_tr_pipelinec_gen_c_l389_c30_a51e
hashf_tr_pipelinec_gen_c_l389_c30_a51e : entity work.hashf_2CLK_f336b191 port map (
clk,
hashf_tr_pipelinec_gen_c_l389_c30_a51e_f,
hashf_tr_pipelinec_gen_c_l389_c30_a51e_return_output);

-- CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166
CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166 : entity work.CONST_SR_2_uint16_t_0CLK_de264c78 port map (
CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_x,
CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_return_output);

-- BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f
BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f : entity work.BIN_OP_AND_uint16_t_uint16_t_1CLK_90dbb3c4 port map (
clk,
BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_left,
BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_right,
BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_return_output);

-- BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8
BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8 : entity work.BIN_OP_GT_uint16_t_uint14_t_0CLK_de264c78 port map (
BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_left,
BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_right,
BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 x,
 y,
 -- Registers
 -- Stage 0
 -- Stage 1
 -- Stage 2
 -- All submodule outputs
 hashf_tr_pipelinec_gen_c_l389_c12_22ee_return_output,
 CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_return_output,
 hashf_tr_pipelinec_gen_c_l389_c30_a51e_return_output,
 CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_return_output,
 BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_return_output,
 BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_x : std_logic_vector(22 downto 0);
 variable VAR_y : std_logic_vector(22 downto 0);
 variable VAR_hashf_tr_pipelinec_gen_c_l389_c12_22ee_f : std_logic_vector(22 downto 0);
 variable VAR_hashf_tr_pipelinec_gen_c_l389_c12_22ee_return_output : unsigned(15 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_left : unsigned(15 downto 0);
 variable VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_return_output : unsigned(15 downto 0);
 variable VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_x : unsigned(15 downto 0);
 variable VAR_hashf_tr_pipelinec_gen_c_l389_c30_a51e_f : std_logic_vector(22 downto 0);
 variable VAR_hashf_tr_pipelinec_gen_c_l389_c30_a51e_return_output : unsigned(15 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_right : unsigned(15 downto 0);
 variable VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_return_output : unsigned(15 downto 0);
 variable VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_x : unsigned(15 downto 0);
 variable VAR_BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_return_output : unsigned(15 downto 0);
 variable VAR_BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_right : unsigned(13 downto 0);
 variable VAR_BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_return_output : unsigned(0 downto 0);
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_right := to_unsigned(15872, 14);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_x := x;
     VAR_y := y;

     -- Submodule level 0
     VAR_hashf_tr_pipelinec_gen_c_l389_c12_22ee_f := VAR_x;
     VAR_hashf_tr_pipelinec_gen_c_l389_c30_a51e_f := VAR_y;
     -- hashf[tr_pipelinec_gen_c_l389_c12_22ee] LATENCY=2
     -- Inputs
     hashf_tr_pipelinec_gen_c_l389_c12_22ee_f <= VAR_hashf_tr_pipelinec_gen_c_l389_c12_22ee_f;

     -- hashf[tr_pipelinec_gen_c_l389_c30_a51e] LATENCY=2
     -- Inputs
     hashf_tr_pipelinec_gen_c_l389_c30_a51e_f <= VAR_hashf_tr_pipelinec_gen_c_l389_c30_a51e_f;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 2 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_hashf_tr_pipelinec_gen_c_l389_c12_22ee_return_output := hashf_tr_pipelinec_gen_c_l389_c12_22ee_return_output;
     VAR_hashf_tr_pipelinec_gen_c_l389_c30_a51e_return_output := hashf_tr_pipelinec_gen_c_l389_c30_a51e_return_output;

     -- Submodule level 0
     VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_x := VAR_hashf_tr_pipelinec_gen_c_l389_c12_22ee_return_output;
     VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_x := VAR_hashf_tr_pipelinec_gen_c_l389_c30_a51e_return_output;
     -- CONST_SR_2[tr_pipelinec_gen_c_l389_c30_f166] LATENCY=0
     -- Inputs
     CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_x <= VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_x;
     -- Outputs
     VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_return_output := CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_return_output;

     -- CONST_SR_2[tr_pipelinec_gen_c_l389_c12_6abc] LATENCY=0
     -- Inputs
     CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_x <= VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_x;
     -- Outputs
     VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_return_output := CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_left := VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c12_6abc_return_output;
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_right := VAR_CONST_SR_2_tr_pipelinec_gen_c_l389_c30_f166_return_output;
     -- BIN_OP_AND[tr_pipelinec_gen_c_l389_c12_e72f] LATENCY=1
     -- Inputs
     BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_left <= VAR_BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_left;
     BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_right <= VAR_BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_right;

     -- Write to comb signals
   elsif STAGE = 3 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_return_output := BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_return_output;

     -- Submodule level 0
     VAR_BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_left := VAR_BIN_OP_AND_tr_pipelinec_gen_c_l389_c12_e72f_return_output;
     -- BIN_OP_GT[tr_pipelinec_gen_c_l389_c12_d5a8] LATENCY=0
     -- Inputs
     BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_left <= VAR_BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_left;
     BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_right <= VAR_BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_right;
     -- Outputs
     VAR_BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_return_output := BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_return_output;

     -- Submodule level 1
     VAR_return_output := VAR_BIN_OP_GT_tr_pipelinec_gen_c_l389_c12_d5a8_return_output;
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
     -- Stage 1
     -- Stage 2
 end if;
end process;

end arch;
