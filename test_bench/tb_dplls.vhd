--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:52:33 07/25/2018
-- Design Name:   
-- Module Name:   C:/Users/ASENA/.Xilinx/ADPLLs/tb_dplls.vhd
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
 
ENTITY tb_dplls IS
END tb_dplls;
 
ARCHITECTURE behavior OF tb_dplls IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT digitalpll
port(ref_signal:in std_logic;
nanden:in std_logic;
osc_enable:in std_logic;
ripple_reset:in std_logic;
res_counters:in std_logic;
output:out std_logic;
bug1:out std_logic;
bug2:out std_logic;
bug3:out std_logic_vector(6 downto 0);
bug4:out std_logic_vector(6 downto 0);

bug5:out std_logic_vector(127 downto 0);
bug7:out std_logic_vector(6 downto 0)

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
signal	bug1: std_logic;
signal bug2: std_logic;
signal bug3: std_logic_vector(6 downto 0);
signal bug4: std_logic_vector(6 downto 0);
signal bug5: std_logic_vector(127 downto 0);
signal bug7: std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: digitalpll PORT MAP (
          ref_signal => ref_signal,
          nanden => nanden,
          osc_enable => osc_enable,
          ripple_reset => ripple_reset,
			 res_counters =>res_counters ,
          output => output,
			 bug1=>bug1,
bug2=>bug2,
bug3=>bug3,
bug4=>bug4,
bug5=>bug5,
bug7=>bug7
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
	 ref_signal<='1';
    nanden <='1';
    osc_enable <='1';
    ripple_reset<='0';
	 res_counters<='0';
	 wait for 600 ns;	
	 ref_signal<='0'; 
	 wait for 10 ns;	
	  ref_signal<='1'; 
	   wait for 10 ns;	
	 ref_signal<='0'; 
	 wait for 10 ns;	
	  ref_signal<='1'; 
	   wait for 10 ns;	
	 ref_signal<='0'; 
	 wait for 10 ns;	
	  ref_signal<='1'; 
	   wait for 100 ns;	
	 ref_signal<='0'; 
	 wait for 10 ns;	
	  ref_signal<='1'; 

      -- insert stimulus here 

      wait;
   end process;

END;
