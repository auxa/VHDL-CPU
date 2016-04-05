--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:39:21 03/10/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/BLab1/rippleAdrTest.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder16
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
 
ENTITY rippleAdrTest IS
END rippleAdrTest;
 
ARCHITECTURE behavior OF rippleAdrTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder16
    PORT(
         in0 : IN  std_logic_vector(15 downto 0);
         in1 : IN  std_logic_vector(15 downto 0);
         carryIn : IN  std_logic;
         sum : OUT  std_logic_vector(15 downto 0);
         c : OUT  std_logic;
         overFlow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(15 downto 0) := (others => '0');
   signal in1 : std_logic_vector(15 downto 0) := (others => '0');
   signal carryIn : std_logic := '0';

 	--Outputs
   signal sum : std_logic_vector(15 downto 0);
   signal c : std_logic;
   signal overFlow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder16 PORT MAP (
          in0 => in0,
          in1 => in1,
          carryIn => carryIn,
          sum => sum,
          c => c,
          overFlow => overFlow
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		 
		in0 <= X"0001";
		in1 <= X"0001";
		
		wait for 10 ns;
		
		in0 <= X"0003";
		in1 <= X"0001";
		 
      -- insert stimulus here 

   end process;

END;
