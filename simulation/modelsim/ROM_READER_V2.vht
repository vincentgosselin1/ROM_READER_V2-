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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/09/2020 23:08:37"
                                                            
-- Vhdl Test Bench template for design  :  ROM_READER_V2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_READER_V2_vhd_tst IS
END ROM_READER_V2_vhd_tst;
ARCHITECTURE ROM_READER_V2_arch OF ROM_READER_V2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL EOP : STD_LOGIC;
SIGNAL READ_ENA : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL ROM_ADDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL SOP : STD_LOGIC;
SIGNAL TRIGGER_IN : STD_LOGIC;
COMPONENT ROM_READER_V2
	PORT (
	CLK : IN STD_LOGIC;
	EOP : OUT STD_LOGIC;
	READ_ENA : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	ROM_ADDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	SOP : OUT STD_LOGIC;
	TRIGGER_IN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ROM_READER_V2
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	EOP => EOP,
	READ_ENA => READ_ENA,
	RESET => RESET,
	ROM_ADDR => ROM_ADDR,
	SOP => SOP,
	TRIGGER_IN => TRIGGER_IN
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;  

clock : PROCESS
	--constant init.
	constant clock_period : time := 5 ns;

	---clock running
	BEGIN
	CLK <='1';
	wait for clock_period/2;
	CLK <='0';
	wait for clock_period/2;

END PROCESS clock;

                                         
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		  
		  RESET <= '1';
		  trigger_in <= '0';
		  WAIT FOR 20 ns;
		  RESET <= '0';
		  wait for 25 ns;
		  
		  trigger_in <= '1';
		  wait for 5 ns;
		  trigger_in <= '0';
		  wait for 5 ns;
		  
		  
		  
WAIT;                                                        
END PROCESS always;                                          
END ROM_READER_V2_arch;
