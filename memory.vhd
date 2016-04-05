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
	X"0000", --load next instruction 
	X"0603", --load 3 into register 0
	X"0802", --ADI 2 and R0 into R0, R0 = 5 0101
	X"0802", -- same as above			R0 =7 0111
	X"0802", -- same as above, just for kicks, R0 =9 1001
	X"0A00", -- SR R0 into R0, R0 =4 100
	X"0C00", -- INC R0			R0 =5 101
	X"0E00", -- NOT R0 into R0 R0 = not(101)
	X"0E00", -- NOT R0 into R0 R0 = not(101), just to make the register
	--				workable again. R0=5
	X"0642", -- load 2 into R1, for purposes of addition
	X"1001", -- add R0 and R1 into R0, R0=7 (0111)
	X"1204", -- uncondition branch (offset = 4), next 3 instructions should be skipped
	--the address will be address + 4, thus the instruction at address + 4 will be
	--executed
	X"0802", --ADI 2 and R0 into R0, R0 = 9 if this were not skipped (address+1)
	X"0802", --ADI 2 and R0 into R0, R0 = 11 if this were not skipped (address+2)
	X"0802", --ADI 2 and R0 into R0, R0 = 13 if this were not skipped (address+3)
	X"0805", --ADI -3 and R0 into R0, if branch successful, R0=4 
	X"0600", --load 0 into register 0, setting the Z flag
	X"1403", --branch if Z is set. Branch offset = 3
	X"0802", --ADI 2 and R0 into R0, R0 = 2 if this were not skipped (address+2)
	X"0802", --ADI 2 and R0 into R0, R0 = 4 if this were not skipped (address+3)
	X"0803", --ADI 3 and R0. R0=3, as previous two instructions were skipped
	X"1403", --branch if Z is set. Branch offset = 3
	X"0803", --ADI 2 and R0 into R0, R0 = 6 as this was not skipped, huzzah
	--screenshots attached, or just run the code I submitted. Altough that's probably
	--a lot of work.
	
	others=> X"0000");
	variable addr:integer;
	begin -- the following type conversion function is in std_logic_arith
	addr:=conv_integer(unsigned(address(2 downto 0)));
	if MemWrite ='1' then
		data_mem(addr):= write_data;
	elsif MemRead='1' then
		read_data <= data_mem(addr) after 10 ns;
	end if;
	end process;
end Behavioral;

