----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:29:38 07/18/2018 
-- Design Name: 
-- Module Name:    dff_withoutreset - Behavioral 
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

entity dff_withoutreset is
 port(
      Q : out std_logic;    
      Clk :in std_logic;   
      D :in  std_logic    
   );
end dff_withoutreset;

architecture Behavioral of dff_withoutreset is

begin
 process(Clk)
 begin 
    if(rising_edge(Clk)) then
   Q <= D; 
    end if;       
 end process;

end Behavioral;

