----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:29:21 03/31/2016 
-- Design Name: 
-- Module Name:    mux2to1_8bit - Behavioral 
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
 
entity mux2to1_8bit is
port( select0 : in std_logic;
		In0, In1 : in std_logic_vector(7 downto 0);
		Z : out std_logic_vector(7 downto 0));
end mux2to1_8bit;

architecture Behavioral of mux2to1_8bit is

begin
Z <= In0 after 5 ns when select0 ='0' else
		In1 after 5 ns when select0 ='1' else
		X"00" after 5 ns;

end Behavioral;

