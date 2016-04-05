----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:32 02/16/2016 
-- Design Name: 
-- Module Name:    mux_2to1 - Behavioral 
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

entity mux_2to1 is
	port ( In0 : in std_logic_vector(15 downto 0);
	In1 : in std_logic_vector(15 downto 0);
	s : in std_logic;
	Z : out std_logic_vector(15 downto 0));
end mux_2to1;

architecture Behavioral of mux_2to1 is

begin
Z <= In0 after 5 ns when S='0' else
    	In1 after 5 ns when S='1'else
		"0000000000000000" after 5 ns;

end Behavioral;

