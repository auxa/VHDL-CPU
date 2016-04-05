----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:26:57 03/29/2016 
-- Design Name: 
-- Module Name:    InstructionReg - Behavioral 
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

entity InstructionReg is
port ( inputIns : in std_logic_vector(15 downto 0);
			instructionLoad, Clk, reset : in std_logic;
			opcode : out std_logic_vector(6 downto 0);
			destRegister, sourceRegA, sourceRegB : out std_logic_vector(2 downto 0));
end InstructionReg;
architecture Behavioral of InstructionReg is
COMPONENT reg16
		PORT(
			D : IN std_logic_vector(15 downto 0);
			load : IN std_logic;
			Clk : IN std_logic;
			Q : OUT std_logic_vector(15 downto 0)
	);	END COMPONENT;

signal curInstruction : std_logic_vector(15 downto 0);
begin
regHold : reg16
port map ( D => inputIns,
				load => instructionLoad,
				Clk => Clk,
				Q => curInstruction);
				
opcode <= curInstruction(15 downto 9) after 0 ns when reset ='0' else (others => '0') after 0 ns;
destRegister <= curInstruction(8 downto 6) after 0 ns when reset='0' else (others =>'0') after 0 ns;
sourceRegA <= curInstruction(5 downto 3) after 0 ns when reset='0' else (others => '0') after 0 ns;
sourceRegB <= curInstruction(2 downto 0) after 0 ns when reset='0' else (others => '0') after 0 ns;


end Behavioral;

