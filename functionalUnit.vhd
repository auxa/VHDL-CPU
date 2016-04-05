----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:33:41 03/10/2016 
-- Design Name: 
-- Module Name:    functionalUnit - Behavioral 
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

entity functionalUnit is
port (A, B : in std_logic_vector(15 downto 0);
		select0: in std_logic_vector(4 downto 0);
		zero, overflow, carry, negative : out std_logic;
		output : out std_logic_vector(15 downto 0));


end functionalUnit;

architecture Behavioral of functionalUnit is

component shifter16 
port(value : in std_logic_vector(15 downto 0);
		select0, select1 : in std_logic;
		output : out std_logic_vector(15 downto 0));	
end component;

component zeroDetect
port( input : in std_logic_vector(15 downto 0);
		output : out std_logic);
end component;

component arithLogUnit
port(carryIn, select0, select1, outputSelect: in std_logic;
		A, B : in std_logic_vector(15 downto 0);
			G : out std_logic_vector(15 downto 0);
				carryOut, overflow : out std_logic);
end component;				
component mux2_2_1 
	port(A, B : in std_logic_vector(15 downto 0);
		select0 : in std_logic;
		G : out std_logic_vector(15 downto 0));
end component;		

signal shifterOut, aluOut : std_logic_vector(15 downto 0);

begin

arithmeticLogicUnit : arithLogUnit 
port map( carryIn => select0(0),
			select0 => select0(1),
			select1 => select0(2),
			outputSelect => select0(3),
			A => A,
			B=> B,
			G => aluOut,
			carryOut=> carry,
			overflow=> overflow);
			
zeroDetect1 : zeroDetect 
port map ( input => A,
			output => zero);
			
shifter : shifter16 
port map ( value => A,
			select0 => select0(2),
			select1 => select0(3),
			output => shifterOut);
			
			
mux2to1 : mux2_2_1
port map ( A => aluOut,
			B=> shifterOut,
			select0 => select0(4),
			G => output);

negative <= aluOut(15) after 1 ns;
			

end Behavioral;

