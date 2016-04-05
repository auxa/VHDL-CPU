--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:42:42 03/31/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/memory_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: memory
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY memory_tb IS
END memory_tb;
 
ARCHITECTURE behavior OF memory_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memory
    PORT(
         address : IN  std_logic_vector(15 downto 0);
         write_data : IN  std_logic_vector(15 downto 0);
         MemWrite : IN  std_logic;
         MemRead : IN  std_logic;
         read_data : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(15 downto 0) := X"0000";
   signal write_data : std_logic_vector(15 downto 0) := X"0000";
   signal MemWrite : std_logic := '0';
   signal MemRead : std_logic := '0';

 	--Outputs
   signal read_data : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memory PORT MAP (
          address => address,
          write_data => write_data,
          MemWrite => MemWrite, 
          MemRead => MemRead,
          read_data => read_data
        );

   -- Clock process definitions
  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
			MemRead <= '1';
			wait for 10 ns;
			address <=X"0000";
			wait for 10 ns;
			address <= X"0001";
			wait for 10 ns;
			address <= X"0002";
			wait for 10 ns;
			address <= X"0003";
			wait for 10 ns;
			address <= X"0004";
			wait for 10 ns;
			address <= X"0005";
			wait for 10 ns;
			address <= X"0006";
			wait for 10 ns;
			address <= X"0007";
			wait for 10 ns;
			address <= X"0000";
			write_data <= X"0008";
			MemWrite <='1';
			MemRead <= '0';
			
			wait for 10 ns;
			MemWrite <='0';


      -- insert stimulus here 

  
   end process;

END;
