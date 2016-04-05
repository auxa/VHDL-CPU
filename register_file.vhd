----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:33 02/16/2016 
-- Design Name: 
-- Module Name:    register_file - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity register_file is
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
end register_file;
architecture Behavioral of register_file is
	COMPONENT reg16
		PORT(
			D : IN std_logic_vector(15 downto 0);
			load : IN std_logic;
			Clk : IN std_logic;
			Q : OUT std_logic_vector(15 downto 0)
	);	END COMPONENT;
	COMPONENT decoder_3to8
		PORT(
				A0 : IN std_logic;
				A1 : IN std_logic;
				A2 : IN std_logic;
				A3 : IN std_logic;
				Q0 : OUT std_logic;
				Q1 : OUT std_logic;
				Q2 : OUT std_logic;
				Q3 : OUT std_logic;
				Q4 : OUT std_logic;
				Q5 : OUT std_logic;
				Q6 : OUT std_logic;
				Q7 : OUT std_logic;
				Q8 : OUT std_logic;
				Q9 : OUT std_logic;
				Q10 : OUT std_logic;
				Q11 : OUT std_logic;
				Q12 : OUT std_logic;
				Q13 : OUT std_logic;
				Q14 : OUT std_logic;
				Q15 : OUT std_logic
		);
	END COMPONENT;	
	COMPONENT mux8
	PORT(
		In0 : IN std_logic_vector(15 downto 0);
		In1 : IN std_logic_vector(15 downto 0);
		In2 : IN std_logic_vector(15 downto 0);
		In3 : IN std_logic_vector(15 downto 0);
		In4 : IN std_logic_vector(15 downto 0);
		In5 : IN std_logic_vector(15 downto 0);
		In6 : IN std_logic_vector(15 downto 0);
		In7 : IN std_logic_vector(15 downto 0);
		In8 : IN std_logic_vector(15 downto 0);
		In9 : IN std_logic_vector(15 downto 0);
		In10 : IN std_logic_vector(15 downto 0);
		In11 : IN std_logic_vector(15 downto 0);
		In12 : IN std_logic_vector(15 downto 0);
		In13 : IN std_logic_vector(15 downto 0);
		In14 : IN std_logic_vector(15 downto 0);
		In15 : IN std_logic_vector(15 downto 0);
		S0 : IN std_logic;
		S1 : IN std_logic;
		S2 : IN std_logic;
		S3 : IN std_logic;
		Z : OUT std_logic_vector(15 downto 0)
	);
	END COMPONENT;
signal load_reg0, load_reg1, load_reg2, load_reg3,load_reg4, load_reg5, load_reg6, load_reg7, load_reg8 : std_logic;
signal reg0_q, reg1_q, reg2_q, reg3_q, reg4_q, reg5_q, reg6_q, reg7_q, reg8_q, data_src_mux_out, src_reg : std_logic_vector(15 downto 0);
signal load_rAnd0, load_rAnd1, load_rAnd2,load_rAnd3, load_rAnd4, load_rAnd5, load_rAnd6, load_rAnd7, load_rAnd8 : std_logic;

begin
	load_rAnd0	<= (load_reg0 and loadE) after 5 ns;
	load_rAnd1	<= (load_reg1 and loadE) after 5 ns;
	load_rAnd2	<= (load_reg2 and loadE) after 5 ns;
	load_rAnd3	<= (load_reg3 and loadE) after 5 ns;
	load_rAnd4	<= (load_reg4 and loadE) after 5 ns;
	load_rAnd5	<= (load_reg5 and loadE) after 5 ns;
	load_rAnd6	<= (load_reg6 and loadE) after 5 ns;
	load_rAnd7	<= (load_reg7 and loadE) after 5 ns;
	load_rAnd8	<= (load_reg8 and loadE) after 5 ns;


	reg000: reg16 PORT MAP(
		D => data,
		load => load_rAnd0,
		Clk => Clk,
		Q => reg0_q
	);
	reg001: reg16 PORT MAP(
		D => data,
		load => load_rAnd1,
		Clk => Clk,
		Q => reg1_q
	);
	reg010: reg16 PORT MAP(
		D => data,
		load => load_rAnd2,
		Clk => Clk,
		Q => reg2_q
	);
	reg011: reg16 PORT MAP(
		D => data,
		load => load_rAnd3,
		Clk => Clk,
		Q => reg3_q
	);
	reg100: reg16 PORT MAP(
		D => data,
		load => load_rAnd4,
		Clk => Clk,
		Q => reg4_q
	);
	reg101: reg16 PORT MAP(
		D => data,
		load => load_rAnd5,
		Clk => Clk,
		Q => reg5_q
	);
	reg110: reg16 PORT MAP(
		D => data,
		load => load_rAnd6,
		Clk => Clk,
		Q => reg6_q
	);
	reg111: reg16 PORT MAP(
		D => data,
		load => load_rAnd7,
		Clk => Clk,
		Q => reg7_q
	);
	reg1000: reg16 PORT MAP(
		D => data,
		load => load_rAnd8,
		Clk => Clk,
		Q => reg8_q
	);
	des_decoder_3to8: decoder_3to8 PORT MAP(
		A0 => des_A0,
		A1 => des_A1,
		A2 => des_A2,
		A3 => des_A3,
		Q0 => load_reg0,
		Q1 => load_reg1,
		Q2 => load_reg2,
		Q3 => load_reg3,
		Q4 => load_reg4,
		Q5 => load_reg5,
		Q6 => load_reg6,
		Q7 => load_reg7,
		Q8 => load_reg8,
		Q9 => load_reg8,
		Q10 => load_reg8,
		Q11 => load_reg8,
		Q12 => load_reg8,
		Q13 => load_reg8,
		Q14 => load_reg8,
		Q15 => load_reg8
	);
	
	dataSrcA: mux8 PORT MAP(
		In0 => reg0_q,
		In1 => reg1_q,
		In2 => reg2_q,
		In3 => reg3_q,
		In4 => reg4_q,
		In5 => reg5_q,
		In6 => reg6_q,
		In7 => reg7_q,
		In8 => reg8_q,
		In9 => reg8_q,
		In10 => reg8_q,
		In11 => reg8_q,
		In12 => reg8_q,
		In13 => reg8_q,
		In14 => reg8_q,
		In15 => reg8_q,
		S0 => src_s0,
		S1 => src_s1,
		S2 => src_s2,
		S3 => src_s2,
		Z => dataA
	);
	dataSrcB: mux8 PORT MAP(
		In0 => reg0_q,
		In1 => reg1_q,
		In2 => reg2_q,
		In3 => reg3_q,
		In4 => reg4_q,
		In5 => reg5_q,
		In6 => reg6_q,
		In7 => reg7_q,
		In8 => reg8_q,
		In9 => reg8_q,
		In10 => reg8_q,
		In11 => reg8_q,
		In12 => reg8_q,
		In13 => reg8_q,
		In14 => reg8_q,
		In15 => reg8_q,
		S0 => src_s01,
		S1 => src_s11,
		S2 => src_s21,
		S3 => src_s21,
		Z => dataB
	);

	
end Behavioral;

