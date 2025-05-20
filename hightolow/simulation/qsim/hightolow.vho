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

-- DATE "05/19/2025 18:08:11"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	hightolow IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	y : OUT std_logic
	);
END hightolow;

-- Design Ports Information
-- y	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_y : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \MaquinaEstados|estado.S3~feeder_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S3~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S4~feeder_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S4~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S5~feeder_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S5~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S6~feeder_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S6~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S7~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S0~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S0~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S1~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|estado.S1~q\ : std_logic;
SIGNAL \MaquinaEstados|estado.S2~q\ : std_logic;
SIGNAL \MaquinaEstados|y~0_combout\ : std_logic;
SIGNAL \MaquinaEstados|y~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S0~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S7~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S5~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S4~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S3~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_y~q\ : std_logic;
SIGNAL \MaquinaEstados|ALT_INV_estado.S2~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\MaquinaEstados|ALT_INV_estado.S0~q\ <= NOT \MaquinaEstados|estado.S0~q\;
\MaquinaEstados|ALT_INV_estado.S7~q\ <= NOT \MaquinaEstados|estado.S7~q\;
\MaquinaEstados|ALT_INV_estado.S5~q\ <= NOT \MaquinaEstados|estado.S5~q\;
\MaquinaEstados|ALT_INV_estado.S4~q\ <= NOT \MaquinaEstados|estado.S4~q\;
\MaquinaEstados|ALT_INV_estado.S3~q\ <= NOT \MaquinaEstados|estado.S3~q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\MaquinaEstados|ALT_INV_y~q\ <= NOT \MaquinaEstados|y~q\;
\MaquinaEstados|ALT_INV_estado.S2~q\ <= NOT \MaquinaEstados|estado.S2~q\;

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

-- Location: MLABCELL_X9_Y16_N48
\MaquinaEstados|estado.S3~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S3~feeder_combout\ = ( \MaquinaEstados|estado.S2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MaquinaEstados|ALT_INV_estado.S2~q\,
	combout => \MaquinaEstados|estado.S3~feeder_combout\);

-- Location: FF_X9_Y16_N50
\MaquinaEstados|estado.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MaquinaEstados|estado.S3~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S3~q\);

-- Location: MLABCELL_X9_Y16_N51
\MaquinaEstados|estado.S4~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S4~feeder_combout\ = ( \MaquinaEstados|estado.S3~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MaquinaEstados|ALT_INV_estado.S3~q\,
	combout => \MaquinaEstados|estado.S4~feeder_combout\);

-- Location: FF_X9_Y16_N53
\MaquinaEstados|estado.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MaquinaEstados|estado.S4~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S4~q\);

-- Location: MLABCELL_X9_Y16_N18
\MaquinaEstados|estado.S5~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S5~feeder_combout\ = ( \MaquinaEstados|estado.S4~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MaquinaEstados|ALT_INV_estado.S4~q\,
	combout => \MaquinaEstados|estado.S5~feeder_combout\);

-- Location: FF_X9_Y16_N20
\MaquinaEstados|estado.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MaquinaEstados|estado.S5~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S5~q\);

-- Location: MLABCELL_X9_Y16_N21
\MaquinaEstados|estado.S6~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S6~feeder_combout\ = ( \MaquinaEstados|estado.S5~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MaquinaEstados|ALT_INV_estado.S5~q\,
	combout => \MaquinaEstados|estado.S6~feeder_combout\);

-- Location: FF_X9_Y16_N23
\MaquinaEstados|estado.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MaquinaEstados|estado.S6~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S6~q\);

-- Location: FF_X9_Y16_N44
\MaquinaEstados|estado.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MaquinaEstados|estado.S6~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S7~q\);

-- Location: MLABCELL_X9_Y16_N27
\MaquinaEstados|estado.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S0~0_combout\ = ( !\MaquinaEstados|estado.S7~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MaquinaEstados|ALT_INV_estado.S7~q\,
	combout => \MaquinaEstados|estado.S0~0_combout\);

-- Location: FF_X9_Y16_N28
\MaquinaEstados|estado.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MaquinaEstados|estado.S0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S0~q\);

-- Location: MLABCELL_X9_Y16_N45
\MaquinaEstados|estado.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|estado.S1~0_combout\ = ( !\MaquinaEstados|estado.S0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \MaquinaEstados|ALT_INV_estado.S0~q\,
	combout => \MaquinaEstados|estado.S1~0_combout\);

-- Location: FF_X9_Y16_N47
\MaquinaEstados|estado.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MaquinaEstados|estado.S1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S1~q\);

-- Location: FF_X9_Y16_N26
\MaquinaEstados|estado.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \MaquinaEstados|estado.S1~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|estado.S2~q\);

-- Location: MLABCELL_X9_Y16_N54
\MaquinaEstados|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MaquinaEstados|y~0_combout\ = ( \MaquinaEstados|y~q\ & ( \MaquinaEstados|estado.S0~q\ ) ) # ( !\MaquinaEstados|y~q\ & ( \MaquinaEstados|estado.S0~q\ & ( (\reset~input_o\ & \MaquinaEstados|estado.S2~q\) ) ) ) # ( \MaquinaEstados|y~q\ & ( 
-- !\MaquinaEstados|estado.S0~q\ & ( (!\reset~input_o\) # (\MaquinaEstados|estado.S2~q\) ) ) ) # ( !\MaquinaEstados|y~q\ & ( !\MaquinaEstados|estado.S0~q\ & ( (\reset~input_o\ & \MaquinaEstados|estado.S2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \MaquinaEstados|ALT_INV_estado.S2~q\,
	datae => \MaquinaEstados|ALT_INV_y~q\,
	dataf => \MaquinaEstados|ALT_INV_estado.S0~q\,
	combout => \MaquinaEstados|y~0_combout\);

-- Location: FF_X9_Y16_N55
\MaquinaEstados|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \MaquinaEstados|y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MaquinaEstados|y~q\);

-- Location: LABCELL_X14_Y2_N0
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


