--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:44:32 04/03/2016
-- Design Name:   
-- Module Name:   U:/CS/Archit/Before Final Lab/BLab1/datapath_tb.vhd
-- Project Name:  BLab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: datapath
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
 
ENTITY datapath_tb IS 
END datapath_tb;
 
ARCHITECTURE behavior OF datapath_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT datapath
    PORT(
         destinationSelect : IN  std_logic_vector(3 downto 0);
         aSelect : IN  std_logic_vector(3 downto 0);
         bSelect : IN  std_logic_vector(3 downto 0);
         loadE : IN  std_logic;
         Clk : IN  std_logic;
         constantSelect : IN  std_logic;
         dataInSelect : IN  std_logic;
         constantIn : IN  std_logic_vector(15 downto 0);
         dataIn : IN  std_logic_vector(15 downto 0);
         addrOut : OUT  std_logic_vector(15 downto 0);
         dataOut : OUT  std_logic_vector(15 downto 0);
         functionSelect : IN  std_logic_vector(4 downto 0);
         C : OUT  std_logic;
         V : OUT  std_logic;
         N : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT; 
     

   --Inputs
   signal destinationSelect : std_logic_vector(3 downto 0) := (others => '0');
   signal aSelect : std_logic_vector(3 downto 0) := (others => '0');
   signal bSelect : std_logic_vector(3 downto 0) := (others => '0');
   signal loadE : std_logic := '0';
   signal Clk : std_logic := '0';
   signal constantSelect : std_logic := '0';
   signal dataInSelect : std_logic := '0';
   signal constantIn : std_logic_vector(15 downto 0) := (others => '0');
   signal dataIn : std_logic_vector(15 downto 0) := X"0005";
   signal functionSelect : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal addrOut : std_logic_vector(15 downto 0);
   signal dataOut : std_logic_vector(15 downto 0);
   signal C : std_logic;
   signal V : std_logic;
   signal N : std_logic;
   signal Z : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: datapath PORT MAP (
          destinationSelect => destinationSelect,
          aSelect => aSelect,
          bSelect => bSelect,
          loadE => loadE,
          Clk => Clk,
          constantSelect => constantSelect,
          dataInSelect => dataInSelect,
          constantIn => constantIn,
          dataIn => dataIn,
          addrOut => addrOut,
          dataOut => dataOut,
          functionSelect => functionSelect,
          C => C,
          V => V,
          N => N,
          Z => Z
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
		loadE <= '1';
		dataInSelect <= '1';
		constantSelect <= '0';
		aSelect(0) <= '0';
		aSelect(1) <= '0';
		aSelect(2) <= '0';
		bSelect(0) <= '1';
		bSelect(1) <= '0';
		bSelect(2) <= '0';
		wait for Clk_period;
		destinationSelect(0) <= '1';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		dataIn <= X"F00D";
		wait for Clk_period;
		dataInSelect <= '0';
		destinationSelect(0) <= '0';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		functionSelect(0) <= '0';
		functionSelect(1) <= '1';
		functionSelect(2) <= '0';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--^addition, 
		wait for Clk_period;
		destinationSelect(0) <= '0';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		functionSelect(0) <= '1';
		functionSelect(1) <= '0';
		functionSelect(2) <= '1';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--^subtraction,
		wait for Clk_period;
		destinationSelect(0) <= '0';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		constantIn <= X"8654";
		constantSelect <= '1';
		functionSelect(0) <= '1';
		functionSelect(1) <= '0';
		functionSelect(2) <= '1';
		functionSelect(3) <= '0';
		functionSelect(4) <= '0';
		--^subtraction
		wait for Clk_period;
		destinationSelect(0) <= '0';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		constantIn <= X"F111";
		constantSelect <= '1';
		functionSelect(0) <= '0';
		functionSelect(1) <= '0';
		functionSelect(2) <= '0';
		functionSelect(3) <= '0';
		functionSelect(4) <= '1';
		--^transfer 
		wait for Clk_period;
		destinationSelect(0) <= '0';
		destinationSelect(1) <= '0';
		destinationSelect(2) <= '0';
		constantIn <= X"A000";
		constantSelect <= '1';
		functionSelect(0) <= '0';
		functionSelect(1) <= '0';
		functionSelect(2) <= '0';
		functionSelect(3) <= '1';
		functionSelect(4) <= '1';
		--^shift
	end process;
END;
