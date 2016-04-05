--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:14:00 03/31/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/car_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControlAddrRegister
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
 
ENTITY car_tb IS
END car_tb;
 
ARCHITECTURE behavior OF car_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControlAddrRegister
    PORT(
         addressIn : IN  std_logic_vector(7 downto 0);
         conditionIn : IN  std_logic;
         Clk : IN  std_logic;
         reset : IN  std_logic;
         addressOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal addressIn : std_logic_vector(7 downto 0) := (others => '0');
   signal conditionIn : std_logic := '0';
   signal Clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal addressOut : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControlAddrRegister PORT MAP (
          addressIn => addressIn,
          conditionIn => conditionIn,
          Clk => Clk,
          reset => reset,
          addressOut => addressOut
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
		reset <= '1';
		wait for 10 ns;
		reset <= '0';
		conditionIn <= '1';
		wait for 10 ns;
		addressIn <= addressOut;
		wait for 10 ns;
		addressIn <= addressOut;
		wait for 10 ns;
		addressIn <= addressOut;
		wait for 10 ns;
		reset <='1';
		conditionIn <='0';
		wait for 10 ns;
		reset <= '0';
		addressIn<= X"FF";
		

      -- insert stimulus here 

      wait;
   end process;

END;
