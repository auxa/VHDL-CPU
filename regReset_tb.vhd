--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:06:38 04/01/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/regReset_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registerReset
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
 
ENTITY regReset_tb IS
END regReset_tb;
 
ARCHITECTURE behavior OF regReset_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerReset
    PORT(
         D : IN  std_logic_vector(15 downto 0);
         load : IN  std_logic;
         Clk : IN  std_logic;
         reset : IN  std_logic;
         Q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(15 downto 0) := (others => '0');
   signal load : std_logic := '0';
   signal Clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerReset PORT MAP (
          D => D,
          load => load,
          Clk => Clk,
          reset => reset,
          Q => Q
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
		D <=X"FFFF";
		wait for Clk_period;
		load <='1';
		wait for Clk_period;
		reset <='1';
		wait for Clk_period;

      -- insert stimulus here 

   end process;

END;
