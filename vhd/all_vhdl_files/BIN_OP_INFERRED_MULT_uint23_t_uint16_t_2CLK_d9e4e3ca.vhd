-- Timing params:
--   Fixed?: True
--   Pipeline Slices: []
--   Input regs?: True
--   Output regs?: True
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
-- Submodules: 0
entity BIN_OP_INFERRED_MULT_uint23_t_uint16_t_2CLK_d9e4e3ca is
port(
 clk : in std_logic;
 left : in unsigned(22 downto 0);
 right : in unsigned(15 downto 0);
 return_output : out unsigned(38 downto 0));
end BIN_OP_INFERRED_MULT_uint23_t_uint16_t_2CLK_d9e4e3ca;
architecture arch of BIN_OP_INFERRED_MULT_uint23_t_uint16_t_2CLK_d9e4e3ca is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;

-- One struct to represent this modules variables
type raw_hdl_variables_t is record
 -- All of the wires in function
  
  left : unsigned(22 downto 0);
  right : unsigned(15 downto 0);
  return_output : unsigned(38 downto 0);
end record;

-- Type for this modules register pipeline
type raw_hdl_register_pipeline_t is array(0 to PIPELINE_LATENCY) of raw_hdl_variables_t;
  
-- Type holding all input registers
type input_registers_t is record
 left : unsigned(22 downto 0);
 right : unsigned(15 downto 0);
end record;

-- Type holding all output registers
type output_registers_t is record
 return_output : unsigned(38 downto 0);
end record;
 
  -- Type holding all manually (not auto generated in pipelining) registers for this function
  --  RAW HDL pipeline, user state regs
  type manual_registers_t is record
    raw_hdl_pipeline : raw_hdl_register_pipeline_t;
    input_regs : input_registers_t;
    output_regs : output_registers_t; 
  end record;
  
-- Function to null out manual regs 
function manual_registers_NULL return manual_registers_t is
 variable rv : manual_registers_t;
  begin
 rv.input_regs.left := to_unsigned(0, 23);
 rv.input_regs.right := to_unsigned(0, 16);
 rv.output_regs.return_output := to_unsigned(0, 39);

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
 -- Input regs
 manual_registers.input_regs.left <= left;
 manual_registers.input_regs.right <= right;

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
   read_pipe.left := manual_registers_r.input_regs.left;
   read_pipe.right := manual_registers_r.input_regs.right;
  else
   -- Default read from previous stage
   read_pipe := read_raw_hdl_pipeline_regs(STAGE-1);
  end if;
  -- Default write contents of previous stage
  write_pipe := read_pipe;


  if STAGE = 0 then
    write_pipe.return_output := write_pipe.left * write_pipe.right;
  end if;
    -- Write to stage reg
  write_raw_hdl_pipeline_regs(STAGE) := write_pipe;
 end loop;

 manual_registers.raw_hdl_pipeline <= write_raw_hdl_pipeline_regs;
 -- Last stage of pipeline return wire to return port/reg
 manual_registers.output_regs.return_output <= write_raw_hdl_pipeline_regs(PIPELINE_LATENCY).return_output;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then

     manual_registers_r <= manual_registers;
 end if;
end process;
 -- Output regs
 return_output <= manual_registers_r.output_regs.return_output;

end arch;
