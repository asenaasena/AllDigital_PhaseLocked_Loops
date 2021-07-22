----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:49:34 07/25/2018 
-- Design Name: 
-- Module Name:    PFD - Behavioral 
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

entity PFD is
port(ref_signal:in std_logic;
our_signal:in std_logic;
up_signal:out std_logic;
down_signal:out std_logic;
enable_counter:out std_logic;
glbl_rst:in std_logic
);
end PFD;

architecture Behavioral of PFD is
signal im1,im2,im3:std_logic;

component dff_pfd
port(
      Q : out std_logic;
      signalll :in std_logic ;
		clear:in std_logic ;
      glbl_rst:in std_logic
   );
end component;

component  my_inverter is
  Port ( IN1 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC);
end component;

component my_andgate is
port   ( i1 : in std_logic;
			 i2 : in std_logic;
			 o1 : out std_logic);
end component;


begin
myandgate: my_andgate port map(im1,im2,im3);
enable_counter<=im1 xor im2;
dff1:dff_pfd port map(im1,our_signal,im3,glbl_rst);
dff2:dff_pfd port map(im2,ref_signal,im3,glbl_rst);



up_signal<=im2;
down_signal<=im1;
enable_counter<=im1 xor im2;
end Behavioral;

