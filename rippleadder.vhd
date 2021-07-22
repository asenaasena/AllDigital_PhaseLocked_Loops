----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:42 07/24/2018 
-- Design Name: 
-- Module Name:    rippleadder - Behavioral 
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

entity rippleadder is
port(a:in std_logic_vector(6 downto 0);
b:in std_logic_vector(6 downto 0);
clr:in std_logic;
processcont:in std_logic;
c:out std_logic_vector(6 downto 0)
);
end rippleadder;

architecture Behavioral of rippleadder is
begin
process(a,b,clr,processcont)
begin
if(clr='1') then
c<="0111111";

else if (clr='0'  ) then
c<=a+b;
end if;
end if;
end process;
end Behavioral;

