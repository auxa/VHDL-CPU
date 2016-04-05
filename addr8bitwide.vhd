----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:09:27 03/29/2016 
-- Design Name: 
-- Module Name:    addr8bitwide - Behavioral 
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

entity addr8bitwide is
	port (in0, in1: in std_logic_vector(7 downto 0);
		carryIn : in std_logic;
		sum: out std_logic_vector(7 downto 0);
		c, overFlow : out std_logic);
end addr8bitwide;

architecture Behavioral of addr8bitwide is
	component half_adder
	port(x, y ,z : in std_logic;
		s, c : out std_logic);
end component;
signal z1, z2, z3, z4, z5, z6, z7, z8 : std_logic;
begin

adder00: half_adder
	port map (x => in0(0), 
	y => in1(0),
	z => carryIn,
	s => sum(0),
	c => z1);
adder01: half_adder
	port map (x => in0(1), 
	y => in1(1),
	z => z1,
	s => sum(1),
	c => z2);
adder02: half_adder
	port map (x => in0(2), 
	y => in1(2),
	z => z2,
	s => sum(2),
	c => z3);
adder03: half_adder
	port map (x => in0(3), 
	y => in1(3),
	z => z3,
	s => sum(3),
	c => z4);
adder04: half_adder
	port map (x => in0(4), 
	y => in1(4),
	z => z4,
	s => sum(4),
	c => z5);
adder05: half_adder
	port map (x => in0(5), 
	y => in1(5),
	z => z5,
	s => sum(5),
	c => z6);
adder06: half_adder
	port map (x => in0(6), 
	y => in1(6),
	z => z6,
	s => sum(6),
	c => z7);
adder07: half_adder
	port map (x => in0(7), 
	y => in1(7),
	z => z7,
	s => sum(7),
	c => z8);

overflow <= (z6 xor z7) after 1ns;
c <= z8 after 1ns;
end Behavioral;
