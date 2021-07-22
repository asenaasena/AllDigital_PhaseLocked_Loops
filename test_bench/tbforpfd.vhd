--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:17:29 07/25/2018
-- Design Name:   
-- Module Name:   C:/Users/ASENA/.Xilinx/ADPLLs/tbforpfd.vhd
-- Project Name:  ADPLLs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PFD
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
 
ENTITY tbforpfd IS
END tbforpfd;
 
ARCHITECTURE behavior OF tbforpfd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PFD
    PORT(
         ref_signal : IN  std_logic;
         our_signal : IN  std_logic;
         up_signal : OUT  std_logic;
         down_signal : OUT  std_logic;
         lock_signal : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ref_signal : std_logic := '0';
   signal our_signal : std_logic := '0';

 	--Outputs
   signal up_signal : std_logic;
   signal down_signal : std_logic;
   signal lock_signal : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PFD PORT MAP (
          ref_signal => ref_signal,
          our_signal => our_signal,
          up_signal => up_signal,
          down_signal => down_signal,
          lock_signal => lock_signal
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
