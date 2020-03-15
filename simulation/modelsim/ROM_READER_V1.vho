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

-- DATE "03/14/2020 13:32:36"

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
	READ_ENA : BUFFER std_logic;
	ROM_ADDR : BUFFER std_logic_vector(9 DOWNTO 0);
	SOP : BUFFER std_logic;
	EOP : BUFFER std_logic
	);
END ROM_READER_V2;

-- Design Ports Information
-- READ_ENA	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[7]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[8]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_ADDR[9]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOP	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EOP	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRIGGER_IN	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \TRIGGER_IN~input_o\ : std_logic;
SIGNAL \dff0~feeder_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \dff0~q\ : std_logic;
SIGNAL \dff1~q\ : std_logic;
SIGNAL \cnt_ena_ff~0_combout\ : std_logic;
SIGNAL \cnt_ena_ff~q\ : std_logic;
SIGNAL \cnt_ena_ffd~feeder_combout\ : std_logic;
SIGNAL \cnt_ena_ffd~q\ : std_logic;
SIGNAL \cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Q_OUT_ff[1]~feeder_combout\ : std_logic;
SIGNAL \cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Q_OUT_ff[3]~feeder_combout\ : std_logic;
SIGNAL \Q_OUT_ff[5]~feeder_combout\ : std_logic;
SIGNAL \Q_OUT_ff[6]~feeder_combout\ : std_logic;
SIGNAL \cnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Q_OUT_ff[8]~feeder_combout\ : std_logic;
SIGNAL \SOP_OUT~1_combout\ : std_logic;
SIGNAL \SOP_OUT~0_combout\ : std_logic;
SIGNAL \SOP_OUT~combout\ : std_logic;
SIGNAL \SOP_OUT_ff~q\ : std_logic;
SIGNAL \EOP_OUT~combout\ : std_logic;
SIGNAL \EOP_OUT_ff~q\ : std_logic;
SIGNAL cnt : std_logic_vector(9 DOWNTO 0);
SIGNAL Q_OUT_ff : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_dff1~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_SOP_OUT~1_combout\ : std_logic;
SIGNAL \ALT_INV_SOP_OUT~0_combout\ : std_logic;
SIGNAL \ALT_INV_cnt_ena_ff~q\ : std_logic;
SIGNAL ALT_INV_cnt : std_logic_vector(9 DOWNTO 0);

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
\ALT_INV_cnt[1]~DUPLICATE_q\ <= NOT \cnt[1]~DUPLICATE_q\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\ALT_INV_process_2~0_combout\ <= NOT \process_2~0_combout\;
\ALT_INV_dff1~q\ <= NOT \dff1~q\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_SOP_OUT~1_combout\ <= NOT \SOP_OUT~1_combout\;
\ALT_INV_SOP_OUT~0_combout\ <= NOT \SOP_OUT~0_combout\;
\ALT_INV_cnt_ena_ff~q\ <= NOT \cnt_ena_ff~q\;
ALT_INV_cnt(9) <= NOT cnt(9);
ALT_INV_cnt(8) <= NOT cnt(8);
ALT_INV_cnt(7) <= NOT cnt(7);
ALT_INV_cnt(6) <= NOT cnt(6);
ALT_INV_cnt(5) <= NOT cnt(5);
ALT_INV_cnt(4) <= NOT cnt(4);
ALT_INV_cnt(3) <= NOT cnt(3);
ALT_INV_cnt(2) <= NOT cnt(2);
ALT_INV_cnt(1) <= NOT cnt(1);
ALT_INV_cnt(0) <= NOT cnt(0);

-- Location: IOOBUF_X89_Y35_N79
\READ_ENA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt_ena_ffd~q\,
	devoe => ww_devoe,
	o => ww_READ_ENA);

-- Location: IOOBUF_X89_Y35_N96
\ROM_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q_OUT_ff(0),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(0));

-- Location: IOOBUF_X89_Y38_N39
\ROM_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q_OUT_ff(1),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(1));

-- Location: IOOBUF_X89_Y36_N5
\ROM_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q_OUT_ff(2),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(2));

-- Location: IOOBUF_X89_Y38_N22
\ROM_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q_OUT_ff(3),
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
	i => Q_OUT_ff(4),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(4));

-- Location: IOOBUF_X89_Y36_N22
\ROM_ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q_OUT_ff(5),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(5));

-- Location: IOOBUF_X89_Y37_N39
\ROM_ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q_OUT_ff(6),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(6));

-- Location: IOOBUF_X89_Y37_N5
\ROM_ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q_OUT_ff(7),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(7));

-- Location: IOOBUF_X89_Y38_N5
\ROM_ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Q_OUT_ff(8),
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
	i => Q_OUT_ff(9),
	devoe => ww_devoe,
	o => ww_ROM_ADDR(9));

-- Location: IOOBUF_X89_Y35_N45
\SOP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOP_OUT_ff~q\,
	devoe => ww_devoe,
	o => ww_SOP);

-- Location: IOOBUF_X89_Y36_N39
\EOP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \EOP_OUT_ff~q\,
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

-- Location: MLABCELL_X87_Y34_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( cnt(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( cnt(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X89_Y37_N21
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: MLABCELL_X87_Y34_N42
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( cnt(2) & ( (cnt(3) & (cnt(4) & (cnt(0) & cnt(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(3),
	datab => ALT_INV_cnt(4),
	datac => ALT_INV_cnt(0),
	datad => ALT_INV_cnt(1),
	dataf => ALT_INV_cnt(2),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X87_Y34_N39
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( cnt(5) & ( (\Equal1~1_combout\ & \Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => ALT_INV_cnt(5),
	combout => \Equal1~2_combout\);

-- Location: FF_X87_Y34_N2
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: MLABCELL_X87_Y34_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( cnt(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( cnt(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X87_Y34_N5
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: MLABCELL_X87_Y34_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( cnt(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( cnt(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X87_Y34_N8
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: MLABCELL_X87_Y34_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( cnt(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( cnt(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X87_Y34_N10
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: MLABCELL_X87_Y34_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( cnt(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( cnt(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X87_Y34_N13
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: MLABCELL_X87_Y34_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( cnt(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( cnt(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X87_Y34_N17
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: MLABCELL_X87_Y34_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( cnt(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( cnt(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X87_Y34_N19
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: MLABCELL_X87_Y34_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( cnt(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( cnt(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X87_Y34_N23
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: MLABCELL_X87_Y34_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( cnt(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( cnt(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X87_Y34_N25
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: MLABCELL_X87_Y34_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( cnt(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cnt(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\);

-- Location: FF_X87_Y34_N28
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: MLABCELL_X87_Y34_N36
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( cnt(9) & ( (cnt(8) & (cnt(6) & cnt(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(8),
	datac => ALT_INV_cnt(6),
	datad => ALT_INV_cnt(7),
	dataf => ALT_INV_cnt(9),
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X89_Y36_N55
\TRIGGER_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TRIGGER_IN,
	o => \TRIGGER_IN~input_o\);

-- Location: LABCELL_X88_Y36_N6
\dff0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dff0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \dff0~feeder_combout\);

-- Location: LABCELL_X88_Y36_N30
\process_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = ( \dff1~q\ & ( \RESET~input_o\ ) ) # ( !\dff1~q\ & ( \RESET~input_o\ ) ) # ( \dff1~q\ & ( !\RESET~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_dff1~q\,
	dataf => \ALT_INV_RESET~input_o\,
	combout => \process_2~0_combout\);

-- Location: FF_X88_Y36_N8
dff0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TRIGGER_IN~input_o\,
	d => \dff0~feeder_combout\,
	clrn => \ALT_INV_process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff0~q\);

-- Location: FF_X88_Y36_N31
dff1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \dff0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff1~q\);

-- Location: MLABCELL_X87_Y34_N51
\cnt_ena_ff~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_ena_ff~0_combout\ = ( \dff1~q\ ) # ( !\dff1~q\ & ( (\cnt_ena_ff~q\ & ((!\Equal1~1_combout\) # ((!cnt(5)) # (!\Equal1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => ALT_INV_cnt(5),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_cnt_ena_ff~q\,
	dataf => \ALT_INV_dff1~q\,
	combout => \cnt_ena_ff~0_combout\);

-- Location: FF_X87_Y34_N53
cnt_ena_ff : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \cnt_ena_ff~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_ena_ff~q\);

-- Location: MLABCELL_X87_Y34_N30
\cnt_ena_ffd~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt_ena_ffd~feeder_combout\ = ( \cnt_ena_ff~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_cnt_ena_ff~q\,
	combout => \cnt_ena_ffd~feeder_combout\);

-- Location: FF_X87_Y34_N31
cnt_ena_ffd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \cnt_ena_ffd~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt_ena_ffd~q\);

-- Location: FF_X87_Y34_N40
\Q_OUT_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => cnt(0),
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_OUT_ff(0));

-- Location: FF_X87_Y34_N4
\cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y34_N3
\Q_OUT_ff[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q_OUT_ff[1]~feeder_combout\ = ( \cnt[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \Q_OUT_ff[1]~feeder_combout\);

-- Location: FF_X88_Y34_N4
\Q_OUT_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Q_OUT_ff[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_OUT_ff(1));

-- Location: FF_X87_Y34_N7
\cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[2]~DUPLICATE_q\);

-- Location: FF_X88_Y34_N7
\Q_OUT_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \cnt[2]~DUPLICATE_q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_OUT_ff(2));

-- Location: LABCELL_X88_Y34_N15
\Q_OUT_ff[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q_OUT_ff[3]~feeder_combout\ = ( cnt(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_cnt(3),
	combout => \Q_OUT_ff[3]~feeder_combout\);

-- Location: FF_X88_Y34_N16
\Q_OUT_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Q_OUT_ff[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_OUT_ff(3));

-- Location: FF_X88_Y34_N19
\Q_OUT_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => cnt(4),
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_OUT_ff(4));

-- Location: MLABCELL_X87_Y34_N33
\Q_OUT_ff[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q_OUT_ff[5]~feeder_combout\ = ( cnt(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_cnt(5),
	combout => \Q_OUT_ff[5]~feeder_combout\);

-- Location: FF_X87_Y34_N34
\Q_OUT_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Q_OUT_ff[5]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_OUT_ff(5));

-- Location: LABCELL_X88_Y37_N3
\Q_OUT_ff[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q_OUT_ff[6]~feeder_combout\ = ( cnt(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_cnt(6),
	combout => \Q_OUT_ff[6]~feeder_combout\);

-- Location: FF_X88_Y37_N4
\Q_OUT_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Q_OUT_ff[6]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_OUT_ff(6));

-- Location: FF_X87_Y34_N22
\cnt[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal1~2_combout\,
	ena => \cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt[7]~DUPLICATE_q\);

-- Location: FF_X88_Y34_N55
\Q_OUT_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \cnt[7]~DUPLICATE_q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_OUT_ff(7));

-- Location: LABCELL_X88_Y34_N33
\Q_OUT_ff[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q_OUT_ff[8]~feeder_combout\ = ( cnt(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_cnt(8),
	combout => \Q_OUT_ff[8]~feeder_combout\);

-- Location: FF_X88_Y34_N34
\Q_OUT_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Q_OUT_ff[8]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_OUT_ff(8));

-- Location: FF_X88_Y34_N37
\Q_OUT_ff[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => cnt(9),
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_OUT_ff(9));

-- Location: MLABCELL_X87_Y34_N57
\SOP_OUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOP_OUT~1_combout\ = ( !cnt(8) & ( (!cnt(7) & (!cnt(5) & !cnt(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(7),
	datac => ALT_INV_cnt(5),
	datad => ALT_INV_cnt(6),
	dataf => ALT_INV_cnt(8),
	combout => \SOP_OUT~1_combout\);

-- Location: MLABCELL_X87_Y34_N54
\SOP_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOP_OUT~0_combout\ = ( !\cnt[1]~DUPLICATE_q\ & ( (!cnt(2) & (!cnt(0) & \cnt_ena_ff~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_cnt(2),
	datac => ALT_INV_cnt(0),
	datad => \ALT_INV_cnt_ena_ff~q\,
	dataf => \ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \SOP_OUT~0_combout\);

-- Location: MLABCELL_X87_Y34_N45
SOP_OUT : cyclonev_lcell_comb
-- Equation(s):
-- \SOP_OUT~combout\ = ( !cnt(9) & ( (!cnt(3) & (!cnt(4) & (\SOP_OUT~1_combout\ & \SOP_OUT~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cnt(3),
	datab => ALT_INV_cnt(4),
	datac => \ALT_INV_SOP_OUT~1_combout\,
	datad => \ALT_INV_SOP_OUT~0_combout\,
	dataf => ALT_INV_cnt(9),
	combout => \SOP_OUT~combout\);

-- Location: FF_X87_Y34_N46
SOP_OUT_ff : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \SOP_OUT~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOP_OUT_ff~q\);

-- Location: MLABCELL_X87_Y34_N48
EOP_OUT : cyclonev_lcell_comb
-- Equation(s):
-- \EOP_OUT~combout\ = ( \cnt_ena_ff~q\ & ( (\Equal1~1_combout\ & (cnt(5) & \Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => ALT_INV_cnt(5),
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_cnt_ena_ff~q\,
	combout => \EOP_OUT~combout\);

-- Location: FF_X87_Y34_N49
EOP_OUT_ff : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \EOP_OUT~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EOP_OUT_ff~q\);

-- Location: LABCELL_X83_Y4_N0
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


