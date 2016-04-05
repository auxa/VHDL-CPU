--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:36:20 03/31/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/mux821_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux821
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
 
ENTITY mux821_tb IS
END mux821_tb;
 
ARCHITECTURE behavior OF mux821_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux821
    PORT(
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         s2 : IN  std_logic;
         in0 : IN  std_logic;
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         in3 : IN  std_logic;
         in4 : IN  std_logic;
         in5 : IN  std_logic;
         in6 : IN  std_logic;
         in7 : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal s2 : std_logic := '0';
   signal in0 : std_logic := '1';
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
   signal in3 : std_logic := '1';
   signal in4 : std_logic := '1';
   signal in5 : std_logic := '0';
   signal in6 : std_logic := '0';
   signal in7 : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux821 PORT MAP (
          s0 => s0,
          s1 => s1,
          s2 => s2,
          in0 => in0,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          in5 => in5,
          in6 => in6,
          in7 => in7,
          Z => Z
        ); 
 
   

   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	

      s0 <='0';
		s1 <='0';
		s2 <='0';
		
		wait for 10 ns;	

      s0 <='0';
		s1 <='0';
		s2 <='1';
   end process;

END;
