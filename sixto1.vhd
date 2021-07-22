----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:02 07/25/2018 
-- Design Name: 
-- Module Name:    sixto1 - Behavioral 
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

entity sixto1 is
 port(
                
                enables     : in    std_logic_vector(5 downto 0);
              
                y0       : in   std_logic;
					 y1       : in  std_logic;
					 y2       : in   std_logic;
					 y3       : in   std_logic;
					 y4       : in   std_logic;
					 y5       : in   std_logic;
					 y6      : in   std_logic;	
					y :out std_logic
					 
        );



end sixto1;

architecture Behavioral of sixto1 is

begin
 with enables select y <= y0 when "100000" ,
                          y1 when "110000" ,
						        y2 when "111000" ,
						        y3 when "111100" ,
						        y4 when "111110" ,
						        y5 when "111111" ,                                                                                      
                          y6 when others;
end Behavioral;

