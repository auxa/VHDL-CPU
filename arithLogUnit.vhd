----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:43:35 03/09/2016 
-- Design Name: 
-- Module Name:    arithLogUnit - Behavioral 
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

entity arithLogUnit is
	port(carryIn, select0, select1, outputSelect: in std_logic;
		A, B : in std_logic_vector(15 downto 0);
			G : out std_logic_vector(15 downto 0);
				carryOut, overflow : out std_logic);
end arithLogUnit;

architecture Behavioral of arithLogUnit is

component arithCirc
	port(input0, input1 : in std_logic_vector(15 downto 0);
		select0, select1, carIn : in std_logic;
		carryOut, overflow : out std_logic;
		output : out std_logic_vector(15 downto 0));
		
end component;

component LogiCircuit
	port(A, B : in std_logic_vector(15 downto 0);
		select0, select1 : in std_logic;
		G : out std_logic_vector(15 downto 0));
end component;

component mux2_2_1 
		port(A, B : in std_logic_vector(15 downto 0);
		select0 : in std_logic;
		G : out std_logic_vector(15 downto 0));
end component;		

signal ariOut, logiOut : std_logic_vector(15 downto 0);
 
begin


arithmeticCircuit : arithCirc
	port map(
		input0 => A,
		input1 => B,
		select0 => select0,
		select1 => select1,
		carIn => carryIn,
		carryOut => carryOut,
		overflow => overflow,
		output => ariOut
		);
		
logicCircuit : LogiCircuit
	port map (
		A => A,
		B => B,
		select0 => select0,
		select1 => select1,
		G=> logiOut
		);
mux2to1 : mux2_2_1
	port map (
		A => ariOut,
		B => logiOut,
		select0 => outputSelect,
		G => G
		);
end Behavioral;

