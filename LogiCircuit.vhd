----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:36:23 03/08/2016 
-- Design Name: 
-- Module Name:    LogiCircuit - Behavioral 
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

entity LogiCircuit is
	port(A, B :in std_logic_vector(15 downto 0);
			select0, select1 : in std_logic;
			G: out std_logic_vector(15 downto 0));
end LogiCircuit;

architecture Behavioral of LogiCircuit is
	component mux4_2_1
	port(In0, In1, In2, In3 : in std_logic;
		S0, S1 : in std_logic;
		Z : out std_logic);
end component;

signal and0, and1, and2, and3, and4, and5,and6,and7,and8,and9,and10,and11,and12,and13,and14,and15 : std_logic;
signal or0, or1,or2,or3,or4,or5,or6,or7,or8,or9,or10,or11,or12,or13,or14,or15 : std_logic;
signal not0, not1,not2,not3,not4,not5,not6,not7,not8,not9, not10,not11,not12,not13,not14,not15: std_logic;
signal xor0, xor1,xor2,xor3,xor4,xor5,xor6,xor7,xor8,xor9,xor10,xor11,xor12,xor13,xor14,xor15 : std_logic;


begin
and0 <=( A(0) and B(0)) after 1 ns;
and1 <=( A(1) and B(1)) after 1 ns;
and2 <=( A(2) and B(2)) after 1 ns;
and3 <=( A(3) and B(3)) after 1 ns;
and4 <=( A(4) and B(4)) after 1 ns;
and5 <=( A(5) and B(5)) after 1 ns;
and6 <=( A(6) and B(6)) after 1 ns;
and7 <=( A(7) and B(7)) after 1 ns;
and8 <=( A(8) and B(8)) after 1 ns;
and9 <=( A(9) and B(9)) after 1 ns;
and10 <=( A(10) and B(10)) after 1 ns;
and11 <=( A(11) and B(11)) after 1 ns;
and12 <=( A(12) and B(12)) after 1 ns;
and13 <=( A(13) and B(13)) after 1 ns;
and14 <=( A(14) and B(14)) after 1 ns;
and15 <=( A(15) and B(15)) after 1 ns;

or0 <=( A(0) or B(0)) after 1 ns;
or1 <=( A(1) or B(1)) after 1 ns;
or2 <=( A(2) or B(2)) after 1 ns;
or3 <=( A(3) or B(3)) after 1 ns;
or4 <=( A(4) or B(4)) after 1 ns;
or5 <=( A(5) or B(5)) after 1 ns;
or6 <=( A(6) or B(6)) after 1 ns;
or7 <=( A(7) or B(7)) after 1 ns;
or8 <=( A(8) or B(8)) after 1 ns;
or9 <=( A(9) or B(9)) after 1 ns;
or10 <=( A(10) or B(10)) after 1 ns;
or11 <=( A(11) or B(11)) after 1 ns;
or12 <=( A(12) or B(12)) after 1 ns;
or13 <=( A(13) or B(13)) after 1 ns;
or14 <=( A(14) or B(14)) after 1 ns;
or15 <=( A(15) or B(15)) after 1 ns;


xor0 <=( A(0) xor B(0)) after 1 ns;
xor1 <=( A(1) xor B(1)) after 1 ns;
xor2 <=( A(2) xor B(2)) after 1 ns;
xor3 <=( A(3) xor B(3)) after 1 ns;
xor4 <=( A(4) xor B(4)) after 1 ns;
xor5 <=( A(5) xor B(5)) after 1 ns;
xor6 <=( A(6) xor B(6)) after 1 ns;
xor7 <=( A(7) xor B(7)) after 1 ns;
xor8 <=( A(8) xor B(8)) after 1 ns;
xor9 <=( A(9) xor B(9)) after 1 ns;
xor10 <=( A(10) xor B(10)) after 1 ns;
xor11 <=( A(11) xor B(11)) after 1 ns;
xor12 <=( A(12) xor B(12)) after 1 ns;
xor13 <=( A(13) xor B(13)) after 1 ns;
xor14 <=( A(14) xor B(14)) after 1 ns;
xor15 <=( A(15) xor B(15)) after 1 ns;



not0 <= not A(0)  after 1 ns;
not1 <=not A(1) after 1 ns;
not2 <=not A(2)  after 1 ns; 
not3 <=not A(3)  after 1 ns;
not4 <=not A(4) after 1 ns;
not5 <=not A(5) after 1 ns;
not6 <=not A(6)  after 1 ns;
not7 <=not A(7)  after 1 ns;
not8 <=not A(8)  after 1 ns;
not9 <=not A(9)  after 1 ns;
not10 <=not A(10)  after 1 ns;
not11 <=not A(11) after 1 ns;
not12 <=not A(12) after 1 ns;
not13 <=not A(13)  after 1 ns;
not14 <=not A(14)  after 1 ns;
not15 <=not A(15) after 1 ns;

mux00 : mux4_2_1 port map(

		In0 => and0,
		In1 => or0,
		In2 => not0,
		In3 => xor0,
		s0 => select0,
		s1 => select1,
		Z => G(0));
mux01 : mux4_2_1 port map(

		In0 => and1,
		In1 => or1,
		In2 => not1,
		In3 => xor1,
		s0 => select0,
		s1 => select1,
		Z => G(1));
mux02 : mux4_2_1 port map(

		In0 => and2,
		In1 => or2,
		In2 => not2,
		In3 => xor2,
		s0 => select0,
		s1 => select1,
		Z => G(2));
mux03 : mux4_2_1 port map(

		In0 => and3,
		In1 => or3,
		In2 => not3,
		In3 => xor3,
		s0 => select0,
		s1 => select1,
		Z => G(3));
mux04 : mux4_2_1 port map(

		In0 => and4,
		In1 => or4,
		In2 => not4,
		In3 => xor4,
		s0 => select0,
		s1 => select1,
		Z => G(4));
		
mux05 : mux4_2_1 port map(

		In0 => and5,
		In1 => or5,
		In2 => not5,
		In3 => xor5,
		s0 => select0,
		s1 => select1,
		Z => G(5));

mux06 : mux4_2_1 port map(

		In0 => and6,
		In1 => or6,
		In2 => not6,
		In3 => xor6,
		s0 => select0,
		s1 => select1,
		Z => G(6));
mux07 : mux4_2_1 port map(

		In0 => and7,
		In1 => or7,
		In2 => not7,
		In3 => xor7,
		s0 => select0,
		s1 => select1,
		Z => G(7));

mux08 : mux4_2_1 port map(

		In0 => and8,
		In1 => or8,
		In2 => not8,
		In3 => xor8,
		s0 => select0,
		s1 => select1,
		Z => G(8));
mux09 : mux4_2_1 port map(

		In0 => and9,
		In1 => or9,
		In2 => not9,
		In3 => xor9,
		s0 => select0,
		s1 => select1,
		Z => G(9));
mux10 : mux4_2_1 port map(

		In0 => and10,
		In1 => or10,
		In2 => not10,
		In3 => xor10,
		s0 => select0,
		s1 => select1,
		Z => G(10));
mux11 : mux4_2_1 port map(

		In0 => and11,
		In1 => or11,
		In2 => not11,
		In3 => xor11,
		s0 => select0,
		s1 => select1,
		Z => G(11));
mux12 : mux4_2_1 port map(

		In0 => and12,
		In1 => or12,
		In2 => not12,
		In3 => xor12,
		s0 => select0,
		s1 => select1,
		Z => G(12));
mux13 : mux4_2_1 port map(

		In0 => and13,
		In1 => or13,
		In2 => not13,
		In3 => xor13,
		s0 => select0,
		s1 => select1,
		Z => G(13));
mux14 : mux4_2_1 port map(

		In0 => and14,
		In1 => or14,
		In2 => not14,
		In3 => xor14,
		s0 => select0,
		s1 => select1,
		Z => G(14));
mux15 : mux4_2_1 port map(

		In0 => and15,
		In1 => or15,
		In2 => not15,
		In3 => xor15,
		s0 => select0,
		s1 => select1,
		Z => G(15));









end Behavioral;

