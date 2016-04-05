--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:04:34 03/10/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/BLab1/funUnitTest.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: functionalUnit
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
 
ENTITY funUnitTest IS
END funUnitTest;
 
ARCHITECTURE behavior OF funUnitTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT functionalUnit
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         select0 : IN  std_logic_vector(4 downto 0);
         zero : OUT  std_logic;
         overflow : OUT  std_logic;
         carry : OUT  std_logic;
         negative : OUT  std_logic;
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT; 
    

   --Inputs 
   signal A : std_logic_vector(15 downto 0) := X"0004";
   signal B : std_logic_vector(15 downto 0) := X"0003";
   signal select0 : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs 
   signal zero : std_logic;
   signal overflow : std_logic;
   signal carry : std_logic;
   signal negative : std_logic;
   signal output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN 
   
	-- Instantiate the Unit Under Test (UUT) 
   uut: functionalUnit PORT MAP (
          A => A,
          B => B,
          select0 => select0,
          zero => zero,
          overflow => overflow, 
          carry => carry,
          negative => negative,
          output => output
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 30 ns;
		select0(0) <= '1';
		select0(1) <= '0';
		select0(2) <= '0';
		select0(3) <= '0';
		select0(4) <= '0';
		--increment ^ = 5
		wait for 30 ns;
		select0(0) <= '0';
		select0(1) <= '1';
		select0(2) <= '0';
		select0(3) <= '0';
		select0(4) <= '0';
		--addition ^ = 7
		wait for 30 ns;
		select0(0) <= '1';
		select0(1) <= '1';
		select0(2) <= '0';
		select0(3) <= '0';
		select0(4) <= '0';
		--increment + addition = 8
		wait for 30 ns;
		select0(0) <= '1';
		select0(1) <= '0';
		select0(2) <= '1';
		select0(3) <= '0';
		select0(4) <= '0';
		--subtraction = 1
		wait for 30 ns;
		select0(0) <= '0';
		select0(1) <= '1';
		select0(2) <= '1';
		select0(3) <= '0';
		select0(4) <= '0';
		--decrement = 3
		
		--LOGIC OPERATION TESTS
		wait for 30 ns;
		select0(0) <= '0';
		select0(1) <= '0';
		select0(2) <= '0';
		select0(3) <= '1';
		select0(4) <= '0';
		--A AND B = 0
		wait for 30 ns;
		select0(0) <= '0';
		select0(1) <= '1';
		select0(2) <= '0';
		select0(3) <= '1';
		select0(4) <= '0';
		--A OR B = 7
		wait for 30 ns;
		select0(0) <= '0';
		select0(1) <= '0';
		select0(2) <= '1';
		select0(3) <= '1';
		select0(4) <= '0';
		--A XOR B = 7
		wait for 30 ns;
		select0(0) <= '0';
		select0(1) <= '1';
		select0(2) <= '1';
		select0(3) <= '1';
		select0(4) <= '0';
		--NOT A
		
		--SHIFTER TESTS
		wait for 30 ns;
		select0(0) <= '0';
		select0(1) <= '0';
		select0(2) <= '1';
		select0(3) <= '0';
		select0(4) <= '1';
		--SHIFT RIGHT 3 = 1
		wait for 30 ns;
		select0(0) <= '0';
		select0(1) <= '0';
		select0(2) <= '0';
		select0(3) <= '1';
		select0(4) <= '1';
		--SHIFT LEFT 3 = 6

      -- insert stimulus here 

   end process;

END;
