----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:55:43 07/25/2018 
-- Design Name: 
-- Module Name:    dff_pfd - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dff_pfd is
 port(
      Q : out std_logic;
		
      signalll :in std_logic ;
		
clear:in std_logic;
       glbl_rst:in std_logic
   );
end dff_pfd;

architecture Behavioral of dff_pfd is

begin  
   

 process( signalll,clear)
 begin 
     if(clear='1' or glbl_rst='1' ) then 
   Q <= '0';
     elsif(rising_edge( signalll) ) then
   Q <= '1'; 
  end if;      
 end process; 

end Behavioral;

