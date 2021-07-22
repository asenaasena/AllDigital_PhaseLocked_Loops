----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:47:08 07/24/2018 
-- Design Name: 
-- Module Name:    thermodecoder - Behavioral 
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

entity thermodecoder is
port (a:in std_logic_vector(6 downto 0);
therm_output:out std_logic_vector(127 downto 0)
);
end thermodecoder;

architecture Behavioral of thermodecoder is


begin
 process (a)
                begin
                                label1 : case a is
 when "0000000" => therm_output <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0000001" => therm_output <= "10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0000010" => therm_output <= "11000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0000011" => therm_output <= "11100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0000100" => therm_output <= "11110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0000101" => therm_output <= "11111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0000110" => therm_output <= "11111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0000111" => therm_output <= "11111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0001000" => therm_output <= "11111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0001001" => therm_output <= "11111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0001010" => therm_output <= "11111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0001011" => therm_output <= "11111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0001100" => therm_output <= "11111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0001101" => therm_output <= "11111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0001110" => therm_output <= "11111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0001111" => therm_output <= "11111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0010000" => therm_output <= "11111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0010001" => therm_output <= "11111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0010010" => therm_output <= "11111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0010011" => therm_output <= "11111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0010100" => therm_output <= "11111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0010101" => therm_output <= "11111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0010110" => therm_output <= "11111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0010111" => therm_output <= "11111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0011000" => therm_output <= "11111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0011001" => therm_output <= "11111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0011010" => therm_output <= "11111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0011011" => therm_output <= "11111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0011100" => therm_output <= "11111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0011101" => therm_output <= "11111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0011110" => therm_output <= "11111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0011111" => therm_output <= "11111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0100000" => therm_output <= "11111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0100001" => therm_output <= "11111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0100010" => therm_output <= "11111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0100011" => therm_output <= "11111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0100100" => therm_output <= "11111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0100101" => therm_output <= "11111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0100110" => therm_output <= "11111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0100111" => therm_output <= "11111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0101000" => therm_output <= "11111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0101001" => therm_output <= "11111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0101010" => therm_output <= "11111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0101011" => therm_output <= "11111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0101100" => therm_output <= "11111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0101101" => therm_output <= "11111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0101110" => therm_output <= "11111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0101111" => therm_output <= "11111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0110000" => therm_output <= "11111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0110001" => therm_output <= "11111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0110010" => therm_output <= "11111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0110011" => therm_output <= "11111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0110100" => therm_output <= "11111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0110101" => therm_output <= "11111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0110110" => therm_output <= "11111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0110111" => therm_output <= "11111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0111000" => therm_output <= "11111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000";
 when "0111001" => therm_output <= "11111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000";
 when "0111010" => therm_output <= "11111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000";
 when "0111011" => therm_output <= "11111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000";
 when "0111100" => therm_output <= "11111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000";
 when "0111101" => therm_output <= "11111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000";
 when "0111110" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000";
 when "0111111" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000";
 when "1000000" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000";
 when "1000001" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000";
 when "1000010" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000";
 when "1000011" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000";
 when "1000100" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000";
 when "1000101" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000";
 when "1000110" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000";
 when "1000111" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000";
 when "1001000" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000";
 when "1001001" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000";
 when "1001010" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000";
 when "1001011" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000";
 when "1001100" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000";
 when "1001101" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000";
 when "1001110" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000";
 when "1001111" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000";
 when "1010000" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000";
 when "1010001" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000";
 when "1010010" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000";
 when "1010011" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000";
 when "1010100" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000";
 when "1010101" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000";
 when "1010110" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000";
 when "1010111" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000";
 when "1011000" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000";
 when "1011001" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000";
 when "1011010" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000";
 when "1011011" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000";
 when "1011100" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000";
 when "1011101" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000";
 when "1011110" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000";
 when "1011111" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000";
 when "1100000" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000";
 when "1100001" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000";
 when "1100010" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000";
 when "1100011" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000";
 when "1100100" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000";
 when "1100101" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000";
 when "1100110" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000";
 when "1100111" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000";
 when "1101000" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000";
 when "1101001" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000";
 when "1101010" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000";
 when "1101011" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000";
 when "1101100" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000";
 when "1101101" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000";
 when "1101110" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000";
 when "1101111" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000";
 when "1110000" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000";
 when "1110001" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000";
 when "1110010" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000";
 when "1110011" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000";
 when "1110100" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000";
 when "1110101" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000";
 when "1110110" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000";
 when "1110111" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000";
 when "1111000" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000";
 when "1111001" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000";
 when "1111010" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000";
 when "1111011" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000";
 when "1111100" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000";
 when "1111101" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000";
 when "1111110" => therm_output <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100";
 when others => therm_output    <= "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110";
                                end case;
                end process;


end Behavioral;
