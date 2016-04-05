----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:13:06 02/16/2016 
-- Design Name: 
-- Module Name:    mux8 - Behavioral 
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

entity mux8 is
	Port ( In0, In1, In2, In3, In4, In5, In6, In7,In8, In9, In10, In11, In12, In13, In14, In15 : in std_logic_vector(15 downto 0);
		S0, S1, S2, S3 : in std_logic;
		Z : out std_logic_vector(15 downto 0));
end mux8;

architecture Behavioral of mux8 is
begin
	Z <= In0 after 5 ns when S0='0' and S1='0' and S2 ='0' and S3 ='0' else
		In1 after 5 ns when S0='0' and S1='0' and S2 ='0' and S3 ='1' else
		In2 after 5 ns when S0='0' and S1='0' and S2 ='1' and S3 ='0' else
		In3 after 5 ns when S0='0' and S1='0' and S2 ='1' and S3 ='1' else
		In4 after 5 ns when S0='0' and S1='1' and S2 ='0' and S3 ='0' else
		In5 after 5 ns when S0='0' and S1='1' and S2 ='0' and S3 ='1' else
		In6 after 5 ns when S0='0' and S1='1' and S2 ='1' and S3 ='0' else
		In7 after 5 ns when S0='0' and S1='1' and S2 ='1' and S3 ='1' else
		In8 after 5 ns when S0='1' and S1='0' and S2 ='0' and S3 ='0' else
		In9 after 5 ns when S0='1' and S1='0' and S2 ='0' and S3 ='1' else
		In10 after 5 ns when S0='1' and S1='0' and S2 ='1' and S3 ='0' else
		In11 after 5 ns when S0='1' and S1='0' and S2 ='1' and S3 ='1' else
		In12 after 5 ns when S0='1' and S1='1' and S2 ='0' and S3 ='0' else
		In13 after 5 ns when S0='1' and S1='1' and S2 ='0' and S3 ='1' else
		In14 after 5 ns when S0='1' and S1='1' and S2 ='1' and S3 ='0' else
		In15 after 5 ns when S0='1' and S1='1' and S2 ='1' and S3 ='1';
end Behavioral;

