--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:25:06 03/10/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/BLab1/shitfterTest.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shifter16
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
 
ENTITY shitfterTest IS
END shitfterTest;
 
ARCHITECTURE behavior OF shitfterTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shifter16
    PORT(
         value : IN  std_logic_vector(15 downto 0);
         select0 : IN  std_logic;
         select1 : IN  std_logic;
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal value : std_logic_vector(15 downto 0) := X"0001";
   signal select0 : std_logic := '0';
   signal select1 : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shifter16 PORT MAP (
          value => value,
          select0 => select0,
          select1 => select1,
          output => output
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 1ns.
      wait for 1 ns;	
		
			select0 <= '0';
			select1 <= '1';
			
			wait for 1 ns;
			
			select0 <= '1';
			select1 <= '0';
			
			

    
      wait;
   end process;

END;
