----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:43 03/08/2016 
-- Design Name: 
-- Module Name:    arithCirc - Behavioral 
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

entity arithCirc is
 port(input0, input1 : in std_logic_vector(15 downto 0);
			select0, select1, carIn : in std_logic;
				carryOut, overflow : out std_logic;
				output : out std_logic_vector(15 downto 0));
end arithCirc;

architecture Behavioral of arithCirc is

component adder16
	port (in0, in1 : in std_logic_vector(15 downto 0);
		carryIn : in std_logic;
		sum: out std_logic_vector(15 downto 0);
		c, overFlow : out std_logic);
end component;
begin

rippleAdder : adder16 port map(
		
		in0 => input0,
		in1 => input1,
		carryIn => carIn,
		sum => output,
		c=> carryOut,
		overFlow =>overflow);

end Behavioral;

