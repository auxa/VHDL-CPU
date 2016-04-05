--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:46:55 04/01/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/PC_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ProgramCounter
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
 
ENTITY PC_tb IS
END PC_tb;
 
ARCHITECTURE behavior OF PC_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ProgramCounter
    PORT(
         PI : IN  std_logic;
         PL : IN  std_logic;
         Clk : IN  std_logic;
         reset : IN  std_logic;
         offset : IN  std_logic_vector(15 downto 0);
         output : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PI : std_logic := '0';
   signal PL : std_logic := '0';
   signal Clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal offset : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProgramCounter PORT MAP (
          PI => PI,
          PL => PL,
          Clk => Clk,
          reset => reset,
          offset => offset,
          output => output
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for Clk_period;
		PL <= '0';
		reset <= '1';
		wait for Clk_period;
		reset <= '0';
		PI <= '1';
	wait for Clk_period;
		wait for Clk_period;
		wait for Clk_period;
		--test out increment^
		--PC is now 3
		offset <= X"0003";
		PI <= '0';
		PL <= '1';
		wait for Clk_period;
		wait for Clk_period;
		

      -- insert stimulus here 

   end process;

END;
