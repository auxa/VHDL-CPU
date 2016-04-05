--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:39:43 04/05/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/mux8_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux8
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
 
ENTITY mux8_tb IS
END mux8_tb;
 
ARCHITECTURE behavior OF mux8_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux8
    PORT(
         In0 : IN  std_logic_vector(15 downto 0);
         In1 : IN  std_logic_vector(15 downto 0);
         In2 : IN  std_logic_vector(15 downto 0);
         In3 : IN  std_logic_vector(15 downto 0);
         In4 : IN  std_logic_vector(15 downto 0);
         In5 : IN  std_logic_vector(15 downto 0);
         In6 : IN  std_logic_vector(15 downto 0);
         In7 : IN  std_logic_vector(15 downto 0);
         In8 : IN  std_logic_vector(15 downto 0);
         In9 : IN  std_logic_vector(15 downto 0);
         In10 : IN  std_logic_vector(15 downto 0);
         In11 : IN  std_logic_vector(15 downto 0);
         In12 : IN  std_logic_vector(15 downto 0);
         In13 : IN  std_logic_vector(15 downto 0);
         In14 : IN  std_logic_vector(15 downto 0);
         In15 : IN  std_logic_vector(15 downto 0);
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         S2 : IN  std_logic;
         S3 : IN  std_logic;
         Z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(15 downto 0) := X"0000";
   signal In1 : std_logic_vector(15 downto 0) :=  X"0002";
   signal In2 : std_logic_vector(15 downto 0) :=  X"0003";
   signal In3 : std_logic_vector(15 downto 0) :=  X"0004";
   signal In4 : std_logic_vector(15 downto 0) :=  X"0005";
   signal In5 : std_logic_vector(15 downto 0) := X"0006";
   signal In6 : std_logic_vector(15 downto 0) :=  X"0007";
   signal In7 : std_logic_vector(15 downto 0) :=  X"0008";
   signal In8 : std_logic_vector(15 downto 0) :=  X"0009";
   signal In9 : std_logic_vector(15 downto 0) :=  X"000A";
   signal In10 : std_logic_vector(15 downto 0) :=  X"000B";
   signal In11 : std_logic_vector(15 downto 0) :=  X"000C";
   signal In12 : std_logic_vector(15 downto 0) :=  X"000D";
   signal In13 : std_logic_vector(15 downto 0) :=  X"000E";
   signal In14 : std_logic_vector(15 downto 0) :=  X"000F";
   signal In15 : std_logic_vector(15 downto 0) :=  X"0010";
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';
   signal S3 : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux8 PORT MAP (
          In0 => In0,
          In1 => In1,
          In2 => In2,
          In3 => In3,
          In4 => In4,
          In5 => In5,
          In6 => In6,
          In7 => In7,
          In8 => In8,
          In9 => In9,
          In10 => In10,
          In11 => In11,
          In12 => In12,
          In13 => In13,
          In14 => In14,
          In15 => In15,
          S0 => S0,
          S1 => S1,
          S2 => S2,
          S3 => S3,
          Z => Z
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 1 ns;
		S0 <= '0';
		S1 <= '0';
		S2 <= '0';
		S3 <= '0';
      wait for 1 ns;
		S0 <= '1';
		S1 <= '0';
		S2 <= '0';
		S3 <= '0';
		wait for 1 ns;
		S0 <= '0';
		S1 <= '1';
		S2 <= '0';
		S3 <= '0';
		wait for 1 ns;
		S0 <= '1';
		S1 <= '1';
		S2 <= '0';
		S3 <= '0';
		wait for 1 ns;
		S0 <= '0';
		S1 <= '0';
		S2 <= '1';
		S3 <= '0';



   end process;

END;
