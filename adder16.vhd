----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:05:14 03/08/2016 
-- Design Name: 
-- Module Name:    adder16 - Behavioral 
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

entity adder16 is
		
	port (in0, in1: in std_logic_vector(15 downto 0);
		carryIn : in std_logic;
		sum: out std_logic_vector(15 downto 0);
		c, overFlow : out std_logic);
end adder16;

architecture Behavioral of adder16 is
	component half_adder
	port(x, y ,z : in std_logic;
		s, c : out std_logic);
end component;
signal z1, z2, z3, z4, z5, z6, z7, z8, z9, z10, z11, z12, z13, z14, z15, z16 : std_logic;
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
adder08: half_adder
	port map (x => in0(6), 
	y => in1(8),
	z => z8,
	s => sum(8),
	c => z9);
adder09: half_adder
	port map (x => in0(9), 
	y => in1(9),
	z => z9,
	s => sum(9),
	c => z10);
adder10: half_adder
	port map (x => in0(10), 
	y => in1(10),
	z => z10,
	s => sum(10),
	c => z11);
adder11: half_adder
	port map (x => in0(11), 
	y => in1(11),
	z => z11,
	s => sum(11),
	c => z12);
adder12: half_adder

	port map (x => in0(12), 
	y => in1(12),
	z => z12,
	s => sum(12),
	c => z13);
adder13: half_adder
	port map (x => in0(13), 
	y => in1(13),
	z => z13,
	s => sum(13),
	c => z14);
adder14: half_adder
	port map (x => in0(14), 
	y => in1(14),
	z => z14,
	s => sum(14),
	c => z15);
adder15: half_adder
	port map (x => in0(15), 
	y => in1(15),
	z => z15,
	s => sum(15),
	c => z16);

overflow <= (z15 xor z16) after 1ns;
c <= z16 after 1ns;
end Behavioral;

