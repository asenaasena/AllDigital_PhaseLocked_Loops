----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:49:21 07/18/2018 
-- Design Name: 
-- Module Name:    my_inverter - Behavioral 
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

entity my_inverter is
  Port ( IN1 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC);
end my_inverter;

architecture Behavioral of my_inverter is
 
begin
OUT1 <=  IN1 AFTER 5 NS;

end Behavioral;

