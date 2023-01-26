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
-- Submodules: 0
entity BIN_OP_PLUS_int22_t_int22_t_0CLK_de264c78 is
port(
 left : in signed(21 downto 0);
 right : in signed(21 downto 0);
 return_output : out signed(22 downto 0));
end BIN_OP_PLUS_int22_t_int22_t_0CLK_de264c78;
architecture arch of BIN_OP_PLUS_int22_t_int22_t_0CLK_de264c78 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 0;

-- One struct to represent this modules variables
type raw_hdl_variables_t is record
 -- All of the wires in function

  carry : std_logic_vector(0 downto 0);
  intermediate : std_logic_vector(23 downto 0);
  --left_resized : unsigned(21 downto 0);
  --right_resized : unsigned(21 downto 0);
  left_resized : unsigned(22 downto 0);
  right_resized : unsigned(22 downto 0);
  --left_range_slv : std_logic_vector(21 downto 0);
  --right_range_slv : std_logic_vector(21 downto 0);
  left_range_slv : std_logic_vector(22 downto 0);
  right_range_slv : std_logic_vector(22 downto 0);
  full_width_return_output : unsigned(23 downto 0);
  return_output : signed(22 downto 0);
  right : signed(21 downto 0);
  left : signed(21 downto 0);
end record;

-- Type for this modules register pipeline
type raw_hdl_register_pipeline_t is array(0 to PIPELINE_LATENCY) of raw_hdl_variables_t;
  
begin



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right)
is 
 -- Read and write variables to do register transfers per clock
 -- from the previous to next stage
 variable read_pipe : raw_hdl_variables_t;
 variable write_pipe : raw_hdl_variables_t;

 -- This modules self pipeline registers read once per clock
 variable read_raw_hdl_pipeline_regs : raw_hdl_register_pipeline_t;
 variable write_raw_hdl_pipeline_regs : raw_hdl_register_pipeline_t;
  begin

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

  -- num_stages = 1
  
    if STAGE = 0 then
      -- This stuff must be in stage 0
      write_pipe.carry := (others => '0'); -- One bit unsigned  
      write_pipe.intermediate := (others => '0'); -- N bit unused depending on bits per stage
      write_pipe.left_resized := unsigned(std_logic_vector(resize(write_pipe.left, 23)));
      write_pipe.right_resized := unsigned(std_logic_vector(resize(write_pipe.right, 23)));
      write_pipe.full_width_return_output := (others => '0');
      write_pipe.return_output := (others => '0');
      
        --  bits_per_stage_dict[0] = 23
        write_pipe.left_range_slv := (others => '0');
        write_pipe.right_range_slv := (others => '0');
        write_pipe.left_range_slv(22 downto 0) := std_logic_vector(write_pipe.left_resized(22 downto 0));
        write_pipe.right_range_slv(22 downto 0) := std_logic_vector(write_pipe.right_resized(22 downto 0));  

        -- Adding unsigned values
        write_pipe.intermediate := (others => '0'); -- Zero out for this stage
        write_pipe.intermediate(23 downto 0) := std_logic_vector( unsigned('0' & write_pipe.left_range_slv(22 downto 0)) + unsigned('0' & write_pipe.right_range_slv(22 downto 0)) + unsigned(write_pipe.carry) ); 
        --write_pipe.intermediate(23 downto 0) := std_logic_vector( unsigned('0' & write_pipe.left_range_slv(22 downto 0)) + unsigned('0' & write_pipe.right_range_slv(22 downto 0))  ); 
        --write_pipe.intermediate(23 downto 0) := std_logic_vector( unsigned(write_pipe.intermediate(23 downto 0)) + unsigned(write_pipe.carry) );
        
  
        -- New carry is msb of intermediate
        write_pipe.carry(0) := write_pipe.intermediate(23);
        -- Assign output bits
      
        -- Only last iteration writes carry into full_width_return_output?
        -- Carry full_width_return_output(up_bound+1) will be overidden in next iteration and included as carry
        write_pipe.full_width_return_output(23 downto 0) := unsigned(write_pipe.intermediate(23 downto 0));
      
      -- ???Full width output last bit is always dropped since DOING SIGNED ADD, can't meanfully overflow
      --???? SIGN EXTENSION DONE AS PART OF SIGNED RESIZED
      write_pipe.full_width_return_output(23) := '0';
      -- Resize from full width to output width
      --???write_pipe.return_output := resize(signed(std_logic_vector(write_pipe.full_width_return_output(21 downto 0))), 23);   
      write_pipe.return_output := resize(signed(std_logic_vector(write_pipe.full_width_return_output(22 downto 0))), 23);    


    end if;
      -- Write to stage reg
  write_raw_hdl_pipeline_regs(STAGE) := write_pipe;
 end loop;

 -- Last stage of pipeline return wire to return port/reg
 return_output <= write_raw_hdl_pipeline_regs(PIPELINE_LATENCY).return_output;
end process;

end arch;
