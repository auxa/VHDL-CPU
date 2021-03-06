--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:48:52 03/10/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/BLab1/h_adderTest.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: half_adder
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
 
ENTITY h_adderTest IS
END h_adderTest;
 
ARCHITECTURE behavior OF h_adderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_adder
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         s : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
  
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder PORT MAP (
          x => x, 
          y => y,
          z => z,
          s => s,
          c => c
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 1 ns;	
	x <= '0';
	y <= '0';
	c <= '0';
	wait for 1 ns;
	
	x <= '0';
	y <= '1'; 
	c<='0'; 
	   wait for 1 ns;	
	x <= '1';
	y <= '1';
	c <= '0';
	wait for 1 ns;
	
	x <= '0';
	y <= '1'; 
	c<='1'; 
	
	
	

      -- insert stimulus here 

   end process;

END;
