----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:54:59 03/09/2016 
-- Design Name: 
-- Module Name:    mux2_2_1 - Behavioral 
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

entity mux2_2_1 is
	port(A, B : in std_logic_vector(15 downto 0);
		select0 : in std_logic;
		G : out std_logic_vector(15 downto 0));
end mux2_2_1;

architecture Behavioral of mux2_2_1 is

begin
	G <= A after 1 ns when select0 = '0' else
		  B after 1 ns when select0 = '1' else
		  "0000000000000000" after 1 ns;

end Behavioral;

