----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:47:51 03/29/2016 
-- Design Name: 
-- Module Name:    memory - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory is
	Port ( address : in std_logic_vector(15 downto 0);
			write_data : in std_logic_vector(15 downto 0);
			MemWrite, MemRead : in std_logic;
			read_data : out std_logic_vector(15 downto 0));
end memory;

architecture Behavioral of memory is
type mem_array is array(0 to 511) of std_logic_vector(15 downto 0);

begin

	mem_process: process (address, write_data)
	-- initialize data memory, X denotes hexadecimal number
	variable data_mem : mem_array := (
	X"0000", 
	X"0603", 
	X"0802", 
	X"0802", 
	X"0802", 
	X"0A00", 
	X"0C00",
	X"0E00",
	X"0E00", 
	X"0642", 
	X"1001", 
	X"1204", 
	X"0802",
	X"0802", 
	X"0802", 
	X"0805", 
	X"0600", 
	X"1403", 
	X"0802",
	X"0802", 
	X"0803",
	X"1403", 
	X"0803", 

	
	others=> X"0000");
	variable addr:integer;
	begin
	addr:=conv_integer(unsigned(address(2 downto 0)));
	if MemWrite ='1' then
		data_mem(addr):= write_data;
	elsif MemRead='1' then
		read_data <= data_mem(addr) after 10 ns;
	end if;
	end process;
end Behavioral;

