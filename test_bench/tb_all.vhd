--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:02:07 07/26/2018
-- Design Name:   
-- Module Name:   C:/Users/ASENA/.Xilinx/ADPLLs/tb_all.vhd
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
 
ENTITY tb_all IS
END tb_all;
 
ARCHITECTURE behavior OF tb_all IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT digitalpll
    PORT(
         ref_signal : IN  std_logic;
         nanden : IN  std_logic;
         osc_enable : IN  std_logic;
         ripple_reset : IN  std_logic;
         res_counters : IN  std_logic;
         output : OUT  std_logic;
         bug1 : OUT  std_logic;
         bug2 : OUT  std_logic;
         bug3 : OUT  std_logic_vector(6 downto 0);
         bug4 : OUT  std_logic_vector(6 downto 0);
         bug5 : OUT  std_logic_vector(127 downto 0);
         bug6 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ref_signal : std_logic := '0';
   signal nanden : std_logic := '0';
   signal osc_enable : std_logic := '0';
   signal ripple_reset : std_logic := '1';
   signal res_counters : std_logic := '1';

 	--Outputs
   signal output : std_logic;
   signal bug1 : std_logic;
   signal bug2 : std_logic;
   signal bug3 : std_logic_vector(6 downto 0);
   signal bug4 : std_logic_vector(6 downto 0);
   signal bug5 : std_logic_vector(127 downto 0);
   signal bug6 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: digitalpll PORT MAP (
          ref_signal => ref_signal,
          nanden => nanden,
          osc_enable => osc_enable,
          ripple_reset => ripple_reset,
          res_counters => res_counters,
          output => output,
          bug1 => bug1,
          bug2 => bug2,
          bug3 => bug3,
          bug4 => bug4,
          bug5 => bug5,
          bug6 => bug6
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
   wait for 100 ns;	
		
	 ref_signal<='1';
    nanden <='1';
    osc_enable <='1';
    ripple_reset<='0';
	 res_counters<='0';
	 wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	   wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	   wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	   wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	     wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	   wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	   wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	     wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	   wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	   wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	     wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	   wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 
	   wait for 180 ns;	
	 ref_signal<='0'; 
	 wait for 180 ns;	
	  ref_signal<='1'; 

      -- insert stimulus here 

      wait;
   end process;

END;
