----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:01:51 03/29/2016 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is
port (destinationSelect, aSelect, bSelect : in std_logic_vector(3 downto 0);
		loadE, Clk, constantSelect, dataInSelect : std_logic;
		constantIn, dataIn: in std_logic_vector(15 downto 0);
		addrOut, dataOut : out std_logic_vector(15 downto 0);
		functionSelect : in std_logic_vector(4 downto 0);
		V,C,N,Z : out std_logic);
end datapath;

architecture Behavioral of datapath is
component functionalUnit 
port (A, B : in std_logic_vector(15 downto 0);
		select0: in std_logic_vector(4 downto 0);
		zero, overflow, negative, carry : out std_logic;
		output : out std_logic_vector(15 downto 0));
end component;
component register_file
	Port ( src_s0 : in std_logic;
	src_s1 : in std_logic;
	src_s2 : in std_logic;
	src_s3 : in std_logic;
	src_s01 : in std_logic;
	src_s11 : in std_logic;
	src_s21 : in std_logic;
	src_s31 : in std_logic;
	des_A0 : in std_logic;
	des_A1 : in std_logic;
	des_A2 : in std_logic;  
	des_A3 : in std_logic;
	Clk : in std_logic;
	loadE : in std_logic;
	data_src : in std_logic;
	data : in std_logic_vector(15 downto 0);
	dataA, dataB : out std_logic_vector(15 downto 0));
end component;
component mux2to1_16bit
PORT(
			In0 : IN std_logic_vector(15 downto 0);
			In1 : IN std_logic_vector(15 downto 0);
			s : IN std_logic;
			Z : OUT std_logic_vector(15 downto 0)
	);
end component;
signal A, B, bSrc, funUnitOut, dataInMux : std_logic_vector(15 downto 0); 

begin
regFile : register_file
port map( src_s0 => aSelect(0),
			src_s1 => aSelect(1),
			src_s2 => aSelect(2),
			src_s3 => aSelect(3),
			src_s01 => bSelect(0),
			src_s11 => bSelect(1),
			src_s21 => bSelect(2),
			src_s31 => bSelect(3),
			des_A0 => destinationSelect(0),
			des_A1 => destinationSelect(1),
			des_A2 => destinationSelect(2),
			des_A3 => destinationSelect(3),
			Clk => Clk,
			data => dataIn,
			loadE => loadE,
			data_src => dataInSelect,
			dataA => A,
			dataB => B);
			
bSrcSelect : mux2to1_16Bit
port map(In0 => B,
			In1 => constantIn,
			s => constantSelect,
			Z => bSrc);
			
funStuff : functionalUnit 
port map(A => A,
			B=>B,
			select0 => functionSelect,
			zero => Z,
			overflow => V,
			carry => C,
			negative => N,
			output => funUnitOut);
			
dataSelect : mux2to1_16bit
port map( In0 => funUnitOut,
			In1 => dataIn,
			s => dataInSelect,
			Z => dataInMux);

addrOut <= A after 1 ns;
dataOut <= bSrc after 1 ns;
end Behavioral;

