----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:47:09 07/18/2018 
-- Design Name: 
-- Module Name:    Delaydetectorshifting - Behavioral 
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

entity Delaydetectorshifting is
port (start_sig:in std_logic;
stop_signal:in std_logic;
result:out std_logic_vector(0 to 4)
);
end Delaydetectorshifting;

architecture Behavioral of Delaydetectorshifting is

signal im0,im1,im2,im3,im4:std_logic;

 component my_inverter 
 port( IN1 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC);
end component;

component dff_withoutreset 

port(
    Q : out std_logic;    
      Clk :in std_logic;   
      D :in  std_logic
   );
end component;


begin
my_inv0:my_inverter PORT MAP(start_sig,im0);

my_inv1:my_inverter PORT MAP(im0,im1);

my_inv2:my_inverter PORT MAP(im1,im2);

my_inv3:my_inverter PORT MAP(im2,im3);

my_inv4:my_inverter PORT MAP(im3,im4);
DFF0:dff_withoutreset PORT MAP(result(0),stop_signal,im0);
DFF1:dff_withoutreset PORT MAP(result(1),stop_signal,im1);

DFF2:dff_withoutreset PORT MAP(result(2),stop_signal,im2);

DFF3:dff_withoutreset PORT MAP(result(3),stop_signal,im3);

DFF4:dff_withoutreset PORT MAP(result(4),stop_signal,im4);



end Behavioral;

