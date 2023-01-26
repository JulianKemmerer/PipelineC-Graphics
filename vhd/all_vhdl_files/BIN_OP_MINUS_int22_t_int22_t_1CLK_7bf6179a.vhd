-- Timing params:
--   Fixed?: False
--   Pipeline Slices: [0.2282246062774876]
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
entity BIN_OP_MINUS_int22_t_int22_t_1CLK_7bf6179a is
port(
 clk : in std_logic;
 left : in signed(21 downto 0);
 right : in signed(21 downto 0);
 return_output : out signed(22 downto 0));
end BIN_OP_MINUS_int22_t_int22_t_1CLK_7bf6179a;
architecture arch of BIN_OP_MINUS_int22_t_int22_t_1CLK_7bf6179a is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant PIPELINE_LATENCY : integer := 1;

-- One struct to represent this modules variables
type raw_hdl_variables_t is record
 -- All of the wires in function

  carry : std_logic_vector(0 downto 0);
  intermediate : std_logic_vector(22 downto 0);
  left_resized : unsigned(21 downto 0);
  right_resized : unsigned(21 downto 0);
  left_range_slv : std_logic_vector(21 downto 0);
  right_range_slv : std_logic_vector(21 downto 0);
  full_width_return_output : signed(22 downto 0);
  return_output : signed(22 downto 0);
  right : signed(21 downto 0);
  left : signed(21 downto 0);
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

  -- num_stages = 2
  
    if STAGE = 0 then
      -- This stuff must be in stage 0
      write_pipe.carry := (others => '0'); -- One bit unsigned  
      write_pipe.intermediate := (others => '0'); -- N bit unused depending on bits per stage
      write_pipe.left_resized := unsigned(resize(write_pipe.left, 22));
      write_pipe.right_resized := unsigned(resize(write_pipe.right, 22));
      write_pipe.return_output := (others => '0');
      write_pipe.full_width_return_output := (others => '0');
      
        --  bits_per_stage_dict[0] = 5
        write_pipe.left_range_slv := (others => '0');
        write_pipe.right_range_slv := (others => '0');
        write_pipe.left_range_slv(4 downto 0) := std_logic_vector(write_pipe.left_resized(4 downto 0));
        write_pipe.right_range_slv(4 downto 0) := std_logic_vector(write_pipe.right_resized(4 downto 0));  

        -- DOING SUB OP,  carry indicates -1
        -- Sub signed values
        write_pipe.intermediate := (others => '0'); -- Zero out for this stage
        
        write_pipe.intermediate(5 downto 0) := std_logic_vector( signed('0' & write_pipe.left_range_slv(4 downto 0)) - signed('0' & write_pipe.right_range_slv(4 downto 0)) - signed('0' & write_pipe.carry) );
        --write_pipe.intermediate(5 downto 0) := std_logic_vector( resize(signed(write_pipe.left_range_slv(4 downto 0)), 6) - resize(signed(write_pipe.right_range_slv(4 downto 0)),6) - signed('0' & write_pipe.carry) );
        
        -- New carry is sign (negative carry)
        write_pipe.carry(0) := write_pipe.intermediate(5);
        -- Assign output bits into full width
        --write_pipe.full_width_return_output(5 downto 0) := signed(write_pipe.intermediate(5 downto 0));
        write_pipe.full_width_return_output(4 downto 0) := signed(write_pipe.intermediate(4 downto 0));
        --write_pipe.return_output(4 downto 0) := signed(write_pipe.intermediate(4 downto 0));
         
    elsif STAGE = 1 then 
        --  bits_per_stage_dict[1] = 17
        write_pipe.left_range_slv := (others => '0');
        write_pipe.right_range_slv := (others => '0');
        write_pipe.left_range_slv(16 downto 0) := std_logic_vector(write_pipe.left_resized(21 downto 5));
        write_pipe.right_range_slv(16 downto 0) := std_logic_vector(write_pipe.right_resized(21 downto 5));  

        -- DOING SUB OP,  carry indicates -1
        -- Sub signed values
        write_pipe.intermediate := (others => '0'); -- Zero out for this stage
        
        -- Last stage uses actual sign bit, no & '0'
        write_pipe.intermediate(17 downto 0) := std_logic_vector( resize(signed(write_pipe.left_range_slv(16 downto 0)), 18) - resize(signed(write_pipe.right_range_slv(16 downto 0)), 18) - signed('0' & write_pipe.carry) );
        
        -- New carry is sign (negative carry)
        write_pipe.carry(0) := write_pipe.intermediate(17);
        -- Assign output bits into full width
        --write_pipe.full_width_return_output(22 downto 5) := signed(write_pipe.intermediate(17 downto 0));
        write_pipe.full_width_return_output(21 downto 5) := signed(write_pipe.intermediate(16 downto 0));
        --write_pipe.return_output(21 downto 5) := signed(write_pipe.intermediate(16 downto 0));
      
      -- Last stage
      --write_pipe.return_output := write_pipe.full_width_return_output; 
      write_pipe.full_width_return_output(22) := write_pipe.carry(0);
      write_pipe.return_output := resize(write_pipe.full_width_return_output(22 downto 0), 23);      

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
