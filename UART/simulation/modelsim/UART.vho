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

-- DATE "06/15/2025 12:33:33"

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

ENTITY 	UART IS
    PORT (
	i_clk_50mhz : IN std_logic;
	i_reset_n : IN std_logic;
	i_buttons : IN std_logic_vector(3 DOWNTO 0);
	o_uart_tx : OUT std_logic
	);
END UART;

-- Design Ports Information
-- o_uart_tx	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- i_clk_50mhz	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_reset_n	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_buttons[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_buttons[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_buttons[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_buttons[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk_50mhz : std_logic;
SIGNAL ww_i_reset_n : std_logic;
SIGNAL ww_i_buttons : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_uart_tx : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_clk_50mhz~input_o\ : std_logic;
SIGNAL \i_clk_50mhz~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i_reset_n~input_o\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \i_buttons[2]~input_o\ : std_logic;
SIGNAL \i_buttons[3]~input_o\ : std_logic;
SIGNAL \i_buttons[0]~input_o\ : std_logic;
SIGNAL \i_buttons[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|state.IDLE~q\ : std_logic;
SIGNAL \uart_tx_inst|Selector1~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|busy_reg~q\ : std_logic;
SIGNAL \r_buttons_prev[2]~feeder_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \s_tx_start~q\ : std_logic;
SIGNAL \uart_tx_inst|state.IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|Selector2~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|Add0~33_sumout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[0]~9_combout\ : std_logic;
SIGNAL \uart_tx_inst|Add0~34\ : std_logic;
SIGNAL \uart_tx_inst|Add0~29_sumout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[1]~8_combout\ : std_logic;
SIGNAL \uart_tx_inst|Add0~30\ : std_logic;
SIGNAL \uart_tx_inst|Add0~25_sumout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[2]~7_combout\ : std_logic;
SIGNAL \uart_tx_inst|Equal1~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|state.STOP~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|state.DATA~q\ : std_logic;
SIGNAL \uart_tx_inst|Selector4~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|state.DATA~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|bit_idx[1]~3_combout\ : std_logic;
SIGNAL \uart_tx_inst|state.START~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|bit_idx[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|Add1~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|bit_idx[2]~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|bit_idx[2]~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|bit_idx[0]~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|bit_idx[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|state~12_combout\ : std_logic;
SIGNAL \uart_tx_inst|tx_shift_reg[3]~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector3~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|state.START~q\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[8]~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Add0~26\ : std_logic;
SIGNAL \uart_tx_inst|Add0~21_sumout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[3]~6_combout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|Add0~22\ : std_logic;
SIGNAL \uart_tx_inst|Add0~17_sumout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[4]~5_combout\ : std_logic;
SIGNAL \uart_tx_inst|Add0~18\ : std_logic;
SIGNAL \uart_tx_inst|Add0~13_sumout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[5]~4_combout\ : std_logic;
SIGNAL \uart_tx_inst|Add0~14\ : std_logic;
SIGNAL \uart_tx_inst|Add0~9_sumout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[6]~3_combout\ : std_logic;
SIGNAL \uart_tx_inst|Add0~10\ : std_logic;
SIGNAL \uart_tx_inst|Add0~5_sumout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[7]~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|Add0~6\ : std_logic;
SIGNAL \uart_tx_inst|Add0~1_sumout\ : std_logic;
SIGNAL \uart_tx_inst|clk_cnt[8]~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|Equal1~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector5~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|state.STOP~q\ : std_logic;
SIGNAL \uart_tx_inst|Mux0~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|Selector0~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|tx_reg~q\ : std_logic;
SIGNAL \uart_tx_inst|bit_idx\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_tx_inst|tx_shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_inst|clk_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL r_buttons_prev : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_tx_inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_tx_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_tx_inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_tx_reg~q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_bit_idx\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_tx_inst|ALT_INV_state.DATA~q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_clk_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_clk_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_clk_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_state.START~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_state.STOP~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_state.IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_bit_idx[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_bit_idx[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_state.DATA~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i_buttons[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_buttons[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_buttons[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_buttons[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_busy_reg~q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_bit_idx[2]~1_combout\ : std_logic;
SIGNAL ALT_INV_r_buttons_prev : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_tx_inst|ALT_INV_tx_shift_reg[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_tx_start~q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_state~12_combout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_clk_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_tx_inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_state.START~q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_state.STOP~q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \uart_tx_inst|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_i_clk_50mhz <= i_clk_50mhz;
ww_i_reset_n <= i_reset_n;
ww_i_buttons <= i_buttons;
o_uart_tx <= ww_o_uart_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\uart_tx_inst|ALT_INV_Add0~1_sumout\ <= NOT \uart_tx_inst|Add0~1_sumout\;
\uart_tx_inst|ALT_INV_Add0~5_sumout\ <= NOT \uart_tx_inst|Add0~5_sumout\;
\uart_tx_inst|ALT_INV_tx_shift_reg\(2) <= NOT \uart_tx_inst|tx_shift_reg\(2);
\uart_tx_inst|ALT_INV_tx_shift_reg\(3) <= NOT \uart_tx_inst|tx_shift_reg\(3);
\uart_tx_inst|ALT_INV_Add0~9_sumout\ <= NOT \uart_tx_inst|Add0~9_sumout\;
\uart_tx_inst|ALT_INV_Add0~13_sumout\ <= NOT \uart_tx_inst|Add0~13_sumout\;
\uart_tx_inst|ALT_INV_Add0~17_sumout\ <= NOT \uart_tx_inst|Add0~17_sumout\;
\uart_tx_inst|ALT_INV_Add0~21_sumout\ <= NOT \uart_tx_inst|Add0~21_sumout\;
\uart_tx_inst|ALT_INV_Add0~25_sumout\ <= NOT \uart_tx_inst|Add0~25_sumout\;
\uart_tx_inst|ALT_INV_Add0~29_sumout\ <= NOT \uart_tx_inst|Add0~29_sumout\;
\uart_tx_inst|ALT_INV_Add0~33_sumout\ <= NOT \uart_tx_inst|Add0~33_sumout\;
\uart_tx_inst|ALT_INV_tx_reg~q\ <= NOT \uart_tx_inst|tx_reg~q\;
\uart_tx_inst|ALT_INV_bit_idx\(0) <= NOT \uart_tx_inst|bit_idx\(0);
\uart_tx_inst|ALT_INV_bit_idx\(1) <= NOT \uart_tx_inst|bit_idx\(1);
\uart_tx_inst|ALT_INV_bit_idx\(2) <= NOT \uart_tx_inst|bit_idx\(2);
\uart_tx_inst|ALT_INV_state.DATA~q\ <= NOT \uart_tx_inst|state.DATA~q\;
\uart_tx_inst|ALT_INV_tx_shift_reg\(0) <= NOT \uart_tx_inst|tx_shift_reg\(0);
\uart_tx_inst|ALT_INV_tx_shift_reg\(1) <= NOT \uart_tx_inst|tx_shift_reg\(1);
\uart_tx_inst|ALT_INV_clk_cnt[3]~DUPLICATE_q\ <= NOT \uart_tx_inst|clk_cnt[3]~DUPLICATE_q\;
\uart_tx_inst|ALT_INV_clk_cnt[6]~DUPLICATE_q\ <= NOT \uart_tx_inst|clk_cnt[6]~DUPLICATE_q\;
\uart_tx_inst|ALT_INV_clk_cnt[8]~DUPLICATE_q\ <= NOT \uart_tx_inst|clk_cnt[8]~DUPLICATE_q\;
\uart_tx_inst|ALT_INV_state.START~DUPLICATE_q\ <= NOT \uart_tx_inst|state.START~DUPLICATE_q\;
\uart_tx_inst|ALT_INV_state.STOP~DUPLICATE_q\ <= NOT \uart_tx_inst|state.STOP~DUPLICATE_q\;
\uart_tx_inst|ALT_INV_state.IDLE~DUPLICATE_q\ <= NOT \uart_tx_inst|state.IDLE~DUPLICATE_q\;
\uart_tx_inst|ALT_INV_bit_idx[1]~DUPLICATE_q\ <= NOT \uart_tx_inst|bit_idx[1]~DUPLICATE_q\;
\uart_tx_inst|ALT_INV_bit_idx[0]~DUPLICATE_q\ <= NOT \uart_tx_inst|bit_idx[0]~DUPLICATE_q\;
\uart_tx_inst|ALT_INV_state.DATA~DUPLICATE_q\ <= NOT \uart_tx_inst|state.DATA~DUPLICATE_q\;
\ALT_INV_i_buttons[1]~input_o\ <= NOT \i_buttons[1]~input_o\;
\ALT_INV_i_buttons[3]~input_o\ <= NOT \i_buttons[3]~input_o\;
\ALT_INV_i_buttons[2]~input_o\ <= NOT \i_buttons[2]~input_o\;
\ALT_INV_i_buttons[0]~input_o\ <= NOT \i_buttons[0]~input_o\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\uart_tx_inst|ALT_INV_busy_reg~q\ <= NOT \uart_tx_inst|busy_reg~q\;
\uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\ <= NOT \uart_tx_inst|clk_cnt[8]~0_combout\;
\uart_tx_inst|ALT_INV_Selector2~2_combout\ <= NOT \uart_tx_inst|Selector2~2_combout\;
\uart_tx_inst|ALT_INV_bit_idx[2]~1_combout\ <= NOT \uart_tx_inst|bit_idx[2]~1_combout\;
ALT_INV_r_buttons_prev(3) <= NOT r_buttons_prev(3);
ALT_INV_r_buttons_prev(2) <= NOT r_buttons_prev(2);
ALT_INV_r_buttons_prev(1) <= NOT r_buttons_prev(1);
\uart_tx_inst|ALT_INV_tx_shift_reg[3]~0_combout\ <= NOT \uart_tx_inst|tx_shift_reg[3]~0_combout\;
\ALT_INV_s_tx_start~q\ <= NOT \s_tx_start~q\;
ALT_INV_r_buttons_prev(0) <= NOT r_buttons_prev(0);
\uart_tx_inst|ALT_INV_state~12_combout\ <= NOT \uart_tx_inst|state~12_combout\;
\uart_tx_inst|ALT_INV_Equal1~1_combout\ <= NOT \uart_tx_inst|Equal1~1_combout\;
\uart_tx_inst|ALT_INV_clk_cnt\(0) <= NOT \uart_tx_inst|clk_cnt\(0);
\uart_tx_inst|ALT_INV_clk_cnt\(1) <= NOT \uart_tx_inst|clk_cnt\(1);
\uart_tx_inst|ALT_INV_clk_cnt\(2) <= NOT \uart_tx_inst|clk_cnt\(2);
\uart_tx_inst|ALT_INV_Equal1~0_combout\ <= NOT \uart_tx_inst|Equal1~0_combout\;
\uart_tx_inst|ALT_INV_clk_cnt\(3) <= NOT \uart_tx_inst|clk_cnt\(3);
\uart_tx_inst|ALT_INV_clk_cnt\(4) <= NOT \uart_tx_inst|clk_cnt\(4);
\uart_tx_inst|ALT_INV_clk_cnt\(5) <= NOT \uart_tx_inst|clk_cnt\(5);
\uart_tx_inst|ALT_INV_clk_cnt\(6) <= NOT \uart_tx_inst|clk_cnt\(6);
\uart_tx_inst|ALT_INV_clk_cnt\(7) <= NOT \uart_tx_inst|clk_cnt\(7);
\uart_tx_inst|ALT_INV_clk_cnt\(8) <= NOT \uart_tx_inst|clk_cnt\(8);
\uart_tx_inst|ALT_INV_Add1~0_combout\ <= NOT \uart_tx_inst|Add1~0_combout\;
\uart_tx_inst|ALT_INV_state.START~q\ <= NOT \uart_tx_inst|state.START~q\;
\uart_tx_inst|ALT_INV_state.STOP~q\ <= NOT \uart_tx_inst|state.STOP~q\;
\uart_tx_inst|ALT_INV_state.IDLE~q\ <= NOT \uart_tx_inst|state.IDLE~q\;
\uart_tx_inst|ALT_INV_Mux0~0_combout\ <= NOT \uart_tx_inst|Mux0~0_combout\;

-- Location: IOOBUF_X52_Y45_N53
\o_uart_tx~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_tx_inst|ALT_INV_tx_reg~q\,
	devoe => ww_devoe,
	o => ww_o_uart_tx);

-- Location: IOIBUF_X22_Y0_N1
\i_clk_50mhz~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk_50mhz,
	o => \i_clk_50mhz~input_o\);

-- Location: CLKCTRL_G6
\i_clk_50mhz~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk_50mhz~input_o\,
	outclk => \i_clk_50mhz~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y16_N55
\i_reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_reset_n,
	o => \i_reset_n~input_o\);

-- Location: FF_X43_Y13_N8
\uart_tx_inst|clk_cnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[6]~3_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt[6]~DUPLICATE_q\);

-- Location: IOIBUF_X14_Y0_N1
\i_buttons[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_buttons(2),
	o => \i_buttons[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\i_buttons[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_buttons(3),
	o => \i_buttons[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\i_buttons[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_buttons(0),
	o => \i_buttons[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\i_buttons[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_buttons(1),
	o => \i_buttons[1]~input_o\);

-- Location: FF_X44_Y13_N2
\r_buttons_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	asdata => \i_buttons[0]~input_o\,
	clrn => \i_reset_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_buttons_prev(0));

-- Location: FF_X44_Y13_N26
\r_buttons_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	asdata => \i_buttons[1]~input_o\,
	clrn => \i_reset_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_buttons_prev(1));

-- Location: LABCELL_X44_Y13_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( r_buttons_prev(0) & ( r_buttons_prev(1) & ( (\i_buttons[0]~input_o\ & \i_buttons[1]~input_o\) ) ) ) # ( !r_buttons_prev(0) & ( r_buttons_prev(1) & ( (!\i_buttons[0]~input_o\ & \i_buttons[1]~input_o\) ) ) ) # ( r_buttons_prev(0) & ( 
-- !r_buttons_prev(1) & ( (\i_buttons[0]~input_o\ & !\i_buttons[1]~input_o\) ) ) ) # ( !r_buttons_prev(0) & ( !r_buttons_prev(1) & ( (!\i_buttons[0]~input_o\ & !\i_buttons[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_buttons[0]~input_o\,
	datac => \ALT_INV_i_buttons[1]~input_o\,
	datae => ALT_INV_r_buttons_prev(0),
	dataf => ALT_INV_r_buttons_prev(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X43_Y13_N58
\uart_tx_inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	asdata => \uart_tx_inst|Selector2~2_combout\,
	clrn => \i_reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.IDLE~q\);

-- Location: LABCELL_X44_Y13_N30
\uart_tx_inst|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector1~0_combout\ = ( \uart_tx_inst|busy_reg~q\ & ( \uart_tx_inst|state.IDLE~q\ & ( (!\uart_tx_inst|Equal1~1_combout\) # ((!\uart_tx_inst|Equal1~0_combout\) # (!\uart_tx_inst|state.STOP~q\)) ) ) ) # ( \uart_tx_inst|busy_reg~q\ & ( 
-- !\uart_tx_inst|state.IDLE~q\ & ( \s_tx_start~q\ ) ) ) # ( !\uart_tx_inst|busy_reg~q\ & ( !\uart_tx_inst|state.IDLE~q\ & ( \s_tx_start~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_Equal1~1_combout\,
	datab => \uart_tx_inst|ALT_INV_Equal1~0_combout\,
	datac => \uart_tx_inst|ALT_INV_state.STOP~q\,
	datad => \ALT_INV_s_tx_start~q\,
	datae => \uart_tx_inst|ALT_INV_busy_reg~q\,
	dataf => \uart_tx_inst|ALT_INV_state.IDLE~q\,
	combout => \uart_tx_inst|Selector1~0_combout\);

-- Location: FF_X44_Y13_N32
\uart_tx_inst|busy_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|Selector1~0_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|busy_reg~q\);

-- Location: LABCELL_X44_Y13_N3
\r_buttons_prev[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \r_buttons_prev[2]~feeder_combout\ = ( \i_buttons[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_buttons[2]~input_o\,
	combout => \r_buttons_prev[2]~feeder_combout\);

-- Location: FF_X44_Y13_N5
\r_buttons_prev[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \r_buttons_prev[2]~feeder_combout\,
	clrn => \i_reset_n~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_buttons_prev(2));

-- Location: FF_X44_Y13_N29
\r_buttons_prev[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	asdata => \i_buttons[3]~input_o\,
	clrn => \i_reset_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_buttons_prev(3));

-- Location: LABCELL_X44_Y13_N54
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( r_buttons_prev(2) & ( r_buttons_prev(3) & ( (!\uart_tx_inst|busy_reg~q\ & ((!\i_buttons[2]~input_o\) # ((!\i_buttons[3]~input_o\) # (!\Equal0~0_combout\)))) ) ) ) # ( !r_buttons_prev(2) & ( r_buttons_prev(3) & ( 
-- (!\uart_tx_inst|busy_reg~q\ & (((!\i_buttons[3]~input_o\) # (!\Equal0~0_combout\)) # (\i_buttons[2]~input_o\))) ) ) ) # ( r_buttons_prev(2) & ( !r_buttons_prev(3) & ( (!\uart_tx_inst|busy_reg~q\ & ((!\i_buttons[2]~input_o\) # ((!\Equal0~0_combout\) # 
-- (\i_buttons[3]~input_o\)))) ) ) ) # ( !r_buttons_prev(2) & ( !r_buttons_prev(3) & ( (!\uart_tx_inst|busy_reg~q\ & (((!\Equal0~0_combout\) # (\i_buttons[3]~input_o\)) # (\i_buttons[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111110110000000011111101000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_buttons[2]~input_o\,
	datab => \ALT_INV_i_buttons[3]~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \uart_tx_inst|ALT_INV_busy_reg~q\,
	datae => ALT_INV_r_buttons_prev(2),
	dataf => ALT_INV_r_buttons_prev(3),
	combout => \process_0~0_combout\);

-- Location: FF_X43_Y13_N41
s_tx_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	asdata => \process_0~0_combout\,
	clrn => \i_reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_start~q\);

-- Location: FF_X43_Y13_N59
\uart_tx_inst|state.IDLE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	asdata => \uart_tx_inst|Selector2~2_combout\,
	clrn => \i_reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.IDLE~DUPLICATE_q\);

-- Location: LABCELL_X43_Y13_N33
\uart_tx_inst|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector2~2_combout\ = ( \uart_tx_inst|state.STOP~q\ & ( (!\uart_tx_inst|Equal1~0_combout\ & (((\uart_tx_inst|state.IDLE~DUPLICATE_q\) # (\s_tx_start~q\)))) # (\uart_tx_inst|Equal1~0_combout\ & (!\uart_tx_inst|Equal1~1_combout\ & 
-- ((\uart_tx_inst|state.IDLE~DUPLICATE_q\) # (\s_tx_start~q\)))) ) ) # ( !\uart_tx_inst|state.STOP~q\ & ( (\uart_tx_inst|state.IDLE~DUPLICATE_q\) # (\s_tx_start~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001110111011100000111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_Equal1~0_combout\,
	datab => \uart_tx_inst|ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_s_tx_start~q\,
	datad => \uart_tx_inst|ALT_INV_state.IDLE~DUPLICATE_q\,
	dataf => \uart_tx_inst|ALT_INV_state.STOP~q\,
	combout => \uart_tx_inst|Selector2~2_combout\);

-- Location: MLABCELL_X42_Y13_N30
\uart_tx_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add0~33_sumout\ = SUM(( \uart_tx_inst|clk_cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \uart_tx_inst|Add0~34\ = CARRY(( \uart_tx_inst|clk_cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(0),
	cin => GND,
	sumout => \uart_tx_inst|Add0~33_sumout\,
	cout => \uart_tx_inst|Add0~34\);

-- Location: LABCELL_X43_Y13_N15
\uart_tx_inst|clk_cnt[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|clk_cnt[0]~9_combout\ = ( \uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & ((\uart_tx_inst|clk_cnt\(0)))) # (\uart_tx_inst|Selector2~2_combout\ & (\uart_tx_inst|Add0~33_sumout\)) ) ) # ( 
-- !\uart_tx_inst|clk_cnt[8]~0_combout\ & ( (\uart_tx_inst|clk_cnt\(0)) # (\uart_tx_inst|Selector2~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_Selector2~2_combout\,
	datac => \uart_tx_inst|ALT_INV_Add0~33_sumout\,
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(0),
	dataf => \uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\,
	combout => \uart_tx_inst|clk_cnt[0]~9_combout\);

-- Location: FF_X43_Y13_N17
\uart_tx_inst|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[0]~9_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt\(0));

-- Location: MLABCELL_X42_Y13_N33
\uart_tx_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add0~29_sumout\ = SUM(( \uart_tx_inst|clk_cnt\(1) ) + ( VCC ) + ( \uart_tx_inst|Add0~34\ ))
-- \uart_tx_inst|Add0~30\ = CARRY(( \uart_tx_inst|clk_cnt\(1) ) + ( VCC ) + ( \uart_tx_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_inst|ALT_INV_clk_cnt\(1),
	cin => \uart_tx_inst|Add0~34\,
	sumout => \uart_tx_inst|Add0~29_sumout\,
	cout => \uart_tx_inst|Add0~30\);

-- Location: LABCELL_X43_Y13_N12
\uart_tx_inst|clk_cnt[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|clk_cnt[1]~8_combout\ = ( \uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & ((\uart_tx_inst|clk_cnt\(1)))) # (\uart_tx_inst|Selector2~2_combout\ & (\uart_tx_inst|Add0~29_sumout\)) ) ) # ( 
-- !\uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & \uart_tx_inst|clk_cnt\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|ALT_INV_Add0~29_sumout\,
	datac => \uart_tx_inst|ALT_INV_Selector2~2_combout\,
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(1),
	dataf => \uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\,
	combout => \uart_tx_inst|clk_cnt[1]~8_combout\);

-- Location: FF_X43_Y13_N14
\uart_tx_inst|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[1]~8_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt\(1));

-- Location: MLABCELL_X42_Y13_N36
\uart_tx_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add0~25_sumout\ = SUM(( \uart_tx_inst|clk_cnt\(2) ) + ( VCC ) + ( \uart_tx_inst|Add0~30\ ))
-- \uart_tx_inst|Add0~26\ = CARRY(( \uart_tx_inst|clk_cnt\(2) ) + ( VCC ) + ( \uart_tx_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(2),
	cin => \uart_tx_inst|Add0~30\,
	sumout => \uart_tx_inst|Add0~25_sumout\,
	cout => \uart_tx_inst|Add0~26\);

-- Location: LABCELL_X43_Y13_N42
\uart_tx_inst|clk_cnt[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|clk_cnt[2]~7_combout\ = ( \uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & ((\uart_tx_inst|clk_cnt\(2)))) # (\uart_tx_inst|Selector2~2_combout\ & (\uart_tx_inst|Add0~25_sumout\)) ) ) # ( 
-- !\uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & \uart_tx_inst|clk_cnt\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_Selector2~2_combout\,
	datac => \uart_tx_inst|ALT_INV_Add0~25_sumout\,
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(2),
	dataf => \uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\,
	combout => \uart_tx_inst|clk_cnt[2]~7_combout\);

-- Location: FF_X43_Y13_N44
\uart_tx_inst|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[2]~7_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt\(2));

-- Location: LABCELL_X43_Y13_N21
\uart_tx_inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Equal1~1_combout\ = ( !\uart_tx_inst|clk_cnt\(2) & ( (!\uart_tx_inst|clk_cnt\(0) & !\uart_tx_inst|clk_cnt\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|ALT_INV_clk_cnt\(0),
	datac => \uart_tx_inst|ALT_INV_clk_cnt\(1),
	dataf => \uart_tx_inst|ALT_INV_clk_cnt\(2),
	combout => \uart_tx_inst|Equal1~1_combout\);

-- Location: FF_X43_Y13_N32
\uart_tx_inst|state.STOP~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|Selector5~0_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.STOP~DUPLICATE_q\);

-- Location: FF_X43_Y13_N26
\uart_tx_inst|state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|Selector4~0_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.DATA~q\);

-- Location: LABCELL_X43_Y13_N24
\uart_tx_inst|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector4~0_combout\ = ( \uart_tx_inst|state.DATA~q\ & ( \uart_tx_inst|Equal1~0_combout\ & ( (!\uart_tx_inst|Equal1~1_combout\) # ((!\uart_tx_inst|state.STOP~DUPLICATE_q\ & ((!\uart_tx_inst|state~12_combout\) # 
-- (\uart_tx_inst|state.START~q\)))) ) ) ) # ( !\uart_tx_inst|state.DATA~q\ & ( \uart_tx_inst|Equal1~0_combout\ & ( (\uart_tx_inst|Equal1~1_combout\ & (\uart_tx_inst|state.START~q\ & !\uart_tx_inst|state.STOP~DUPLICATE_q\)) ) ) ) # ( 
-- \uart_tx_inst|state.DATA~q\ & ( !\uart_tx_inst|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000001110111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_state~12_combout\,
	datab => \uart_tx_inst|ALT_INV_Equal1~1_combout\,
	datac => \uart_tx_inst|ALT_INV_state.START~q\,
	datad => \uart_tx_inst|ALT_INV_state.STOP~DUPLICATE_q\,
	datae => \uart_tx_inst|ALT_INV_state.DATA~q\,
	dataf => \uart_tx_inst|ALT_INV_Equal1~0_combout\,
	combout => \uart_tx_inst|Selector4~0_combout\);

-- Location: FF_X43_Y13_N25
\uart_tx_inst|state.DATA~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|Selector4~0_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.DATA~DUPLICATE_q\);

-- Location: FF_X44_Y13_N17
\uart_tx_inst|bit_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|bit_idx[0]~2_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|bit_idx\(0));

-- Location: LABCELL_X44_Y13_N9
\uart_tx_inst|bit_idx[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|bit_idx[1]~3_combout\ = ( \uart_tx_inst|bit_idx\(1) & ( \uart_tx_inst|bit_idx[2]~1_combout\ ) ) # ( \uart_tx_inst|bit_idx\(1) & ( !\uart_tx_inst|bit_idx[2]~1_combout\ & ( (!\uart_tx_inst|Equal1~1_combout\) # 
-- ((!\uart_tx_inst|Equal1~0_combout\) # ((\uart_tx_inst|state.DATA~DUPLICATE_q\ & !\uart_tx_inst|bit_idx\(0)))) ) ) ) # ( !\uart_tx_inst|bit_idx\(1) & ( !\uart_tx_inst|bit_idx[2]~1_combout\ & ( (\uart_tx_inst|Equal1~1_combout\ & 
-- (\uart_tx_inst|state.DATA~DUPLICATE_q\ & (\uart_tx_inst|bit_idx\(0) & \uart_tx_inst|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111011101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_Equal1~1_combout\,
	datab => \uart_tx_inst|ALT_INV_state.DATA~DUPLICATE_q\,
	datac => \uart_tx_inst|ALT_INV_bit_idx\(0),
	datad => \uart_tx_inst|ALT_INV_Equal1~0_combout\,
	datae => \uart_tx_inst|ALT_INV_bit_idx\(1),
	dataf => \uart_tx_inst|ALT_INV_bit_idx[2]~1_combout\,
	combout => \uart_tx_inst|bit_idx[1]~3_combout\);

-- Location: FF_X44_Y13_N10
\uart_tx_inst|bit_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|bit_idx[1]~3_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|bit_idx\(1));

-- Location: FF_X43_Y13_N37
\uart_tx_inst|state.START~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|Selector3~2_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.START~DUPLICATE_q\);

-- Location: FF_X44_Y13_N11
\uart_tx_inst|bit_idx[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|bit_idx[1]~3_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|bit_idx[1]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y13_N12
\uart_tx_inst|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add1~0_combout\ = ( \uart_tx_inst|bit_idx[1]~DUPLICATE_q\ & ( \uart_tx_inst|bit_idx\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_inst|ALT_INV_bit_idx\(0),
	dataf => \uart_tx_inst|ALT_INV_bit_idx[1]~DUPLICATE_q\,
	combout => \uart_tx_inst|Add1~0_combout\);

-- Location: LABCELL_X44_Y13_N18
\uart_tx_inst|bit_idx[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|bit_idx[2]~0_combout\ = ( \uart_tx_inst|bit_idx\(2) & ( \uart_tx_inst|state.START~DUPLICATE_q\ & ( (!\uart_tx_inst|Equal1~0_combout\) # ((!\uart_tx_inst|Equal1~1_combout\) # ((!\uart_tx_inst|Add1~0_combout\ & 
-- \uart_tx_inst|state.DATA~DUPLICATE_q\))) ) ) ) # ( !\uart_tx_inst|bit_idx\(2) & ( \uart_tx_inst|state.START~DUPLICATE_q\ & ( (\uart_tx_inst|Equal1~0_combout\ & (\uart_tx_inst|Add1~0_combout\ & (\uart_tx_inst|Equal1~1_combout\ & 
-- \uart_tx_inst|state.DATA~DUPLICATE_q\))) ) ) ) # ( \uart_tx_inst|bit_idx\(2) & ( !\uart_tx_inst|state.START~DUPLICATE_q\ ) ) # ( !\uart_tx_inst|bit_idx\(2) & ( !\uart_tx_inst|state.START~DUPLICATE_q\ & ( (\uart_tx_inst|Equal1~0_combout\ & 
-- (\uart_tx_inst|Add1~0_combout\ & (\uart_tx_inst|Equal1~1_combout\ & \uart_tx_inst|state.DATA~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111100000000000000011111101011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_Equal1~0_combout\,
	datab => \uart_tx_inst|ALT_INV_Add1~0_combout\,
	datac => \uart_tx_inst|ALT_INV_Equal1~1_combout\,
	datad => \uart_tx_inst|ALT_INV_state.DATA~DUPLICATE_q\,
	datae => \uart_tx_inst|ALT_INV_bit_idx\(2),
	dataf => \uart_tx_inst|ALT_INV_state.START~DUPLICATE_q\,
	combout => \uart_tx_inst|bit_idx[2]~0_combout\);

-- Location: FF_X44_Y13_N20
\uart_tx_inst|bit_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|bit_idx[2]~0_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|bit_idx\(2));

-- Location: LABCELL_X44_Y13_N42
\uart_tx_inst|bit_idx[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|bit_idx[2]~1_combout\ = ( \uart_tx_inst|bit_idx\(2) & ( (!\uart_tx_inst|state.START~DUPLICATE_q\ & ((!\uart_tx_inst|state.DATA~DUPLICATE_q\) # ((\uart_tx_inst|bit_idx\(1) & \uart_tx_inst|bit_idx[0]~DUPLICATE_q\)))) ) ) # ( 
-- !\uart_tx_inst|bit_idx\(2) & ( (!\uart_tx_inst|state.START~DUPLICATE_q\ & !\uart_tx_inst|state.DATA~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000100001111000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_bit_idx\(1),
	datab => \uart_tx_inst|ALT_INV_bit_idx[0]~DUPLICATE_q\,
	datac => \uart_tx_inst|ALT_INV_state.START~DUPLICATE_q\,
	datad => \uart_tx_inst|ALT_INV_state.DATA~DUPLICATE_q\,
	dataf => \uart_tx_inst|ALT_INV_bit_idx\(2),
	combout => \uart_tx_inst|bit_idx[2]~1_combout\);

-- Location: LABCELL_X44_Y13_N15
\uart_tx_inst|bit_idx[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|bit_idx[0]~2_combout\ = ( \uart_tx_inst|bit_idx[2]~1_combout\ & ( \uart_tx_inst|bit_idx\(0) ) ) # ( !\uart_tx_inst|bit_idx[2]~1_combout\ & ( (!\uart_tx_inst|Equal1~1_combout\ & (((\uart_tx_inst|bit_idx\(0))))) # 
-- (\uart_tx_inst|Equal1~1_combout\ & ((!\uart_tx_inst|Equal1~0_combout\ & ((\uart_tx_inst|bit_idx\(0)))) # (\uart_tx_inst|Equal1~0_combout\ & (\uart_tx_inst|state.DATA~DUPLICATE_q\ & !\uart_tx_inst|bit_idx\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101110000000011110111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_Equal1~1_combout\,
	datab => \uart_tx_inst|ALT_INV_Equal1~0_combout\,
	datac => \uart_tx_inst|ALT_INV_state.DATA~DUPLICATE_q\,
	datad => \uart_tx_inst|ALT_INV_bit_idx\(0),
	dataf => \uart_tx_inst|ALT_INV_bit_idx[2]~1_combout\,
	combout => \uart_tx_inst|bit_idx[0]~2_combout\);

-- Location: FF_X44_Y13_N16
\uart_tx_inst|bit_idx[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|bit_idx[0]~2_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|bit_idx[0]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y13_N45
\uart_tx_inst|state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|state~12_combout\ = ( \uart_tx_inst|bit_idx\(2) & ( (\uart_tx_inst|bit_idx[0]~DUPLICATE_q\ & \uart_tx_inst|bit_idx[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|ALT_INV_bit_idx[0]~DUPLICATE_q\,
	datac => \uart_tx_inst|ALT_INV_bit_idx[1]~DUPLICATE_q\,
	dataf => \uart_tx_inst|ALT_INV_bit_idx\(2),
	combout => \uart_tx_inst|state~12_combout\);

-- Location: LABCELL_X43_Y13_N51
\uart_tx_inst|tx_shift_reg[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|tx_shift_reg[3]~0_combout\ = ( \s_tx_start~q\ & ( !\uart_tx_inst|state.IDLE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_inst|ALT_INV_state.IDLE~DUPLICATE_q\,
	dataf => \ALT_INV_s_tx_start~q\,
	combout => \uart_tx_inst|tx_shift_reg[3]~0_combout\);

-- Location: LABCELL_X43_Y13_N36
\uart_tx_inst|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector3~2_combout\ = ( \uart_tx_inst|state.START~q\ & ( \uart_tx_inst|Equal1~0_combout\ & ( (!\uart_tx_inst|Equal1~1_combout\) # ((\uart_tx_inst|tx_shift_reg[3]~0_combout\ & ((!\uart_tx_inst|state~12_combout\) # 
-- (!\uart_tx_inst|state.DATA~q\)))) ) ) ) # ( !\uart_tx_inst|state.START~q\ & ( \uart_tx_inst|Equal1~0_combout\ & ( (\uart_tx_inst|tx_shift_reg[3]~0_combout\ & ((!\uart_tx_inst|state~12_combout\) # ((!\uart_tx_inst|Equal1~1_combout\) # 
-- (!\uart_tx_inst|state.DATA~q\)))) ) ) ) # ( \uart_tx_inst|state.START~q\ & ( !\uart_tx_inst|Equal1~0_combout\ ) ) # ( !\uart_tx_inst|state.START~q\ & ( !\uart_tx_inst|Equal1~0_combout\ & ( \uart_tx_inst|tx_shift_reg[3]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000111111101100110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_state~12_combout\,
	datab => \uart_tx_inst|ALT_INV_Equal1~1_combout\,
	datac => \uart_tx_inst|ALT_INV_state.DATA~q\,
	datad => \uart_tx_inst|ALT_INV_tx_shift_reg[3]~0_combout\,
	datae => \uart_tx_inst|ALT_INV_state.START~q\,
	dataf => \uart_tx_inst|ALT_INV_Equal1~0_combout\,
	combout => \uart_tx_inst|Selector3~2_combout\);

-- Location: FF_X43_Y13_N38
\uart_tx_inst|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|Selector3~2_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.START~q\);

-- Location: LABCELL_X43_Y13_N48
\uart_tx_inst|clk_cnt[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|clk_cnt[8]~0_combout\ = ( \uart_tx_inst|state.DATA~q\ & ( (\uart_tx_inst|state.IDLE~DUPLICATE_q\ & ((!\uart_tx_inst|Equal1~0_combout\) # (!\uart_tx_inst|Equal1~1_combout\))) ) ) # ( !\uart_tx_inst|state.DATA~q\ & ( 
-- (\uart_tx_inst|state.IDLE~DUPLICATE_q\ & ((!\uart_tx_inst|state.START~q\) # ((!\uart_tx_inst|Equal1~0_combout\) # (!\uart_tx_inst|Equal1~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110010001100110011001000110011001100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_state.START~q\,
	datab => \uart_tx_inst|ALT_INV_state.IDLE~DUPLICATE_q\,
	datac => \uart_tx_inst|ALT_INV_Equal1~0_combout\,
	datad => \uart_tx_inst|ALT_INV_Equal1~1_combout\,
	dataf => \uart_tx_inst|ALT_INV_state.DATA~q\,
	combout => \uart_tx_inst|clk_cnt[8]~0_combout\);

-- Location: MLABCELL_X42_Y13_N39
\uart_tx_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add0~21_sumout\ = SUM(( \uart_tx_inst|clk_cnt[3]~DUPLICATE_q\ ) + ( VCC ) + ( \uart_tx_inst|Add0~26\ ))
-- \uart_tx_inst|Add0~22\ = CARRY(( \uart_tx_inst|clk_cnt[3]~DUPLICATE_q\ ) + ( VCC ) + ( \uart_tx_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_inst|ALT_INV_clk_cnt[3]~DUPLICATE_q\,
	cin => \uart_tx_inst|Add0~26\,
	sumout => \uart_tx_inst|Add0~21_sumout\,
	cout => \uart_tx_inst|Add0~22\);

-- Location: FF_X43_Y13_N47
\uart_tx_inst|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[3]~6_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt\(3));

-- Location: LABCELL_X43_Y13_N45
\uart_tx_inst|clk_cnt[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|clk_cnt[3]~6_combout\ = ( \uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & ((\uart_tx_inst|clk_cnt\(3)))) # (\uart_tx_inst|Selector2~2_combout\ & (\uart_tx_inst|Add0~21_sumout\)) ) ) # ( 
-- !\uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & \uart_tx_inst|clk_cnt\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_Selector2~2_combout\,
	datac => \uart_tx_inst|ALT_INV_Add0~21_sumout\,
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(3),
	dataf => \uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\,
	combout => \uart_tx_inst|clk_cnt[3]~6_combout\);

-- Location: FF_X43_Y13_N46
\uart_tx_inst|clk_cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[3]~6_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt[3]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y13_N42
\uart_tx_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add0~17_sumout\ = SUM(( \uart_tx_inst|clk_cnt\(4) ) + ( VCC ) + ( \uart_tx_inst|Add0~22\ ))
-- \uart_tx_inst|Add0~18\ = CARRY(( \uart_tx_inst|clk_cnt\(4) ) + ( VCC ) + ( \uart_tx_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(4),
	cin => \uart_tx_inst|Add0~22\,
	sumout => \uart_tx_inst|Add0~17_sumout\,
	cout => \uart_tx_inst|Add0~18\);

-- Location: LABCELL_X43_Y13_N0
\uart_tx_inst|clk_cnt[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|clk_cnt[4]~5_combout\ = ( \uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & ((\uart_tx_inst|clk_cnt\(4)))) # (\uart_tx_inst|Selector2~2_combout\ & (\uart_tx_inst|Add0~17_sumout\)) ) ) # ( 
-- !\uart_tx_inst|clk_cnt[8]~0_combout\ & ( (\uart_tx_inst|clk_cnt\(4)) # (\uart_tx_inst|Selector2~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|ALT_INV_Add0~17_sumout\,
	datac => \uart_tx_inst|ALT_INV_Selector2~2_combout\,
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(4),
	dataf => \uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\,
	combout => \uart_tx_inst|clk_cnt[4]~5_combout\);

-- Location: FF_X43_Y13_N2
\uart_tx_inst|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[4]~5_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt\(4));

-- Location: MLABCELL_X42_Y13_N45
\uart_tx_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add0~13_sumout\ = SUM(( \uart_tx_inst|clk_cnt\(5) ) + ( VCC ) + ( \uart_tx_inst|Add0~18\ ))
-- \uart_tx_inst|Add0~14\ = CARRY(( \uart_tx_inst|clk_cnt\(5) ) + ( VCC ) + ( \uart_tx_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(5),
	cin => \uart_tx_inst|Add0~18\,
	sumout => \uart_tx_inst|Add0~13_sumout\,
	cout => \uart_tx_inst|Add0~14\);

-- Location: LABCELL_X43_Y13_N9
\uart_tx_inst|clk_cnt[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|clk_cnt[5]~4_combout\ = ( \uart_tx_inst|Add0~13_sumout\ & ( (\uart_tx_inst|clk_cnt\(5)) # (\uart_tx_inst|Selector2~2_combout\) ) ) # ( !\uart_tx_inst|Add0~13_sumout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & ((\uart_tx_inst|clk_cnt\(5)))) # 
-- (\uart_tx_inst|Selector2~2_combout\ & (!\uart_tx_inst|clk_cnt[8]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000010101111101000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\,
	datac => \uart_tx_inst|ALT_INV_Selector2~2_combout\,
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(5),
	dataf => \uart_tx_inst|ALT_INV_Add0~13_sumout\,
	combout => \uart_tx_inst|clk_cnt[5]~4_combout\);

-- Location: FF_X43_Y13_N11
\uart_tx_inst|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[5]~4_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt\(5));

-- Location: MLABCELL_X42_Y13_N48
\uart_tx_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add0~9_sumout\ = SUM(( \uart_tx_inst|clk_cnt[6]~DUPLICATE_q\ ) + ( VCC ) + ( \uart_tx_inst|Add0~14\ ))
-- \uart_tx_inst|Add0~10\ = CARRY(( \uart_tx_inst|clk_cnt[6]~DUPLICATE_q\ ) + ( VCC ) + ( \uart_tx_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_inst|ALT_INV_clk_cnt[6]~DUPLICATE_q\,
	cin => \uart_tx_inst|Add0~14\,
	sumout => \uart_tx_inst|Add0~9_sumout\,
	cout => \uart_tx_inst|Add0~10\);

-- Location: LABCELL_X43_Y13_N6
\uart_tx_inst|clk_cnt[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|clk_cnt[6]~3_combout\ = ( \uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & ((\uart_tx_inst|clk_cnt\(6)))) # (\uart_tx_inst|Selector2~2_combout\ & (\uart_tx_inst|Add0~9_sumout\)) ) ) # ( 
-- !\uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & \uart_tx_inst|clk_cnt\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_inst|ALT_INV_Add0~9_sumout\,
	datac => \uart_tx_inst|ALT_INV_Selector2~2_combout\,
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(6),
	dataf => \uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\,
	combout => \uart_tx_inst|clk_cnt[6]~3_combout\);

-- Location: FF_X43_Y13_N7
\uart_tx_inst|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[6]~3_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt\(6));

-- Location: MLABCELL_X42_Y13_N51
\uart_tx_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add0~5_sumout\ = SUM(( \uart_tx_inst|clk_cnt\(7) ) + ( VCC ) + ( \uart_tx_inst|Add0~10\ ))
-- \uart_tx_inst|Add0~6\ = CARRY(( \uart_tx_inst|clk_cnt\(7) ) + ( VCC ) + ( \uart_tx_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(7),
	cin => \uart_tx_inst|Add0~10\,
	sumout => \uart_tx_inst|Add0~5_sumout\,
	cout => \uart_tx_inst|Add0~6\);

-- Location: LABCELL_X43_Y13_N3
\uart_tx_inst|clk_cnt[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|clk_cnt[7]~2_combout\ = ( \uart_tx_inst|Add0~5_sumout\ & ( (\uart_tx_inst|clk_cnt\(7)) # (\uart_tx_inst|Selector2~2_combout\) ) ) # ( !\uart_tx_inst|Add0~5_sumout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & ((\uart_tx_inst|clk_cnt\(7)))) # 
-- (\uart_tx_inst|Selector2~2_combout\ & (!\uart_tx_inst|clk_cnt[8]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000010101111101000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\,
	datac => \uart_tx_inst|ALT_INV_Selector2~2_combout\,
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(7),
	dataf => \uart_tx_inst|ALT_INV_Add0~5_sumout\,
	combout => \uart_tx_inst|clk_cnt[7]~2_combout\);

-- Location: FF_X43_Y13_N5
\uart_tx_inst|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[7]~2_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt\(7));

-- Location: FF_X43_Y13_N19
\uart_tx_inst|clk_cnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[8]~1_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt[8]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y13_N54
\uart_tx_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Add0~1_sumout\ = SUM(( \uart_tx_inst|clk_cnt[8]~DUPLICATE_q\ ) + ( VCC ) + ( \uart_tx_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_inst|ALT_INV_clk_cnt[8]~DUPLICATE_q\,
	cin => \uart_tx_inst|Add0~6\,
	sumout => \uart_tx_inst|Add0~1_sumout\);

-- Location: LABCELL_X43_Y13_N18
\uart_tx_inst|clk_cnt[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|clk_cnt[8]~1_combout\ = ( \uart_tx_inst|clk_cnt[8]~0_combout\ & ( (!\uart_tx_inst|Selector2~2_combout\ & ((\uart_tx_inst|clk_cnt\(8)))) # (\uart_tx_inst|Selector2~2_combout\ & (\uart_tx_inst|Add0~1_sumout\)) ) ) # ( 
-- !\uart_tx_inst|clk_cnt[8]~0_combout\ & ( (\uart_tx_inst|clk_cnt\(8)) # (\uart_tx_inst|Selector2~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_Selector2~2_combout\,
	datac => \uart_tx_inst|ALT_INV_Add0~1_sumout\,
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(8),
	dataf => \uart_tx_inst|ALT_INV_clk_cnt[8]~0_combout\,
	combout => \uart_tx_inst|clk_cnt[8]~1_combout\);

-- Location: FF_X43_Y13_N20
\uart_tx_inst|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|clk_cnt[8]~1_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|clk_cnt\(8));

-- Location: LABCELL_X43_Y13_N54
\uart_tx_inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Equal1~0_combout\ = ( !\uart_tx_inst|clk_cnt\(7) & ( !\uart_tx_inst|clk_cnt\(8) & ( (!\uart_tx_inst|clk_cnt\(6) & (!\uart_tx_inst|clk_cnt\(3) & (!\uart_tx_inst|clk_cnt\(4) & !\uart_tx_inst|clk_cnt\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_clk_cnt\(6),
	datab => \uart_tx_inst|ALT_INV_clk_cnt\(3),
	datac => \uart_tx_inst|ALT_INV_clk_cnt\(4),
	datad => \uart_tx_inst|ALT_INV_clk_cnt\(5),
	datae => \uart_tx_inst|ALT_INV_clk_cnt\(7),
	dataf => \uart_tx_inst|ALT_INV_clk_cnt\(8),
	combout => \uart_tx_inst|Equal1~0_combout\);

-- Location: LABCELL_X43_Y13_N30
\uart_tx_inst|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector5~0_combout\ = ( \uart_tx_inst|state.DATA~DUPLICATE_q\ & ( (!\uart_tx_inst|Equal1~0_combout\ & (((\uart_tx_inst|state.STOP~q\)))) # (\uart_tx_inst|Equal1~0_combout\ & ((!\uart_tx_inst|Equal1~1_combout\ & 
-- ((\uart_tx_inst|state.STOP~q\))) # (\uart_tx_inst|Equal1~1_combout\ & (\uart_tx_inst|state~12_combout\)))) ) ) # ( !\uart_tx_inst|state.DATA~DUPLICATE_q\ & ( (\uart_tx_inst|state.STOP~q\ & ((!\uart_tx_inst|Equal1~0_combout\) # 
-- (!\uart_tx_inst|Equal1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_Equal1~0_combout\,
	datab => \uart_tx_inst|ALT_INV_Equal1~1_combout\,
	datac => \uart_tx_inst|ALT_INV_state~12_combout\,
	datad => \uart_tx_inst|ALT_INV_state.STOP~q\,
	dataf => \uart_tx_inst|ALT_INV_state.DATA~DUPLICATE_q\,
	combout => \uart_tx_inst|Selector5~0_combout\);

-- Location: FF_X43_Y13_N31
\uart_tx_inst|state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|Selector5~0_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|state.STOP~q\);

-- Location: FF_X44_Y13_N53
\uart_tx_inst|tx_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	asdata => r_buttons_prev(1),
	clrn => \i_reset_n~input_o\,
	sload => VCC,
	ena => \uart_tx_inst|tx_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift_reg\(1));

-- Location: FF_X44_Y13_N49
\uart_tx_inst|tx_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	asdata => r_buttons_prev(0),
	clrn => \i_reset_n~input_o\,
	sload => VCC,
	ena => \uart_tx_inst|tx_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift_reg\(0));

-- Location: FF_X44_Y13_N59
\uart_tx_inst|tx_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	asdata => r_buttons_prev(3),
	clrn => \i_reset_n~input_o\,
	sload => VCC,
	ena => \uart_tx_inst|tx_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift_reg\(3));

-- Location: FF_X44_Y13_N55
\uart_tx_inst|tx_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	asdata => r_buttons_prev(2),
	clrn => \i_reset_n~input_o\,
	sload => VCC,
	ena => \uart_tx_inst|tx_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_shift_reg\(2));

-- Location: LABCELL_X44_Y13_N27
\uart_tx_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Mux0~0_combout\ = ( \uart_tx_inst|tx_shift_reg\(2) & ( \uart_tx_inst|bit_idx[0]~DUPLICATE_q\ & ( (!\uart_tx_inst|bit_idx[1]~DUPLICATE_q\ & (\uart_tx_inst|tx_shift_reg\(1))) # (\uart_tx_inst|bit_idx[1]~DUPLICATE_q\ & 
-- ((\uart_tx_inst|tx_shift_reg\(3)))) ) ) ) # ( !\uart_tx_inst|tx_shift_reg\(2) & ( \uart_tx_inst|bit_idx[0]~DUPLICATE_q\ & ( (!\uart_tx_inst|bit_idx[1]~DUPLICATE_q\ & (\uart_tx_inst|tx_shift_reg\(1))) # (\uart_tx_inst|bit_idx[1]~DUPLICATE_q\ & 
-- ((\uart_tx_inst|tx_shift_reg\(3)))) ) ) ) # ( \uart_tx_inst|tx_shift_reg\(2) & ( !\uart_tx_inst|bit_idx[0]~DUPLICATE_q\ & ( (\uart_tx_inst|bit_idx[1]~DUPLICATE_q\) # (\uart_tx_inst|tx_shift_reg\(0)) ) ) ) # ( !\uart_tx_inst|tx_shift_reg\(2) & ( 
-- !\uart_tx_inst|bit_idx[0]~DUPLICATE_q\ & ( (\uart_tx_inst|tx_shift_reg\(0) & !\uart_tx_inst|bit_idx[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_tx_shift_reg\(1),
	datab => \uart_tx_inst|ALT_INV_tx_shift_reg\(0),
	datac => \uart_tx_inst|ALT_INV_bit_idx[1]~DUPLICATE_q\,
	datad => \uart_tx_inst|ALT_INV_tx_shift_reg\(3),
	datae => \uart_tx_inst|ALT_INV_tx_shift_reg\(2),
	dataf => \uart_tx_inst|ALT_INV_bit_idx[0]~DUPLICATE_q\,
	combout => \uart_tx_inst|Mux0~0_combout\);

-- Location: LABCELL_X44_Y13_N36
\uart_tx_inst|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_tx_inst|Selector0~0_combout\ = ( \uart_tx_inst|Mux0~0_combout\ & ( \uart_tx_inst|state.IDLE~q\ & ( (!\uart_tx_inst|state.STOP~q\ & ((!\uart_tx_inst|state.DATA~DUPLICATE_q\) # (\uart_tx_inst|bit_idx\(2)))) ) ) ) # ( !\uart_tx_inst|Mux0~0_combout\ & ( 
-- \uart_tx_inst|state.IDLE~q\ & ( !\uart_tx_inst|state.STOP~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_inst|ALT_INV_state.STOP~q\,
	datac => \uart_tx_inst|ALT_INV_bit_idx\(2),
	datad => \uart_tx_inst|ALT_INV_state.DATA~DUPLICATE_q\,
	datae => \uart_tx_inst|ALT_INV_Mux0~0_combout\,
	dataf => \uart_tx_inst|ALT_INV_state.IDLE~q\,
	combout => \uart_tx_inst|Selector0~0_combout\);

-- Location: FF_X44_Y13_N37
\uart_tx_inst|tx_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_50mhz~inputCLKENA0_outclk\,
	d => \uart_tx_inst|Selector0~0_combout\,
	clrn => \i_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_inst|tx_reg~q\);

-- Location: MLABCELL_X13_Y34_N3
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


