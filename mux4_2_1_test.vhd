--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:19 03/10/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/BLab1/mux4_2_1_test.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux4_2_1
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
 
ENTITY mux4_2_1_test IS
END mux4_2_1_test;
 
ARCHITECTURE behavior OF mux4_2_1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4_2_1
    PORT(
         In0 : IN  std_logic;
         In1 : IN  std_logic;
         In2 : IN  std_logic;
         In3 : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic := '0';
   signal In1 : std_logic := '1';
   signal In2 : std_logic := '0';
   signal In3 : std_logic := '1';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4_2_1 PORT MAP (
          In0 => In0,
          In1 => In1,
          In2 => In2,
          In3 => In3,
          S0 => S0,
          S1 => S1,
          Z => Z
        );

   -- Clock process definitions
      -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
			
			S0 <= '0';
			S1 <= '1';
			
			wait for 10 ns;
			
			S0 <= '1';
			S1 <= '1';
			 
			wait for 10 ns;
			
			S0 <= '0';
			S1 <= '0';
			
      -- insert stimulus here 

      
   end process;

END;
