--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:17:39 08/03/2018
-- Design Name:   
-- Module Name:   C:/Users/ASENA/.Xilinx/ADPLLs/digitalplls-samephase.vhd
-- Project Name:  ADPLLs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: digitalpll
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY digitalpllssamephase IS
END digitalpllssamephase;
 
ARCHITECTURE behavior OF digitalpllssamephase IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT digitalpll
    PORT(
	
         ref_signal : IN  std_logic;
         output : OUT  std_logic;
         up_out : OUT  std_logic;
         down_out : OUT  std_logic;
         fast_clock : IN  std_logic;
         osc_enable : IN  std_logic;
         ripple_reset : IN  std_logic;
         res_counters : IN  std_logic;
       
         up_counter_out : OUT  std_logic_vector(6 downto 0);
         ripple_counter_out : OUT  std_logic_vector(6 downto 0);
         thermo_code_out : OUT  std_logic_vector(127 downto 0);
         down_counter_out : OUT  std_logic_vector(6 downto 0);
         glbl_rst : IN  std_logic
			
        );
    END COMPONENT;
    

	
   signal ref_signal : std_logic := '0';
   signal fast_clock : std_logic := '0';
   signal osc_enable : std_logic := '0';
   signal ripple_reset : std_logic := '1';
   signal res_counters : std_logic := '1';

   signal glbl_rst : std_logic := '1';
	

 	--Outputs
   signal output : std_logic;
   signal up_out : std_logic;
   signal down_out : std_logic;
   signal up_counter_out : std_logic_vector(6 downto 0);
   signal ripple_counter_out : std_logic_vector(6 downto 0);
   signal thermo_code_out : std_logic_vector(127 downto 0);
   signal down_counter_out : std_logic_vector(6 downto 0);


BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: digitalpll PORT MAP (
	
          ref_signal => ref_signal,
          output => output,
          up_out => up_out,
          down_out => down_out,
          fast_clock => fast_clock,
          osc_enable => osc_enable,
          ripple_reset => ripple_reset,
          res_counters => res_counters,
         
          up_counter_out => up_counter_out,
          ripple_counter_out => ripple_counter_out,
          thermo_code_out => thermo_code_out,
          down_counter_out => down_counter_out,
          glbl_rst => glbl_rst
			
        );

 

    stim_proc: process(ref_signal,osc_enable,ripple_reset,res_counters,fast_clock)
   begin		
  	
	glbl_rst <= '0' after 20 ns;

   osc_enable <= '1' after 326 ns;
   ripple_reset <= '0' after 650 ns;
   res_counters <= '0' after 650 ns;


fast_clock <= not fast_clock after 50 ns;

   ref_signal<=not ref_signal after 300 ns;
	
   end process;


END;
