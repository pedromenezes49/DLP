-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/17/2025 18:06:41"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hightolow IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	key0 : IN std_logic;
	y : BUFFER std_logic;
	led1 : BUFFER std_logic
	);
END hightolow;

-- Design Ports Information
-- y	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key0	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hightolow IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_key0 : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ClockDivider|Add0~37_sumout\ : std_logic;
SIGNAL \ClockDivider|count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|Equal0~4_combout\ : std_logic;
SIGNAL \ClockDivider|count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|Add0~78\ : std_logic;
SIGNAL \ClockDivider|Add0~73_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~74\ : std_logic;
SIGNAL \ClockDivider|Add0~69_sumout\ : std_logic;
SIGNAL \ClockDivider|count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|Add0~70\ : std_logic;
SIGNAL \ClockDivider|Add0~65_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~66\ : std_logic;
SIGNAL \ClockDivider|Add0~61_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~62\ : std_logic;
SIGNAL \ClockDivider|Add0~57_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~58\ : std_logic;
SIGNAL \ClockDivider|Add0~41_sumout\ : std_logic;
SIGNAL \ClockDivider|count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|Add0~42\ : std_logic;
SIGNAL \ClockDivider|Add0~45_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~46\ : std_logic;
SIGNAL \ClockDivider|Add0~49_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~50\ : std_logic;
SIGNAL \ClockDivider|Add0~53_sumout\ : std_logic;
SIGNAL \ClockDivider|Equal0~2_combout\ : std_logic;
SIGNAL \ClockDivider|Add0~54\ : std_logic;
SIGNAL \ClockDivider|Add0~9_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~10\ : std_logic;
SIGNAL \ClockDivider|Add0~13_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~14\ : std_logic;
SIGNAL \ClockDivider|Add0~17_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~18\ : std_logic;
SIGNAL \ClockDivider|Add0~21_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~22\ : std_logic;
SIGNAL \ClockDivider|Add0~25_sumout\ : std_logic;
SIGNAL \ClockDivider|count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|Add0~26\ : std_logic;
SIGNAL \ClockDivider|Add0~29_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~30\ : std_logic;
SIGNAL \ClockDivider|Add0~1_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~2\ : std_logic;
SIGNAL \ClockDivider|Add0~5_sumout\ : std_logic;
SIGNAL \ClockDivider|Equal0~0_combout\ : std_logic;
SIGNAL \ClockDivider|Equal0~1_combout\ : std_logic;
SIGNAL \ClockDivider|Equal0~5_combout\ : std_logic;
SIGNAL \ClockDivider|count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|Add0~38\ : std_logic;
SIGNAL \ClockDivider|Add0~33_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~34\ : std_logic;
SIGNAL \ClockDivider|Add0~101_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~102\ : std_logic;
SIGNAL \ClockDivider|Add0~97_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~98\ : std_logic;
SIGNAL \ClockDivider|Add0~93_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~94\ : std_logic;
SIGNAL \ClockDivider|Add0~89_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~90\ : std_logic;
SIGNAL \ClockDivider|Add0~85_sumout\ : std_logic;
SIGNAL \ClockDivider|Add0~86\ : std_logic;
SIGNAL \ClockDivider|Add0~81_sumout\ : std_logic;
SIGNAL \ClockDivider|count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|Add0~82\ : std_logic;
SIGNAL \ClockDivider|Add0~77_sumout\ : std_logic;
SIGNAL \ClockDivider|Equal0~3_combout\ : std_logic;
SIGNAL \ClockDivider|temp_clk~0_combout\ : std_logic;
SIGNAL \ClockDivider|temp_clk~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \MaquinaEstados|estado.S2~DUPLICATE_q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S3~feeder_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S3~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S4~feeder_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S4~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S5~feeder_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S5~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S6~feeder_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S6~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S7~feeder_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S7~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S0~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S0~DUPLICATE_q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S1~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S1~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S2~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S0~q\ : std_logic;
SIGNAL \MaquinaEstados|y~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|y~q\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \ClockDivider|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \MaquinaEstados|ALT_INV_estado.S4~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S5~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S6~q\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S7~q\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_temp_clk~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S0~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S2~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_y~q\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \MaquinaEstados|ALT_INV_estado.S0~DUPLICATE_q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S2~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ClockDivider|ALT_INV_count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S3~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_key0 <= key0;
y <= ww_y;
led1 <= ww_led1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\MaquinaEstados|ALT_INV_estado.S4~q\ <= NOT \MaquinaEstados|estado.S4~q\;
\MaquinaEstados|ALT_INV_estado.S5~q\ <= NOT \MaquinaEstados|estado.S5~q\;
\MaquinaEstados|ALT_INV_estado.S6~q\ <= NOT \MaquinaEstados|estado.S6~q\;
\ClockDivider|ALT_INV_Equal0~4_combout\ <= NOT \ClockDivider|Equal0~4_combout\;
\ClockDivider|ALT_INV_Equal0~3_combout\ <= NOT \ClockDivider|Equal0~3_combout\;
\ClockDivider|ALT_INV_Equal0~2_combout\ <= NOT \ClockDivider|Equal0~2_combout\;
\ClockDivider|ALT_INV_Equal0~1_combout\ <= NOT \ClockDivider|Equal0~1_combout\;
\ClockDivider|ALT_INV_Equal0~0_combout\ <= NOT \ClockDivider|Equal0~0_combout\;
\MaquinaEstados|ALT_INV_estado.S7~q\ <= NOT \MaquinaEstados|estado.S7~q\;
\ClockDivider|ALT_INV_temp_clk~q\ <= NOT \ClockDivider|temp_clk~q\;
\MaquinaEstados|ALT_INV_estado.S0~q\ <= NOT \MaquinaEstados|estado.S0~q\;
\MaquinaEstados|ALT_INV_estado.S2~q\ <= NOT \MaquinaEstados|estado.S2~q\;
\MaquinaEstados|ALT_INV_y~q\ <= NOT \MaquinaEstados|y~q\;
\ClockDivider|ALT_INV_count\(2) <= NOT \ClockDivider|count\(2);
\ClockDivider|ALT_INV_count\(3) <= NOT \ClockDivider|count\(3);
\ClockDivider|ALT_INV_count\(4) <= NOT \ClockDivider|count\(4);
\ClockDivider|ALT_INV_count\(5) <= NOT \ClockDivider|count\(5);
\ClockDivider|ALT_INV_count\(6) <= NOT \ClockDivider|count\(6);
\ClockDivider|ALT_INV_count\(7) <= NOT \ClockDivider|count\(7);
\ClockDivider|ALT_INV_count\(8) <= NOT \ClockDivider|count\(8);
\ClockDivider|ALT_INV_count\(9) <= NOT \ClockDivider|count\(9);
\ClockDivider|ALT_INV_count\(10) <= NOT \ClockDivider|count\(10);
\ClockDivider|ALT_INV_count\(11) <= NOT \ClockDivider|count\(11);
\ClockDivider|ALT_INV_count\(12) <= NOT \ClockDivider|count\(12);
\ClockDivider|ALT_INV_count\(13) <= NOT \ClockDivider|count\(13);
\ClockDivider|ALT_INV_count\(17) <= NOT \ClockDivider|count\(17);
\ClockDivider|ALT_INV_count\(16) <= NOT \ClockDivider|count\(16);
\ClockDivider|ALT_INV_count\(15) <= NOT \ClockDivider|count\(15);
\ClockDivider|ALT_INV_count\(14) <= NOT \ClockDivider|count\(14);
\ClockDivider|ALT_INV_count\(0) <= NOT \ClockDivider|count\(0);
\ClockDivider|ALT_INV_count\(1) <= NOT \ClockDivider|count\(1);
\ClockDivider|ALT_INV_count\(23) <= NOT \ClockDivider|count\(23);
\ClockDivider|ALT_INV_count\(22) <= NOT \ClockDivider|count\(22);
\ClockDivider|ALT_INV_count\(21) <= NOT \ClockDivider|count\(21);
\ClockDivider|ALT_INV_count\(20) <= NOT \ClockDivider|count\(20);
\ClockDivider|ALT_INV_count\(19) <= NOT \ClockDivider|count\(19);
\ClockDivider|ALT_INV_count\(18) <= NOT \ClockDivider|count\(18);
\ClockDivider|ALT_INV_count\(25) <= NOT \ClockDivider|count\(25);
\ClockDivider|ALT_INV_count\(24) <= NOT \ClockDivider|count\(24);
\MaquinaEstados|ALT_INV_estado.S0~DUPLICATE_q\ <= NOT \MaquinaEstados|estado.S0~DUPLICATE_q\;
\MaquinaEstados|ALT_INV_estado.S2~DUPLICATE_q\ <= NOT \MaquinaEstados|estado.S2~DUPLICATE_q\;
\ClockDivider|ALT_INV_count[4]~DUPLICATE_q\ <= NOT \ClockDivider|count[4]~DUPLICATE_q\;
\ClockDivider|ALT_INV_count[7]~DUPLICATE_q\ <= NOT \ClockDivider|count[7]~DUPLICATE_q\;
\ClockDivider|ALT_INV_count[10]~DUPLICATE_q\ <= NOT \ClockDivider|count[10]~DUPLICATE_q\;
\ClockDivider|ALT_INV_count[15]~DUPLICATE_q\ <= NOT \ClockDivider|count[15]~DUPLICATE_q\;
\ClockDivider|ALT_INV_count[14]~DUPLICATE_q\ <= NOT \ClockDivider|count[14]~DUPLICATE_q\;
\ClockDivider|ALT_INV_count[0]~DUPLICATE_q\ <= NOT \ClockDivider|count[0]~DUPLICATE_q\;
\ClockDivider|ALT_INV_count[22]~DUPLICATE_q\ <= NOT \ClockDivider|count[22]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\MaquinaEstados|ALT_INV_estado.S3~q\ <= NOT \MaquinaEstados|estado.S3~q\;

-- Location: IOOBUF_X0_Y18_N79
\y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MaquinaEstados|y~q\,
	devoe => ww_devoe,
	o => ww_y);

-- Location: IOOBUF_X0_Y18_N96
\led1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \key0~input_o\,
	devoe => ww_devoe,
	o => ww_led1);

-- Location: IOIBUF_X22_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X20_Y2_N30
\ClockDivider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~37_sumout\ = SUM(( \ClockDivider|count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \ClockDivider|Add0~38\ = CARRY(( \ClockDivider|count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \ClockDivider|Add0~37_sumout\,
	cout => \ClockDivider|Add0~38\);

-- Location: FF_X20_Y2_N52
\ClockDivider|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~81_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(7));

-- Location: FF_X20_Y2_N44
\ClockDivider|count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~93_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count[4]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y2_N18
\ClockDivider|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Equal0~4_combout\ = ( !\ClockDivider|count\(7) & ( \ClockDivider|count[4]~DUPLICATE_q\ & ( (\ClockDivider|count\(6) & (\ClockDivider|count\(3) & (\ClockDivider|count\(2) & \ClockDivider|count\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClockDivider|ALT_INV_count\(6),
	datab => \ClockDivider|ALT_INV_count\(3),
	datac => \ClockDivider|ALT_INV_count\(2),
	datad => \ClockDivider|ALT_INV_count\(5),
	datae => \ClockDivider|ALT_INV_count\(7),
	dataf => \ClockDivider|ALT_INV_count[4]~DUPLICATE_q\,
	combout => \ClockDivider|Equal0~4_combout\);

-- Location: FF_X20_Y2_N32
\ClockDivider|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~37_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(0));

-- Location: FF_X20_Y1_N17
\ClockDivider|count[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~45_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count[15]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y2_N54
\ClockDivider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~77_sumout\ = SUM(( \ClockDivider|count\(8) ) + ( GND ) + ( \ClockDivider|Add0~82\ ))
-- \ClockDivider|Add0~78\ = CARRY(( \ClockDivider|count\(8) ) + ( GND ) + ( \ClockDivider|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count\(8),
	cin => \ClockDivider|Add0~82\,
	sumout => \ClockDivider|Add0~77_sumout\,
	cout => \ClockDivider|Add0~78\);

-- Location: LABCELL_X20_Y2_N57
\ClockDivider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~73_sumout\ = SUM(( \ClockDivider|count\(9) ) + ( GND ) + ( \ClockDivider|Add0~78\ ))
-- \ClockDivider|Add0~74\ = CARRY(( \ClockDivider|count\(9) ) + ( GND ) + ( \ClockDivider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count\(9),
	cin => \ClockDivider|Add0~78\,
	sumout => \ClockDivider|Add0~73_sumout\,
	cout => \ClockDivider|Add0~74\);

-- Location: FF_X20_Y2_N59
\ClockDivider|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~73_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(9));

-- Location: LABCELL_X20_Y1_N0
\ClockDivider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~69_sumout\ = SUM(( \ClockDivider|count[10]~DUPLICATE_q\ ) + ( GND ) + ( \ClockDivider|Add0~74\ ))
-- \ClockDivider|Add0~70\ = CARRY(( \ClockDivider|count[10]~DUPLICATE_q\ ) + ( GND ) + ( \ClockDivider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ClockDivider|ALT_INV_count[10]~DUPLICATE_q\,
	cin => \ClockDivider|Add0~74\,
	sumout => \ClockDivider|Add0~69_sumout\,
	cout => \ClockDivider|Add0~70\);

-- Location: FF_X20_Y1_N2
\ClockDivider|count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~69_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count[10]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y1_N3
\ClockDivider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~65_sumout\ = SUM(( \ClockDivider|count\(11) ) + ( GND ) + ( \ClockDivider|Add0~70\ ))
-- \ClockDivider|Add0~66\ = CARRY(( \ClockDivider|count\(11) ) + ( GND ) + ( \ClockDivider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ClockDivider|ALT_INV_count\(11),
	cin => \ClockDivider|Add0~70\,
	sumout => \ClockDivider|Add0~65_sumout\,
	cout => \ClockDivider|Add0~66\);

-- Location: FF_X20_Y1_N5
\ClockDivider|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~65_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(11));

-- Location: LABCELL_X20_Y1_N6
\ClockDivider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~61_sumout\ = SUM(( \ClockDivider|count\(12) ) + ( GND ) + ( \ClockDivider|Add0~66\ ))
-- \ClockDivider|Add0~62\ = CARRY(( \ClockDivider|count\(12) ) + ( GND ) + ( \ClockDivider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ClockDivider|ALT_INV_count\(12),
	cin => \ClockDivider|Add0~66\,
	sumout => \ClockDivider|Add0~61_sumout\,
	cout => \ClockDivider|Add0~62\);

-- Location: FF_X20_Y1_N7
\ClockDivider|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~61_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(12));

-- Location: LABCELL_X20_Y1_N9
\ClockDivider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~57_sumout\ = SUM(( \ClockDivider|count\(13) ) + ( GND ) + ( \ClockDivider|Add0~62\ ))
-- \ClockDivider|Add0~58\ = CARRY(( \ClockDivider|count\(13) ) + ( GND ) + ( \ClockDivider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count\(13),
	cin => \ClockDivider|Add0~62\,
	sumout => \ClockDivider|Add0~57_sumout\,
	cout => \ClockDivider|Add0~58\);

-- Location: FF_X20_Y1_N11
\ClockDivider|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~57_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(13));

-- Location: LABCELL_X20_Y1_N12
\ClockDivider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~41_sumout\ = SUM(( \ClockDivider|count[14]~DUPLICATE_q\ ) + ( GND ) + ( \ClockDivider|Add0~58\ ))
-- \ClockDivider|Add0~42\ = CARRY(( \ClockDivider|count[14]~DUPLICATE_q\ ) + ( GND ) + ( \ClockDivider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ClockDivider|ALT_INV_count[14]~DUPLICATE_q\,
	cin => \ClockDivider|Add0~58\,
	sumout => \ClockDivider|Add0~41_sumout\,
	cout => \ClockDivider|Add0~42\);

-- Location: FF_X20_Y1_N14
\ClockDivider|count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~41_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count[14]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y1_N15
\ClockDivider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~45_sumout\ = SUM(( \ClockDivider|count[15]~DUPLICATE_q\ ) + ( GND ) + ( \ClockDivider|Add0~42\ ))
-- \ClockDivider|Add0~46\ = CARRY(( \ClockDivider|count[15]~DUPLICATE_q\ ) + ( GND ) + ( \ClockDivider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count[15]~DUPLICATE_q\,
	cin => \ClockDivider|Add0~42\,
	sumout => \ClockDivider|Add0~45_sumout\,
	cout => \ClockDivider|Add0~46\);

-- Location: FF_X20_Y1_N16
\ClockDivider|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~45_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(15));

-- Location: LABCELL_X20_Y1_N18
\ClockDivider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~49_sumout\ = SUM(( \ClockDivider|count\(16) ) + ( GND ) + ( \ClockDivider|Add0~46\ ))
-- \ClockDivider|Add0~50\ = CARRY(( \ClockDivider|count\(16) ) + ( GND ) + ( \ClockDivider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ClockDivider|ALT_INV_count\(16),
	cin => \ClockDivider|Add0~46\,
	sumout => \ClockDivider|Add0~49_sumout\,
	cout => \ClockDivider|Add0~50\);

-- Location: FF_X20_Y2_N17
\ClockDivider|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ClockDivider|Add0~49_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(16));

-- Location: LABCELL_X20_Y1_N21
\ClockDivider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~53_sumout\ = SUM(( \ClockDivider|count\(17) ) + ( GND ) + ( \ClockDivider|Add0~50\ ))
-- \ClockDivider|Add0~54\ = CARRY(( \ClockDivider|count\(17) ) + ( GND ) + ( \ClockDivider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ClockDivider|ALT_INV_count\(17),
	cin => \ClockDivider|Add0~50\,
	sumout => \ClockDivider|Add0~53_sumout\,
	cout => \ClockDivider|Add0~54\);

-- Location: FF_X20_Y1_N23
\ClockDivider|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~53_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(17));

-- Location: FF_X20_Y1_N13
\ClockDivider|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~41_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(14));

-- Location: LABCELL_X20_Y2_N24
\ClockDivider|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Equal0~2_combout\ = ( \ClockDivider|count\(17) & ( \ClockDivider|count\(14) & ( (\ClockDivider|count\(1) & (\ClockDivider|count\(0) & (\ClockDivider|count\(15) & !\ClockDivider|count\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClockDivider|ALT_INV_count\(1),
	datab => \ClockDivider|ALT_INV_count\(0),
	datac => \ClockDivider|ALT_INV_count\(15),
	datad => \ClockDivider|ALT_INV_count\(16),
	datae => \ClockDivider|ALT_INV_count\(17),
	dataf => \ClockDivider|ALT_INV_count\(14),
	combout => \ClockDivider|Equal0~2_combout\);

-- Location: LABCELL_X20_Y1_N24
\ClockDivider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~9_sumout\ = SUM(( \ClockDivider|count\(18) ) + ( GND ) + ( \ClockDivider|Add0~54\ ))
-- \ClockDivider|Add0~10\ = CARRY(( \ClockDivider|count\(18) ) + ( GND ) + ( \ClockDivider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count\(18),
	cin => \ClockDivider|Add0~54\,
	sumout => \ClockDivider|Add0~9_sumout\,
	cout => \ClockDivider|Add0~10\);

-- Location: FF_X20_Y1_N26
\ClockDivider|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~9_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(18));

-- Location: LABCELL_X20_Y1_N27
\ClockDivider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~13_sumout\ = SUM(( \ClockDivider|count\(19) ) + ( GND ) + ( \ClockDivider|Add0~10\ ))
-- \ClockDivider|Add0~14\ = CARRY(( \ClockDivider|count\(19) ) + ( GND ) + ( \ClockDivider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClockDivider|ALT_INV_count\(19),
	cin => \ClockDivider|Add0~10\,
	sumout => \ClockDivider|Add0~13_sumout\,
	cout => \ClockDivider|Add0~14\);

-- Location: FF_X20_Y1_N29
\ClockDivider|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~13_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(19));

-- Location: LABCELL_X20_Y1_N30
\ClockDivider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~17_sumout\ = SUM(( \ClockDivider|count\(20) ) + ( GND ) + ( \ClockDivider|Add0~14\ ))
-- \ClockDivider|Add0~18\ = CARRY(( \ClockDivider|count\(20) ) + ( GND ) + ( \ClockDivider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ClockDivider|ALT_INV_count\(20),
	cin => \ClockDivider|Add0~14\,
	sumout => \ClockDivider|Add0~17_sumout\,
	cout => \ClockDivider|Add0~18\);

-- Location: FF_X20_Y1_N32
\ClockDivider|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~17_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(20));

-- Location: LABCELL_X20_Y1_N33
\ClockDivider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~21_sumout\ = SUM(( \ClockDivider|count\(21) ) + ( GND ) + ( \ClockDivider|Add0~18\ ))
-- \ClockDivider|Add0~22\ = CARRY(( \ClockDivider|count\(21) ) + ( GND ) + ( \ClockDivider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClockDivider|ALT_INV_count\(21),
	cin => \ClockDivider|Add0~18\,
	sumout => \ClockDivider|Add0~21_sumout\,
	cout => \ClockDivider|Add0~22\);

-- Location: FF_X20_Y1_N35
\ClockDivider|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~21_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(21));

-- Location: LABCELL_X20_Y1_N36
\ClockDivider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~25_sumout\ = SUM(( \ClockDivider|count[22]~DUPLICATE_q\ ) + ( GND ) + ( \ClockDivider|Add0~22\ ))
-- \ClockDivider|Add0~26\ = CARRY(( \ClockDivider|count[22]~DUPLICATE_q\ ) + ( GND ) + ( \ClockDivider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count[22]~DUPLICATE_q\,
	cin => \ClockDivider|Add0~22\,
	sumout => \ClockDivider|Add0~25_sumout\,
	cout => \ClockDivider|Add0~26\);

-- Location: FF_X20_Y1_N38
\ClockDivider|count[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~25_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count[22]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y1_N39
\ClockDivider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~29_sumout\ = SUM(( \ClockDivider|count\(23) ) + ( GND ) + ( \ClockDivider|Add0~26\ ))
-- \ClockDivider|Add0~30\ = CARRY(( \ClockDivider|count\(23) ) + ( GND ) + ( \ClockDivider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count\(23),
	cin => \ClockDivider|Add0~26\,
	sumout => \ClockDivider|Add0~29_sumout\,
	cout => \ClockDivider|Add0~30\);

-- Location: FF_X20_Y1_N41
\ClockDivider|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~29_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(23));

-- Location: LABCELL_X20_Y1_N42
\ClockDivider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~1_sumout\ = SUM(( \ClockDivider|count\(24) ) + ( GND ) + ( \ClockDivider|Add0~30\ ))
-- \ClockDivider|Add0~2\ = CARRY(( \ClockDivider|count\(24) ) + ( GND ) + ( \ClockDivider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ClockDivider|ALT_INV_count\(24),
	cin => \ClockDivider|Add0~30\,
	sumout => \ClockDivider|Add0~1_sumout\,
	cout => \ClockDivider|Add0~2\);

-- Location: FF_X20_Y1_N44
\ClockDivider|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~1_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(24));

-- Location: LABCELL_X20_Y1_N45
\ClockDivider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~5_sumout\ = SUM(( \ClockDivider|count\(25) ) + ( GND ) + ( \ClockDivider|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count\(25),
	cin => \ClockDivider|Add0~2\,
	sumout => \ClockDivider|Add0~5_sumout\);

-- Location: FF_X20_Y1_N47
\ClockDivider|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~5_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(25));

-- Location: LABCELL_X20_Y1_N51
\ClockDivider|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Equal0~0_combout\ = ( \ClockDivider|count\(25) & ( !\ClockDivider|count\(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ClockDivider|ALT_INV_count\(25),
	dataf => \ClockDivider|ALT_INV_count\(24),
	combout => \ClockDivider|Equal0~0_combout\);

-- Location: FF_X20_Y1_N37
\ClockDivider|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~25_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(22));

-- Location: LABCELL_X20_Y1_N54
\ClockDivider|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Equal0~1_combout\ = ( \ClockDivider|count\(19) & ( \ClockDivider|count\(20) & ( (\ClockDivider|count\(21) & (\ClockDivider|count\(22) & (!\ClockDivider|count\(18) & \ClockDivider|count\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClockDivider|ALT_INV_count\(21),
	datab => \ClockDivider|ALT_INV_count\(22),
	datac => \ClockDivider|ALT_INV_count\(18),
	datad => \ClockDivider|ALT_INV_count\(23),
	datae => \ClockDivider|ALT_INV_count\(19),
	dataf => \ClockDivider|ALT_INV_count\(20),
	combout => \ClockDivider|Equal0~1_combout\);

-- Location: LABCELL_X20_Y2_N12
\ClockDivider|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Equal0~5_combout\ = ( \ClockDivider|Equal0~3_combout\ & ( (\ClockDivider|Equal0~4_combout\ & (\ClockDivider|Equal0~2_combout\ & (\ClockDivider|Equal0~0_combout\ & \ClockDivider|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClockDivider|ALT_INV_Equal0~4_combout\,
	datab => \ClockDivider|ALT_INV_Equal0~2_combout\,
	datac => \ClockDivider|ALT_INV_Equal0~0_combout\,
	datad => \ClockDivider|ALT_INV_Equal0~1_combout\,
	datae => \ClockDivider|ALT_INV_Equal0~3_combout\,
	combout => \ClockDivider|Equal0~5_combout\);

-- Location: FF_X20_Y2_N31
\ClockDivider|count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~37_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count[0]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y2_N33
\ClockDivider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~33_sumout\ = SUM(( \ClockDivider|count\(1) ) + ( GND ) + ( \ClockDivider|Add0~38\ ))
-- \ClockDivider|Add0~34\ = CARRY(( \ClockDivider|count\(1) ) + ( GND ) + ( \ClockDivider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClockDivider|ALT_INV_count\(1),
	cin => \ClockDivider|Add0~38\,
	sumout => \ClockDivider|Add0~33_sumout\,
	cout => \ClockDivider|Add0~34\);

-- Location: FF_X20_Y2_N35
\ClockDivider|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~33_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(1));

-- Location: LABCELL_X20_Y2_N36
\ClockDivider|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~101_sumout\ = SUM(( \ClockDivider|count\(2) ) + ( GND ) + ( \ClockDivider|Add0~34\ ))
-- \ClockDivider|Add0~102\ = CARRY(( \ClockDivider|count\(2) ) + ( GND ) + ( \ClockDivider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ClockDivider|ALT_INV_count\(2),
	cin => \ClockDivider|Add0~34\,
	sumout => \ClockDivider|Add0~101_sumout\,
	cout => \ClockDivider|Add0~102\);

-- Location: FF_X20_Y2_N38
\ClockDivider|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~101_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(2));

-- Location: LABCELL_X20_Y2_N39
\ClockDivider|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~97_sumout\ = SUM(( \ClockDivider|count\(3) ) + ( GND ) + ( \ClockDivider|Add0~102\ ))
-- \ClockDivider|Add0~98\ = CARRY(( \ClockDivider|count\(3) ) + ( GND ) + ( \ClockDivider|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count\(3),
	cin => \ClockDivider|Add0~102\,
	sumout => \ClockDivider|Add0~97_sumout\,
	cout => \ClockDivider|Add0~98\);

-- Location: FF_X20_Y2_N41
\ClockDivider|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~97_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(3));

-- Location: LABCELL_X20_Y2_N42
\ClockDivider|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~93_sumout\ = SUM(( \ClockDivider|count\(4) ) + ( GND ) + ( \ClockDivider|Add0~98\ ))
-- \ClockDivider|Add0~94\ = CARRY(( \ClockDivider|count\(4) ) + ( GND ) + ( \ClockDivider|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ClockDivider|ALT_INV_count\(4),
	cin => \ClockDivider|Add0~98\,
	sumout => \ClockDivider|Add0~93_sumout\,
	cout => \ClockDivider|Add0~94\);

-- Location: FF_X20_Y2_N43
\ClockDivider|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~93_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(4));

-- Location: LABCELL_X20_Y2_N45
\ClockDivider|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~89_sumout\ = SUM(( \ClockDivider|count\(5) ) + ( GND ) + ( \ClockDivider|Add0~94\ ))
-- \ClockDivider|Add0~90\ = CARRY(( \ClockDivider|count\(5) ) + ( GND ) + ( \ClockDivider|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ClockDivider|ALT_INV_count\(5),
	cin => \ClockDivider|Add0~94\,
	sumout => \ClockDivider|Add0~89_sumout\,
	cout => \ClockDivider|Add0~90\);

-- Location: FF_X20_Y2_N47
\ClockDivider|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~89_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(5));

-- Location: LABCELL_X20_Y2_N48
\ClockDivider|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~85_sumout\ = SUM(( \ClockDivider|count\(6) ) + ( GND ) + ( \ClockDivider|Add0~90\ ))
-- \ClockDivider|Add0~86\ = CARRY(( \ClockDivider|count\(6) ) + ( GND ) + ( \ClockDivider|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ClockDivider|ALT_INV_count\(6),
	cin => \ClockDivider|Add0~90\,
	sumout => \ClockDivider|Add0~85_sumout\,
	cout => \ClockDivider|Add0~86\);

-- Location: FF_X20_Y2_N50
\ClockDivider|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~85_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(6));

-- Location: LABCELL_X20_Y2_N51
\ClockDivider|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Add0~81_sumout\ = SUM(( \ClockDivider|count[7]~DUPLICATE_q\ ) + ( GND ) + ( \ClockDivider|Add0~86\ ))
-- \ClockDivider|Add0~82\ = CARRY(( \ClockDivider|count[7]~DUPLICATE_q\ ) + ( GND ) + ( \ClockDivider|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClockDivider|ALT_INV_count[7]~DUPLICATE_q\,
	cin => \ClockDivider|Add0~86\,
	sumout => \ClockDivider|Add0~81_sumout\,
	cout => \ClockDivider|Add0~82\);

-- Location: FF_X20_Y2_N53
\ClockDivider|count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~81_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count[7]~DUPLICATE_q\);

-- Location: FF_X20_Y2_N56
\ClockDivider|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~77_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(8));

-- Location: FF_X20_Y1_N1
\ClockDivider|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ClockDivider|Add0~69_sumout\,
	sclr => \ClockDivider|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|count\(10));

-- Location: LABCELL_X20_Y2_N0
\ClockDivider|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|Equal0~3_combout\ = ( !\ClockDivider|count\(11) & ( \ClockDivider|count\(12) & ( (!\ClockDivider|count\(8) & (!\ClockDivider|count\(9) & (\ClockDivider|count\(13) & !\ClockDivider|count\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClockDivider|ALT_INV_count\(8),
	datab => \ClockDivider|ALT_INV_count\(9),
	datac => \ClockDivider|ALT_INV_count\(13),
	datad => \ClockDivider|ALT_INV_count\(10),
	datae => \ClockDivider|ALT_INV_count\(11),
	dataf => \ClockDivider|ALT_INV_count\(12),
	combout => \ClockDivider|Equal0~3_combout\);

-- Location: LABCELL_X20_Y2_N6
\ClockDivider|temp_clk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClockDivider|temp_clk~0_combout\ = ( \ClockDivider|Equal0~1_combout\ & ( \ClockDivider|temp_clk~q\ & ( (!\ClockDivider|Equal0~3_combout\) # ((!\ClockDivider|Equal0~4_combout\) # ((!\ClockDivider|Equal0~2_combout\) # (!\ClockDivider|Equal0~0_combout\))) ) 
-- ) ) # ( !\ClockDivider|Equal0~1_combout\ & ( \ClockDivider|temp_clk~q\ ) ) # ( \ClockDivider|Equal0~1_combout\ & ( !\ClockDivider|temp_clk~q\ & ( (\ClockDivider|Equal0~3_combout\ & (\ClockDivider|Equal0~4_combout\ & (\ClockDivider|Equal0~2_combout\ & 
-- \ClockDivider|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ClockDivider|ALT_INV_Equal0~3_combout\,
	datab => \ClockDivider|ALT_INV_Equal0~4_combout\,
	datac => \ClockDivider|ALT_INV_Equal0~2_combout\,
	datad => \ClockDivider|ALT_INV_Equal0~0_combout\,
	datae => \ClockDivider|ALT_INV_Equal0~1_combout\,
	dataf => \ClockDivider|ALT_INV_temp_clk~q\,
	combout => \ClockDivider|temp_clk~0_combout\);

-- Location: FF_X20_Y2_N29
\ClockDivider|temp_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \ClockDivider|temp_clk~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClockDivider|temp_clk~q\);

-- Location: IOIBUF_X54_Y16_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X21_Y2_N55
\MaquinaEstados|estado.S2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	asdata => \MaquinaEstados|estado.S1~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S2~DUPLICATE_q\);

-- Location: LABCELL_X21_Y2_N51
\MaquinaEstados|estado.S3~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S3~feeder_combout\ = \MaquinaEstados|estado.S2~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MaquinaEstados|ALT_INV_estado.S2~DUPLICATE_q\,
	combout => \MaquinaEstados|estado.S3~feeder_combout\);

-- Location: FF_X21_Y2_N52
\MaquinaEstados|estado.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	d => \MaquinaEstados|estado.S3~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S3~q\);

-- Location: LABCELL_X21_Y2_N36
\MaquinaEstados|estado.S4~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S4~feeder_combout\ = \MaquinaEstados|estado.S3~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MaquinaEstados|ALT_INV_estado.S3~q\,
	combout => \MaquinaEstados|estado.S4~feeder_combout\);

-- Location: FF_X21_Y2_N37
\MaquinaEstados|estado.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	d => \MaquinaEstados|estado.S4~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S4~q\);

-- Location: LABCELL_X21_Y2_N15
\MaquinaEstados|estado.S5~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S5~feeder_combout\ = \MaquinaEstados|estado.S4~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MaquinaEstados|ALT_INV_estado.S4~q\,
	combout => \MaquinaEstados|estado.S5~feeder_combout\);

-- Location: FF_X21_Y2_N16
\MaquinaEstados|estado.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	d => \MaquinaEstados|estado.S5~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S5~q\);

-- Location: LABCELL_X21_Y2_N30
\MaquinaEstados|estado.S6~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S6~feeder_combout\ = \MaquinaEstados|estado.S5~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MaquinaEstados|ALT_INV_estado.S5~q\,
	combout => \MaquinaEstados|estado.S6~feeder_combout\);

-- Location: FF_X21_Y2_N31
\MaquinaEstados|estado.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	d => \MaquinaEstados|estado.S6~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S6~q\);

-- Location: LABCELL_X21_Y2_N21
\MaquinaEstados|estado.S7~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S7~feeder_combout\ = \MaquinaEstados|estado.S6~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MaquinaEstados|ALT_INV_estado.S6~q\,
	combout => \MaquinaEstados|estado.S7~feeder_combout\);

-- Location: FF_X21_Y2_N23
\MaquinaEstados|estado.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	d => \MaquinaEstados|estado.S7~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S7~q\);

-- Location: LABCELL_X21_Y2_N45
\MaquinaEstados|estado.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S0~0_combout\ = !\MaquinaEstados|estado.S7~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MaquinaEstados|ALT_INV_estado.S7~q\,
	combout => \MaquinaEstados|estado.S0~0_combout\);

-- Location: FF_X21_Y2_N46
\MaquinaEstados|estado.S0~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	d => \MaquinaEstados|estado.S0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S0~DUPLICATE_q\);

-- Location: LABCELL_X21_Y2_N57
\MaquinaEstados|estado.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S1~0_combout\ = !\MaquinaEstados|estado.S0~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MaquinaEstados|ALT_INV_estado.S0~DUPLICATE_q\,
	combout => \MaquinaEstados|estado.S1~0_combout\);

-- Location: FF_X21_Y2_N59
\MaquinaEstados|estado.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	d => \MaquinaEstados|estado.S1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S1~q\);

-- Location: FF_X21_Y2_N56
\MaquinaEstados|estado.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	asdata => \MaquinaEstados|estado.S1~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S2~q\);

-- Location: FF_X21_Y2_N47
\MaquinaEstados|estado.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	d => \MaquinaEstados|estado.S0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S0~q\);

-- Location: LABCELL_X21_Y2_N27
\MaquinaEstados|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|y~0_combout\ = ( \MaquinaEstados|estado.S0~q\ & ( \MaquinaEstados|y~q\ ) ) # ( !\MaquinaEstados|estado.S0~q\ & ( \MaquinaEstados|y~q\ & ( (\MaquinaEstados|estado.S2~q\) # (\reset~input_o\) ) ) ) # ( \MaquinaEstados|estado.S0~q\ & ( 
-- !\MaquinaEstados|y~q\ & ( (!\reset~input_o\ & \MaquinaEstados|estado.S2~q\) ) ) ) # ( !\MaquinaEstados|estado.S0~q\ & ( !\MaquinaEstados|y~q\ & ( (!\reset~input_o\ & \MaquinaEstados|estado.S2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \MaquinaEstados|ALT_INV_estado.S2~q\,
	datae => \MaquinaEstados|ALT_INV_estado.S0~q\,
	dataf => \MaquinaEstados|ALT_INV_y~q\,
	combout => \MaquinaEstados|y~0_combout\);

-- Location: FF_X21_Y2_N26
\MaquinaEstados|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClockDivider|temp_clk~q\,
	asdata => \MaquinaEstados|y~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|y~q\);

-- Location: IOIBUF_X10_Y0_N92
\key0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: LABCELL_X6_Y23_N3
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


