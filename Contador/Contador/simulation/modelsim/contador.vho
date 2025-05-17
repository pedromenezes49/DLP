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

-- DATE "04/08/2025 14:11:43"

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

ENTITY 	contador IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	digitUnidade : BUFFER std_logic_vector(6 DOWNTO 0);
	digitDezena : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- enable	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitUnidade[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitUnidade[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitUnidade[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitUnidade[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitUnidade[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitUnidade[5]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitUnidade[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitDezena[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitDezena[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitDezena[2]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitDezena[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitDezena[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitDezena[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digitDezena[6]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_digitUnidade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_digitDezena : std_logic_vector(6 DOWNTO 0);
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Contador0990|contagem[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Contador0990|Add0~14_cout\ : std_logic;
SIGNAL \Contador0990|Add0~9_sumout\ : std_logic;
SIGNAL \Contador0990|Add0~10\ : std_logic;
SIGNAL \Contador0990|Add0~5_sumout\ : std_logic;
SIGNAL \Contador0990|Add0~6\ : std_logic;
SIGNAL \Contador0990|Add0~1_sumout\ : std_logic;
SIGNAL \Contador0990|Add0~2\ : std_logic;
SIGNAL \Contador0990|Add0~25_sumout\ : std_logic;
SIGNAL \Contador0990|Add0~26\ : std_logic;
SIGNAL \Contador0990|Add0~21_sumout\ : std_logic;
SIGNAL \Contador0990|contagem[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador0990|virada~0_combout\ : std_logic;
SIGNAL \Contador0990|contagem[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador0990|virada~1_combout\ : std_logic;
SIGNAL \Contador0990|virada~q\ : std_logic;
SIGNAL \Contador0990|Add0~22\ : std_logic;
SIGNAL \Contador0990|Add0~17_sumout\ : std_logic;
SIGNAL \Contador0990|contagem[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~10\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~11\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~7_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~8_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Contador0990|contagem[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~18_cout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[21]~0_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~30\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~10_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~29_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~17_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~18_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[29]~1_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[28]~3_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~2\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~30_cout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[45]~2_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[44]~4_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|StageOut[43]~6_combout\ : std_logic;
SIGNAL \Decodificador_Unidade|digitDisp[0]~0_combout\ : std_logic;
SIGNAL \Decodificador_Unidade|digitDisp[1]~1_combout\ : std_logic;
SIGNAL \Decodificador_Unidade|digitDisp[2]~2_combout\ : std_logic;
SIGNAL \Decodificador_Unidade|digitDisp[3]~3_combout\ : std_logic;
SIGNAL \Decodificador_Unidade|digitDisp[4]~4_combout\ : std_logic;
SIGNAL \Decodificador_Unidade|digitDisp[5]~5_combout\ : std_logic;
SIGNAL \Decodificador_Unidade|digitDisp[6]~6_combout\ : std_logic;
SIGNAL \Contador0990|contagem[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Contador0990|dezena[3]~0_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Contador0990|dezena[1]~2_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~4_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_7~22_cout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_7~18_cout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_7~14_cout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_7~10_cout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Contador0990|dezena[0]~3_combout\ : std_logic;
SIGNAL \Contador0990|dezena[2]~1_combout\ : std_logic;
SIGNAL \Decodificador_Dezena|digitDisp[0]~0_combout\ : std_logic;
SIGNAL \Decodificador_Dezena|digitDisp[1]~1_combout\ : std_logic;
SIGNAL \Decodificador_Dezena|digitDisp[2]~2_combout\ : std_logic;
SIGNAL \Decodificador_Dezena|digitDisp[3]~3_combout\ : std_logic;
SIGNAL \Decodificador_Dezena|digitDisp[4]~4_combout\ : std_logic;
SIGNAL \Decodificador_Dezena|digitDisp[5]~5_combout\ : std_logic;
SIGNAL \Decodificador_Dezena|digitDisp[6]~6_combout\ : std_logic;
SIGNAL \Contador0990|unidade\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Contador0990|dezena\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Contador0990|contagem\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Contador0990|ALT_INV_contagem[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador0990|ALT_INV_contagem[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador0990|ALT_INV_contagem[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador0990|ALT_INV_contagem[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador0990|ALT_INV_contagem[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~18_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~17_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~16_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~14_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\ : std_logic;
SIGNAL \Contador0990|ALT_INV_virada~0_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ : std_logic;
SIGNAL \Contador0990|ALT_INV_contagem\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~4_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~2_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~10_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~9_combout\ : std_logic;
SIGNAL \Contador0990|ALT_INV_virada~q\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~7_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~3_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~1_combout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~0_combout\ : std_logic;
SIGNAL \Contador0990|ALT_INV_dezena\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Contador0990|ALT_INV_unidade\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~9_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_enable <= enable;
digitUnidade <= ww_digitUnidade;
digitDezena <= ww_digitDezena;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Contador0990|ALT_INV_contagem[4]~DUPLICATE_q\ <= NOT \Contador0990|contagem[4]~DUPLICATE_q\;
\Contador0990|ALT_INV_contagem[5]~DUPLICATE_q\ <= NOT \Contador0990|contagem[5]~DUPLICATE_q\;
\Contador0990|ALT_INV_contagem[6]~DUPLICATE_q\ <= NOT \Contador0990|contagem[6]~DUPLICATE_q\;
\Contador0990|ALT_INV_contagem[2]~DUPLICATE_q\ <= NOT \Contador0990|contagem[2]~DUPLICATE_q\;
\Contador0990|ALT_INV_contagem[3]~DUPLICATE_q\ <= NOT \Contador0990|contagem[3]~DUPLICATE_q\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~18_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~18_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~17_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~17_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~16_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~14_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\;
\Contador0990|ALT_INV_virada~0_combout\ <= NOT \Contador0990|virada~0_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\;
\Contador0990|ALT_INV_contagem\(4) <= NOT \Contador0990|contagem\(4);
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~4_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~4_combout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\;
\Contador0990|ALT_INV_contagem\(5) <= NOT \Contador0990|contagem\(5);
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~2_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~10_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~10_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~9_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\;
\Contador0990|ALT_INV_virada~q\ <= NOT \Contador0990|virada~q\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~8_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~7_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~7_combout\;
\Contador0990|ALT_INV_contagem\(6) <= NOT \Contador0990|contagem\(6);
\Contador0990|ALT_INV_contagem\(1) <= NOT \Contador0990|contagem\(1);
\Contador0990|ALT_INV_contagem\(0) <= NOT \Contador0990|contagem\(0);
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~3_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[28]~3_combout\;
\Contador0990|ALT_INV_contagem\(2) <= NOT \Contador0990|contagem\(2);
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~1_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[29]~1_combout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~0_combout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|StageOut[21]~0_combout\;
\Contador0990|ALT_INV_contagem\(3) <= NOT \Contador0990|contagem\(3);
\Contador0990|ALT_INV_dezena\(0) <= NOT \Contador0990|dezena\(0);
\Contador0990|ALT_INV_dezena\(1) <= NOT \Contador0990|dezena\(1);
\Contador0990|ALT_INV_dezena\(2) <= NOT \Contador0990|dezena\(2);
\Contador0990|ALT_INV_dezena\(3) <= NOT \Contador0990|dezena\(3);
\Contador0990|ALT_INV_unidade\(1) <= NOT \Contador0990|unidade\(1);
\Contador0990|ALT_INV_unidade\(0) <= NOT \Contador0990|unidade\(0);
\Contador0990|ALT_INV_unidade\(2) <= NOT \Contador0990|unidade\(2);
\Contador0990|ALT_INV_unidade\(3) <= NOT \Contador0990|unidade\(3);
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_6~21_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_5~21_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_5~17_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_5~25_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_6~29_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_5~21_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_6~25_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~9_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_5~13_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_6~17_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_7~17_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_6~13_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_7~13_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_7~9_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_6~9_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_7~1_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_6~5_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_5~5_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\;

-- Location: IOOBUF_X0_Y19_N56
\digitUnidade[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Unidade|digitDisp[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_digitUnidade(0));

-- Location: IOOBUF_X0_Y21_N22
\digitUnidade[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Unidade|digitDisp[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_digitUnidade(1));

-- Location: IOOBUF_X0_Y19_N5
\digitUnidade[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Unidade|digitDisp[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_digitUnidade(2));

-- Location: IOOBUF_X0_Y21_N39
\digitUnidade[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Unidade|digitDisp[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_digitUnidade(3));

-- Location: IOOBUF_X8_Y45_N93
\digitUnidade[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Unidade|digitDisp[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_digitUnidade(4));

-- Location: IOOBUF_X0_Y21_N56
\digitUnidade[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Unidade|digitDisp[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_digitUnidade(5));

-- Location: IOOBUF_X0_Y21_N5
\digitUnidade[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Unidade|digitDisp[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_digitUnidade(6));

-- Location: IOOBUF_X0_Y19_N39
\digitDezena[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Dezena|digitDisp[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_digitDezena(0));

-- Location: IOOBUF_X0_Y19_N22
\digitDezena[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Dezena|digitDisp[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_digitDezena(1));

-- Location: IOOBUF_X0_Y20_N22
\digitDezena[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Dezena|digitDisp[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_digitDezena(2));

-- Location: IOOBUF_X8_Y45_N59
\digitDezena[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Dezena|digitDisp[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_digitDezena(3));

-- Location: IOOBUF_X0_Y20_N5
\digitDezena[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Dezena|digitDisp[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_digitDezena(4));

-- Location: IOOBUF_X0_Y20_N56
\digitDezena[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Dezena|digitDisp[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_digitDezena(5));

-- Location: IOOBUF_X54_Y21_N22
\digitDezena[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador_Dezena|digitDisp[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_digitDezena(6));

-- Location: IOIBUF_X54_Y18_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: MLABCELL_X4_Y25_N0
\Contador0990|contagem[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|contagem[0]~0_combout\ = ( !\Contador0990|contagem\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Contador0990|ALT_INV_contagem\(0),
	combout => \Contador0990|contagem[0]~0_combout\);

-- Location: IOIBUF_X0_Y20_N38
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X4_Y25_N1
\Contador0990|contagem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|contagem[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem\(0));

-- Location: FF_X7_Y25_N16
\Contador0990|contagem[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~21_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem\(5));

-- Location: LABCELL_X7_Y25_N0
\Contador0990|Add0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Add0~14_cout\ = CARRY(( \Contador0990|contagem\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|ALT_INV_contagem\(0),
	cin => GND,
	cout => \Contador0990|Add0~14_cout\);

-- Location: LABCELL_X7_Y25_N3
\Contador0990|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Add0~9_sumout\ = SUM(( \Contador0990|contagem\(1) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~14_cout\ ))
-- \Contador0990|Add0~10\ = CARRY(( \Contador0990|contagem\(1) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|ALT_INV_virada~q\,
	datad => \Contador0990|ALT_INV_contagem\(1),
	cin => \Contador0990|Add0~14_cout\,
	sumout => \Contador0990|Add0~9_sumout\,
	cout => \Contador0990|Add0~10\);

-- Location: FF_X7_Y25_N4
\Contador0990|contagem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~9_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem\(1));

-- Location: LABCELL_X7_Y25_N6
\Contador0990|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Add0~5_sumout\ = SUM(( \Contador0990|contagem\(2) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~10\ ))
-- \Contador0990|Add0~6\ = CARRY(( \Contador0990|contagem\(2) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_virada~q\,
	datad => \Contador0990|ALT_INV_contagem\(2),
	cin => \Contador0990|Add0~10\,
	sumout => \Contador0990|Add0~5_sumout\,
	cout => \Contador0990|Add0~6\);

-- Location: FF_X7_Y25_N7
\Contador0990|contagem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~5_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem\(2));

-- Location: LABCELL_X7_Y25_N9
\Contador0990|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Add0~1_sumout\ = SUM(( \Contador0990|contagem\(3) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~6\ ))
-- \Contador0990|Add0~2\ = CARRY(( \Contador0990|contagem\(3) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_virada~q\,
	datad => \Contador0990|ALT_INV_contagem\(3),
	cin => \Contador0990|Add0~6\,
	sumout => \Contador0990|Add0~1_sumout\,
	cout => \Contador0990|Add0~2\);

-- Location: FF_X7_Y25_N11
\Contador0990|contagem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~1_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem\(3));

-- Location: LABCELL_X7_Y25_N12
\Contador0990|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Add0~25_sumout\ = SUM(( \Contador0990|contagem\(4) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~2\ ))
-- \Contador0990|Add0~26\ = CARRY(( \Contador0990|contagem\(4) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_virada~q\,
	datad => \Contador0990|ALT_INV_contagem\(4),
	cin => \Contador0990|Add0~2\,
	sumout => \Contador0990|Add0~25_sumout\,
	cout => \Contador0990|Add0~26\);

-- Location: FF_X7_Y25_N14
\Contador0990|contagem[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~25_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem\(4));

-- Location: LABCELL_X7_Y25_N15
\Contador0990|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Add0~21_sumout\ = SUM(( \Contador0990|contagem\(5) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~26\ ))
-- \Contador0990|Add0~22\ = CARRY(( \Contador0990|contagem\(5) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_virada~q\,
	datad => \Contador0990|ALT_INV_contagem\(5),
	cin => \Contador0990|Add0~26\,
	sumout => \Contador0990|Add0~21_sumout\,
	cout => \Contador0990|Add0~22\);

-- Location: FF_X7_Y25_N17
\Contador0990|contagem[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~21_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem[5]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y25_N24
\Contador0990|virada~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|virada~0_combout\ = ( \Contador0990|contagem[6]~DUPLICATE_q\ & ( (\Contador0990|contagem\(0) & (\Contador0990|contagem[5]~DUPLICATE_q\ & (\Contador0990|contagem\(1) & !\Contador0990|virada~q\))) ) ) # ( 
-- !\Contador0990|contagem[6]~DUPLICATE_q\ & ( (!\Contador0990|contagem\(0) & (!\Contador0990|contagem[5]~DUPLICATE_q\ & (!\Contador0990|contagem\(1) & \Contador0990|virada~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_contagem\(0),
	datab => \Contador0990|ALT_INV_contagem[5]~DUPLICATE_q\,
	datac => \Contador0990|ALT_INV_contagem\(1),
	datad => \Contador0990|ALT_INV_virada~q\,
	dataf => \Contador0990|ALT_INV_contagem[6]~DUPLICATE_q\,
	combout => \Contador0990|virada~0_combout\);

-- Location: FF_X7_Y25_N13
\Contador0990|contagem[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~25_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem[4]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y25_N48
\Contador0990|virada~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|virada~1_combout\ = ( \Contador0990|contagem[4]~DUPLICATE_q\ & ( \Contador0990|virada~q\ ) ) # ( !\Contador0990|contagem[4]~DUPLICATE_q\ & ( !\Contador0990|virada~q\ $ (((!\Contador0990|virada~0_combout\) # ((\Contador0990|contagem\(2)) # 
-- (\Contador0990|contagem\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010111111010000001011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_virada~0_combout\,
	datab => \Contador0990|ALT_INV_contagem\(3),
	datac => \Contador0990|ALT_INV_contagem\(2),
	datad => \Contador0990|ALT_INV_virada~q\,
	dataf => \Contador0990|ALT_INV_contagem[4]~DUPLICATE_q\,
	combout => \Contador0990|virada~1_combout\);

-- Location: FF_X7_Y25_N49
\Contador0990|virada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|virada~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|virada~q\);

-- Location: FF_X7_Y25_N19
\Contador0990|contagem[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~17_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem\(6));

-- Location: LABCELL_X7_Y25_N18
\Contador0990|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Add0~17_sumout\ = SUM(( \Contador0990|contagem\(6) ) + ( \Contador0990|virada~q\ ) + ( \Contador0990|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_virada~q\,
	datad => \Contador0990|ALT_INV_contagem\(6),
	cin => \Contador0990|Add0~22\,
	sumout => \Contador0990|Add0~17_sumout\);

-- Location: FF_X7_Y25_N20
\Contador0990|contagem[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~17_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem[6]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y25_N30
\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( \Contador0990|contagem\(3) ) + ( !VCC ) + ( !VCC ))
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( \Contador0990|contagem\(3) ) + ( !VCC ) + ( !VCC ))
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem\(3),
	cin => GND,
	sharein => GND,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: LABCELL_X7_Y25_N33
\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ = SUM(( \Contador0990|contagem\(4) ) + ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ = CARRY(( \Contador0990|contagem\(4) ) + ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|ALT_INV_contagem\(4),
	cin => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\,
	shareout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\);

-- Location: LABCELL_X7_Y25_N36
\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !\Contador0990|contagem[5]~DUPLICATE_q\ ) + ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !\Contador0990|contagem[5]~DUPLICATE_q\ ) + ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\ ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(\Contador0990|contagem[5]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem[5]~DUPLICATE_q\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~18\,
	sharein => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~19\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: LABCELL_X7_Y25_N39
\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\ = SUM(( \Contador0990|contagem\(6) ) + ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~10\ = CARRY(( \Contador0990|contagem\(6) ) + ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|ALT_INV_contagem\(6),
	cin => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~10\,
	shareout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~11\);

-- Location: LABCELL_X7_Y25_N42
\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~11\ ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~10\,
	sharein => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~11\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X6_Y25_N12
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~7_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|contagem[6]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem[6]~DUPLICATE_q\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~7_combout\);

-- Location: LABCELL_X6_Y25_N30
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~8_combout\ = ( !\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~9_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~8_combout\);

-- Location: LABCELL_X6_Y25_N6
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\ = ( !\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\);

-- Location: LABCELL_X6_Y25_N0
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|contagem[4]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem[4]~DUPLICATE_q\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\);

-- Location: FF_X7_Y25_N8
\Contador0990|contagem[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~5_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem[2]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y25_N36
\Contador0990|Mod0|auto_generated|divider|divider|op_5~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~18_cout\);

-- Location: LABCELL_X6_Y25_N39
\Contador0990|Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( \Contador0990|contagem[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~18_cout\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( \Contador0990|contagem[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|ALT_INV_contagem[2]~DUPLICATE_q\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_5~18_cout\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X6_Y25_N42
\Contador0990|Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( (!\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Contador0990|contagem\(3))) ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~10\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~6\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Contador0990|contagem\(3))) ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_contagem\(3),
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X6_Y25_N45
\Contador0990|Mod0|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\) ) + ( VCC ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~6\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~26\ = CARRY(( (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~15_combout\) ) + ( VCC ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~15_combout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~16_combout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_5~6\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~26\);

-- Location: LABCELL_X6_Y25_N48
\Contador0990|Mod0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (!\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Contador0990|contagem[5]~DUPLICATE_q\)) ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~26\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~22\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Contador0990|contagem[5]~DUPLICATE_q\)) ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_contagem[5]~DUPLICATE_q\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_5~26\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X6_Y25_N51
\Contador0990|Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~8_combout\) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~7_combout\) ) + ( VCC ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~22\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~8_combout\) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~7_combout\) ) + ( VCC ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~7_combout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_5~22\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X6_Y25_N54
\Contador0990|Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X6_Y25_N9
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\ = ( !\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\);

-- Location: LABCELL_X7_Y25_N27
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|contagem[5]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem[5]~DUPLICATE_q\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\);

-- Location: LABCELL_X7_Y25_N54
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|contagem[4]~DUPLICATE_q\ ) ) # ( 
-- !\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem[4]~DUPLICATE_q\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~17_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\);

-- Location: LABCELL_X7_Y25_N51
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[21]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[21]~0_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|contagem\(3) ) ) # ( 
-- !\Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem\(3),
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[21]~0_combout\);

-- Location: LABCELL_X5_Y25_N36
\Contador0990|Mod0|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~22_cout\);

-- Location: LABCELL_X5_Y25_N39
\Contador0990|Mod0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( \Contador0990|contagem\(1) ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~22_cout\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~14\ = CARRY(( \Contador0990|contagem\(1) ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|ALT_INV_contagem\(1),
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_6~22_cout\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X5_Y25_N42
\Contador0990|Mod0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( GND ) + ( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|contagem\(2))) ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~14\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~10\ = CARRY(( GND ) + ( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|contagem\(2))) ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Contador0990|ALT_INV_contagem\(2),
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_6~14\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X5_Y25_N45
\Contador0990|Mod0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[21]~0_combout\)) ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~10\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~6\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_5~5_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[21]~0_combout\)) ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~0_combout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_6~10\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X5_Y25_N48
\Contador0990|Mod0|auto_generated|divider|divider|op_6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~29_sumout\ = SUM(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_5~25_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\)) ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~6\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~30\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_5~25_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\)) ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~14_combout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_6~6\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~29_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~30\);

-- Location: LABCELL_X5_Y25_N51
\Contador0990|Mod0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Contador0990|Mod0|auto_generated|divider|divider|op_5~21_sumout\)))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\)) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\))) ) + ( VCC ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~30\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~26\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Contador0990|Mod0|auto_generated|divider|divider|op_5~21_sumout\)))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\)) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\))) ) + ( VCC ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\,
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_6~30\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X5_Y25_N54
\Contador0990|Mod0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Contador0990|Mod0|auto_generated|divider|divider|op_5~13_sumout\)))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~8_combout\)) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~7_combout\))) ) + ( VCC ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~26\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Contador0990|Mod0|auto_generated|divider|divider|op_5~13_sumout\)))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~8_combout\)) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~7_combout\))) ) + ( VCC ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~7_combout\,
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_6~26\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X5_Y25_N57
\Contador0990|Mod0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_6~18\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X6_Y25_N24
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~13_sumout\ & ( !\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\);

-- Location: LABCELL_X6_Y25_N3
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~10_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~8_combout\) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[24]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~7_combout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[24]~8_combout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~10_combout\);

-- Location: LABCELL_X6_Y25_N27
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[31]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~21_sumout\ & ( (!\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\) # 
-- ((\Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\)) ) ) # ( !\Contador0990|Mod0|auto_generated|divider|divider|op_5~21_sumout\ & ( 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~12_combout\) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[23]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~11_combout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[23]~12_combout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\);

-- Location: LABCELL_X6_Y25_N18
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~17_combout\ = ( !\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~17_combout\);

-- Location: LABCELL_X6_Y25_N15
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~18_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|StageOut[22]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[22]~14_combout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~18_combout\);

-- Location: LABCELL_X6_Y25_N33
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[29]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[29]~1_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|StageOut[21]~0_combout\ ) ) # ( 
-- !\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~0_combout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[29]~1_combout\);

-- Location: LABCELL_X6_Y25_N21
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[28]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[28]~3_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Contador0990|contagem[2]~DUPLICATE_q\ ) ) # ( 
-- !\Contador0990|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|op_5~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \Contador0990|ALT_INV_contagem[2]~DUPLICATE_q\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[28]~3_combout\);

-- Location: LABCELL_X5_Y25_N6
\Contador0990|Mod0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~26_cout\);

-- Location: LABCELL_X5_Y25_N9
\Contador0990|Mod0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( \Contador0990|contagem\(0) ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~26_cout\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~14\ = CARRY(( \Contador0990|contagem\(0) ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|ALT_INV_contagem\(0),
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_7~26_cout\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X5_Y25_N12
\Contador0990|Mod0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( GND ) + ( (!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|contagem\(1))) ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~14\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~18\ = CARRY(( GND ) + ( (!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|contagem\(1))) ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem\(1),
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_7~14\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X5_Y25_N15
\Contador0990|Mod0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[28]~3_combout\)) ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~18\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[28]~3_combout\)) ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~3_combout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_7~18\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X5_Y25_N18
\Contador0990|Mod0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[29]~1_combout\)) ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~10\ ))
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~2\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[29]~1_combout\)) ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~1_combout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_7~10\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~1_sumout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~2\);

-- Location: LABCELL_X5_Y25_N21
\Contador0990|Mod0|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|op_6~29_sumout\)) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~18_combout\) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[30]~17_combout\)))) ) + ( VCC ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~17_combout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~18_combout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_7~2\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~34_cout\);

-- Location: LABCELL_X5_Y25_N24
\Contador0990|Mod0|auto_generated|divider|divider|op_7~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~30_cout\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_6~25_sumout\))) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[31]~13_combout\)) ) + ( VCC ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~13_combout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_7~34_cout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~30_cout\);

-- Location: LABCELL_X5_Y25_N27
\Contador0990|Mod0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( (!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|op_6~17_sumout\)) # 
-- (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~10_combout\) # (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[32]~9_combout\)))) ) + ( VCC ) + ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~9_combout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~10_combout\,
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_7~30_cout\,
	cout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~22_cout\);

-- Location: LABCELL_X5_Y25_N30
\Contador0990|Mod0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Contador0990|Mod0|auto_generated|divider|divider|op_7~22_cout\,
	sumout => \Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\);

-- Location: LABCELL_X5_Y25_N0
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[45]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[45]~2_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\) # 
-- ((!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[29]~1_combout\))) ) ) # ( !\Contador0990|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ & 
-- ((!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Mod0|auto_generated|divider|divider|op_6~5_sumout\))) # (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Contador0990|Mod0|auto_generated|divider|divider|StageOut[29]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[29]~1_combout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[45]~2_combout\);

-- Location: FF_X5_Y25_N2
\Contador0990|unidade[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[45]~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|unidade\(3));

-- Location: MLABCELL_X4_Y25_N39
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[42]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\ = ( \Contador0990|contagem\(0) & ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ ) ) # ( \Contador0990|contagem\(0) & ( 
-- !\Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~13_sumout\ ) ) ) # ( !\Contador0990|contagem\(0) & ( !\Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ & ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_7~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	datae => \Contador0990|ALT_INV_contagem\(0),
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\);

-- Location: FF_X4_Y25_N41
\Contador0990|unidade[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[42]~5_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|unidade\(0));

-- Location: LABCELL_X5_Y25_N3
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[44]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[44]~4_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~9_sumout\ & ( (!\Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\) # 
-- ((!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|op_6~9_sumout\)) # (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Contador0990|Mod0|auto_generated|divider|divider|StageOut[28]~3_combout\)))) ) ) # ( !\Contador0990|Mod0|auto_generated|divider|divider|op_7~9_sumout\ & ( (\Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ & 
-- ((!\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Mod0|auto_generated|divider|divider|op_6~9_sumout\)) # (\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Contador0990|Mod0|auto_generated|divider|divider|StageOut[28]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[28]~3_combout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[44]~4_combout\);

-- Location: FF_X5_Y25_N5
\Contador0990|unidade[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[44]~4_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|unidade\(2));

-- Location: MLABCELL_X4_Y25_N18
\Contador0990|Mod0|auto_generated|divider|divider|StageOut[43]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Mod0|auto_generated|divider|divider|StageOut[43]~6_combout\ = ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ & ( \Contador0990|contagem\(1) ) ) ) # ( 
-- !\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|op_6~13_sumout\ ) ) ) # ( 
-- \Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~17_sumout\ ) ) ) # ( 
-- !\Contador0990|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ( !\Contador0990|Mod0|auto_generated|divider|divider|op_7~5_sumout\ & ( \Contador0990|Mod0|auto_generated|divider|divider|op_7~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem\(1),
	datac => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datad => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datae => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Contador0990|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	combout => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[43]~6_combout\);

-- Location: FF_X4_Y25_N20
\Contador0990|unidade[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Mod0|auto_generated|divider|divider|StageOut[43]~6_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|unidade\(1));

-- Location: MLABCELL_X4_Y25_N27
\Decodificador_Unidade|digitDisp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Unidade|digitDisp[0]~0_combout\ = ( \Contador0990|unidade\(2) & ( \Contador0990|unidade\(1) & ( (!\Contador0990|unidade\(3) & \Contador0990|unidade\(0)) ) ) ) # ( !\Contador0990|unidade\(2) & ( !\Contador0990|unidade\(1) & ( 
-- !\Contador0990|unidade\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_unidade\(3),
	datac => \Contador0990|ALT_INV_unidade\(0),
	datae => \Contador0990|ALT_INV_unidade\(2),
	dataf => \Contador0990|ALT_INV_unidade\(1),
	combout => \Decodificador_Unidade|digitDisp[0]~0_combout\);

-- Location: MLABCELL_X4_Y25_N42
\Decodificador_Unidade|digitDisp[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Unidade|digitDisp[1]~1_combout\ = ( \Contador0990|unidade\(2) & ( \Contador0990|unidade\(1) & ( (\Contador0990|unidade\(3)) # (\Contador0990|unidade\(0)) ) ) ) # ( !\Contador0990|unidade\(2) & ( \Contador0990|unidade\(1) ) ) # ( 
-- \Contador0990|unidade\(2) & ( !\Contador0990|unidade\(1) & ( \Contador0990|unidade\(3) ) ) ) # ( !\Contador0990|unidade\(2) & ( !\Contador0990|unidade\(1) & ( (\Contador0990|unidade\(0) & !\Contador0990|unidade\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000001111111111111111111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_unidade\(0),
	datad => \Contador0990|ALT_INV_unidade\(3),
	datae => \Contador0990|ALT_INV_unidade\(2),
	dataf => \Contador0990|ALT_INV_unidade\(1),
	combout => \Decodificador_Unidade|digitDisp[1]~1_combout\);

-- Location: MLABCELL_X4_Y25_N15
\Decodificador_Unidade|digitDisp[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Unidade|digitDisp[2]~2_combout\ = ( \Contador0990|unidade\(2) & ( \Contador0990|unidade\(1) & ( (\Contador0990|unidade\(0)) # (\Contador0990|unidade\(3)) ) ) ) # ( !\Contador0990|unidade\(2) & ( \Contador0990|unidade\(1) & ( 
-- (\Contador0990|unidade\(0)) # (\Contador0990|unidade\(3)) ) ) ) # ( \Contador0990|unidade\(2) & ( !\Contador0990|unidade\(1) ) ) # ( !\Contador0990|unidade\(2) & ( !\Contador0990|unidade\(1) & ( \Contador0990|unidade\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_unidade\(3),
	datac => \Contador0990|ALT_INV_unidade\(0),
	datae => \Contador0990|ALT_INV_unidade\(2),
	dataf => \Contador0990|ALT_INV_unidade\(1),
	combout => \Decodificador_Unidade|digitDisp[2]~2_combout\);

-- Location: MLABCELL_X4_Y25_N54
\Decodificador_Unidade|digitDisp[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Unidade|digitDisp[3]~3_combout\ = ( \Contador0990|unidade\(2) & ( \Contador0990|unidade\(1) & ( (\Contador0990|unidade\(3)) # (\Contador0990|unidade\(0)) ) ) ) # ( !\Contador0990|unidade\(2) & ( \Contador0990|unidade\(1) & ( 
-- \Contador0990|unidade\(3) ) ) ) # ( \Contador0990|unidade\(2) & ( !\Contador0990|unidade\(1) & ( (!\Contador0990|unidade\(0)) # (\Contador0990|unidade\(3)) ) ) ) # ( !\Contador0990|unidade\(2) & ( !\Contador0990|unidade\(1) & ( (\Contador0990|unidade\(0) 
-- & !\Contador0990|unidade\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000110011001111111100000000111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_unidade\(0),
	datad => \Contador0990|ALT_INV_unidade\(3),
	datae => \Contador0990|ALT_INV_unidade\(2),
	dataf => \Contador0990|ALT_INV_unidade\(1),
	combout => \Decodificador_Unidade|digitDisp[3]~3_combout\);

-- Location: MLABCELL_X4_Y25_N51
\Decodificador_Unidade|digitDisp[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Unidade|digitDisp[4]~4_combout\ = ( \Contador0990|unidade\(2) & ( \Contador0990|unidade\(1) & ( \Contador0990|unidade\(3) ) ) ) # ( !\Contador0990|unidade\(2) & ( \Contador0990|unidade\(1) & ( (!\Contador0990|unidade\(0)) # 
-- (\Contador0990|unidade\(3)) ) ) ) # ( \Contador0990|unidade\(2) & ( !\Contador0990|unidade\(1) & ( \Contador0990|unidade\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111110011111100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_unidade\(3),
	datac => \Contador0990|ALT_INV_unidade\(0),
	datae => \Contador0990|ALT_INV_unidade\(2),
	dataf => \Contador0990|ALT_INV_unidade\(1),
	combout => \Decodificador_Unidade|digitDisp[4]~4_combout\);

-- Location: MLABCELL_X4_Y25_N6
\Decodificador_Unidade|digitDisp[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Unidade|digitDisp[5]~5_combout\ = ( \Contador0990|unidade\(1) & ( ((!\Contador0990|unidade\(0) & \Contador0990|unidade\(2))) # (\Contador0990|unidade\(3)) ) ) # ( !\Contador0990|unidade\(1) & ( (\Contador0990|unidade\(2) & 
-- ((\Contador0990|unidade\(0)) # (\Contador0990|unidade\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011101011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_unidade\(3),
	datab => \Contador0990|ALT_INV_unidade\(0),
	datac => \Contador0990|ALT_INV_unidade\(2),
	dataf => \Contador0990|ALT_INV_unidade\(1),
	combout => \Decodificador_Unidade|digitDisp[5]~5_combout\);

-- Location: MLABCELL_X4_Y25_N9
\Decodificador_Unidade|digitDisp[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Unidade|digitDisp[6]~6_combout\ = ( \Contador0990|unidade\(1) & ( \Contador0990|unidade\(3) ) ) # ( !\Contador0990|unidade\(1) & ( !\Contador0990|unidade\(2) $ (((!\Contador0990|unidade\(0)) # (\Contador0990|unidade\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011011101001000101101110101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_unidade\(3),
	datab => \Contador0990|ALT_INV_unidade\(0),
	datad => \Contador0990|ALT_INV_unidade\(2),
	dataf => \Contador0990|ALT_INV_unidade\(1),
	combout => \Decodificador_Unidade|digitDisp[6]~6_combout\);

-- Location: FF_X7_Y25_N10
\Contador0990|contagem[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|Add0~1_sumout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|contagem[3]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y24_N0
\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( \Contador0990|contagem[3]~DUPLICATE_q\ ) + ( !VCC ) + ( !VCC ))
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( \Contador0990|contagem[3]~DUPLICATE_q\ ) + ( !VCC ) + ( !VCC ))
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|ALT_INV_contagem[3]~DUPLICATE_q\,
	cin => GND,
	sharein => GND,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: LABCELL_X6_Y24_N3
\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( \Contador0990|contagem\(4) ) + ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( \Contador0990|contagem\(4) ) + ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|ALT_INV_contagem\(4),
	cin => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: LABCELL_X6_Y24_N6
\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !\Contador0990|contagem\(5) ) + ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !\Contador0990|contagem\(5) ) + ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(\Contador0990|contagem\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|ALT_INV_contagem\(5),
	cin => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: LABCELL_X6_Y24_N9
\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( \Contador0990|contagem[6]~DUPLICATE_q\ ) + ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( \Contador0990|contagem[6]~DUPLICATE_q\ ) + ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|ALT_INV_contagem[6]~DUPLICATE_q\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LABCELL_X6_Y24_N12
\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: MLABCELL_X4_Y25_N30
\Contador0990|dezena[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|dezena[3]~0_combout\ = ( !\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|dezena[3]~0_combout\);

-- Location: FF_X4_Y24_N38
\Contador0990|dezena[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Contador0990|dezena[3]~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|dezena\(3));

-- Location: LABCELL_X6_Y24_N24
\Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ & ( !\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LABCELL_X6_Y24_N18
\Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ & ( !\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LABCELL_X6_Y24_N54
\Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|contagem[6]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|ALT_INV_contagem[6]~DUPLICATE_q\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LABCELL_X6_Y24_N27
\Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = ( !\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LABCELL_X6_Y24_N57
\Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|contagem\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|ALT_INV_contagem\(4),
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LABCELL_X6_Y24_N30
\Contador0990|Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X6_Y24_N33
\Contador0990|Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( \Contador0990|contagem[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( \Contador0990|contagem[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|ALT_INV_contagem[2]~DUPLICATE_q\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X6_Y24_N36
\Contador0990|Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Contador0990|contagem[3]~DUPLICATE_q\)) ) + ( GND ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_5~22\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Contador0990|contagem[3]~DUPLICATE_q\)) ) + ( GND ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Contador0990|ALT_INV_contagem[3]~DUPLICATE_q\,
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X6_Y24_N39
\Contador0990|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\) # (\Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\) ) + ( VCC ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~18\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\) # (\Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\) ) + ( VCC ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X6_Y24_N42
\Contador0990|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Contador0990|contagem\(5))) ) + ( GND ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_5~14\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Contador0990|contagem\(5))) ) + ( GND ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Contador0990|ALT_INV_contagem\(5),
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X6_Y24_N45
\Contador0990|Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\) # (\Contador0990|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\) ) + ( VCC ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_5~10\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X6_Y24_N48
\Contador0990|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: MLABCELL_X4_Y24_N33
\Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Contador0990|contagem\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|ALT_INV_contagem\(5),
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LABCELL_X5_Y24_N57
\Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ ) # ( !\Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ( 
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: MLABCELL_X4_Y24_N42
\Contador0990|Div0|auto_generated|divider|divider|StageOut[15]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \Contador0990|contagem[3]~DUPLICATE_q\ ) ) ) # ( !\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \Contador0990|contagem[3]~DUPLICATE_q\ ) ) ) # ( \Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( !\Contador0990|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem[3]~DUPLICATE_q\,
	datae => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\);

-- Location: LABCELL_X5_Y24_N30
\Contador0990|Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_6~26_cout\);

-- Location: LABCELL_X5_Y24_N33
\Contador0990|Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( \Contador0990|contagem\(1) ) + ( VCC ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( \Contador0990|contagem\(1) ) + ( VCC ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador0990|ALT_INV_contagem\(1),
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X5_Y24_N36
\Contador0990|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|contagem[2]~DUPLICATE_q\)) ) + ( GND ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_6~22\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|contagem[2]~DUPLICATE_q\)) ) + ( GND ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_contagem[2]~DUPLICATE_q\,
	datab => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X5_Y24_N39
\Contador0990|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( VCC ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_6~18\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( VCC ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X5_Y24_N42
\Contador0990|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( GND ) + ( (!\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\)) ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( GND ) + ( (!\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\)) ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X5_Y24_N45
\Contador0990|Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Contador0990|Div0|auto_generated|divider|divider|op_5~9_sumout\)))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\)) # (\Contador0990|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\))) ) + ( VCC ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~2_combout\,
	datab => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~3_combout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_6~10\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: LABCELL_X5_Y24_N48
\Contador0990|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: MLABCELL_X4_Y24_N15
\Contador0990|dezena[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|dezena[1]~2_combout\ = ( !\Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Contador0990|dezena[1]~2_combout\);

-- Location: FF_X4_Y24_N17
\Contador0990|dezena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|dezena[1]~2_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|dezena\(1));

-- Location: LABCELL_X5_Y24_N3
\Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~4_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|op_5~13_sumout\ & ( !\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~4_combout\);

-- Location: MLABCELL_X4_Y24_N48
\Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|StageOut[16]~7_combout\ & ( \Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~7_combout\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\);

-- Location: LABCELL_X5_Y24_N54
\Contador0990|Div0|auto_generated|divider|divider|StageOut[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Contador0990|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ ) ) # ( 
-- !\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Contador0990|Div0|auto_generated|divider|divider|op_5~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\);

-- Location: LABCELL_X6_Y24_N21
\Contador0990|Div0|auto_generated|divider|divider|StageOut[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\ = ( \Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Contador0990|contagem[2]~DUPLICATE_q\ ) ) # ( 
-- !\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Contador0990|Div0|auto_generated|divider|divider|op_5~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \Contador0990|ALT_INV_contagem[2]~DUPLICATE_q\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Contador0990|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\);

-- Location: LABCELL_X5_Y24_N6
\Contador0990|Div0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_7~26_cout\);

-- Location: LABCELL_X5_Y24_N9
\Contador0990|Div0|auto_generated|divider|divider|op_7~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_7~22_cout\ = CARRY(( \Contador0990|contagem\(0) ) + ( VCC ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_contagem\(0),
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_7~26_cout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_7~22_cout\);

-- Location: LABCELL_X5_Y24_N12
\Contador0990|Div0|auto_generated|divider|divider|op_7~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_7~18_cout\ = CARRY(( GND ) + ( (!\Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|contagem\(1))) ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_7~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador0990|ALT_INV_contagem\(1),
	datac => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_7~22_cout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_7~18_cout\);

-- Location: LABCELL_X5_Y24_N15
\Contador0990|Div0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( (!\Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Div0|auto_generated|divider|divider|StageOut[20]~11_combout\)) ) + ( VCC ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_7~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~11_combout\,
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_7~18_cout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_7~14_cout\);

-- Location: LABCELL_X5_Y24_N18
\Contador0990|Div0|auto_generated|divider|divider|op_7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_7~10_cout\ = CARRY(( (!\Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Contador0990|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Contador0990|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\)) ) + ( GND ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\,
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_7~14_cout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_7~10_cout\);

-- Location: LABCELL_X5_Y24_N21
\Contador0990|Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( (!\Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Contador0990|Div0|auto_generated|divider|divider|op_6~9_sumout\)))) # 
-- (\Contador0990|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~8_combout\)) # (\Contador0990|Div0|auto_generated|divider|divider|StageOut[22]~4_combout\))) ) + ( VCC ) + ( 
-- \Contador0990|Div0|auto_generated|divider|divider|op_7~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~4_combout\,
	datac => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~8_combout\,
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_7~10_cout\,
	cout => \Contador0990|Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: LABCELL_X5_Y24_N24
\Contador0990|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Contador0990|Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Contador0990|Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \Contador0990|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X5_Y24_N0
\Contador0990|dezena[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|dezena[0]~3_combout\ = ( !\Contador0990|Div0|auto_generated|divider|divider|op_7~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Contador0990|dezena[0]~3_combout\);

-- Location: FF_X5_Y24_N2
\Contador0990|dezena[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|dezena[0]~3_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|dezena\(0));

-- Location: MLABCELL_X4_Y24_N6
\Contador0990|dezena[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador0990|dezena[2]~1_combout\ = ( !\Contador0990|Div0|auto_generated|divider|divider|op_5~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Contador0990|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Contador0990|dezena[2]~1_combout\);

-- Location: FF_X4_Y24_N8
\Contador0990|dezena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Contador0990|dezena[2]~1_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador0990|dezena\(2));

-- Location: MLABCELL_X4_Y24_N57
\Decodificador_Dezena|digitDisp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Dezena|digitDisp[0]~0_combout\ = ( \Contador0990|dezena\(0) & ( \Contador0990|dezena\(2) & ( (!\Contador0990|dezena\(3) & \Contador0990|dezena\(1)) ) ) ) # ( \Contador0990|dezena\(0) & ( !\Contador0990|dezena\(2) & ( 
-- (!\Contador0990|dezena\(3) & !\Contador0990|dezena\(1)) ) ) ) # ( !\Contador0990|dezena\(0) & ( !\Contador0990|dezena\(2) & ( (!\Contador0990|dezena\(3) & !\Contador0990|dezena\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_dezena\(3),
	datac => \Contador0990|ALT_INV_dezena\(1),
	datae => \Contador0990|ALT_INV_dezena\(0),
	dataf => \Contador0990|ALT_INV_dezena\(2),
	combout => \Decodificador_Dezena|digitDisp[0]~0_combout\);

-- Location: MLABCELL_X4_Y24_N24
\Decodificador_Dezena|digitDisp[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Dezena|digitDisp[1]~1_combout\ = ( \Contador0990|dezena\(3) & ( \Contador0990|dezena\(2) ) ) # ( !\Contador0990|dezena\(3) & ( \Contador0990|dezena\(2) & ( (\Contador0990|dezena\(0) & \Contador0990|dezena\(1)) ) ) ) # ( 
-- \Contador0990|dezena\(3) & ( !\Contador0990|dezena\(2) & ( \Contador0990|dezena\(1) ) ) ) # ( !\Contador0990|dezena\(3) & ( !\Contador0990|dezena\(2) & ( (\Contador0990|dezena\(1)) # (\Contador0990|dezena\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111001100110011001100010001000100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_dezena\(0),
	datab => \Contador0990|ALT_INV_dezena\(1),
	datae => \Contador0990|ALT_INV_dezena\(3),
	dataf => \Contador0990|ALT_INV_dezena\(2),
	combout => \Decodificador_Dezena|digitDisp[1]~1_combout\);

-- Location: MLABCELL_X4_Y24_N21
\Decodificador_Dezena|digitDisp[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Dezena|digitDisp[2]~2_combout\ = ( \Contador0990|dezena\(0) & ( \Contador0990|dezena\(2) ) ) # ( !\Contador0990|dezena\(0) & ( \Contador0990|dezena\(2) & ( (!\Contador0990|dezena\(1)) # (\Contador0990|dezena\(3)) ) ) ) # ( 
-- \Contador0990|dezena\(0) & ( !\Contador0990|dezena\(2) ) ) # ( !\Contador0990|dezena\(0) & ( !\Contador0990|dezena\(2) & ( (\Contador0990|dezena\(3) & \Contador0990|dezena\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111111110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_dezena\(3),
	datac => \Contador0990|ALT_INV_dezena\(1),
	datae => \Contador0990|ALT_INV_dezena\(0),
	dataf => \Contador0990|ALT_INV_dezena\(2),
	combout => \Decodificador_Dezena|digitDisp[2]~2_combout\);

-- Location: MLABCELL_X4_Y24_N36
\Decodificador_Dezena|digitDisp[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Dezena|digitDisp[3]~3_combout\ = ( \Contador0990|dezena\(1) & ( ((\Contador0990|dezena\(0) & \Contador0990|dezena\(2))) # (\Contador0990|dezena\(3)) ) ) # ( !\Contador0990|dezena\(1) & ( !\Contador0990|dezena\(2) $ 
-- (((!\Contador0990|dezena\(0)) # (\Contador0990|dezena\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000110011011001100011001100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_dezena\(0),
	datab => \Contador0990|ALT_INV_dezena\(2),
	datad => \Contador0990|ALT_INV_dezena\(3),
	dataf => \Contador0990|ALT_INV_dezena\(1),
	combout => \Decodificador_Dezena|digitDisp[3]~3_combout\);

-- Location: MLABCELL_X4_Y24_N39
\Decodificador_Dezena|digitDisp[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Dezena|digitDisp[4]~4_combout\ = (!\Contador0990|dezena\(2) & (\Contador0990|dezena\(1) & ((!\Contador0990|dezena\(0)) # (\Contador0990|dezena\(3))))) # (\Contador0990|dezena\(2) & (((\Contador0990|dezena\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111111000010000011111100001000001111110000100000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_dezena\(0),
	datab => \Contador0990|ALT_INV_dezena\(2),
	datac => \Contador0990|ALT_INV_dezena\(1),
	datad => \Contador0990|ALT_INV_dezena\(3),
	combout => \Decodificador_Dezena|digitDisp[4]~4_combout\);

-- Location: MLABCELL_X4_Y24_N3
\Decodificador_Dezena|digitDisp[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Dezena|digitDisp[5]~5_combout\ = ( \Contador0990|dezena\(0) & ( \Contador0990|dezena\(2) & ( (!\Contador0990|dezena\(1)) # (\Contador0990|dezena\(3)) ) ) ) # ( !\Contador0990|dezena\(0) & ( \Contador0990|dezena\(2) & ( 
-- (\Contador0990|dezena\(1)) # (\Contador0990|dezena\(3)) ) ) ) # ( \Contador0990|dezena\(0) & ( !\Contador0990|dezena\(2) & ( (\Contador0990|dezena\(3) & \Contador0990|dezena\(1)) ) ) ) # ( !\Contador0990|dezena\(0) & ( !\Contador0990|dezena\(2) & ( 
-- (\Contador0990|dezena\(3) & \Contador0990|dezena\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_dezena\(3),
	datac => \Contador0990|ALT_INV_dezena\(1),
	datae => \Contador0990|ALT_INV_dezena\(0),
	dataf => \Contador0990|ALT_INV_dezena\(2),
	combout => \Decodificador_Dezena|digitDisp[5]~5_combout\);

-- Location: MLABCELL_X4_Y24_N30
\Decodificador_Dezena|digitDisp[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador_Dezena|digitDisp[6]~6_combout\ = ( \Contador0990|dezena\(2) & ( ((!\Contador0990|dezena\(1) & !\Contador0990|dezena\(0))) # (\Contador0990|dezena\(3)) ) ) # ( !\Contador0990|dezena\(2) & ( (!\Contador0990|dezena\(3) & 
-- (!\Contador0990|dezena\(1) & \Contador0990|dezena\(0))) # (\Contador0990|dezena\(3) & (\Contador0990|dezena\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100111010101110101011101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador0990|ALT_INV_dezena\(3),
	datab => \Contador0990|ALT_INV_dezena\(1),
	datac => \Contador0990|ALT_INV_dezena\(0),
	dataf => \Contador0990|ALT_INV_dezena\(2),
	combout => \Decodificador_Dezena|digitDisp[6]~6_combout\);

-- Location: IOIBUF_X18_Y45_N35
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: MLABCELL_X42_Y9_N0
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


