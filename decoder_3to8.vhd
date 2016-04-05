----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:31:20 02/16/2016 
-- Design Name: 
-- Module Name:    decoder_3to8 - Behavioral 
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

entity decoder_3to8 is
	Port ( A0 : in std_logic;
		A1 : in std_logic;
		A2 : in std_logic;
		A3 : in std_logic;
		Q0 : out std_logic;
		Q1 : out std_logic;
		Q2 : out std_logic;
		Q3 : out std_logic;
		Q4 : out std_logic;
		Q5 : out std_logic;
		Q6 : out std_logic;		Q7 : out std_logic;
		Q8 : out std_logic;
		Q9 : out std_logic;
		Q10 : out std_logic;
		Q11 : out std_logic;
		Q12 : out std_logic;
		Q13 : out std_logic;
		Q14 : out std_logic;		Q15 : out std_logic);
end decoder_3to8;

architecture Behavioral of decoder_3to8 is

begin
	Q0<= ((not A0) and (not A1) and (not A2) and (not A3)) after 5 ns;
	Q1<= ((not A0) and (not A1) and (not A2) and A3) after 5 ns;
	Q2<= ((not A0) and (not A1) and A2 and (not A3)) after 5 ns;
	Q3<= ((not A0) and (not A1)  and A2 and A3) after 5 ns;
	Q4<= ((not A0) and  A1 and (not A2) and (not A3)) after 5 ns;
	Q5<= ((not A0) and A1 and (not A2) and A3) after 5 ns;
	Q6<= ((not A0) and A1 and A2 and (not A3)) after 5 ns;
	Q7<= ((not A0) and A1 and A2 and A3) after 5 ns;
	Q8<= (A0 and (not A1) and (not A2) and (not A3)) after 5 ns;
	Q9<= (A0 and (not A1) and (not A2) and A3) after 5 ns;
	Q10<= (A0 and (not A1) and A2 and (not A3)) after 5 ns;
	Q11<= (A0 and (not A1)  and A2 and A3) after 5 ns;
	Q12<= (A0 and  A1 and (not A2) and (not A3)) after 5 ns;
	Q13<= (A0 and A1 and (not A2) and A3) after 5 ns;
	Q14<= (A0 and A1 and A2 and (not A3)) after 5 ns;
	Q15<= (A0 and A1 and A2 and A3) after 5 ns;
 
end Behavioral;

