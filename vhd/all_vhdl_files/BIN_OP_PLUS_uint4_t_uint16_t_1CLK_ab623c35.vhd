-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.09878095091028828]
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 0
entity BIN_OP_PLUS_uint4_t_uint16_t_1CLK_ab623c35 is
port(
 clk : in std_logic;
 left : in unsigned(3 downto 0);
 right : in unsigned(15 downto 0);
 return_output : out unsigned(16 downto 0));
end BIN_OP_PLUS_uint4_t_uint16_t_1CLK_ab623c35;
architecture arch of BIN_OP_PLUS_uint4_t_uint16_t_1CLK_ab623c35 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;

-- One struct to represent this modules variables
type raw_hdl_variables_t is record
 -- All of the wires in function

  carry : std_logic_vector(0 downto 0);
  intermediate : std_logic_vector(16 downto 0);
  left_resized : unsigned(15 downto 0);
  right_resized : unsigned(15 downto 0);
  left_range_slv : std_logic_vector(15 downto 0);
  right_range_slv : std_logic_vector(15 downto 0);
  full_width_return_output : unsigned(16 downto 0);
  return_output : unsigned(16 downto 0);
  right : unsigned(15 downto 0);
  left : unsigned(3 downto 0);
end record;

-- Type for this modules register pipeline
type raw_hdl_register_pipeline_t is array(0 to PIPELINE_LATENCY) of raw_hdl_variables_t;
   
  -- Type holding all manually (not auto generated in pipelining) registers for this function
  --  RAW HDL pipeline, user state regs
  type manual_registers_t is record
    raw_hdl_pipeline : raw_hdl_register_pipeline_t; 
  end record;
  
-- Function to null out manual regs 
function manual_registers_NULL return manual_registers_t is
 variable rv : manual_registers_t;
  begin

  return rv;
end function;

-- Manual (not auto pipeline) registers and signals for this function
signal manual_registers : manual_registers_t;
signal manual_registers_r : manual_registers_t := manual_registers_NULL;


begin



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- Registers
 manual_registers_r)
is 
 -- Read and write variables to do register transfers per clock
 -- from the previous to next stage
 variable read_pipe : raw_hdl_variables_t;
 variable write_pipe : raw_hdl_variables_t;

 -- This modules self pipeline registers read once per clock
 variable read_raw_hdl_pipeline_regs : raw_hdl_register_pipeline_t;
 variable write_raw_hdl_pipeline_regs : raw_hdl_register_pipeline_t;
  begin

 -- Raw hdl REGS
 -- Default read raw hdl regs once per clock
 read_raw_hdl_pipeline_regs := manual_registers_r.raw_hdl_pipeline;
 -- Default write contents of raw hdl regs
 write_raw_hdl_pipeline_regs := read_raw_hdl_pipeline_regs;
  
 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to PIPELINE_LATENCY loop
  -- Input to first stage are inputs to function
  if STAGE=0 then
   -- Mux in inputs
   read_pipe.left := left;
   read_pipe.right := right;
  else
   -- Default read from previous stage
   read_pipe := read_raw_hdl_pipeline_regs(STAGE-1);
  end if;
  -- Default write contents of previous stage
  write_pipe := read_pipe;


  --
  -- One bit adder with carry

  -- width = 16
  -- num_stages = 2
  -- bits per stage = {0: 2, 1: 14}
  
    if STAGE = 0 then
      -- This stuff must be in stage 0
      write_pipe.carry := (others => '0'); -- One bit unsigned
      write_pipe.left_resized := resize(write_pipe.left, 16);
      write_pipe.right_resized := resize(write_pipe.right, 16);
      write_pipe.return_output := (others => '0');
      write_pipe.full_width_return_output := (others => '0');
      
        --  bits_per_stage_dict[0] = 2
        write_pipe.left_range_slv := (others => '0');
        write_pipe.right_range_slv := (others => '0');
        write_pipe.left_range_slv(1 downto 0) := std_logic_vector(write_pipe.left_resized(1 downto 0));
        write_pipe.right_range_slv(1 downto 0) := std_logic_vector(write_pipe.right_resized(1 downto 0));  

        -- Adding unsigned values
        write_pipe.intermediate := (others => '0'); -- Zero out for this stage
        write_pipe.intermediate(2 downto 0) := std_logic_vector( unsigned('0' & write_pipe.left_range_slv(1 downto 0)) + unsigned('0' & write_pipe.right_range_slv(1 downto 0)) );
        -- New carry is msb of intermediate
        write_pipe.carry(0) := write_pipe.intermediate(2);
        -- Assign output bits
        -- Carry full_width_return_output(up_bound+1) will be overidden in next iteration and included as carry
        write_pipe.full_width_return_output(2 downto 0) := unsigned(write_pipe.intermediate(2 downto 0));
         
    elsif STAGE = 1 then 
        --  bits_per_stage_dict[1] = 14
        write_pipe.left_range_slv := (others => '0');
        write_pipe.right_range_slv := (others => '0');
        write_pipe.left_range_slv(13 downto 0) := std_logic_vector(write_pipe.left_resized(15 downto 2));
        write_pipe.right_range_slv(13 downto 0) := std_logic_vector(write_pipe.right_resized(15 downto 2));  

        -- Adding unsigned values
        write_pipe.intermediate := (others => '0'); -- Zero out for this stage
        write_pipe.intermediate(14 downto 0) := std_logic_vector( unsigned('0' & write_pipe.left_range_slv(13 downto 0)) + unsigned('0' & write_pipe.right_range_slv(13 downto 0)) + unsigned(write_pipe.carry) );
        -- New carry is msb of intermediate
        write_pipe.carry(0) := write_pipe.intermediate(14);
        -- Assign output bits
        -- Carry full_width_return_output(up_bound+1) will be overidden in next iteration and included as carry
        write_pipe.full_width_return_output(16 downto 2) := unsigned(write_pipe.intermediate(14 downto 0));
      
      write_pipe.return_output := resize(write_pipe.full_width_return_output(16 downto 0), 17);      

    end if;
      -- Write to stage reg
  write_raw_hdl_pipeline_regs(STAGE) := write_pipe;
 end loop;

 manual_registers.raw_hdl_pipeline <= write_raw_hdl_pipeline_regs;
 -- Last stage of pipeline return wire to return port/reg
 return_output <= write_raw_hdl_pipeline_regs(PIPELINE_LATENCY).return_output;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then

     manual_registers_r <= manual_registers;
 end if;
end process;

end arch;
