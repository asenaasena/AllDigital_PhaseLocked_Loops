--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:05:47 07/26/2018
-- Design Name:   
-- Module Name:   C:/Users/ASENA/.Xilinx/ADPLLs/testforosc.vhd
-- Project Name:  ADPLLs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: denemetwo
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
 
ENTITY testforosc IS
END testforosc;
 
ARCHITECTURE behavior OF testforosc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT denemetwo
    PORT(
         nanden : IN  std_logic;
         enable : IN  std_logic_vector(127 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal nanden : std_logic := '0';
   signal enable : std_logic_vector(127 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: denemetwo PORT MAP (
          nanden => nanden,
          enable => enable,
          output => output
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		enable<="11111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
      wait for 100 ns;	

nanden<='1';
enable<="11111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";


      -- insert stimulus here 

      wait;
   end process;

END;
