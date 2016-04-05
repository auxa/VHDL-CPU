
-- VHDL Instantiation Created from source file shifter16.vhd -- 13:32:23 03/10/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT shifter16
	PORT(
		value : IN std_logic_vector(15 downto 0);
		select0 : IN std_logic;
		select1 : IN std_logic;          
		output : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	Inst_shifter16: shifter16 PORT MAP(
		value => ,
		select0 => ,
		select1 => ,
		output => 
	);


