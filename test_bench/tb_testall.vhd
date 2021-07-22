--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:26:23 07/26/2018
-- Design Name:   
-- Module Name:   C:/Users/ASENA/.Xilinx/ADPLLs/tb_testall.vhd
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
 
ENTITY tb_testall IS
END tb_testall;
 
ARCHITECTURE behavior OF tb_testall IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT digitalpll
    PORT(
         ref_signal : IN  std_logic;
    
         osc_enable : IN  std_logic;
         ripple_reset : IN  std_logic;
         res_counters : IN  std_logic;
			nanden:in std_logic;

         output : OUT  std_logic;
       up_out : OUT  std_logic;
      down_out : OUT  std_logic;
        up_counter_out : OUT  std_logic_vector(6 downto 0);
        ripple_counter_out : OUT  std_logic_vector(6 downto 0);
         thermo_code_out : OUT  std_logic_vector(127 downto 0);
        
			down_counter_out:out std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ref_signal : std_logic := '0';
  
   signal osc_enable : std_logic := '0';
   signal ripple_reset : std_logic := '1';
   signal res_counters : std_logic := '1';
	signal nanden: std_logic:='0';


 	--Outputs
   signal output : std_logic;
   signal up_out : std_logic;
   signal down_out : std_logic;
   signal up_counter_out: std_logic_vector(6 downto 0);
   signal ripple_counter_out : std_logic_vector(6 downto 0);
   signal thermo_code_out : std_logic_vector(127 downto 0);
   
	 signal down_counter_out : std_logic_vector(6 downto 0);
   
 constant clk_period : time := 700 ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: digitalpll PORT MAP (
          ref_signal => ref_signal,
           osc_enable => osc_enable,
          ripple_reset => ripple_reset,
          res_counters => res_counters,
			 nanden=> nanden,


          output => output,
          up_out => up_out,
          down_out=> down_out,
          up_counter_out => up_counter_out,
          ripple_counter_out =>ripple_counter_out,
          thermo_code_out =>thermo_code_out,
          
			 down_counter_out => down_counter_out
        );


   -- Stimulus process
   stim_proc: process(ref_signal,osc_enable,ripple_reset,res_counters,nanden)
   begin		
      -- hold reset state for 100 ns.
      	
   
  
   osc_enable <= '1' after 500 ns;
   ripple_reset <= '0' after 500 ns;
   res_counters <= '0' after 500 ns;
	nanden<='1' after 500 ns;
	

   ref_signal <= not ref_signal after 200ns;

      -- insert stimulus here 

     
   end process;

END;
