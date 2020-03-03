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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "03/03/2020 18:07:15"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ROM_READER_V2 IS
    PORT (
	TRIGGER_IN : IN std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	READ_ENA : OUT std_logic;
	ROM_ADDR : OUT std_logic_vector(9 DOWNTO 0);
	SOP : OUT std_logic;
	EOP : OUT std_logic
	);
END ROM_READER_V2;

-- Design Ports Information
-- READ_ENA	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[5]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[8]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[9]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOP	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EOP	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRIGGER_IN	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM_READER_V2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TRIGGER_IN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_READ_ENA : std_logic;
SIGNAL ww_ROM_ADDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SOP : std_logic;
SIGNAL ww_EOP : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \TRIGGER_IN~input_o\ : std_logic;
SIGNAL \DFF_inst~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \DFF_inst~0_combout\ : std_logic;
SIGNAL \DFF_inst~q\ : std_logic;
SIGNAL \READ_START~q\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8~sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_2~combout\ : std_logic;
SIGNAL \DFFE1~q\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \SOP_OUT~0_combout\ : std_logic;
SIGNAL \SOP_OUT~q\ : std_logic;
SIGNAL \EOP_OUT~0_combout\ : std_logic;
SIGNAL \EOP_OUT~q\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_DFF_inst~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_READ_START~q\ : std_logic;
SIGNAL \ALT_INV_EOP_OUT~q\ : std_logic;
SIGNAL \ALT_INV_SOP_OUT~q\ : std_logic;
SIGNAL \ALT_INV_DFFE1~q\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_comb_bita9~1_sumout\ : std_logic;
SIGNAL \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_TRIGGER_IN <= TRIGGER_IN;
ww_CLK <= CLK;
ww_RESET <= RESET;
READ_ENA <= ww_READ_ENA;
ROM_ADDR <= ww_ROM_ADDR;
SOP <= ww_SOP;
EOP <= ww_EOP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit[7]~DUPLICATE_q\ <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~DUPLICATE_q\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\ALT_INV_DFF_inst~0_combout\ <= NOT \DFF_inst~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_READ_START~q\ <= NOT \READ_START~q\;
\ALT_INV_EOP_OUT~q\ <= NOT \EOP_OUT~q\;
\ALT_INV_SOP_OUT~q\ <= NOT \SOP_OUT~q\;
\ALT_INV_DFFE1~q\ <= NOT \DFFE1~q\;
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_comb_bita9~1_sumout\ <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\;
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(9) <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9);
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(8) <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8);
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7) <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7);
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6) <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6);
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5) <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5);
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4) <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4);
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3) <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3);
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2) <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2);
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1) <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1);
\b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0) <= NOT \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0);

-- Location: IOOBUF_X89_Y38_N5
\READ_ENA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DFFE1~q\,
	devoe => ww_devoe,
	o => ww_READ_ENA);

-- Location: IOOBUF_X89_Y37_N39
\ROM_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(0));

-- Location: IOOBUF_X89_Y36_N56
\ROM_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(1));

-- Location: IOOBUF_X89_Y35_N45
\ROM_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(2));

-- Location: IOOBUF_X89_Y36_N22
\ROM_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ROM_ADDR(3));

-- Location: IOOBUF_X89_Y37_N56
\ROM_ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ROM_ADDR(4));

-- Location: IOOBUF_X89_Y37_N22
\ROM_ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(5));

-- Location: IOOBUF_X89_Y36_N5
\ROM_ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ROM_ADDR(6));

-- Location: IOOBUF_X89_Y36_N39
\ROM_ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ROM_ADDR(7));

-- Location: IOOBUF_X89_Y35_N79
\ROM_ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(8));

-- Location: IOOBUF_X89_Y38_N56
\ROM_ADDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(9));

-- Location: IOOBUF_X89_Y38_N39
\SOP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOP_OUT~q\,
	devoe => ww_devoe,
	o => ww_SOP);

-- Location: IOOBUF_X89_Y38_N22
\EOP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EOP_OUT~q\,
	devoe => ww_devoe,
	o => ww_EOP);

-- Location: IOIBUF_X89_Y35_N61
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y35_N95
\TRIGGER_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TRIGGER_IN,
	o => \TRIGGER_IN~input_o\);

-- Location: MLABCELL_X87_Y37_N12
\DFF_inst~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DFF_inst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \DFF_inst~feeder_combout\);

-- Location: IOIBUF_X89_Y37_N4
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: MLABCELL_X87_Y37_N51
\DFF_inst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DFF_inst~0_combout\ = ( \RESET~input_o\ ) # ( !\RESET~input_o\ & ( \READ_START~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_READ_START~q\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \DFF_inst~0_combout\);

-- Location: FF_X87_Y37_N13
DFF_inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TRIGGER_IN~input_o\,
	d => \DFF_inst~feeder_combout\,
	clrn => \ALT_INV_DFF_inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFF_inst~q\);

-- Location: FF_X88_Y37_N47
READ_START : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \DFF_inst~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \READ_START~q\);

-- Location: LABCELL_X88_Y37_N0
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\ = SUM(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\,
	cout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LABCELL_X88_Y37_N36
\b2v_inst78|LPM_COUNTER_component|auto_generated|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\DFFE1~q\) # (\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_comb_bita9~1_sumout\,
	datad => \ALT_INV_DFFE1~q\,
	combout => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X88_Y37_N1
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LABCELL_X88_Y37_N3
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\ = SUM(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ ))
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	cin => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\,
	cout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X88_Y37_N4
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LABCELL_X88_Y37_N6
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\ = SUM(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ ))
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	cin => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\,
	cout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X88_Y37_N7
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LABCELL_X88_Y37_N9
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\ = SUM(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ ))
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	cin => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\,
	cout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X88_Y37_N11
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LABCELL_X88_Y37_N12
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~sumout\ = SUM(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ ))
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	cin => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~sumout\,
	cout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X88_Y37_N14
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LABCELL_X88_Y37_N15
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5~sumout\ = SUM(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ ))
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	cin => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5~sumout\,
	cout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X88_Y37_N16
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LABCELL_X88_Y37_N18
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~sumout\ = SUM(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ ))
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	cin => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~sumout\,
	cout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X88_Y37_N20
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LABCELL_X88_Y37_N21
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~sumout\ = SUM(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ 
-- ))
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit[7]~DUPLICATE_q\,
	cin => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~sumout\,
	cout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X88_Y37_N22
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y37_N24
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8~sumout\ = SUM(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ ))
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(8),
	cin => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8~sumout\,
	cout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X88_Y37_N25
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LABCELL_X88_Y37_N27
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~sumout\ = SUM(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ ))
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY(( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(9),
	cin => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~sumout\,
	cout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X88_Y37_N28
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LABCELL_X88_Y37_N30
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\ = SUM(( GND ) + ( GND ) + ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	sumout => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\);

-- Location: LABCELL_X88_Y37_N39
SYNTHESIZED_WIRE_2 : cyclonev_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_2~combout\ = (\READ_START~q\) # (\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_comb_bita9~1_sumout\,
	datac => \ALT_INV_READ_START~q\,
	combout => \SYNTHESIZED_WIRE_2~combout\);

-- Location: FF_X88_Y37_N37
DFFE1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \READ_START~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	ena => \SYNTHESIZED_WIRE_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DFFE1~q\);

-- Location: FF_X88_Y37_N10
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~DUPLICATE_q\);

-- Location: FF_X88_Y37_N13
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita4~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~DUPLICATE_q\);

-- Location: FF_X88_Y37_N19
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita6~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y37_N57
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datab => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datad => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	dataf => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	combout => \Equal1~1_combout\);

-- Location: FF_X88_Y37_N23
\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita7~sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_comb_bita9~1_sumout\,
	ena => \b2v_inst78|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LABCELL_X88_Y37_N42
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(9),
	datab => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(8),
	datac => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datad => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	datae => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X88_Y37_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (!\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (!\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(9),
	datab => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(8),
	datac => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datad => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	datae => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X88_Y37_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (!\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- !\b2v_inst78|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datab => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	dataf => \b2v_inst78|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X87_Y37_N30
\SOP_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOP_OUT~0_combout\ = ( \SOP_OUT~q\ & ( !\RESET~input_o\ & ( (!\Equal1~1_combout\) # ((!\Equal1~0_combout\) # ((\Equal0~0_combout\ & \Equal0~1_combout\))) ) ) ) # ( !\SOP_OUT~q\ & ( !\RESET~input_o\ & ( (\Equal0~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111011101110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_SOP_OUT~q\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \SOP_OUT~0_combout\);

-- Location: FF_X87_Y37_N31
SOP_OUT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \SOP_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOP_OUT~q\);

-- Location: MLABCELL_X87_Y37_N6
\EOP_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EOP_OUT~0_combout\ = ( \EOP_OUT~q\ & ( \RESET~input_o\ ) ) # ( \EOP_OUT~q\ & ( !\RESET~input_o\ & ( (!\Equal0~0_combout\) # (!\Equal0~1_combout\) ) ) ) # ( !\EOP_OUT~q\ & ( !\RESET~input_o\ & ( (\Equal1~1_combout\ & (\Equal1~0_combout\ & 
-- ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000111111111111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_EOP_OUT~q\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \EOP_OUT~0_combout\);

-- Location: FF_X87_Y37_N7
EOP_OUT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \EOP_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EOP_OUT~q\);

-- Location: MLABCELL_X52_Y6_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


