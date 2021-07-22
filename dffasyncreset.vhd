----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:54 07/17/2018 
-- Design Name: 
-- Module Name:    dffasyncreset - Behavioral 
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
library UNISIM;
use UNISIM.vcomponents.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
----use UNISIM.VComponents.all;

entity dffasyncreset is

port(
      Q : out std_logic;    
      Clk :in std_logic;  
   sync_reset: in std_logic  
         
   );
end dffasyncreset;

architecture Behavioral of dffasyncreset is

begin
process(Clk,sync_reset)
 begin 
     if(sync_reset='1') then 
   Q <= '0';
     elsif(rising_edge(Clk)) then
   Q <= '1' after 0.5ns; 
  end if;      
 end process; 

end Behavioral;
