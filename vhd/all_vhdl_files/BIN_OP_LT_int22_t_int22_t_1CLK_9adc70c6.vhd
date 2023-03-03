-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.2021440656073785]
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
entity BIN_OP_LT_int22_t_int22_t_1CLK_9adc70c6 is
port(
 clk : in std_logic;
 left : in signed(21 downto 0);
 right : in signed(21 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_LT_int22_t_int22_t_1CLK_9adc70c6;
architecture arch of BIN_OP_LT_int22_t_int22_t_1CLK_9adc70c6 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;

-- One struct to represent this modules variables
type raw_hdl_variables_t is record
 -- All of the wires in function
 
  return_output : unsigned(0 downto 0);
  return_output_bool : boolean;
  right : signed(21 downto 0);
  left : signed(21 downto 0);
  right_resized : signed(21 downto 0);
  left_resized : signed(21 downto 0);
  inequality_found : boolean;
  same_sign : boolean;
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
  -- num_stages = 2
  
    if STAGE = 0 then
      write_pipe.right_resized := resize(write_pipe.right, 22);
      write_pipe.left_resized := resize(write_pipe.left, 22);
      write_pipe.inequality_found := false; -- Must be at stage 0     
      -- Default: assume signs are different
      -- -left < +right = true 
      -- +left < -right = false
      write_pipe.return_output_bool := write_pipe.left_resized(21) = '1'; -- True if left is neg
      -- Check if signs are equal
      write_pipe.same_sign := write_pipe.left_resized(21) = write_pipe.right_resized(21);
  
        --  bits_per_stage_dict[0] = 4 
        --- Assign output based on compare range for this stage
        if write_pipe.inequality_found = false then
          write_pipe.inequality_found := ( write_pipe.left_resized(20 downto 17) /= write_pipe.right_resized(20 downto 17) ) ;
          -- Check if signs are equal
          if write_pipe.same_sign then
            -- Same sign only compare unsigned magnitude, twos complement makes it make sense
            write_pipe.return_output_bool := ( unsigned(write_pipe.left_resized(20 downto 17)) < unsigned(write_pipe.right_resized(20 downto 17)) );
          end if;
        end if;   
    elsif STAGE = 1 then 
        --  bits_per_stage_dict[1] = 17 
        --- Assign output based on compare range for this stage
        if write_pipe.inequality_found = false then
          write_pipe.inequality_found := ( write_pipe.left_resized(16 downto 0) /= write_pipe.right_resized(16 downto 0) ) ;
          -- Check if signs are equal
          if write_pipe.same_sign then
            -- Same sign only compare unsigned magnitude, twos complement makes it make sense
            write_pipe.return_output_bool := ( unsigned(write_pipe.left_resized(16 downto 0)) < unsigned(write_pipe.right_resized(16 downto 0)) );
          end if;
        end if;
      if write_pipe.return_output_bool then
        write_pipe.return_output := (others => '1');
      else
        write_pipe.return_output := (others => '0');
      end if;
      
    end if;  -- Write to stage reg
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