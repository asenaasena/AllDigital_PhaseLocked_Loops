----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:48 07/25/2018 
-- Design Name: 
-- Module Name:    denemetwo - Behavioral 
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

entity my_dco is
port(
nanden:in std_logic;
enable:in std_logic_vector(127 downto 0);

output:out std_logic
);
end my_dco;

architecture Behavioral of my_dco is
signal im0,ring_out,final:std_logic;
signal im:std_logic_vector(21 downto 1);

component my_andgate
port ( i1 : in std_logic;
			 i2 : in std_logic;
			 o1 : out std_logic);
end component;

component one_column is
port (
a:in std_logic;
b:out std_logic;
enables     : in    std_logic_vector(5 downto 0)
);
end component;


component delayadder is
port(a:in std_logic;
b:out std_logic);

end component;


begin
maynand: my_andgate PORT MAP(ring_out,nanden,im(1)); 

mycolumn1: one_column PORT MAP(im(1),im(2),enable(127 downto 122));
mycolumn2: one_column PORT MAP(im(2),im(3),enable(121 downto 116));
mycolumn3: one_column PORT MAP(im(3),im(4),enable(115 downto 110));
mycolumn4: one_column PORT MAP(im(4),im(5),enable(109 downto 104));
mycolumn5: one_column PORT MAP(im(5),im(6),enable(103 downto 98));
mycolumn6: one_column PORT MAP(im(6),im(7),enable(97 downto 92));
mycolumn7: one_column PORT MAP(im(7),im(8),enable(91 downto 86));
mycolumn8: one_column PORT MAP(im(8),im(9),enable(85 downto 80));
mycolumn9: one_column PORT MAP(im(9),im(10),enable(79 downto 74));
mycolumn10: one_column PORT MAP(im(10),im(11),enable(73 downto 68));
mycolumn11: one_column PORT MAP(im(11),im(12),enable(67 downto 62));
mycolumn12: one_column PORT MAP(im(12),im(13),enable(61 downto 56));
mycolumn13: one_column PORT MAP(im(13),im(14),enable(55 downto 50));
mycolumn14: one_column PORT MAP(im(14),im(15),enable(49 downto 44));
mycolumn15: one_column PORT MAP(im(15),im(16),enable(43 downto 38));
mycolumn16: one_column PORT MAP(im(16),im(17),enable(37 downto 32));
mycolumn17: one_column PORT MAP(im(17),im(18),enable(31 downto 26));
mycolumn18: one_column PORT MAP(im(18),im(19),enable(25 downto 20));
mycolumn19: one_column PORT MAP(im(19),im(20),enable(19 downto 14));
mycolumn20: one_column PORT MAP(im(20),im(21),enable(13 downto 8));
mycolumn21: one_column PORT MAP(im(21),final,enable(7 downto 2));
delayadderr: delayadder port map(final,ring_out);
output<=ring_out;

end Behavioral;

