----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:23:46 03/10/2016 
-- Design Name: 
-- Module Name:    zeroDetect - Behavioral 
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

entity zeroDetect is
	port( input : in std_logic_vector(15 downto 0);
			output : out std_logic);
end zeroDetect;

architecture Behavioral of zeroDetect is

begin	

	output <= (not(input(0) or input(1) or input(2) or input(3) or input(4) or input(5) or input(6) or input(7) or input(8) or input(9) or input(10) or input(11) or input(12) or input(13) or input(14) or input(15))) after 1 ns;

end Behavioral;

