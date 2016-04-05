--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:42:00 04/03/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/MCMC_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MCMC
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
 
ENTITY MCMC_tb IS
END MCMC_tb;
 
ARCHITECTURE behavior OF MCMC_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MCMC 
    PORT(
         reset : IN  std_logic;
         Clk : IN  std_logic;
         PC : OUT  std_logic_vector(15 downto 0);
         MW : OUT  std_logic;
         MM : OUT  std_logic;
         RW : OUT  std_logic;
         MD : OUT  std_logic;
         FS : OUT  std_logic_vector(4 downto 0);
         MB : OUT  std_logic;
         PL : OUT  std_logic;
         PI : OUT  std_logic;
         IL : OUT  std_logic;
         MC : OUT  std_logic;
         MS : OUT  std_logic_vector(2 downto 0);
         NA : OUT  std_logic_vector(7 downto 0);
         dataOut : OUT  std_logic_vector(15 downto 0);
         CAROutCheck : OUT  std_logic_vector(7 downto 0);
         OPCodeCheck : OUT  std_logic_vector(7 downto 0);
         srcRegACheck : OUT  std_logic_vector(3 downto 0);
         srcRegBCheck : OUT  std_logic_vector(3 downto 0);
         desRegCheck : OUT  std_logic_vector(3 downto 0);
         dataOutACheck : OUT  std_logic_vector(15 downto 0);
         dataOutBCheck : OUT  std_logic_vector(15 downto 0);
         PCExtendCheck : OUT  std_logic_vector(15 downto 0);
         CARselCheck : OUT  std_logic;
         ZeroCheck : OUT  std_logic
        ); 
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal PC : std_logic_vector(15 downto 0);
   signal MW : std_logic;
   signal MM : std_logic;
   signal RW : std_logic;
   signal MD : std_logic;
   signal FS : std_logic_vector(4 downto 0);
   signal MB : std_logic;
   signal PL : std_logic;
   signal PI : std_logic;
   signal IL : std_logic;
   signal MC : std_logic;
   signal MS : std_logic_vector(2 downto 0);
   signal NA : std_logic_vector(7 downto 0);
   signal dataOut : std_logic_vector(15 downto 0);
   signal CAROutCheck : std_logic_vector(7 downto 0);
   signal OPCodeCheck : std_logic_vector(7 downto 0);
   signal srcRegACheck : std_logic_vector(3 downto 0);
   signal srcRegBCheck : std_logic_vector(3 downto 0);
   signal desRegCheck : std_logic_vector(3 downto 0);
   signal dataOutACheck : std_logic_vector(15 downto 0);
   signal dataOutBCheck : std_logic_vector(15 downto 0);
   signal PCExtendCheck : std_logic_vector(15 downto 0);
   signal CARselCheck : std_logic;
   signal ZeroCheck : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MCMC PORT MAP (
          reset => reset,
          Clk => Clk,
          PC => PC,
          MW => MW,
          MM => MM,
          RW => RW,
          MD => MD,
          FS => FS,
          MB => MB,
          PL => PL,
          PI => PI,
          IL => IL,
          MC => MC,
          MS => MS,
          NA => NA,
          dataOut => dataOut,
          CAROutCheck => CAROutCheck,
          OPCodeCheck => OPCodeCheck,
          srcRegACheck => srcRegACheck,
          srcRegBCheck => srcRegBCheck,
          desRegCheck => desRegCheck,
          dataOutACheck => dataOutACheck,
          dataOutBCheck => dataOutBCheck,
          PCExtendCheck => PCExtendCheck,
          CARselCheck => CARselCheck,
          ZeroCheck => ZeroCheck
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
			reset <='1';
			wait for Clk_period;
			reset <='0';
      -- insert stimulus here 
			wait for Clk_period*5;
   end process;

END;
