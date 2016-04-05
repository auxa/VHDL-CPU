--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:38:27 04/01/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/instructionRegister_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: InstructionReg
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
 
ENTITY instructionRegister_tb IS
END instructionRegister_tb;
 
ARCHITECTURE behavior OF instructionRegister_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT InstructionReg
    PORT(
         inputIns : IN  std_logic_vector(15 downto 0);
         instructionLoad : IN  std_logic;
         Clk : IN  std_logic;
         reset : IN  std_logic;
         opcode : OUT  std_logic_vector(6 downto 0);
         destRegister : OUT  std_logic_vector(2 downto 0);
         sourceRegA : OUT  std_logic_vector(2 downto 0);
         sourceRegB : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inputIns : std_logic_vector(15 downto 0) := (others => '0');
   signal instructionLoad : std_logic := '0';
   signal Clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal opcode : std_logic_vector(6 downto 0);
   signal destRegister : std_logic_vector(2 downto 0);
   signal sourceRegA : std_logic_vector(2 downto 0);
   signal sourceRegB : std_logic_vector(2 downto 0);

   -- Clock period definitions
	   constant Clk_period : time := 5 ns;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: InstructionReg PORT MAP (
          inputIns => inputIns,
          instructionLoad => instructionLoad,
          Clk => Clk,
          reset => reset,
          opcode => opcode,
          destRegister => destRegister,
          sourceRegA => sourceRegA,
          sourceRegB => sourceRegB
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
      wait for 5  ns;	
			instructionLoad <='1';
			reset <='0';
			inputIns <= X"FE88";
			wait for 5 ns;
			inputIns <=X"F888";
			wait for 10 ns;

      -- insert stimulus here 

   end process;

END;
