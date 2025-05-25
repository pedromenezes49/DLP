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

-- DATE "05/25/2025 10:28:15"

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
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	UART IS
    PORT (
	clk : IN std_logic;
	Transmission_On : OUT std_logic;
	Transmission_Done : OUT std_logic;
	Transmission_Bit : OUT std_logic;
	Current_State : OUT STD.STANDARD.integer
	);
END UART;

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
SIGNAL ww_clk : std_logic;
SIGNAL ww_Transmission_On : std_logic;
SIGNAL ww_Transmission_Done : std_logic;
SIGNAL ww_Transmission_Bit : std_logic;
SIGNAL ww_Current_State : std_logic_vector(31 DOWNTO 0);
SIGNAL \Transmission_On~output_o\ : std_logic;
SIGNAL \Transmission_Done~output_o\ : std_logic;
SIGNAL \Transmission_Bit~output_o\ : std_logic;
SIGNAL \Current_State[0]~output_o\ : std_logic;
SIGNAL \Current_State[1]~output_o\ : std_logic;
SIGNAL \Current_State[2]~output_o\ : std_logic;
SIGNAL \Current_State[3]~output_o\ : std_logic;
SIGNAL \Current_State[4]~output_o\ : std_logic;
SIGNAL \Current_State[5]~output_o\ : std_logic;
SIGNAL \Current_State[6]~output_o\ : std_logic;
SIGNAL \Current_State[7]~output_o\ : std_logic;
SIGNAL \Current_State[8]~output_o\ : std_logic;
SIGNAL \Current_State[9]~output_o\ : std_logic;
SIGNAL \Current_State[10]~output_o\ : std_logic;
SIGNAL \Current_State[11]~output_o\ : std_logic;
SIGNAL \Current_State[12]~output_o\ : std_logic;
SIGNAL \Current_State[13]~output_o\ : std_logic;
SIGNAL \Current_State[14]~output_o\ : std_logic;
SIGNAL \Current_State[15]~output_o\ : std_logic;
SIGNAL \Current_State[16]~output_o\ : std_logic;
SIGNAL \Current_State[17]~output_o\ : std_logic;
SIGNAL \Current_State[18]~output_o\ : std_logic;
SIGNAL \Current_State[19]~output_o\ : std_logic;
SIGNAL \Current_State[20]~output_o\ : std_logic;
SIGNAL \Current_State[21]~output_o\ : std_logic;
SIGNAL \Current_State[22]~output_o\ : std_logic;
SIGNAL \Current_State[23]~output_o\ : std_logic;
SIGNAL \Current_State[24]~output_o\ : std_logic;
SIGNAL \Current_State[25]~output_o\ : std_logic;
SIGNAL \Current_State[26]~output_o\ : std_logic;
SIGNAL \Current_State[27]~output_o\ : std_logic;
SIGNAL \Current_State[28]~output_o\ : std_logic;
SIGNAL \Current_State[29]~output_o\ : std_logic;
SIGNAL \Current_State[30]~output_o\ : std_logic;
SIGNAL \Current_State[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \UART_TX|LessThan1~0_combout\ : std_logic;
SIGNAL \UART_TX|Selector8~0_combout\ : std_logic;
SIGNAL \UART_TX|Selector7~0_combout\ : std_logic;
SIGNAL \UART_TX|Selector6~0_combout\ : std_logic;
SIGNAL \UART_TX|Selector11~0_combout\ : std_logic;
SIGNAL \UART_TX|estado.Send_Data~q\ : std_logic;
SIGNAL \UART_TX|Selector12~0_combout\ : std_logic;
SIGNAL \UART_TX|estado.Parity_Bit~q\ : std_logic;
SIGNAL \UART_TX|estado.Stop_Bit~q\ : std_logic;
SIGNAL \UART_TX|estado~8_combout\ : std_logic;
SIGNAL \UART_TX|estado.Cleanup~q\ : std_logic;
SIGNAL \UART_TX|estado.Idle~0_combout\ : std_logic;
SIGNAL \UART_TX|estado.Idle~q\ : std_logic;
SIGNAL \UART_TX|Selector5~0_combout\ : std_logic;
SIGNAL \UART_TX|Selector3~0_combout\ : std_logic;
SIGNAL \UART_TX|Selector4~0_combout\ : std_logic;
SIGNAL \UART_TX|Selector10~0_combout\ : std_logic;
SIGNAL \UART_TX|estado.Start_Bit~q\ : std_logic;
SIGNAL \UART_TX|Selector0~0_combout\ : std_logic;
SIGNAL \UART_TX|TX_Active~q\ : std_logic;
SIGNAL \UART_TX|Selector2~0_combout\ : std_logic;
SIGNAL \UART_TX|Selector2~1_combout\ : std_logic;
SIGNAL \UART_TX|TX_Done_Internal~q\ : std_logic;
SIGNAL \UART_TX|TX_Data[1]~0_combout\ : std_logic;
SIGNAL \UART_TX|Selector1~0_combout\ : std_logic;
SIGNAL \UART_TX|Selector1~1_combout\ : std_logic;
SIGNAL \UART_TX|TX_Serial~q\ : std_logic;
SIGNAL \UART_TX|WideOr0~combout\ : std_logic;
SIGNAL \UART_TX|Current~4_combout\ : std_logic;
SIGNAL \UART_TX|Current~5_combout\ : std_logic;
SIGNAL \UART_TX|Current\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \UART_TX|Count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_TX|TX_Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_TX|Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_TX|ALT_INV_Count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_TX|ALT_INV_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_TX|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \UART_TX|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \UART_TX|ALT_INV_estado.Idle~q\ : std_logic;
SIGNAL \UART_TX|ALT_INV_TX_Data\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \UART_TX|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \UART_TX|ALT_INV_estado~8_combout\ : std_logic;
SIGNAL \UART_TX|ALT_INV_TX_Active~q\ : std_logic;
SIGNAL \UART_TX|ALT_INV_TX_Done_Internal~q\ : std_logic;
SIGNAL \UART_TX|ALT_INV_TX_Serial~q\ : std_logic;
SIGNAL \UART_TX|ALT_INV_estado.Cleanup~q\ : std_logic;
SIGNAL \UART_TX|ALT_INV_estado.Start_Bit~q\ : std_logic;
SIGNAL \UART_TX|ALT_INV_estado.Parity_Bit~q\ : std_logic;
SIGNAL \UART_TX|ALT_INV_estado.Send_Data~q\ : std_logic;
SIGNAL \UART_TX|ALT_INV_estado.Stop_Bit~q\ : std_logic;

BEGIN

ww_clk <= clk;
Transmission_On <= ww_Transmission_On;
Transmission_Done <= ww_Transmission_Done;
Transmission_Bit <= ww_Transmission_Bit;
Current_State <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_Current_State));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\UART_TX|ALT_INV_Count\(0) <= NOT \UART_TX|Count\(0);
\UART_TX|ALT_INV_Index\(2) <= NOT \UART_TX|Index\(2);
\UART_TX|ALT_INV_Index\(1) <= NOT \UART_TX|Index\(1);
\UART_TX|ALT_INV_LessThan1~0_combout\ <= NOT \UART_TX|LessThan1~0_combout\;
\UART_TX|ALT_INV_Selector1~0_combout\ <= NOT \UART_TX|Selector1~0_combout\;
\UART_TX|ALT_INV_estado.Idle~q\ <= NOT \UART_TX|estado.Idle~q\;
\UART_TX|ALT_INV_Index\(0) <= NOT \UART_TX|Index\(0);
\UART_TX|ALT_INV_TX_Data\(1) <= NOT \UART_TX|TX_Data\(1);
\UART_TX|ALT_INV_Selector2~0_combout\ <= NOT \UART_TX|Selector2~0_combout\;
\UART_TX|ALT_INV_estado~8_combout\ <= NOT \UART_TX|estado~8_combout\;
\UART_TX|ALT_INV_TX_Active~q\ <= NOT \UART_TX|TX_Active~q\;
\UART_TX|ALT_INV_TX_Done_Internal~q\ <= NOT \UART_TX|TX_Done_Internal~q\;
\UART_TX|ALT_INV_TX_Serial~q\ <= NOT \UART_TX|TX_Serial~q\;
\UART_TX|ALT_INV_estado.Cleanup~q\ <= NOT \UART_TX|estado.Cleanup~q\;
\UART_TX|ALT_INV_Count\(1) <= NOT \UART_TX|Count\(1);
\UART_TX|ALT_INV_Count\(2) <= NOT \UART_TX|Count\(2);
\UART_TX|ALT_INV_estado.Start_Bit~q\ <= NOT \UART_TX|estado.Start_Bit~q\;
\UART_TX|ALT_INV_estado.Parity_Bit~q\ <= NOT \UART_TX|estado.Parity_Bit~q\;
\UART_TX|ALT_INV_estado.Send_Data~q\ <= NOT \UART_TX|estado.Send_Data~q\;
\UART_TX|ALT_INV_estado.Stop_Bit~q\ <= NOT \UART_TX|estado.Stop_Bit~q\;

\Transmission_On~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_TX|TX_Active~q\,
	devoe => ww_devoe,
	o => \Transmission_On~output_o\);

\Transmission_Done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_TX|TX_Done_Internal~q\,
	devoe => ww_devoe,
	o => \Transmission_Done~output_o\);

\Transmission_Bit~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_TX|TX_Serial~q\,
	devoe => ww_devoe,
	o => \Transmission_Bit~output_o\);

\Current_State[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_TX|Current\(0),
	devoe => ww_devoe,
	o => \Current_State[0]~output_o\);

\Current_State[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_TX|Current\(1),
	devoe => ww_devoe,
	o => \Current_State[1]~output_o\);

\Current_State[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_TX|Current\(2),
	devoe => ww_devoe,
	o => \Current_State[2]~output_o\);

\Current_State[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[3]~output_o\);

\Current_State[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[4]~output_o\);

\Current_State[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[5]~output_o\);

\Current_State[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[6]~output_o\);

\Current_State[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[7]~output_o\);

\Current_State[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[8]~output_o\);

\Current_State[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[9]~output_o\);

\Current_State[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[10]~output_o\);

\Current_State[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[11]~output_o\);

\Current_State[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[12]~output_o\);

\Current_State[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[13]~output_o\);

\Current_State[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[14]~output_o\);

\Current_State[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[15]~output_o\);

\Current_State[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[16]~output_o\);

\Current_State[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[17]~output_o\);

\Current_State[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[18]~output_o\);

\Current_State[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[19]~output_o\);

\Current_State[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[20]~output_o\);

\Current_State[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[21]~output_o\);

\Current_State[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[22]~output_o\);

\Current_State[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[23]~output_o\);

\Current_State[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[24]~output_o\);

\Current_State[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[25]~output_o\);

\Current_State[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[26]~output_o\);

\Current_State[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[27]~output_o\);

\Current_State[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[28]~output_o\);

\Current_State[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[29]~output_o\);

\Current_State[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[30]~output_o\);

\Current_State[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Current_State[31]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\UART_TX|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|LessThan1~0_combout\ = (\UART_TX|Count\(1) & \UART_TX|Count\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_Count\(1),
	datab => \UART_TX|ALT_INV_Count\(2),
	combout => \UART_TX|LessThan1~0_combout\);

\UART_TX|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector8~0_combout\ = ( \UART_TX|Index\(0) & ( (!\UART_TX|estado.Send_Data~q\ & (((\UART_TX|estado.Idle~q\)))) # (\UART_TX|estado.Send_Data~q\ & ((!\UART_TX|Count\(1)) # ((!\UART_TX|Count\(2))))) ) ) # ( !\UART_TX|Index\(0) & ( 
-- (\UART_TX|estado.Send_Data~q\ & (\UART_TX|Count\(1) & \UART_TX|Count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010101001111111000000001000000010101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Send_Data~q\,
	datab => \UART_TX|ALT_INV_Count\(1),
	datac => \UART_TX|ALT_INV_Count\(2),
	datad => \UART_TX|ALT_INV_estado.Idle~q\,
	datae => \UART_TX|ALT_INV_Index\(0),
	combout => \UART_TX|Selector8~0_combout\);

\UART_TX|Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|Index\(0));

\UART_TX|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector7~0_combout\ = ( \UART_TX|Index\(0) & ( \UART_TX|Index\(1) & ( (!\UART_TX|estado.Send_Data~q\ & (((\UART_TX|estado.Idle~q\)))) # (\UART_TX|estado.Send_Data~q\ & ((!\UART_TX|Count\(1)) # ((!\UART_TX|Count\(2))))) ) ) ) # ( 
-- !\UART_TX|Index\(0) & ( \UART_TX|Index\(1) & ( (\UART_TX|estado.Idle~q\) # (\UART_TX|estado.Send_Data~q\) ) ) ) # ( \UART_TX|Index\(0) & ( !\UART_TX|Index\(1) & ( (\UART_TX|estado.Send_Data~q\ & (\UART_TX|Count\(1) & \UART_TX|Count\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000101010101111111110101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Send_Data~q\,
	datab => \UART_TX|ALT_INV_Count\(1),
	datac => \UART_TX|ALT_INV_Count\(2),
	datad => \UART_TX|ALT_INV_estado.Idle~q\,
	datae => \UART_TX|ALT_INV_Index\(0),
	dataf => \UART_TX|ALT_INV_Index\(1),
	combout => \UART_TX|Selector7~0_combout\);

\UART_TX|Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|Index\(1));

\UART_TX|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector6~0_combout\ = ( \UART_TX|Index\(1) & ( \UART_TX|Index\(2) & ( (!\UART_TX|estado.Send_Data~q\ & (((\UART_TX|estado.Idle~q\)))) # (\UART_TX|estado.Send_Data~q\ & ((!\UART_TX|LessThan1~0_combout\) # ((!\UART_TX|Index\(0))))) ) ) ) # ( 
-- !\UART_TX|Index\(1) & ( \UART_TX|Index\(2) & ( (\UART_TX|estado.Idle~q\) # (\UART_TX|estado.Send_Data~q\) ) ) ) # ( \UART_TX|Index\(1) & ( !\UART_TX|Index\(2) & ( (\UART_TX|estado.Send_Data~q\ & (\UART_TX|LessThan1~0_combout\ & \UART_TX|Index\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000101011111010111110101111101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Send_Data~q\,
	datab => \UART_TX|ALT_INV_LessThan1~0_combout\,
	datac => \UART_TX|ALT_INV_estado.Idle~q\,
	datad => \UART_TX|ALT_INV_Index\(0),
	datae => \UART_TX|ALT_INV_Index\(1),
	dataf => \UART_TX|ALT_INV_Index\(2),
	combout => \UART_TX|Selector6~0_combout\);

\UART_TX|Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|Index\(2));

\UART_TX|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector11~0_combout\ = ( \UART_TX|Index\(1) & ( \UART_TX|Index\(2) & ( (!\UART_TX|LessThan1~0_combout\ & (((\UART_TX|estado.Send_Data~q\)))) # (\UART_TX|LessThan1~0_combout\ & (((\UART_TX|estado.Send_Data~q\ & !\UART_TX|Index\(0))) # 
-- (\UART_TX|estado.Start_Bit~q\))) ) ) ) # ( !\UART_TX|Index\(1) & ( \UART_TX|Index\(2) & ( ((\UART_TX|estado.Start_Bit~q\ & \UART_TX|LessThan1~0_combout\)) # (\UART_TX|estado.Send_Data~q\) ) ) ) # ( \UART_TX|Index\(1) & ( !\UART_TX|Index\(2) & ( 
-- ((\UART_TX|estado.Start_Bit~q\ & \UART_TX|LessThan1~0_combout\)) # (\UART_TX|estado.Send_Data~q\) ) ) ) # ( !\UART_TX|Index\(1) & ( !\UART_TX|Index\(2) & ( ((\UART_TX|estado.Start_Bit~q\ & \UART_TX|LessThan1~0_combout\)) # (\UART_TX|estado.Send_Data~q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111001101110011011100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Start_Bit~q\,
	datab => \UART_TX|ALT_INV_estado.Send_Data~q\,
	datac => \UART_TX|ALT_INV_LessThan1~0_combout\,
	datad => \UART_TX|ALT_INV_Index\(0),
	datae => \UART_TX|ALT_INV_Index\(1),
	dataf => \UART_TX|ALT_INV_Index\(2),
	combout => \UART_TX|Selector11~0_combout\);

\UART_TX|estado.Send_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|estado.Send_Data~q\);

\UART_TX|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector12~0_combout\ = (\UART_TX|estado.Send_Data~q\ & (\UART_TX|Index\(0) & (\UART_TX|Index\(1) & \UART_TX|Index\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Send_Data~q\,
	datab => \UART_TX|ALT_INV_Index\(0),
	datac => \UART_TX|ALT_INV_Index\(1),
	datad => \UART_TX|ALT_INV_Index\(2),
	combout => \UART_TX|Selector12~0_combout\);

\UART_TX|estado.Parity_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector12~0_combout\,
	ena => \UART_TX|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|estado.Parity_Bit~q\);

\UART_TX|estado.Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|estado.Parity_Bit~q\,
	ena => \UART_TX|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|estado.Stop_Bit~q\);

\UART_TX|estado~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|estado~8_combout\ = (\UART_TX|estado.Stop_Bit~q\ & (\UART_TX|Count\(1) & \UART_TX|Count\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Stop_Bit~q\,
	datab => \UART_TX|ALT_INV_Count\(1),
	datac => \UART_TX|ALT_INV_Count\(2),
	combout => \UART_TX|estado~8_combout\);

\UART_TX|estado.Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|estado~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|estado.Cleanup~q\);

\UART_TX|estado.Idle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|estado.Idle~0_combout\ = !\UART_TX|estado.Cleanup~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Cleanup~q\,
	combout => \UART_TX|estado.Idle~0_combout\);

\UART_TX|estado.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|estado.Idle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|estado.Idle~q\);

\UART_TX|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector5~0_combout\ = (\UART_TX|estado.Idle~q\ & (!\UART_TX|Count\(0) & ((!\UART_TX|Count\(1)) # (!\UART_TX|Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000000000011100000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_Count\(1),
	datab => \UART_TX|ALT_INV_Count\(2),
	datac => \UART_TX|ALT_INV_estado.Idle~q\,
	datad => \UART_TX|ALT_INV_Count\(0),
	combout => \UART_TX|Selector5~0_combout\);

\UART_TX|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector5~0_combout\,
	ena => \UART_TX|ALT_INV_estado.Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|Count\(0));

\UART_TX|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector3~0_combout\ = (\UART_TX|estado.Idle~q\ & ((!\UART_TX|Count\(1) & (\UART_TX|Count\(2))) # (\UART_TX|Count\(1) & (!\UART_TX|Count\(2) & \UART_TX|Count\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000110000000100000011000000010000001100000001000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_Count\(1),
	datab => \UART_TX|ALT_INV_Count\(2),
	datac => \UART_TX|ALT_INV_estado.Idle~q\,
	datad => \UART_TX|ALT_INV_Count\(0),
	combout => \UART_TX|Selector3~0_combout\);

\UART_TX|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector3~0_combout\,
	ena => \UART_TX|ALT_INV_estado.Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|Count\(2));

\UART_TX|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector4~0_combout\ = (\UART_TX|estado.Idle~q\ & ((!\UART_TX|Count\(1) & ((\UART_TX|Count\(0)))) # (\UART_TX|Count\(1) & (!\UART_TX|Count\(2) & !\UART_TX|Count\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001010000001000000101000000100000010100000010000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_Count\(1),
	datab => \UART_TX|ALT_INV_Count\(2),
	datac => \UART_TX|ALT_INV_estado.Idle~q\,
	datad => \UART_TX|ALT_INV_Count\(0),
	combout => \UART_TX|Selector4~0_combout\);

\UART_TX|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector4~0_combout\,
	ena => \UART_TX|ALT_INV_estado.Cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|Count\(1));

\UART_TX|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector10~0_combout\ = (!\UART_TX|estado.Idle~q\) # ((\UART_TX|estado.Start_Bit~q\ & ((!\UART_TX|Count\(1)) # (!\UART_TX|Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010100111111110101010011111111010101001111111101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Start_Bit~q\,
	datab => \UART_TX|ALT_INV_Count\(1),
	datac => \UART_TX|ALT_INV_Count\(2),
	datad => \UART_TX|ALT_INV_estado.Idle~q\,
	combout => \UART_TX|Selector10~0_combout\);

\UART_TX|estado.Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|estado.Start_Bit~q\);

\UART_TX|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector0~0_combout\ = ( \UART_TX|estado.Stop_Bit~q\ & ( (\UART_TX|estado.Start_Bit~q\) # (\UART_TX|TX_Active~q\) ) ) # ( !\UART_TX|estado.Stop_Bit~q\ & ( ((\UART_TX|TX_Active~q\ & ((\UART_TX|estado.Parity_Bit~q\) # 
-- (\UART_TX|estado.Send_Data~q\)))) # (\UART_TX|estado.Start_Bit~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011101110111011101110111011100110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_TX_Active~q\,
	datab => \UART_TX|ALT_INV_estado.Start_Bit~q\,
	datac => \UART_TX|ALT_INV_estado.Send_Data~q\,
	datad => \UART_TX|ALT_INV_estado.Parity_Bit~q\,
	datae => \UART_TX|ALT_INV_estado.Stop_Bit~q\,
	combout => \UART_TX|Selector0~0_combout\);

\UART_TX|TX_Active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|TX_Active~q\);

\UART_TX|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector2~0_combout\ = (!\UART_TX|estado.Start_Bit~q\ & (!\UART_TX|estado.Send_Data~q\ & (!\UART_TX|estado.Parity_Bit~q\ & !\UART_TX|estado.Stop_Bit~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Start_Bit~q\,
	datab => \UART_TX|ALT_INV_estado.Send_Data~q\,
	datac => \UART_TX|ALT_INV_estado.Parity_Bit~q\,
	datad => \UART_TX|ALT_INV_estado.Stop_Bit~q\,
	combout => \UART_TX|Selector2~0_combout\);

\UART_TX|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector2~1_combout\ = (((\UART_TX|TX_Done_Internal~q\ & !\UART_TX|Selector2~0_combout\)) # (\UART_TX|estado~8_combout\)) # (\UART_TX|estado.Cleanup~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100111111011111110011111101111111001111110111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_TX_Done_Internal~q\,
	datab => \UART_TX|ALT_INV_estado.Cleanup~q\,
	datac => \UART_TX|ALT_INV_estado~8_combout\,
	datad => \UART_TX|ALT_INV_Selector2~0_combout\,
	combout => \UART_TX|Selector2~1_combout\);

\UART_TX|TX_Done_Internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|TX_Done_Internal~q\);

\UART_TX|TX_Data[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|TX_Data[1]~0_combout\ = (!\UART_TX|estado.Idle~q\) # (\UART_TX|TX_Data\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Idle~q\,
	datab => \UART_TX|ALT_INV_TX_Data\(1),
	combout => \UART_TX|TX_Data[1]~0_combout\);

\UART_TX|TX_Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|TX_Data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|TX_Data\(1));

\UART_TX|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector1~0_combout\ = ( \UART_TX|estado.Idle~q\ & ( (!\UART_TX|estado.Parity_Bit~q\ & (!\UART_TX|estado.Stop_Bit~q\ & ((!\UART_TX|TX_Serial~q\) # (!\UART_TX|estado.Cleanup~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001000000000000000000000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_TX_Serial~q\,
	datab => \UART_TX|ALT_INV_estado.Parity_Bit~q\,
	datac => \UART_TX|ALT_INV_estado.Stop_Bit~q\,
	datad => \UART_TX|ALT_INV_estado.Cleanup~q\,
	datae => \UART_TX|ALT_INV_estado.Idle~q\,
	combout => \UART_TX|Selector1~0_combout\);

\UART_TX|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Selector1~1_combout\ = (!\UART_TX|Selector1~0_combout\) # ((\UART_TX|estado.Send_Data~q\ & (\UART_TX|TX_Data\(1) & \UART_TX|Index\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000001111111110000000111111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Send_Data~q\,
	datab => \UART_TX|ALT_INV_TX_Data\(1),
	datac => \UART_TX|ALT_INV_Index\(0),
	datad => \UART_TX|ALT_INV_Selector1~0_combout\,
	combout => \UART_TX|Selector1~1_combout\);

\UART_TX|TX_Serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|TX_Serial~q\);

\UART_TX|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|WideOr0~combout\ = (!\UART_TX|estado.Send_Data~q\ & (!\UART_TX|estado.Stop_Bit~q\ & \UART_TX|estado.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Send_Data~q\,
	datab => \UART_TX|ALT_INV_estado.Stop_Bit~q\,
	datac => \UART_TX|ALT_INV_estado.Idle~q\,
	combout => \UART_TX|WideOr0~combout\);

\UART_TX|Current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|Current\(0));

\UART_TX|Current~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Current~4_combout\ = (\UART_TX|estado.Parity_Bit~q\) # (\UART_TX|estado.Send_Data~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Send_Data~q\,
	datab => \UART_TX|ALT_INV_estado.Parity_Bit~q\,
	combout => \UART_TX|Current~4_combout\);

\UART_TX|Current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Current~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|Current\(1));

\UART_TX|Current~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UART_TX|Current~5_combout\ = (\UART_TX|estado.Cleanup~q\) # (\UART_TX|estado.Stop_Bit~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|ALT_INV_estado.Stop_Bit~q\,
	datab => \UART_TX|ALT_INV_estado.Cleanup~q\,
	combout => \UART_TX|Current~5_combout\);

\UART_TX|Current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UART_TX|Current~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX|Current\(2));

ww_Transmission_On <= \Transmission_On~output_o\;

ww_Transmission_Done <= \Transmission_Done~output_o\;

ww_Transmission_Bit <= \Transmission_Bit~output_o\;

ww_Current_State(0) <= \Current_State[0]~output_o\;

ww_Current_State(1) <= \Current_State[1]~output_o\;

ww_Current_State(2) <= \Current_State[2]~output_o\;

ww_Current_State(3) <= \Current_State[3]~output_o\;

ww_Current_State(4) <= \Current_State[4]~output_o\;

ww_Current_State(5) <= \Current_State[5]~output_o\;

ww_Current_State(6) <= \Current_State[6]~output_o\;

ww_Current_State(7) <= \Current_State[7]~output_o\;

ww_Current_State(8) <= \Current_State[8]~output_o\;

ww_Current_State(9) <= \Current_State[9]~output_o\;

ww_Current_State(10) <= \Current_State[10]~output_o\;

ww_Current_State(11) <= \Current_State[11]~output_o\;

ww_Current_State(12) <= \Current_State[12]~output_o\;

ww_Current_State(13) <= \Current_State[13]~output_o\;

ww_Current_State(14) <= \Current_State[14]~output_o\;

ww_Current_State(15) <= \Current_State[15]~output_o\;

ww_Current_State(16) <= \Current_State[16]~output_o\;

ww_Current_State(17) <= \Current_State[17]~output_o\;

ww_Current_State(18) <= \Current_State[18]~output_o\;

ww_Current_State(19) <= \Current_State[19]~output_o\;

ww_Current_State(20) <= \Current_State[20]~output_o\;

ww_Current_State(21) <= \Current_State[21]~output_o\;

ww_Current_State(22) <= \Current_State[22]~output_o\;

ww_Current_State(23) <= \Current_State[23]~output_o\;

ww_Current_State(24) <= \Current_State[24]~output_o\;

ww_Current_State(25) <= \Current_State[25]~output_o\;

ww_Current_State(26) <= \Current_State[26]~output_o\;

ww_Current_State(27) <= \Current_State[27]~output_o\;

ww_Current_State(28) <= \Current_State[28]~output_o\;

ww_Current_State(29) <= \Current_State[29]~output_o\;

ww_Current_State(30) <= \Current_State[30]~output_o\;

ww_Current_State(31) <= \Current_State[31]~output_o\;
END structure;


