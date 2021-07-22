----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:36:01 07/25/2018 
-- Design Name: 
-- Module Name:    digitalpll - Behavioral 
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

entity digitalpll is
port(

ref_signal:in std_logic;
output:out std_logic;
up_out:out std_logic;
down_out:out std_logic;
fast_clock:in std_logic;
osc_enable:in std_logic;
ripple_reset:in std_logic;
res_counters:in std_logic;
up_counter_out:out std_logic_vector(6 downto 0);
ripple_counter_out:out std_logic_vector(6 downto 0);
thermo_code_out:out std_logic_vector(127 downto 0);
down_counter_out:out std_logic_vector(6 downto 0);
glbl_rst:in std_logic;

durations:out integer
);
end digitalpll;

architecture Behavioral of digitalpll is
signal im0,im1,im2,im3,dco_clock,newone,imp,enablecounters,im8,processfinished:std_logic;
signal im4,im5,im6:std_logic_vector(6 downto 0);
signal im7:std_logic_vector(127 downto 0);

component PFD
port(ref_signal:in std_logic;
our_signal:in std_logic;
up_signal:out std_logic;
down_signal:out std_logic;
enable_counter:out std_logic;
glbl_rst:in std_logic
);
end component;

 
component up_counter is
Port (
         fastclock:in std_logic;
           m : in  STD_LOGIC;
			  res_up: in std_logic;
			  enable: in std_logic;
			  
          Q : out std_logic_vector(6 downto 0));
end component;
component down_counter is
Port (fast_clock:in std_logic;
           c : in  STD_LOGIC;
			  res_down: in std_logic;
			enable:in std_logic;
			
          Q : out std_logic_vector(6 downto 0));
end component;

component rippleadder is
port(a:in std_logic_vector(6 downto 0);
     b:in std_logic_vector(6 downto 0);
     clr:in std_logic;
     processcont:in std_logic;
     c:out std_logic_vector(6 downto 0)
);
end component;

component thermodecoder is
port (a:in std_logic_vector(6 downto 0);
therm_output:out std_logic_vector(127 downto 0)
);
end component;

component my_dco is
port(
nanden:in std_logic;
enable:in std_logic_vector(127 downto 0);
output:out std_logic
);
end component;

component my_andgate is
port ( i1 : in std_logic;
			 i2 : in std_logic;
			 o1 : out std_logic);
end component;



begin
im0<=dco_clock;

pfdd:PFD port map(ref_signal,im0,im1,im2,im8,glbl_rst);


my_upcounter:up_counter port map(fast_clock,im1,res_counters,im8,im4);
my_downcounter:down_counter port map(fast_clock,im2,res_counters,im8,im5);
processfinished<=im1 or im2;
my_ripple:rippleadder port map(im4,im5,ripple_reset,processfinished,im6);
my_thermo:thermodecoder port map(im6,im7);
my_dco:my_dco port map(osc_enable,im7,dco_clock);

output<=dco_clock;
up_out<=im1;
down_out<=im2;
up_counter_out<=im4;
ripple_counter_out<=im6;
thermo_code_out<=im7;
down_counter_out<=im5;

end Behavioral;
