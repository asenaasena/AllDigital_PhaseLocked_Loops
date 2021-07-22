----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:23 07/19/2018 
-- Design Name: 
-- Module Name:    myy_vco - Behavioral 
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

entity myy_vco is

 generic ( 
  DCO_PER_0 : integer := 417000;        -- period center freq.(fs)
  DCO_PEROFF_LIM : integer := 83000 ; -- maximum period deviation
  DCO_TIME_RES : integer:= 1 ; -- finest time resolution
  DCO_QUANT_P : integer := 402;
  DCO_QUANT_A : integer := 80; 
  DCO_QUANT_T : integer := 4; -- (DCO_TIME_RES units) 
  DCO_INIT_DLY : integer := 0 ;  -- initial oscillation delay
  DCO_WRMS : integer := 0 ; -- accumulative jitter (wander) 
  DCO_JRMS : integer := 0 ;  -- nonaccumulative jitter
  SEED : integer := -1 --   time-based, if < 0
  );
  
   port ( 
   dco_in_p : in integer; 
   dco_in_a : in integer; 
   dco_in_ti : in integer;
   dco_in_tf : in integer;
   mat_pdev : out integer := 0 -- DCO period deviation 
--   ckv : out std_logic -- digitized DCO clock output 
   );

end myy_vco;

architecture Behavioral of myy_vco is
signal mat_quant_p: integer;
 signal mat_quant_a: integer; 
 signal mat_quant_ti: integer;
  signal mat_quant_tf: integer; 
  signal mat_quant_ls: integer; -- low-speed terms
  -- 
  signal mat_per: integer := DCO_PER_0; -- period of oscillation 
  begin
  
  ---------------------------------------------------------------- 
  -- Calculate the tuning input (w/o tracking fractional part) 
  ----------------------------------------------------------------- 
  
  mat_quant_p <= dco_in_p * DCO_QUANT_P; 
  mat_quant_a <= dco_in_a * DCO_QUANT_A; 
  mat_quant_ti <= dco_in_ti * DCO_QUANT_T; 
  mat_quant_tf <= dco_in_tf * DCO_QUANT_T; 
  mat_quant_ls <= mat_quant_p + mat_quant_a + mat_quant_ti; 
  
  ----------------------------------------------------------------- 
  -- Calculate the period 
  ----------------------------------------------------------------- 
  
  process (mat_quant_tf, mat_quant_ls)
 variable mat_pdev_var: integer;

 begin
mat_pdev_var := DCO_TIME_RES * (mat_quant_tf + mat_quant_ls);
  -- 
  -- limit the oscillation period 
  if mat_pdev_var > DCO_PEROFF_LIM then 
  mat_pdev_var := DCO_PEROFF_LIM; 
  elsif mat_pdev_var < -DCO_PEROFF_LIM then
  mat_pdev_var := -DCO_PEROFF_LIM; 
  end if;
  -- 
  mat_pdev <= mat_pdev_var; 
  mat_per <= DCO_PER_0 - mat_pdev_var; 
  end process;

end Behavioral;

