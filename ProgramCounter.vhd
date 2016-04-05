----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:06:02 03/29/2016 
-- Design Name: 
-- Module Name:    ProgramCounter - Behavioral 
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

entity ProgramCounter is
Port( PI, PL, Clk, reset  : in std_logic;
		offset : in std_logic_vector(15 downto 0);
		output : out std_logic_vector(15 downto 0));
end ProgramCounter;

architecture Behavioral of ProgramCounter is

component adder16
	port (in0, in1 : in std_logic_vector(15 downto 0);
		carryIn : in std_logic;
		sum: out std_logic_vector(15 downto 0);
		c, overFlow : out std_logic);
end component;
component registerReset
	PORT(
			D : IN std_logic_vector(15 downto 0);
			load : IN std_logic;
			Clk : IN std_logic;
			reset : IN std_logic;
			Q : OUT std_logic_vector(15 downto 0)
	);
end component;
signal currentValue, offsetSignal, outputVal : std_logic_vector(15 downto 0);

begin
tempRegister : registerReset
port map( D => currentValue,
			load =>'1',
			reset => reset,
			Clk => Clk,
			Q => outputVal
			);
			
add1 : adder16 
port map( in0 => outputVal,
			in1 => offsetSignal,
			carryIn => PI,
			sum => currentValue
			);
			
offsetSignal <= offset after 0 ns when PL ='1' and reset ='0' else
										(others => '0') after 0 ns;
		
		
output <= outputVal after 0 ns;

end Behavioral;

