-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.5038961685556675]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 7
entity hashf_2CLK_f336b191 is
port(
 clk : in std_logic;
 f : in std_logic_vector(22 downto 0);
 return_output : out unsigned(15 downto 0));
end hashf_2CLK_f336b191;
architecture arch of hashf_2CLK_f336b191 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 2;
-- All of the wires/regs in function
-- Stage 0
-- Stage 1
-- Each function instance gets signals
-- CONST_SL_9[tr_pipelinec_gen_c_l172_c19_8b1b]
signal CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_x : unsigned(31 downto 0);
signal CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_return_output : unsigned(31 downto 0);

-- CONST_SR_23[tr_pipelinec_gen_c_l172_c30_6817]
signal CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_x : unsigned(31 downto 0);
signal CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_return_output : unsigned(31 downto 0);

-- BIN_OP_OR[tr_pipelinec_gen_c_l172_c19_0728]
signal BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_left : unsigned(31 downto 0);
signal BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_right : unsigned(31 downto 0);
signal BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_return_output : unsigned(31 downto 0);

-- CONST_SR_7[tr_pipelinec_gen_c_l172_c43_246c]
signal CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_x : unsigned(31 downto 0);
signal CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_return_output : unsigned(31 downto 0);

-- BIN_OP_XOR[tr_pipelinec_gen_c_l172_c19_0327]
signal BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_left : unsigned(31 downto 0);
signal BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_right : unsigned(31 downto 0);
signal BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_return_output : unsigned(31 downto 0);

-- hash16[tr_pipelinec_gen_c_l172_c10_e5fd]
signal hash16_tr_pipelinec_gen_c_l172_c10_e5fd_v : unsigned(15 downto 0);
signal hash16_tr_pipelinec_gen_c_l172_c10_e5fd_return_output : unsigned(15 downto 0);

function float_8_14_t_22_0( x : std_logic_vector) return unsigned is
--variable x : std_logic_vector(22 downto 0);
  variable return_output : unsigned(22 downto 0);
begin
return_output := unsigned(std_logic_vector(x(22 downto 0)));
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b
CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b : entity work.CONST_SL_9_uint32_t_0CLK_de264c78 port map (
CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_x,
CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_return_output);

-- CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817
CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817 : entity work.CONST_SR_23_uint32_t_0CLK_de264c78 port map (
CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_x,
CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_return_output);

-- BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728
BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728 : entity work.BIN_OP_OR_uint32_t_uint32_t_0CLK_de264c78 port map (
BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_left,
BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_right,
BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_return_output);

-- CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c
CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c : entity work.CONST_SR_7_uint32_t_0CLK_de264c78 port map (
CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_x,
CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_return_output);

-- BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327
BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327 : entity work.BIN_OP_XOR_uint32_t_uint32_t_0CLK_de264c78 port map (
BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_left,
BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_right,
BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_return_output);

-- hash16_tr_pipelinec_gen_c_l172_c10_e5fd
hash16_tr_pipelinec_gen_c_l172_c10_e5fd : entity work.hash16_2CLK_4e804713 port map (
clk,
hash16_tr_pipelinec_gen_c_l172_c10_e5fd_v,
hash16_tr_pipelinec_gen_c_l172_c10_e5fd_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 f,
 -- Registers
 -- Stage 0
 -- Stage 1
 -- All submodule outputs
 CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_return_output,
 CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_return_output,
 BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_return_output,
 CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_return_output,
 BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_return_output,
 hash16_tr_pipelinec_gen_c_l172_c10_e5fd_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : unsigned(15 downto 0);
 variable VAR_f : std_logic_vector(22 downto 0);
 variable VAR_u : unsigned(31 downto 0);
 variable VAR_u_tr_pipelinec_gen_c_l171_c12_52ea_0 : unsigned(31 downto 0);
 variable VAR_float_8_14_t_22_0_tr_pipelinec_gen_c_l171_c16_0ad9_return_output : unsigned(22 downto 0);
 variable VAR_hash16_tr_pipelinec_gen_c_l172_c10_e5fd_v : unsigned(15 downto 0);
 variable VAR_BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_left : unsigned(31 downto 0);
 variable VAR_CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_return_output : unsigned(31 downto 0);
 variable VAR_CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_x : unsigned(31 downto 0);
 variable VAR_BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_right : unsigned(31 downto 0);
 variable VAR_CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_return_output : unsigned(31 downto 0);
 variable VAR_CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_x : unsigned(31 downto 0);
 variable VAR_BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_return_output : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_right : unsigned(31 downto 0);
 variable VAR_CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_return_output : unsigned(31 downto 0);
 variable VAR_CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_x : unsigned(31 downto 0);
 variable VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_return_output : unsigned(31 downto 0);
 variable VAR_hash16_tr_pipelinec_gen_c_l172_c10_e5fd_return_output : unsigned(15 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_f := f;

     -- Submodule level 0
     -- float_8_14_t_22_0[tr_pipelinec_gen_c_l171_c16_0ad9] LATENCY=0
     VAR_float_8_14_t_22_0_tr_pipelinec_gen_c_l171_c16_0ad9_return_output := float_8_14_t_22_0(
     VAR_f);

     -- Submodule level 1
     VAR_u_tr_pipelinec_gen_c_l171_c12_52ea_0 := resize(VAR_float_8_14_t_22_0_tr_pipelinec_gen_c_l171_c16_0ad9_return_output, 32);
     VAR_CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_x := VAR_u_tr_pipelinec_gen_c_l171_c12_52ea_0;
     VAR_CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_x := VAR_u_tr_pipelinec_gen_c_l171_c12_52ea_0;
     VAR_CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_x := VAR_u_tr_pipelinec_gen_c_l171_c12_52ea_0;
     -- CONST_SR_23[tr_pipelinec_gen_c_l172_c30_6817] LATENCY=0
     -- Inputs
     CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_x <= VAR_CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_x;
     -- Outputs
     VAR_CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_return_output := CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_return_output;

     -- CONST_SR_7[tr_pipelinec_gen_c_l172_c43_246c] LATENCY=0
     -- Inputs
     CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_x <= VAR_CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_x;
     -- Outputs
     VAR_CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_return_output := CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_return_output;

     -- CONST_SL_9[tr_pipelinec_gen_c_l172_c19_8b1b] LATENCY=0
     -- Inputs
     CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_x <= VAR_CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_x;
     -- Outputs
     VAR_CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_return_output := CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_return_output;

     -- Submodule level 2
     VAR_BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_left := VAR_CONST_SL_9_tr_pipelinec_gen_c_l172_c19_8b1b_return_output;
     VAR_BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_right := VAR_CONST_SR_23_tr_pipelinec_gen_c_l172_c30_6817_return_output;
     VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_right := VAR_CONST_SR_7_tr_pipelinec_gen_c_l172_c43_246c_return_output;
     -- BIN_OP_OR[tr_pipelinec_gen_c_l172_c19_0728] LATENCY=0
     -- Inputs
     BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_left <= VAR_BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_left;
     BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_right <= VAR_BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_right;
     -- Outputs
     VAR_BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_return_output := BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_return_output;

     -- Submodule level 3
     VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_left := VAR_BIN_OP_OR_tr_pipelinec_gen_c_l172_c19_0728_return_output;
     -- BIN_OP_XOR[tr_pipelinec_gen_c_l172_c19_0327] LATENCY=0
     -- Inputs
     BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_left <= VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_left;
     BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_right <= VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_right;
     -- Outputs
     VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_return_output := BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_return_output;

     -- Submodule level 4
     VAR_hash16_tr_pipelinec_gen_c_l172_c10_e5fd_v := resize(VAR_BIN_OP_XOR_tr_pipelinec_gen_c_l172_c19_0327_return_output, 16);
     -- hash16[tr_pipelinec_gen_c_l172_c10_e5fd] LATENCY=2
     -- Inputs
     hash16_tr_pipelinec_gen_c_l172_c10_e5fd_v <= VAR_hash16_tr_pipelinec_gen_c_l172_c10_e5fd_v;

     -- Write to comb signals
   elsif STAGE = 1 then
     -- Read from prev stage

     -- Write to comb signals
   elsif STAGE = 2 then
     -- Read from prev stage
     -- Submodule outputs
     VAR_hash16_tr_pipelinec_gen_c_l172_c10_e5fd_return_output := hash16_tr_pipelinec_gen_c_l172_c10_e5fd_return_output;

     -- Submodule level 0
     VAR_return_output := VAR_hash16_tr_pipelinec_gen_c_l172_c10_e5fd_return_output;
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
 end if;
end process;

end arch;
