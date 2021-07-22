--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:31:58 07/18/2018
-- Design Name:   
-- Module Name:   C:/Users/ASENA/.Xilinx/ADPLLs/tb_shifting.vhd
-- Project Name:  ADPLLs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Delaydetectorshifting
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
 
ENTITY tb_shifting IS
END tb_shifting;
 
ARCHITECTURE behavior OF tb_shifting IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Delaydetectorshifting
    PORT(
         start_sig : IN  std_logic;
         stop_signal : IN  std_logic;
         result : OUT  std_logic_vector(0 to 4)
        
         
        );
    END COMPONENT;
    

   --Inputs
   signal start_sig : std_logic := '0';
   signal stop_signal : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(0 to 4);
   
  
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Delaydetectorshifting PORT MAP (
          start_sig => start_sig,
          stop_signal => stop_signal,
          result => result
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
      wait for 100 ns;	

          start_sig <= '1';
          stop_signal <= '0';
			 wait for 16 ns;	
			 start_sig <= '1';
			 stop_signal <= '1';

  

      wait;
   end process;

END;
