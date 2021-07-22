----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:52:09 07/23/2018 
-- Design Name: 
-- Module Name:    basic_ring_total - Behavioral 
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

entity basic_ring_total is
port(a:in std_logic;
b:out std_logic
);
end basic_ring_total;

architecture Behavioral of basic_ring_total is
signal im3,im4:std_logic:='0';

component basic_ring
port(a:in std_logic;
b:out std_logic
);
end component;

component ohnedelaybuffer
port (a:in std_logic;
b:out std_logic);
end component;

begin
buff: ohnedelaybuffer PORT MAP(im3,im4);
basic: basic_ring PORT MAP(a,im3);

b<=im4;

end Behavioral;

