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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/24/2025 15:56:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UART
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UART_vhd_vec_tst IS
END UART_vhd_vec_tst;
ARCHITECTURE UART_arch OF UART_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL input_bit : STD_LOGIC;
SIGNAL output_bit : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL teststaterx : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL transmission_done : STD_LOGIC;
COMPONENT UART
	PORT (
	clk : IN STD_LOGIC;
	input_bit : IN STD_LOGIC;
	output_bit : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	teststaterx : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	transmission_done : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UART
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	input_bit => input_bit,
	output_bit => output_bit,
	teststaterx => teststaterx,
	transmission_done => transmission_done
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- input_bit
t_prcs_input_bit: PROCESS
BEGIN
	input_bit <= '1';
	WAIT FOR 80000 ps;
	input_bit <= '0';
	WAIT FOR 120000 ps;
	input_bit <= '1';
	WAIT FOR 80000 ps;
	input_bit <= '0';
	WAIT FOR 10000 ps;
	input_bit <= '1';
	WAIT FOR 70000 ps;
	input_bit <= '0';
	WAIT FOR 150000 ps;
	input_bit <= '1';
	WAIT FOR 210000 ps;
	input_bit <= '0';
WAIT;
END PROCESS t_prcs_input_bit;
END UART_arch;
