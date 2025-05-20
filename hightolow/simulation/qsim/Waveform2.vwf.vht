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
-- Generated on "05/19/2025 17:09:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          hightolow
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hightolow_vhd_vec_tst IS
END hightolow_vhd_vec_tst;
ARCHITECTURE hightolow_arch OF hightolow_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL key0 : STD_LOGIC;
SIGNAL led1 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT hightolow
	PORT (
	clk : IN STD_LOGIC;
	key0 : IN STD_LOGIC;
	led1 : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	y : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : hightolow
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	key0 => key0,
	led1 => led1,
	reset => reset,
	y => y
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- key0
t_prcs_key0: PROCESS
BEGIN
	key0 <= '0';
WAIT;
END PROCESS t_prcs_key0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END hightolow_arch;
