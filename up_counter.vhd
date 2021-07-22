----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:53:45 07/24/2018 
-- Design Name: 
-- Module Name:    up_counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

use ieee.std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity up_counter is
 Port ( fastclock:in std_logic;
           m : in  STD_LOGIC;
			  res_up: in std_logic;
			  enable: in std_logic;
			  
          Q : out std_logic_vector(6 downto 0));
end up_counter;

architecture Behavioral of up_counter is

 signal tmp: std_logic_vector(6 downto 0); 
 signal a: integer; 

        
             begin     
        
             process (m, res_up,enable,fastclock)   
        
             begin       
        if (res_up='1' ) then
		  tmp<="0000000";
		  a<=0;
            else if (rising_edge(fastclock) and m='1' and enable='1' ) then  
 a<=a+1;
 if((a mod 20)= 0) then
             tmp <= tmp + 1;              
       
end if;	
end if;
 		 
        end if;
             end process;   
        
             Q <= tmp;
        
		
             end Behavioral;

