----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:05:15 03/29/2016 
-- Design Name: 
-- Module Name:    ControlAddrRegister - Behavioral 
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

entity ControlAddrRegister is
port(  addressIn : in std_logic_vector (7 downto 0);
			conditionIn, Clk, reset : in std_logic;
				addressOut : out std_logic_vector(7 downto 0));
end ControlAddrRegister;

architecture Behavioral of ControlAddrRegister is

component addr8bitwide
port (in0, in1: in std_logic_vector(7 downto 0);
		carryIn : in std_logic;
		sum: out std_logic_vector(7 downto 0);
		c, overFlow : out std_logic);
end component;
component register8bitWide

PORT(
			D : IN std_logic_vector(7 downto 0);
			load : IN std_logic;
			Clk : IN std_logic;
			reset : IN std_logic;
			Q : OUT std_logic_vector(7 downto 0)
	);
end component;
signal curVal, output, adderOut : std_logic_vector(7 downto 0);
begin

reg8 : register8bitWide 
port map( D => adderOut,
			load => '1',
			reset => reset,
			Clk => Clk,
			Q => addressOut);

add8 : addr8bitwide
port map ( in0 => addressIn,
				in1 => (others => '0'),
				carryIn => conditionIn,
				sum => adderOut);

end Behavioral;

