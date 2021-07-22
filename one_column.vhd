----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:44:06 07/24/2018 
-- Design Name: 
-- Module Name:    one_column - Behavioral 
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

entity one_column is
port (
a:in std_logic;
b:out std_logic;

enables     : in    std_logic_vector(5 downto 0)
);
end one_column;

architecture Behavioral of one_column is
signal mu1,mu2,mu3,mu4,mu5,mu6,mu7,im1,im2:std_logic;

component sixto1
port( enables     : in    std_logic_vector(5 downto 0);
              
                y0       : in   std_logic;
					 y1       : in  std_logic;
					 y2       : in   std_logic;
					 y3       : in   std_logic;
					 y4       : in   std_logic;
					 y5       : in   std_logic;
					 y6       : in   std_logic;
					y :out std_logic
					 
        );
		  end component;
component inverter12
port(a:in std_logic;
b:out std_logic);
end component;
	
	
	component inverter10
	port(a:in std_logic;
b:out std_logic);
end component;
	
	
	component inverter8
	port(a:in std_logic;
b:out std_logic);
end component;
	
	component inverter6
	port(a:in std_logic;
b:out std_logic);
end component;
	component inverter4
	port(a:in std_logic;
b:out std_logic);
end component;

	component inverter2
	port(a:in std_logic;
b:out std_logic);
end component;

component inverter0
	port(a:in std_logic;
b:out std_logic);
end component;

begin
 
b1:inverter10 PORT MAP(a,mu1);
b2:inverter8 PORT MAP(a,mu2);
b3:inverter6 PORT MAP(a,mu3);
b4:inverter4 PORT MAP(a,mu4);
b5:inverter2 PORT MAP(a,mu5);
b6:inverter0 PORT MAP(a,mu6);
b7:inverter12 PORT MAP (a,mu7);
muxx: sixto1 PORT MAP(enables,mu1,mu2,mu3,mu4,mu5,mu6,mu7,im1);
b<=im1;

end Behavioral;

