----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:08:32 03/29/2016 
-- Design Name: 
-- Module Name:    register8bitWide - Behavioral 
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
entity register8bitWide is
	PORT(
			D : IN std_logic_vector(7 downto 0);
			load : IN std_logic;
			Clk : IN std_logic;
			reset : IN std_logic;
			Q : OUT std_logic_vector(7 downto 0)
	);
end register8bitWide;

architecture Behavioral of register8bitWide is

begin
process(Clk)
begin
	if  rising_edge(Clk) then
		if (load ='1' and reset ='0') then
			Q <= D;
		else
			Q<=(others=>'0');
		end if;
	end if;
	end process;
	

end Behavioral;


