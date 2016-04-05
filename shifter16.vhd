----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:00 03/09/2016 
-- Design Name: 
-- Module Name:    shifter16 - Behavioral 
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

entity shifter16 is
	port(value : in std_logic_vector(15 downto 0);
		select0, select1 : in std_logic;
		output : out std_logic_vector(15 downto 0));
end shifter16;

architecture Behavioral of shifter16 is
component mux4_2_1
	port(In0, In1, In2, In3 : in std_logic;
		S0, S1 : in std_logic;
		Z : out std_logic);
end component;

	
begin

mux00 : mux4_2_1 port map(
	
	In0 => value(0),
	In1 => value(1),
	In2 => '0',
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(0));
mux01 : mux4_2_1 port map(
	
	In0 => value(1),
	In1 => value(2),
	In2 => value(0),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(1));
mux02 : mux4_2_1 port map(
	
	In0 => value(2),
	In1 => value(3),
	In2 => value(1),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(2));
mux03 : mux4_2_1 port map(
	
	In0 => value(3),
	In1 => value(4),
	In2 => value(2),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(3));
mux04 : mux4_2_1 port map(
	
	In0 => value(4),
	In1 => value(5),
	In2 => value(3),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(4));
mux05 : mux4_2_1 port map(
	
	In0 => value(5),
	In1 => value(6),
	In2 => value(4),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(5));
mux06 : mux4_2_1 port map(
	
	In0 => value(6),
	In1 => value(7),
	In2 => value(5),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(6));	
	
mux07 : mux4_2_1 port map(
	
	In0 => value(7),
	In1 => value(8),
	In2 => value(6),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(7));
mux08 : mux4_2_1 port map(
	
	In0 => value(8),
	In1 => value(9),
	In2 => value(7),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(8));
mux09 : mux4_2_1 port map(
	
	In0 => value(9),
	In1 => value(10),
	In2 => value(8),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(9));
	
mux10 : mux4_2_1 port map(
	
	In0 => value(10),
	In1 => value(11),
	In2 => value(9),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(10));
mux11 : mux4_2_1 port map(
	
	In0 => value(11),
	In1 => value(12),
	In2 => value(10),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(11));
mux12 : mux4_2_1 port map(
	
	In0 => value(12),
	In1 => value(13),
	In2 => value(11),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(12));
	
mux13 : mux4_2_1 port map(
	
	In0 => value(13),
	In1 => value(14),
	In2 => value(12),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(13));
mux14 : mux4_2_1 port map(
	
	In0 => value(14),
	In1 => value(15),
	In2 => value(13),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(14));
mux15 : mux4_2_1 port map(
	
	In0 => value(15),
	In1 => '0',
	In2 => value(14),
	In3 => '0',
	S0 => select0,
	S1 => select1, 
	Z => output(15));
end Behavioral;

