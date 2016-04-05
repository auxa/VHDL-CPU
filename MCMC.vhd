----------------------------------------------------------------------------------
-- Create Date:    11:04:20 03/31/2016 
-- Design Name: 
-- Module Name:    MCMC - Behavioral 
----------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MCMC is
port( reset, Clk : in std_logic;
		PC : out std_logic_vector(15 downto 0);
		MW, MM, RW, MD : out std_logic;
		FS : out std_logic_vector(4 downto 0);
		MB, PL, PI, IL, MC : out std_logic;
		MS : OUT std_logic_vector(2 downto 0);
		NA : OUT std_logic_vector(7 downto 0);
		dataOut : out std_logic_vector(15 downto 0);
		CARoutCheck : out std_logic_vector(7 downto 0);
		OPcodeCheck : out std_logic_vector(7 downto 0);
		srcRegACheck : out std_logic_vector(3 downto 0);
		srcRegBCheck : out std_logic_vector(3 downto 0);
		desRegCheck : out std_logic_vector(3 downto 0);
		dataOutACheck : out std_logic_vector(15 downto 0);
		dataOutBCheck : out std_logic_vector(15 downto 0);
		PCExtendCheck : out std_logic_vector(15 downto 0);
		CARselCheck : out std_logic;
		ZeroCheck : out std_logic);
		
end MCMC;

architecture Behavioral of MCMC is
component datapath
port (destinationSelect, aSelect, bSelect : in std_logic_vector(3 downto 0);
		loadE, Clk, constantSelect, dataInSelect : std_logic;
		constantIn, dataIn: in std_logic_vector(15 downto 0);
		addrOut, dataOut : out std_logic_vector(15 downto 0);
		functionSelect : in std_logic_vector(4 downto 0);
		C,V,N,Z : out std_logic);
end component;

component ProgramCounter
Port( PI, PL, Clk, reset  : in std_logic;
		offset : in std_logic_vector(15 downto 0);
		output : out std_logic_vector(15 downto 0));
end component;

component PCExtend
port( input : in std_logic_vector(5 downto 0);
		output : out std_logic_vector(15 downto 0));
end component;

component InstructionReg
port ( inputIns : in std_logic_vector(15 downto 0);
			instructionLoad, Clk, reset : in std_logic;
			opcode : out std_logic_vector(6 downto 0);
			destRegister, sourceRegA, sourceRegB : out std_logic_vector(2 downto 0));
end component;

component mux2_2_1_4_bit 
PORT( In0 : IN std_logic_vector(15 downto 0);
			In1 : IN std_logic_vector(15 downto 0);
			s : IN std_logic;
			Z : OUT std_logic_vector(15 downto 0));
end component;

component ControlAddrRegister 
port(  addressIn : in std_logic_vector (7 downto 0);
			conditionIn, Clk, reset : in std_logic;
				addressOut : out std_logic_vector);
end component;

component mux2to1_8bit
port( select0 : in std_logic;
		In0, In1 : in std_logic_vector(7 downto 0);
		Z : out std_logic_vector(7 downto 0));
end component;

component controlMemory 
Port ( MW : out std_logic;
		MM : out std_logic;
		RW : out std_logic;
		MD : out std_logic;
		FS : out std_logic_vector(4 downto 0);
		MB : out std_logic;
		TB : out std_logic;
		TA : out std_logic;
		TD : out std_logic;
		PL : out std_logic;
		PI : out std_logic;
		IL : out std_logic;
		MC : out std_logic;
		MS : out std_logic_vector(2 downto 0);
		NA : out std_logic_vector(7 downto 0);
		IN_CAR : in std_logic_vector(7 downto 0));
end component;

component mux821
port( s0,s1,s2 :in std_logic;
		in0, in1, in2, in3, in4, in5, in6, in7 :in std_logic;
		Z : out std_logic);
end component;

component zeroFill
port( input : in std_logic_vector(2 downto 0);
		output : out std_logic_vector(15 downto 0));
end component;

component memory
Port ( address : in std_logic_vector(15 downto 0);
			write_data : in std_logic_vector(15 downto 0);
			MemWrite, MemRead : in std_logic;
			read_data : out std_logic_vector(15 downto 0));
end component;

signal PCExtendedBit : std_logic_vector(15 downto 0);
signal PCOut : std_logic_vector(15 downto 0);
signal dataOutA, dataOutB : std_logic_vector(15 downto 0);
signal addressOut, memoryOutput : std_logic_vector(15 downto 0);
signal MWsignal, MMsignal, RWsignal, MDsignal, MBsignal : std_logic;
signal TBsignal, TAsignal, TDsignal, PLsignal, PIsignal, ILsignal, MCsignal : std_logic;
signal FSsignal : std_logic_vector(4 downto 0);
signal MSsignal : std_logic_vector(2 downto 0);
signal NAsignal : std_logic_vector(7 downto 0);
signal destReg, srcRegA, srcRegB : std_logic_vector(3 downto 0);
signal opCode, CARin, CARout : std_logic_vector(7 downto 0);
signal condCAROut : std_logic;
signal N, Z, C, V, notZ, notC : std_logic;
signal pcPreExtend : std_logic_vector( 5 downto 0);
signal zeroExtendedOut : std_logic_vector(15 downto 0);

begin 

programCounterComp :  ProgramCounter
Port map( PI => PIsignal,
			PL => PLsignal,
			Clk => Clk, 
			reset => reset, 
		offset => PCExtendedBit,
		output => PCOut );

MUX_M :mux2_2_1_4_bit 
PORT map ( In0 => dataOutA,
			In1 => PCOut,
			s => MMsignal,
			Z => addressOut);	
			
memoryM :  memory
Port map ( address => addressOut,
			write_data => dataOutB,
			MemWrite => MWsignal,
			MemRead => '1',
			read_data => memoryOutput
			);
			
IR : 	InstructionReg
port map ( inputIns => memoryOutput,
			instructionLoad => ILsignal,
			Clk => Clk,
			reset => reset,
			opcode => Opcode(6 downto 0),
			destRegister => destReg(2 downto 0),
			sourceRegA => SrcRegA(2 downto 0),
			sourceRegB => SRcRegB(2 downto 0));

muxC : mux2to1_8bit
port map (select0 => MCsignal,
		In0 => NAsignal,
		In1 => opcode,
		Z => CARout );

CAR : ControlAddrRegister 
port map(  addressIn => CARin,
			conditionIn => condCAROut,
			Clk => Clk, 
			reset => reset,
			addressOut => CARout);

controlMemory256 : controlMemory 
Port map( MW => MWsignal,
		MM => MMsignal,
		RW => Rwsignal,
		MD => MDsignal,
		FS => FSsignal,
		MB => MBsignal,
		TB => srcRegA(3),
		TA => srcRegB(3),
		TD => destReg(3),
		PL => PLsignal,
		PI => PIsignal,
		IL => ILsignal,
		MC => MCsignal,
		MS => MSsignal,
		NA => NAsignal,
		IN_CAR => CARout );

muxS : mux821
port map( s0 => MSsignal(0),
		s1 => MSsignal(1),
		s2 => MSsignal(2),
		in0 => '0',
		in1 => '1',
		in2 => C ,
		in3 => V,
		in4 => Z,
		in5 => N,
		in6 => notC, 
		in7 => notZ,
		Z => condCAROut);
		
PCExtendIn :  PCExtend
port map ( input => pcPreExtend,
		output =>  PCExtendedBit);
		
zero_fill : zeroFill
port map( input => srcRegB(2 downto 0),
		output => zeroExtendedOut);
		
datapathFull :  datapath
port map(destinationSelect => destReg, 
		aSelect => srcRegA,  
		bSelect =>srcRegB, 
		loadE => RWsignal, 
		Clk => Clk, 
		constantSelect => MBsignal, 
		dataInSelect => MDsignal,
		constantIn => zeroExtendedOut,
		dataIn => memoryOutput, 
		addrOut => dataOutA, 
		dataOut => dataOutB,
		functionSelect => FSsignal,
		C => C,
		V => V,
		N => N,
		Z => Z);
		
pcPreExtend <= srcRegA(2 downto 0) & srcRegB(2 downto 0);
notZ <= not Z after 0 ns;
notC <= not C after 0 ns;
opCode(7) <='0';

PC <= PCOut;
MW <= MWsignal after 0 ns;
MM <= MMsignal after 0 ns;
RW <= Rwsignal after 0 ns;
MD <= MDsignal after 0 ns;
FS <= FSsignal after 0 ns;
MB <= MBsignal after 0 ns;
PL <= PLsignal after 0 ns;
PI <= PIsignal after 0 ns;
IL <= ILsignal after 0 ns;
MC <= MCsignal after 0 ns;
MS <= MSsignal after 0 ns;
NA <= NAsignal after 0 ns;

		
dataOut <= memoryOutput after 0 ns;
CARoutCheck <=  CARout after 0 ns;
OPcodeCheck <=  opCode  after 0 ns;
srcRegACheck <= srcRegA;
srcRegBCheck <= srcRegB;
desRegCheck <= destReg;
CARselCheck <= condCAROut;
dataOutACheck <= dataOutA;
dataOutBCheck <= dataOutB;
PCExtendCheck <= PCExtendedBit;
ZeroCheck  <= Z;


end Behavioral;

