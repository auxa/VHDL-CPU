----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:53:00 03/30/2016 
-- Design Name: 
-- Module Name:    mux2to1_16bit - Behavioral 
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

entity mux2to1_16bit is
PORT(
			In0 : IN std_logic_vector(15 downto 0);
			In1 : IN std_logic_vector(15 downto 0);
			s : IN std_logic;
			Z : OUT std_logic_vector(15 downto 0)
	);
end mux2to1_16bit;

architecture Behavioral of mux2to1_16bit is

begin

	z <= In0 after 1 ns when s='0' else
			In1 after 1 ns when s='1' else
			X"0000" after 1 ns;

end Behavioral;
