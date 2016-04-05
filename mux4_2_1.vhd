----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:20 03/08/2016 
-- Design Name: 
-- Module Name:    mux4_to_1 - Behavioral 
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

entity mux4_2_1 is
	Port ( In0, In1, In2, In3 : in std_logic;
		S0, S1 : in std_logic;
		Z : out std_logic);
end mux4_2_1;

architecture Behavioral of mux4_2_1 is
begin
	Z <= In0 after 1 ns when S0='0' and S1 ='0' else
		In1 after 1 ns when S0='0' and S1 ='1' else
		In2 after 1 ns when S0='1' and S1 ='0' else
		In3 after 1 ns when S0='1' and S1 ='1' else
		'0' after 1 ns;
end Behavioral;