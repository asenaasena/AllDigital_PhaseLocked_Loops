--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:50:42 07/20/2018
-- Design Name:   
-- Module Name:   C:/Users/ASENA/.Xilinx/ADPLLs/tb_threeringosc.vhd
-- Project Name:  ADPLLs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: three_ring_oscillator
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
 
ENTITY tb_threeringosc IS
END tb_threeringosc;
 
ARCHITECTURE behavior OF tb_threeringosc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT three_ring_oscillator
    PORT(
         a : IN  std_logic;
         b : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';

 	--Outputs
   signal b : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: three_ring_oscillator PORT MAP (
          a => a,
          b => b
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
a<='0';
 wait for 200 ns;	


      wait for 100 ns;
a<='1';
 wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
