-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"
-- CREATED		"Tue Mar 03 10:06:27 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;  

-- Add the library and use clauses before the design unit declaration
library altera; 
use altera.altera_primitives_components.all;

LIBRARY work;


ENTITY ROM_READER_V2 IS 
	PORT
	(
		TRIGGER_IN :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		RESET :  IN  STD_LOGIC;
		READ_ENA :  OUT  STD_LOGIC;
		ROM_ADDR :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		SOP	: OUT STD_LOGIC; --FIRST SAMPLE OUT
		EOP	:	OUT STD_LOGIC --SECONDS SAMPLE OUT
	);
END ROM_READER_V2;

ARCHITECTURE bdf_type OF ROM_READER_V2 IS 

COMPONENT counter_10bits
	PORT(sclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	READ_ENA_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	READ_END :  STD_LOGIC;
SIGNAL	READ_START :  STD_LOGIC;
SIGNAL	RESETn :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	DFF_inst :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	VCC : STD_LOGIC;
SIGNAL	SOP_OUT : STD_LOGIC;	--WIRES
SIGNAL 	EOP_OUT	: STD_LOGIC; --WIRES
SIGNAL	Q_OUT : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	COUNTER : NATURAL;

	


BEGIN 
	
		COUNTER <=  to_integer(unsigned(Q_OUT));
		--my_slv <= std_logic_vector(to_unsigned(my_int, my_slv'length));

		--SOP AND EOP GENERATION
		PROCESS(CLK,RESET)

		BEGIN
		IF (RISING_EDGE(CLK)) THEN
			IF (RESET = '1') THEN
				SOP_OUT <= '0';
				SOP_OUT <= '0';
			ELSE 
				IF (COUNTER = 0) THEN
					SOP_OUT <= '1';
					EOP_OUT <= '0';
				ELSIF (COUNTER = 1023) THEN
					SOP_OUT <= '0';
					EOP_OUT <= '1';
				END IF;
			END IF;
		END IF;
		END PROCESS;
		
		SOP <= SOP_OUT;
		EOP <= EOP_OUT;
		
		
		

SYNTHESIZED_WIRE_1 <= '1';
VCC <= '1';


PROCESS(TRIGGER_IN,SYNTHESIZED_WIRE_0)
BEGIN
IF (RESET = '1') THEN
	DFF_inst <= '0';
ELSIF (SYNTHESIZED_WIRE_0 = '0') THEN
	DFF_inst <= '0';
ELSIF (RISING_EDGE(TRIGGER_IN)) THEN
	DFF_inst <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RESET = '1') THEN
	READ_START <= '0';
ELSIF (RISING_EDGE(CLK)) THEN
	READ_START <= DFF_inst;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_2 <= READ_END OR READ_START;



SYNTHESIZED_WIRE_0 <= NOT(READ_START);


--flipflop to check
--PROCESS(CLK,RESETn)
--BEGIN
--IF (RESETn = '0') THEN
--	READ_ENA_ALTERA_SYNTHESIZED <= '0';
--ELSIF (RISING_EDGE(CLK)) THEN
--	IF (SYNTHESIZED_WIRE_2 = '1') THEN
--	READ_ENA_ALTERA_SYNTHESIZED <= READ_START;
--	END IF;
--END IF;
--END PROCESS;



-- Instantiating DFFE
	DFFE1 : DFFE
	port map (
			d => READ_START,
			clk => CLK,
			clrn => RESETn,
			prn => VCC,
			ena => SYNTHESIZED_WIRE_2,
			q => READ_ENA_ALTERA_SYNTHESIZED
			);


RESETn <= NOT(RESET);



b2v_inst78 : counter_10bits
PORT MAP(sclr => READ_END,
		 clock => CLK,
		 cnt_en => READ_ENA_ALTERA_SYNTHESIZED,
		 aclr => RESET,
		 cout => READ_END,
		 q => Q_OUT);

READ_ENA <= READ_ENA_ALTERA_SYNTHESIZED;
ROM_ADDR <= Q_OUT;





END bdf_type;