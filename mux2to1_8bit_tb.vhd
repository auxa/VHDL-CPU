--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:20:18 03/31/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/mux2to1_8bit_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2to1_8bit
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
 
ENTITY mux2to1_8bit_tb IS
END mux2to1_8bit_tb;
 
ARCHITECTURE behavior OF mux2to1_8bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2to1_8bit
    PORT(
         select0 : IN  std_logic;
         In0 : IN  std_logic_vector(7 downto 0);
         In1 : IN  std_logic_vector(7 downto 0);
         Z : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal select0 : std_logic := '0';
   signal In0 : std_logic_vector(7 downto 0) := X"01";
   signal In1 : std_logic_vector(7 downto 0) := X"02";

 	--Outputs
   signal Z : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2to1_8bit PORT MAP (
          select0 => select0,
          In0 => In0,
          In1 => In1,
          Z => Z
        );

   -- Clock process definitions
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		select0 <='0';
		wait for 10 ns;
		
		select0 <= '1';
	  
      wait;
   end process;

END;
