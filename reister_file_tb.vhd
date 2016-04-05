--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:07:39 04/04/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/reister_file_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_file
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
 
ENTITY reister_file_tb IS
END reister_file_tb;
 
ARCHITECTURE behavior OF reister_file_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         src_s0 : IN  std_logic;
         src_s1 : IN  std_logic;
         src_s2 : IN  std_logic;
         src_s3 : IN  std_logic;
         src_s01 : IN  std_logic;
         src_s11 : IN  std_logic;
         src_s21 : IN  std_logic;
         src_s31 : IN  std_logic;
         des_A0 : IN  std_logic;
         des_A1 : IN  std_logic;
         des_A2 : IN  std_logic;
         des_A3 : IN  std_logic;
         Clk : IN  std_logic;
			loadE : IN  std_logic;
			data_src : IN  std_logic;
         data : IN  std_logic_vector(15 downto 0);
         dataA : OUT  std_logic_vector(15 downto 0);
         dataB : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
     
 
   --Inputs
   signal src_s0 : std_logic := '0';
   signal src_s1 : std_logic := '0';
   signal src_s2 : std_logic := '0';
   signal src_s3 : std_logic := '0';
   signal src_s01 : std_logic := '0';
   signal src_s11 : std_logic := '0';
   signal src_s21 : std_logic := '0';
   signal src_s31 : std_logic := '0';
   signal des_A0 : std_logic := '0';
   signal des_A1 : std_logic := '0';
   signal des_A2 : std_logic := '0';
   signal des_A3 : std_logic := '0';
   signal Clk : std_logic := '0';
	signal loadE : std_logic := '0';
   signal data_src : std_logic := '0';
   signal data : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal dataA : std_logic_vector(15 downto 0);
   signal dataB : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          src_s0 => src_s0,
          src_s1 => src_s1,
          src_s2 => src_s2,
          src_s3 => src_s3,
          src_s01 => src_s01,
          src_s11 => src_s11,
          src_s21 => src_s21,
          src_s31 => src_s31,
          des_A0 => des_A0,
          des_A1 => des_A1,
          des_A2 => des_A2,
          des_A3 => des_A3,
          Clk => Clk,
			 loadE => loadE,
          data_src => data_src,
          data => data,
          dataA => dataA,
          dataB => dataB
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
		data <= X"0008";
		loadE <= '1';
		des_A0 <= '0';
		des_A1 <= '0';
		des_A2 <= '0';
		des_A3 <= '1';
		src_s01 <= '0';
		src_s11 <= '0';
		src_s21 <= '0';
		src_s31 <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
