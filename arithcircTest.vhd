--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:18:21 03/10/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/BLab1/arithcircTest.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arithCirc
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
 
ENTITY arithcircTest IS
END arithcircTest;
 
ARCHITECTURE behavior OF arithcircTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithCirc
    PORT(
         input0 : IN  std_logic_vector(15 downto 0);
         input1 : IN  std_logic_vector(15 downto 0);
         select0 : IN  std_logic;
         select1 : IN  std_logic;
         carIn : IN  std_logic;
         carryOut : OUT  std_logic;
         overflow : OUT  std_logic;
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input0 : std_logic_vector(15 downto 0) := X"0001";
   signal input1 : std_logic_vector(15 downto 0) := X"0002";
   signal select0 : std_logic := '0';
   signal select1 : std_logic := '0';
   signal carIn : std_logic := '0';

 	--Outputs
   signal carryOut : std_logic;
   signal overflow : std_logic;
   signal output : std_logic_vector(15 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithCirc PORT MAP (
          input0 => input0,
          input1 => input1,
          select0 => select0,
          select1 => select1,
          carIn => carIn,
          carryOut => carryOut,
          overflow => overflow,
          output => output
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		 
		wait for 1 ns;
		
		select0 <= '0';
		select1 <= '0';
		carIn <= '1';
		wait for 1 ns;
		
		select0 <= '1';
		select1 <= '0';
		carIn <= '1';
		
		
		wait for 1 ns;
	 
		select0 <= '1';
		select1 <= '1';
		carIn <= '1';		
		
		
		
		
      -- insert stimulus here 

   end process;

END;
