-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "12/12/2017 17:12:15"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Main IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	BtnMin : IN std_logic;
	BtnSec : IN std_logic;
	BtnStart : IN std_logic;
	BtnClear : IN std_logic;
	BuzzerOverride : IN std_logic;
	Output1 : BUFFER std_logic_vector(6 DOWNTO 0);
	Output2 : BUFFER std_logic_vector(6 DOWNTO 0);
	Output3 : BUFFER std_logic_vector(6 DOWNTO 0);
	Output4 : BUFFER std_logic_vector(6 DOWNTO 0);
	CountValueMainOut : BUFFER std_logic_vector(12 DOWNTO 0);
	DebugLED : BUFFER std_logic_vector(2 DOWNTO 0);
	DebugLED_Control : BUFFER std_logic_vector(5 DOWNTO 0);
	Debug_clk_Deci : BUFFER std_logic;
	BuzzerOut : BUFFER std_logic
	);
END Main;

-- Design Ports Information
-- BuzzerOverride	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output1[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output1[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output1[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output1[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output1[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output1[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output1[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output2[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output2[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output2[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output2[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output2[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output2[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output2[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output3[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output3[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output3[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output3[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output3[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output3[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output3[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output4[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output4[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output4[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output4[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output4[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output4[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output4[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[9]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[10]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[11]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValueMainOut[12]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED_Control[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED_Control[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED_Control[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED_Control[3]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED_Control[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED_Control[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Debug_clk_Deci	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BuzzerOut	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnStart	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnSec	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnMin	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnClear	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_BtnMin : std_logic;
SIGNAL ww_BtnSec : std_logic;
SIGNAL ww_BtnStart : std_logic;
SIGNAL ww_BtnClear : std_logic;
SIGNAL ww_BuzzerOverride : std_logic;
SIGNAL ww_Output1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Output2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Output3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Output4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CountValueMainOut : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_DebugLED : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DebugLED_Control : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Debug_clk_Deci : std_logic;
SIGNAL ww_BuzzerOut : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SubMain_1|StateMachine_1|Selector47~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SubMain_1|StateMachine_1|WideOr7~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SubMain_1|StateMachine_1|WideOr13~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BuzzerOverride~input_o\ : std_logic;
SIGNAL \Output1[0]~output_o\ : std_logic;
SIGNAL \Output1[1]~output_o\ : std_logic;
SIGNAL \Output1[2]~output_o\ : std_logic;
SIGNAL \Output1[3]~output_o\ : std_logic;
SIGNAL \Output1[4]~output_o\ : std_logic;
SIGNAL \Output1[5]~output_o\ : std_logic;
SIGNAL \Output1[6]~output_o\ : std_logic;
SIGNAL \Output2[0]~output_o\ : std_logic;
SIGNAL \Output2[1]~output_o\ : std_logic;
SIGNAL \Output2[2]~output_o\ : std_logic;
SIGNAL \Output2[3]~output_o\ : std_logic;
SIGNAL \Output2[4]~output_o\ : std_logic;
SIGNAL \Output2[5]~output_o\ : std_logic;
SIGNAL \Output2[6]~output_o\ : std_logic;
SIGNAL \Output3[0]~output_o\ : std_logic;
SIGNAL \Output3[1]~output_o\ : std_logic;
SIGNAL \Output3[2]~output_o\ : std_logic;
SIGNAL \Output3[3]~output_o\ : std_logic;
SIGNAL \Output3[4]~output_o\ : std_logic;
SIGNAL \Output3[5]~output_o\ : std_logic;
SIGNAL \Output3[6]~output_o\ : std_logic;
SIGNAL \Output4[0]~output_o\ : std_logic;
SIGNAL \Output4[1]~output_o\ : std_logic;
SIGNAL \Output4[2]~output_o\ : std_logic;
SIGNAL \Output4[3]~output_o\ : std_logic;
SIGNAL \Output4[4]~output_o\ : std_logic;
SIGNAL \Output4[5]~output_o\ : std_logic;
SIGNAL \Output4[6]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[0]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[1]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[2]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[3]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[4]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[5]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[6]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[7]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[8]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[9]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[10]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[11]~output_o\ : std_logic;
SIGNAL \CountValueMainOut[12]~output_o\ : std_logic;
SIGNAL \DebugLED[0]~output_o\ : std_logic;
SIGNAL \DebugLED[1]~output_o\ : std_logic;
SIGNAL \DebugLED[2]~output_o\ : std_logic;
SIGNAL \DebugLED_Control[0]~output_o\ : std_logic;
SIGNAL \DebugLED_Control[1]~output_o\ : std_logic;
SIGNAL \DebugLED_Control[2]~output_o\ : std_logic;
SIGNAL \DebugLED_Control[3]~output_o\ : std_logic;
SIGNAL \DebugLED_Control[4]~output_o\ : std_logic;
SIGNAL \DebugLED_Control[5]~output_o\ : std_logic;
SIGNAL \Debug_clk_Deci~output_o\ : std_logic;
SIGNAL \BuzzerOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \BtnSec~input_o\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Sec|SavedValue~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_310_552~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_310~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_320_531~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_320~q\ : std_logic;
SIGNAL \BtnStart~input_o\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Start|SavedValue~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector41~5_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_190_636~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_190~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_200_615~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_200~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_290_594~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_290~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector36~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_300_573~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_300~feeder_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_300~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr21~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~28_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~1\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~27_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~3\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~4_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~21_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~5\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~6_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~26_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~7\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~8_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~29_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~9\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~10_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~12_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~11\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~13_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~25_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~14\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~15_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~17_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~16\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~18_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~20_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~19\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~22_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~24_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~1_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~3_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector35~0_combout\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Start|FallingOutput~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector45~0_combout\ : std_logic;
SIGNAL \BtnMin~input_o\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Min|SavedValue~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector47~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector47~1_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[0]~27_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[21]~70\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[22]~71_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan0~8_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan0~1_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[22]~72\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[23]~73_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[23]~74\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[24]~75_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[24]~76\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[25]~77_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[25]~78\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[26]~79_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan0~0_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan0~2_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan0~6_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan0~3_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan1~0_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan0~4_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan0~5_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan0~7_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan0~9_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[0]~28\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[1]~29_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[1]~30\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[2]~31_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[2]~32\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[3]~33_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[3]~34\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[4]~35_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[4]~36\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[5]~37_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[5]~38\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[6]~39_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[6]~40\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[7]~41_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[7]~42\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[8]~43_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[8]~44\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[9]~45_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[9]~46\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[10]~47_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[10]~48\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[11]~49_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[11]~50\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[12]~51_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[12]~52\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[13]~53_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[13]~54\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[14]~55_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[14]~56\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[15]~57_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[15]~58\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[16]~59_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[16]~60\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[17]~61_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[17]~62\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[18]~63_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[18]~64\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[19]~65_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[19]~66\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[20]~67_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[20]~68\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider[21]~69_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan1~1_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan1~2_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan1~3_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan1~4_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan1~5_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan1~6_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|LessThan1~7_combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clk_out_alt~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector47~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\ : std_logic;
SIGNAL \BtnClear~input_o\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Clear|SavedValue~feeder_combout\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Clear|SavedValue~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector48~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_reset_741~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_reset~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_reset~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector31~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_390_510~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_390~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector46~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_100_720~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_100~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector41~4_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector44~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_111_678~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_111~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_110_699~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_110~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_120_657~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_120~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr11~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr7~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr9~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr9~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr8~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr13~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr20~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|BuzzerEnable_o~combout\ : std_logic;
SIGNAL \SubMain_1|ClockDivider_1|clock_divider\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \SubMain_1|StateMachine_1|DebugLED_o\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SubMain_1|StateMachine_1|CountBlockControl_o\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \SubMain_1|StateMachine_1|BuzzerCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_BtnMin <= BtnMin;
ww_BtnSec <= BtnSec;
ww_BtnStart <= BtnStart;
ww_BtnClear <= BtnClear;
ww_BuzzerOverride <= BuzzerOverride;
Output1 <= ww_Output1;
Output2 <= ww_Output2;
Output3 <= ww_Output3;
Output4 <= ww_Output4;
CountValueMainOut <= ww_CountValueMainOut;
DebugLED <= ww_DebugLED;
DebugLED_Control <= ww_DebugLED_Control;
Debug_clk_Deci <= ww_Debug_clk_Deci;
BuzzerOut <= ww_BuzzerOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\SubMain_1|StateMachine_1|Selector47~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SubMain_1|StateMachine_1|Selector47~2_combout\);

\SubMain_1|StateMachine_1|WideOr7~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SubMain_1|StateMachine_1|WideOr7~0_combout\);

\SubMain_1|StateMachine_1|WideOr13~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SubMain_1|StateMachine_1|WideOr13~combout\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X89_Y0_N23
\Output1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output1[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\Output1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output1[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Output1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output1[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\Output1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output1[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\Output1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output1[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\Output1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output1[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Output1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output1[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\Output2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output2[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\Output2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output2[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\Output2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output2[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\Output2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output2[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Output2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output2[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\Output2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output2[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\Output2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output2[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\Output3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output3[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\Output3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output3[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\Output3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output3[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\Output3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output3[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Output3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output3[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Output3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output3[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Output3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output3[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\Output4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output4[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\Output4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output4[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\Output4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output4[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\Output4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output4[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\Output4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output4[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\Output4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output4[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\Output4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Output4[6]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\CountValueMainOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\CountValueMainOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\CountValueMainOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[2]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\CountValueMainOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\CountValueMainOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\CountValueMainOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\CountValueMainOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\CountValueMainOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[7]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\CountValueMainOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\CountValueMainOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[9]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\CountValueMainOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\CountValueMainOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[11]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\CountValueMainOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValueMainOut[12]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\DebugLED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|DebugLED_o\(0),
	devoe => ww_devoe,
	o => \DebugLED[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\DebugLED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|DebugLED_o\(1),
	devoe => ww_devoe,
	o => \DebugLED[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\DebugLED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|DebugLED_o\(2),
	devoe => ww_devoe,
	o => \DebugLED[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\DebugLED_Control[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountBlockControl_o\(0),
	devoe => ww_devoe,
	o => \DebugLED_Control[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\DebugLED_Control[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountBlockControl_o\(1),
	devoe => ww_devoe,
	o => \DebugLED_Control[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\DebugLED_Control[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountBlockControl_o\(2),
	devoe => ww_devoe,
	o => \DebugLED_Control[2]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\DebugLED_Control[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountBlockControl_o\(3),
	devoe => ww_devoe,
	o => \DebugLED_Control[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\DebugLED_Control[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountBlockControl_o\(4),
	devoe => ww_devoe,
	o => \DebugLED_Control[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\DebugLED_Control[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountBlockControl_o\(5),
	devoe => ww_devoe,
	o => \DebugLED_Control[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Debug_clk_Deci~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|ClockDivider_1|clk_out_alt~q\,
	devoe => ww_devoe,
	o => \Debug_clk_Deci~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\BuzzerOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|BuzzerEnable_o~combout\,
	devoe => ww_devoe,
	o => \BuzzerOut~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y42_N15
\BtnSec~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BtnSec,
	o => \BtnSec~input_o\);

-- Location: FF_X72_Y40_N17
\SubMain_1|FallingEdge_Sec|SavedValue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \BtnSec~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|FallingEdge_Sec|SavedValue~q\);

-- Location: LCCOMB_X68_Y40_N6
\SubMain_1|StateMachine_1|nxt_mode.st_310_552\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_310_552~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector35~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_310_552~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|nxt_mode.st_310_552~combout\,
	datac => \SubMain_1|StateMachine_1|Selector35~0_combout\,
	datad => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_310_552~combout\);

-- Location: IOIBUF_X115_Y17_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X68_Y40_N7
\SubMain_1|StateMachine_1|mode.st_310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_310_552~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_310~q\);

-- Location: LCCOMB_X70_Y40_N24
\SubMain_1|StateMachine_1|nxt_mode.st_320_531\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_320_531~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|mode.st_310~q\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_320_531~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_320_531~combout\,
	datac => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|mode.st_310~q\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_320_531~combout\);

-- Location: FF_X70_Y40_N25
\SubMain_1|StateMachine_1|mode.st_320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_320_531~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_320~q\);

-- Location: IOIBUF_X115_Y40_N8
\BtnStart~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BtnStart,
	o => \BtnStart~input_o\);

-- Location: FF_X72_Y40_N23
\SubMain_1|FallingEdge_Start|SavedValue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \BtnStart~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|FallingEdge_Start|SavedValue~q\);

-- Location: LCCOMB_X70_Y40_N22
\SubMain_1|StateMachine_1|Selector41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector41~5_combout\ = (!\BtnStart~input_o\ & (\SubMain_1|FallingEdge_Start|SavedValue~q\ & \SubMain_1|StateMachine_1|Selector41~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BtnStart~input_o\,
	datac => \SubMain_1|FallingEdge_Start|SavedValue~q\,
	datad => \SubMain_1|StateMachine_1|Selector41~4_combout\,
	combout => \SubMain_1|StateMachine_1|Selector41~5_combout\);

-- Location: LCCOMB_X70_Y40_N4
\SubMain_1|StateMachine_1|nxt_mode.st_190_636\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_190_636~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & (\SubMain_1|StateMachine_1|Selector41~5_combout\)) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|nxt_mode.st_190_636~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Selector41~5_combout\,
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_190_636~combout\,
	datac => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_190_636~combout\);

-- Location: FF_X70_Y40_N7
\SubMain_1|StateMachine_1|mode.st_190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_190_636~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_190~q\);

-- Location: LCCOMB_X70_Y40_N8
\SubMain_1|StateMachine_1|nxt_mode.st_200_615\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_200_615~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|mode.st_190~q\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_200_615~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|nxt_mode.st_200_615~combout\,
	datac => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|mode.st_190~q\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_200_615~combout\);

-- Location: FF_X70_Y40_N9
\SubMain_1|StateMachine_1|mode.st_200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_200_615~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_200~q\);

-- Location: LCCOMB_X72_Y40_N8
\SubMain_1|StateMachine_1|nxt_mode.st_290_594\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_290_594~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & (\SubMain_1|StateMachine_1|mode.st_200~q\)) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|nxt_mode.st_290_594~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_200~q\,
	datac => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|nxt_mode.st_290_594~combout\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_290_594~combout\);

-- Location: FF_X72_Y40_N9
\SubMain_1|StateMachine_1|mode.st_290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_290_594~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_290~q\);

-- Location: LCCOMB_X69_Y40_N6
\SubMain_1|StateMachine_1|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector36~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_320~q\) # (\SubMain_1|StateMachine_1|mode.st_290~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_320~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_290~q\,
	combout => \SubMain_1|StateMachine_1|Selector36~0_combout\);

-- Location: LCCOMB_X69_Y40_N18
\SubMain_1|StateMachine_1|nxt_mode.st_300_573\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_300_573~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & (\SubMain_1|StateMachine_1|Selector36~0_combout\)) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|nxt_mode.st_300_573~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Selector36~0_combout\,
	datac => \SubMain_1|StateMachine_1|nxt_mode.st_300_573~combout\,
	datad => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_300_573~combout\);

-- Location: LCCOMB_X69_Y40_N20
\SubMain_1|StateMachine_1|mode.st_300~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|mode.st_300~feeder_combout\ = \SubMain_1|StateMachine_1|nxt_mode.st_300_573~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SubMain_1|StateMachine_1|nxt_mode.st_300_573~combout\,
	combout => \SubMain_1|StateMachine_1|mode.st_300~feeder_combout\);

-- Location: FF_X69_Y40_N21
\SubMain_1|StateMachine_1|mode.st_300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|StateMachine_1|mode.st_300~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_300~q\);

-- Location: LCCOMB_X66_Y40_N24
\SubMain_1|StateMachine_1|WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr21~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_310~q\) # (\SubMain_1|StateMachine_1|mode.st_290~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_290~q\,
	combout => \SubMain_1|StateMachine_1|WideOr21~0_combout\);

-- Location: LCCOMB_X67_Y40_N2
\SubMain_1|StateMachine_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~0_combout\ = \SubMain_1|StateMachine_1|BuzzerCounter\(0) $ (VCC)
-- \SubMain_1|StateMachine_1|Add0~1\ = CARRY(\SubMain_1|StateMachine_1|BuzzerCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(0),
	datad => VCC,
	combout => \SubMain_1|StateMachine_1|Add0~0_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~1\);

-- Location: LCCOMB_X67_Y40_N28
\SubMain_1|StateMachine_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~28_combout\ = (\SubMain_1|StateMachine_1|Add0~0_combout\ & \SubMain_1|StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|Add0~0_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_310~q\,
	combout => \SubMain_1|StateMachine_1|Add0~28_combout\);

-- Location: LCCOMB_X67_Y40_N22
\SubMain_1|StateMachine_1|BuzzerCounter[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerCounter\(0) = (\SubMain_1|StateMachine_1|WideOr21~0_combout\ & ((\SubMain_1|StateMachine_1|Add0~28_combout\))) # (!\SubMain_1|StateMachine_1|WideOr21~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|WideOr21~0_combout\,
	datac => \SubMain_1|StateMachine_1|BuzzerCounter\(0),
	datad => \SubMain_1|StateMachine_1|Add0~28_combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerCounter\(0));

-- Location: LCCOMB_X67_Y40_N4
\SubMain_1|StateMachine_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~2_combout\ = (\SubMain_1|StateMachine_1|BuzzerCounter\(1) & (\SubMain_1|StateMachine_1|Add0~1\ & VCC)) # (!\SubMain_1|StateMachine_1|BuzzerCounter\(1) & (!\SubMain_1|StateMachine_1|Add0~1\))
-- \SubMain_1|StateMachine_1|Add0~3\ = CARRY((!\SubMain_1|StateMachine_1|BuzzerCounter\(1) & !\SubMain_1|StateMachine_1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(1),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~1\,
	combout => \SubMain_1|StateMachine_1|Add0~2_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~3\);

-- Location: LCCOMB_X69_Y40_N0
\SubMain_1|StateMachine_1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~27_combout\ = (\SubMain_1|StateMachine_1|Add0~2_combout\) # (!\SubMain_1|StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|Add0~2_combout\,
	datac => \SubMain_1|StateMachine_1|mode.st_310~q\,
	combout => \SubMain_1|StateMachine_1|Add0~27_combout\);

-- Location: LCCOMB_X69_Y40_N26
\SubMain_1|StateMachine_1|BuzzerCounter[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerCounter\(1) = (\SubMain_1|StateMachine_1|WideOr21~0_combout\ & ((\SubMain_1|StateMachine_1|Add0~27_combout\))) # (!\SubMain_1|StateMachine_1|WideOr21~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(1),
	datac => \SubMain_1|StateMachine_1|WideOr21~0_combout\,
	datad => \SubMain_1|StateMachine_1|Add0~27_combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerCounter\(1));

-- Location: LCCOMB_X67_Y40_N6
\SubMain_1|StateMachine_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~4_combout\ = (\SubMain_1|StateMachine_1|BuzzerCounter\(2) & ((GND) # (!\SubMain_1|StateMachine_1|Add0~3\))) # (!\SubMain_1|StateMachine_1|BuzzerCounter\(2) & (\SubMain_1|StateMachine_1|Add0~3\ $ (GND)))
-- \SubMain_1|StateMachine_1|Add0~5\ = CARRY((\SubMain_1|StateMachine_1|BuzzerCounter\(2)) # (!\SubMain_1|StateMachine_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(2),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~3\,
	combout => \SubMain_1|StateMachine_1|Add0~4_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~5\);

-- Location: LCCOMB_X68_Y40_N10
\SubMain_1|StateMachine_1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~21_combout\ = (\SubMain_1|StateMachine_1|mode.st_310~q\ & \SubMain_1|StateMachine_1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datad => \SubMain_1|StateMachine_1|Add0~4_combout\,
	combout => \SubMain_1|StateMachine_1|Add0~21_combout\);

-- Location: LCCOMB_X68_Y40_N2
\SubMain_1|StateMachine_1|BuzzerCounter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerCounter\(2) = (\SubMain_1|StateMachine_1|WideOr21~0_combout\ & ((\SubMain_1|StateMachine_1|Add0~21_combout\))) # (!\SubMain_1|StateMachine_1|WideOr21~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|WideOr21~0_combout\,
	datac => \SubMain_1|StateMachine_1|BuzzerCounter\(2),
	datad => \SubMain_1|StateMachine_1|Add0~21_combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerCounter\(2));

-- Location: LCCOMB_X67_Y40_N8
\SubMain_1|StateMachine_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~6_combout\ = (\SubMain_1|StateMachine_1|BuzzerCounter\(3) & (\SubMain_1|StateMachine_1|Add0~5\ & VCC)) # (!\SubMain_1|StateMachine_1|BuzzerCounter\(3) & (!\SubMain_1|StateMachine_1|Add0~5\))
-- \SubMain_1|StateMachine_1|Add0~7\ = CARRY((!\SubMain_1|StateMachine_1|BuzzerCounter\(3) & !\SubMain_1|StateMachine_1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(3),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~5\,
	combout => \SubMain_1|StateMachine_1|Add0~6_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~7\);

-- Location: LCCOMB_X67_Y40_N24
\SubMain_1|StateMachine_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~26_combout\ = (\SubMain_1|StateMachine_1|Add0~6_combout\ & \SubMain_1|StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|Add0~6_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_310~q\,
	combout => \SubMain_1|StateMachine_1|Add0~26_combout\);

-- Location: LCCOMB_X67_Y40_N26
\SubMain_1|StateMachine_1|BuzzerCounter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerCounter\(3) = (\SubMain_1|StateMachine_1|WideOr21~0_combout\ & ((\SubMain_1|StateMachine_1|Add0~26_combout\))) # (!\SubMain_1|StateMachine_1|WideOr21~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|WideOr21~0_combout\,
	datac => \SubMain_1|StateMachine_1|BuzzerCounter\(3),
	datad => \SubMain_1|StateMachine_1|Add0~26_combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerCounter\(3));

-- Location: LCCOMB_X67_Y40_N10
\SubMain_1|StateMachine_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~8_combout\ = (\SubMain_1|StateMachine_1|BuzzerCounter\(4) & ((GND) # (!\SubMain_1|StateMachine_1|Add0~7\))) # (!\SubMain_1|StateMachine_1|BuzzerCounter\(4) & (\SubMain_1|StateMachine_1|Add0~7\ $ (GND)))
-- \SubMain_1|StateMachine_1|Add0~9\ = CARRY((\SubMain_1|StateMachine_1|BuzzerCounter\(4)) # (!\SubMain_1|StateMachine_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(4),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~7\,
	combout => \SubMain_1|StateMachine_1|Add0~8_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~9\);

-- Location: LCCOMB_X69_Y40_N16
\SubMain_1|StateMachine_1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~29_combout\ = (\SubMain_1|StateMachine_1|Add0~8_combout\) # (!\SubMain_1|StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datad => \SubMain_1|StateMachine_1|Add0~8_combout\,
	combout => \SubMain_1|StateMachine_1|Add0~29_combout\);

-- Location: LCCOMB_X69_Y40_N24
\SubMain_1|StateMachine_1|BuzzerCounter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerCounter\(4) = (\SubMain_1|StateMachine_1|WideOr21~0_combout\ & ((\SubMain_1|StateMachine_1|Add0~29_combout\))) # (!\SubMain_1|StateMachine_1|WideOr21~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|WideOr21~0_combout\,
	datab => \SubMain_1|StateMachine_1|BuzzerCounter\(4),
	datad => \SubMain_1|StateMachine_1|Add0~29_combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerCounter\(4));

-- Location: LCCOMB_X67_Y40_N12
\SubMain_1|StateMachine_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~10_combout\ = (\SubMain_1|StateMachine_1|BuzzerCounter\(5) & (\SubMain_1|StateMachine_1|Add0~9\ & VCC)) # (!\SubMain_1|StateMachine_1|BuzzerCounter\(5) & (!\SubMain_1|StateMachine_1|Add0~9\))
-- \SubMain_1|StateMachine_1|Add0~11\ = CARRY((!\SubMain_1|StateMachine_1|BuzzerCounter\(5) & !\SubMain_1|StateMachine_1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(5),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~9\,
	combout => \SubMain_1|StateMachine_1|Add0~10_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~11\);

-- Location: LCCOMB_X68_Y40_N26
\SubMain_1|StateMachine_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~12_combout\ = (\SubMain_1|StateMachine_1|Add0~10_combout\) # (!\SubMain_1|StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datad => \SubMain_1|StateMachine_1|Add0~10_combout\,
	combout => \SubMain_1|StateMachine_1|Add0~12_combout\);

-- Location: LCCOMB_X68_Y40_N30
\SubMain_1|StateMachine_1|BuzzerCounter[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerCounter\(5) = (\SubMain_1|StateMachine_1|WideOr21~0_combout\ & ((\SubMain_1|StateMachine_1|Add0~12_combout\))) # (!\SubMain_1|StateMachine_1|WideOr21~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|WideOr21~0_combout\,
	datac => \SubMain_1|StateMachine_1|BuzzerCounter\(5),
	datad => \SubMain_1|StateMachine_1|Add0~12_combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerCounter\(5));

-- Location: LCCOMB_X67_Y40_N14
\SubMain_1|StateMachine_1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~13_combout\ = (\SubMain_1|StateMachine_1|BuzzerCounter\(6) & ((GND) # (!\SubMain_1|StateMachine_1|Add0~11\))) # (!\SubMain_1|StateMachine_1|BuzzerCounter\(6) & (\SubMain_1|StateMachine_1|Add0~11\ $ (GND)))
-- \SubMain_1|StateMachine_1|Add0~14\ = CARRY((\SubMain_1|StateMachine_1|BuzzerCounter\(6)) # (!\SubMain_1|StateMachine_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|BuzzerCounter\(6),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~11\,
	combout => \SubMain_1|StateMachine_1|Add0~13_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~14\);

-- Location: LCCOMB_X68_Y40_N28
\SubMain_1|StateMachine_1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~25_combout\ = (\SubMain_1|StateMachine_1|mode.st_310~q\ & \SubMain_1|StateMachine_1|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datad => \SubMain_1|StateMachine_1|Add0~13_combout\,
	combout => \SubMain_1|StateMachine_1|Add0~25_combout\);

-- Location: LCCOMB_X68_Y40_N12
\SubMain_1|StateMachine_1|BuzzerCounter[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerCounter\(6) = (\SubMain_1|StateMachine_1|WideOr21~0_combout\ & ((\SubMain_1|StateMachine_1|Add0~25_combout\))) # (!\SubMain_1|StateMachine_1|WideOr21~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(6),
	datab => \SubMain_1|StateMachine_1|WideOr21~0_combout\,
	datad => \SubMain_1|StateMachine_1|Add0~25_combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerCounter\(6));

-- Location: LCCOMB_X67_Y40_N16
\SubMain_1|StateMachine_1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~15_combout\ = (\SubMain_1|StateMachine_1|BuzzerCounter\(7) & (\SubMain_1|StateMachine_1|Add0~14\ & VCC)) # (!\SubMain_1|StateMachine_1|BuzzerCounter\(7) & (!\SubMain_1|StateMachine_1|Add0~14\))
-- \SubMain_1|StateMachine_1|Add0~16\ = CARRY((!\SubMain_1|StateMachine_1|BuzzerCounter\(7) & !\SubMain_1|StateMachine_1|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|BuzzerCounter\(7),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~14\,
	combout => \SubMain_1|StateMachine_1|Add0~15_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~16\);

-- Location: LCCOMB_X68_Y40_N20
\SubMain_1|StateMachine_1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~17_combout\ = (\SubMain_1|StateMachine_1|mode.st_310~q\ & \SubMain_1|StateMachine_1|Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datac => \SubMain_1|StateMachine_1|Add0~15_combout\,
	combout => \SubMain_1|StateMachine_1|Add0~17_combout\);

-- Location: LCCOMB_X68_Y40_N0
\SubMain_1|StateMachine_1|BuzzerCounter[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerCounter\(7) = (\SubMain_1|StateMachine_1|WideOr21~0_combout\ & ((\SubMain_1|StateMachine_1|Add0~17_combout\))) # (!\SubMain_1|StateMachine_1|WideOr21~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|BuzzerCounter\(7),
	datac => \SubMain_1|StateMachine_1|WideOr21~0_combout\,
	datad => \SubMain_1|StateMachine_1|Add0~17_combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerCounter\(7));

-- Location: LCCOMB_X67_Y40_N18
\SubMain_1|StateMachine_1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~18_combout\ = (\SubMain_1|StateMachine_1|BuzzerCounter\(8) & ((GND) # (!\SubMain_1|StateMachine_1|Add0~16\))) # (!\SubMain_1|StateMachine_1|BuzzerCounter\(8) & (\SubMain_1|StateMachine_1|Add0~16\ $ (GND)))
-- \SubMain_1|StateMachine_1|Add0~19\ = CARRY((\SubMain_1|StateMachine_1|BuzzerCounter\(8)) # (!\SubMain_1|StateMachine_1|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(8),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~16\,
	combout => \SubMain_1|StateMachine_1|Add0~18_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~19\);

-- Location: LCCOMB_X67_Y40_N0
\SubMain_1|StateMachine_1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~20_combout\ = (\SubMain_1|StateMachine_1|mode.st_310~q\ & \SubMain_1|StateMachine_1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datad => \SubMain_1|StateMachine_1|Add0~18_combout\,
	combout => \SubMain_1|StateMachine_1|Add0~20_combout\);

-- Location: LCCOMB_X67_Y40_N30
\SubMain_1|StateMachine_1|BuzzerCounter[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerCounter\(8) = (\SubMain_1|StateMachine_1|WideOr21~0_combout\ & ((\SubMain_1|StateMachine_1|Add0~20_combout\))) # (!\SubMain_1|StateMachine_1|WideOr21~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|WideOr21~0_combout\,
	datac => \SubMain_1|StateMachine_1|BuzzerCounter\(8),
	datad => \SubMain_1|StateMachine_1|Add0~20_combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerCounter\(8));

-- Location: LCCOMB_X67_Y40_N20
\SubMain_1|StateMachine_1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~22_combout\ = \SubMain_1|StateMachine_1|Add0~19\ $ (!\SubMain_1|StateMachine_1|BuzzerCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SubMain_1|StateMachine_1|BuzzerCounter\(9),
	cin => \SubMain_1|StateMachine_1|Add0~19\,
	combout => \SubMain_1|StateMachine_1|Add0~22_combout\);

-- Location: LCCOMB_X68_Y40_N24
\SubMain_1|StateMachine_1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~24_combout\ = (\SubMain_1|StateMachine_1|mode.st_310~q\ & \SubMain_1|StateMachine_1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datad => \SubMain_1|StateMachine_1|Add0~22_combout\,
	combout => \SubMain_1|StateMachine_1|Add0~24_combout\);

-- Location: LCCOMB_X68_Y40_N16
\SubMain_1|StateMachine_1|BuzzerCounter[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerCounter\(9) = (\SubMain_1|StateMachine_1|WideOr21~0_combout\ & ((\SubMain_1|StateMachine_1|Add0~24_combout\))) # (!\SubMain_1|StateMachine_1|WideOr21~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|BuzzerCounter\(9),
	datac => \SubMain_1|StateMachine_1|WideOr21~0_combout\,
	datad => \SubMain_1|StateMachine_1|Add0~24_combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerCounter\(9));

-- Location: LCCOMB_X68_Y40_N14
\SubMain_1|StateMachine_1|counter_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~1_combout\ = (!\SubMain_1|StateMachine_1|BuzzerCounter\(3) & (!\SubMain_1|StateMachine_1|BuzzerCounter\(1) & (!\SubMain_1|StateMachine_1|BuzzerCounter\(4) & !\SubMain_1|StateMachine_1|BuzzerCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(3),
	datab => \SubMain_1|StateMachine_1|BuzzerCounter\(1),
	datac => \SubMain_1|StateMachine_1|BuzzerCounter\(4),
	datad => \SubMain_1|StateMachine_1|BuzzerCounter\(0),
	combout => \SubMain_1|StateMachine_1|counter_proc~1_combout\);

-- Location: LCCOMB_X68_Y40_N8
\SubMain_1|StateMachine_1|counter_proc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~2_combout\ = (!\SubMain_1|StateMachine_1|BuzzerCounter\(9) & (\SubMain_1|StateMachine_1|counter_proc~1_combout\ & !\SubMain_1|StateMachine_1|BuzzerCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|BuzzerCounter\(9),
	datac => \SubMain_1|StateMachine_1|counter_proc~1_combout\,
	datad => \SubMain_1|StateMachine_1|BuzzerCounter\(6),
	combout => \SubMain_1|StateMachine_1|counter_proc~2_combout\);

-- Location: LCCOMB_X68_Y40_N4
\SubMain_1|StateMachine_1|counter_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~0_combout\ = (!\SubMain_1|StateMachine_1|BuzzerCounter\(5) & (!\SubMain_1|StateMachine_1|BuzzerCounter\(7) & (!\SubMain_1|StateMachine_1|BuzzerCounter\(2) & !\SubMain_1|StateMachine_1|BuzzerCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|BuzzerCounter\(5),
	datab => \SubMain_1|StateMachine_1|BuzzerCounter\(7),
	datac => \SubMain_1|StateMachine_1|BuzzerCounter\(2),
	datad => \SubMain_1|StateMachine_1|BuzzerCounter\(8),
	combout => \SubMain_1|StateMachine_1|counter_proc~0_combout\);

-- Location: LCCOMB_X68_Y40_N18
\SubMain_1|StateMachine_1|counter_proc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~3_combout\ = (\BtnStart~input_o\ & (\SubMain_1|StateMachine_1|counter_proc~2_combout\ & (\SubMain_1|StateMachine_1|counter_proc~0_combout\))) # (!\BtnStart~input_o\ & ((\SubMain_1|FallingEdge_Start|SavedValue~q\) # 
-- ((\SubMain_1|StateMachine_1|counter_proc~2_combout\ & \SubMain_1|StateMachine_1|counter_proc~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BtnStart~input_o\,
	datab => \SubMain_1|StateMachine_1|counter_proc~2_combout\,
	datac => \SubMain_1|StateMachine_1|counter_proc~0_combout\,
	datad => \SubMain_1|FallingEdge_Start|SavedValue~q\,
	combout => \SubMain_1|StateMachine_1|counter_proc~3_combout\);

-- Location: LCCOMB_X68_Y40_N22
\SubMain_1|StateMachine_1|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector35~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_300~q\ & !\SubMain_1|StateMachine_1|counter_proc~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|mode.st_300~q\,
	datad => \SubMain_1|StateMachine_1|counter_proc~3_combout\,
	combout => \SubMain_1|StateMachine_1|Selector35~0_combout\);

-- Location: LCCOMB_X72_Y40_N2
\SubMain_1|FallingEdge_Start|FallingOutput\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|FallingEdge_Start|FallingOutput~combout\ = (!\BtnStart~input_o\ & \SubMain_1|FallingEdge_Start|SavedValue~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BtnStart~input_o\,
	datac => \SubMain_1|FallingEdge_Start|SavedValue~q\,
	combout => \SubMain_1|FallingEdge_Start|FallingOutput~combout\);

-- Location: LCCOMB_X72_Y40_N26
\SubMain_1|StateMachine_1|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector45~0_combout\ = (!\SubMain_1|FallingEdge_Start|FallingOutput~combout\ & (\SubMain_1|StateMachine_1|Selector41~4_combout\ & ((\BtnSec~input_o\) # (!\SubMain_1|FallingEdge_Sec|SavedValue~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BtnSec~input_o\,
	datab => \SubMain_1|FallingEdge_Start|FallingOutput~combout\,
	datac => \SubMain_1|StateMachine_1|Selector41~4_combout\,
	datad => \SubMain_1|FallingEdge_Sec|SavedValue~q\,
	combout => \SubMain_1|StateMachine_1|Selector45~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\BtnMin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BtnMin,
	o => \BtnMin~input_o\);

-- Location: FF_X72_Y40_N29
\SubMain_1|FallingEdge_Min|SavedValue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \BtnMin~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|FallingEdge_Min|SavedValue~q\);

-- Location: LCCOMB_X72_Y40_N28
\SubMain_1|StateMachine_1|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector47~0_combout\ = (\BtnMin~input_o\ & (\SubMain_1|StateMachine_1|Selector45~0_combout\)) # (!\BtnMin~input_o\ & ((\SubMain_1|FallingEdge_Min|SavedValue~q\ & ((\SubMain_1|StateMachine_1|mode.st_120~q\))) # 
-- (!\SubMain_1|FallingEdge_Min|SavedValue~q\ & (\SubMain_1|StateMachine_1|Selector45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Selector45~0_combout\,
	datab => \BtnMin~input_o\,
	datac => \SubMain_1|FallingEdge_Min|SavedValue~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_120~q\,
	combout => \SubMain_1|StateMachine_1|Selector47~0_combout\);

-- Location: LCCOMB_X72_Y40_N16
\SubMain_1|StateMachine_1|Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector47~1_combout\ = (\SubMain_1|StateMachine_1|Selector47~0_combout\) # ((!\BtnSec~input_o\ & (\SubMain_1|FallingEdge_Sec|SavedValue~q\ & \SubMain_1|StateMachine_1|mode.st_120~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BtnSec~input_o\,
	datab => \SubMain_1|StateMachine_1|Selector47~0_combout\,
	datac => \SubMain_1|FallingEdge_Sec|SavedValue~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_120~q\,
	combout => \SubMain_1|StateMachine_1|Selector47~1_combout\);

-- Location: LCCOMB_X73_Y39_N6
\SubMain_1|ClockDivider_1|clock_divider[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[0]~27_combout\ = \SubMain_1|ClockDivider_1|clock_divider\(0) $ (VCC)
-- \SubMain_1|ClockDivider_1|clock_divider[0]~28\ = CARRY(\SubMain_1|ClockDivider_1|clock_divider\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(0),
	datad => VCC,
	combout => \SubMain_1|ClockDivider_1|clock_divider[0]~27_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[0]~28\);

-- Location: LCCOMB_X73_Y38_N16
\SubMain_1|ClockDivider_1|clock_divider[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[21]~69_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(21) & (!\SubMain_1|ClockDivider_1|clock_divider[20]~68\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(21) & 
-- ((\SubMain_1|ClockDivider_1|clock_divider[20]~68\) # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[21]~70\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[20]~68\) # (!\SubMain_1|ClockDivider_1|clock_divider\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(21),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[20]~68\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[21]~69_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[21]~70\);

-- Location: LCCOMB_X73_Y38_N18
\SubMain_1|ClockDivider_1|clock_divider[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[22]~71_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(22) & (\SubMain_1|ClockDivider_1|clock_divider[21]~70\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(22) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[21]~70\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[22]~72\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(22) & !\SubMain_1|ClockDivider_1|clock_divider[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(22),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[21]~70\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[22]~71_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[22]~72\);

-- Location: FF_X73_Y38_N19
\SubMain_1|ClockDivider_1|clock_divider[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[22]~71_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(22));

-- Location: LCCOMB_X72_Y39_N10
\SubMain_1|ClockDivider_1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan0~8_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(18) & (\SubMain_1|ClockDivider_1|clock_divider\(19) & \SubMain_1|ClockDivider_1|clock_divider\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(18),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(19),
	datad => \SubMain_1|ClockDivider_1|clock_divider\(22),
	combout => \SubMain_1|ClockDivider_1|LessThan0~8_combout\);

-- Location: LCCOMB_X72_Y39_N4
\SubMain_1|ClockDivider_1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan0~1_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(22) & ((\SubMain_1|ClockDivider_1|clock_divider\(20)) # (\SubMain_1|ClockDivider_1|clock_divider\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(22),
	datab => \SubMain_1|ClockDivider_1|clock_divider\(20),
	datad => \SubMain_1|ClockDivider_1|clock_divider\(21),
	combout => \SubMain_1|ClockDivider_1|LessThan0~1_combout\);

-- Location: LCCOMB_X73_Y38_N20
\SubMain_1|ClockDivider_1|clock_divider[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[23]~73_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(23) & (!\SubMain_1|ClockDivider_1|clock_divider[22]~72\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(23) & 
-- ((\SubMain_1|ClockDivider_1|clock_divider[22]~72\) # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[23]~74\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[22]~72\) # (!\SubMain_1|ClockDivider_1|clock_divider\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(23),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[22]~72\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[23]~73_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[23]~74\);

-- Location: FF_X73_Y38_N21
\SubMain_1|ClockDivider_1|clock_divider[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[23]~73_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(23));

-- Location: LCCOMB_X73_Y38_N22
\SubMain_1|ClockDivider_1|clock_divider[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[24]~75_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(24) & (\SubMain_1|ClockDivider_1|clock_divider[23]~74\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(24) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[23]~74\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[24]~76\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(24) & !\SubMain_1|ClockDivider_1|clock_divider[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(24),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[23]~74\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[24]~75_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[24]~76\);

-- Location: FF_X73_Y38_N23
\SubMain_1|ClockDivider_1|clock_divider[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[24]~75_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(24));

-- Location: LCCOMB_X73_Y38_N24
\SubMain_1|ClockDivider_1|clock_divider[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[25]~77_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(25) & (!\SubMain_1|ClockDivider_1|clock_divider[24]~76\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(25) & 
-- ((\SubMain_1|ClockDivider_1|clock_divider[24]~76\) # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[25]~78\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[24]~76\) # (!\SubMain_1|ClockDivider_1|clock_divider\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(25),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[24]~76\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[25]~77_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[25]~78\);

-- Location: FF_X73_Y38_N25
\SubMain_1|ClockDivider_1|clock_divider[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[25]~77_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(25));

-- Location: LCCOMB_X73_Y38_N26
\SubMain_1|ClockDivider_1|clock_divider[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[26]~79_combout\ = \SubMain_1|ClockDivider_1|clock_divider\(26) $ (!\SubMain_1|ClockDivider_1|clock_divider[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(26),
	cin => \SubMain_1|ClockDivider_1|clock_divider[25]~78\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[26]~79_combout\);

-- Location: FF_X73_Y38_N27
\SubMain_1|ClockDivider_1|clock_divider[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[26]~79_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(26));

-- Location: LCCOMB_X73_Y38_N28
\SubMain_1|ClockDivider_1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan0~0_combout\ = (!\SubMain_1|ClockDivider_1|clock_divider\(26) & (!\SubMain_1|ClockDivider_1|clock_divider\(25) & (!\SubMain_1|ClockDivider_1|clock_divider\(24) & !\SubMain_1|ClockDivider_1|clock_divider\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(26),
	datab => \SubMain_1|ClockDivider_1|clock_divider\(25),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(24),
	datad => \SubMain_1|ClockDivider_1|clock_divider\(23),
	combout => \SubMain_1|ClockDivider_1|LessThan0~0_combout\);

-- Location: LCCOMB_X72_Y39_N14
\SubMain_1|ClockDivider_1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan0~2_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(17)) # ((\SubMain_1|ClockDivider_1|clock_divider\(16)) # (\SubMain_1|ClockDivider_1|clock_divider\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(17),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(16),
	datad => \SubMain_1|ClockDivider_1|clock_divider\(15),
	combout => \SubMain_1|ClockDivider_1|LessThan0~2_combout\);

-- Location: LCCOMB_X72_Y39_N8
\SubMain_1|ClockDivider_1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan0~6_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(13)) # ((\SubMain_1|ClockDivider_1|clock_divider\(12)) # ((\SubMain_1|ClockDivider_1|clock_divider\(11) & \SubMain_1|ClockDivider_1|clock_divider\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(13),
	datab => \SubMain_1|ClockDivider_1|clock_divider\(11),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(12),
	datad => \SubMain_1|ClockDivider_1|clock_divider\(10),
	combout => \SubMain_1|ClockDivider_1|LessThan0~6_combout\);

-- Location: LCCOMB_X72_Y39_N22
\SubMain_1|ClockDivider_1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan0~3_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(8) & (\SubMain_1|ClockDivider_1|clock_divider\(9) & \SubMain_1|ClockDivider_1|clock_divider\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(8),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(9),
	datad => \SubMain_1|ClockDivider_1|clock_divider\(11),
	combout => \SubMain_1|ClockDivider_1|LessThan0~3_combout\);

-- Location: LCCOMB_X73_Y39_N0
\SubMain_1|ClockDivider_1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan1~0_combout\ = (!\SubMain_1|ClockDivider_1|clock_divider\(3) & (!\SubMain_1|ClockDivider_1|clock_divider\(1) & (!\SubMain_1|ClockDivider_1|clock_divider\(2) & !\SubMain_1|ClockDivider_1|clock_divider\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(3),
	datab => \SubMain_1|ClockDivider_1|clock_divider\(1),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(2),
	datad => \SubMain_1|ClockDivider_1|clock_divider\(0),
	combout => \SubMain_1|ClockDivider_1|LessThan1~0_combout\);

-- Location: LCCOMB_X72_Y39_N12
\SubMain_1|ClockDivider_1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan0~4_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(4)) # ((\SubMain_1|ClockDivider_1|clock_divider\(5)) # (!\SubMain_1|ClockDivider_1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(4),
	datac => \SubMain_1|ClockDivider_1|LessThan1~0_combout\,
	datad => \SubMain_1|ClockDivider_1|clock_divider\(5),
	combout => \SubMain_1|ClockDivider_1|LessThan0~4_combout\);

-- Location: LCCOMB_X72_Y39_N2
\SubMain_1|ClockDivider_1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan0~5_combout\ = (\SubMain_1|ClockDivider_1|LessThan0~3_combout\ & ((\SubMain_1|ClockDivider_1|clock_divider\(7)) # ((\SubMain_1|ClockDivider_1|clock_divider\(6) & \SubMain_1|ClockDivider_1|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(7),
	datab => \SubMain_1|ClockDivider_1|clock_divider\(6),
	datac => \SubMain_1|ClockDivider_1|LessThan0~3_combout\,
	datad => \SubMain_1|ClockDivider_1|LessThan0~4_combout\,
	combout => \SubMain_1|ClockDivider_1|LessThan0~5_combout\);

-- Location: LCCOMB_X72_Y39_N28
\SubMain_1|ClockDivider_1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan0~7_combout\ = (\SubMain_1|ClockDivider_1|LessThan0~2_combout\) # ((\SubMain_1|ClockDivider_1|clock_divider\(14) & ((\SubMain_1|ClockDivider_1|LessThan0~6_combout\) # (\SubMain_1|ClockDivider_1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(14),
	datab => \SubMain_1|ClockDivider_1|LessThan0~2_combout\,
	datac => \SubMain_1|ClockDivider_1|LessThan0~6_combout\,
	datad => \SubMain_1|ClockDivider_1|LessThan0~5_combout\,
	combout => \SubMain_1|ClockDivider_1|LessThan0~7_combout\);

-- Location: LCCOMB_X72_Y39_N30
\SubMain_1|ClockDivider_1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan0~9_combout\ = (\SubMain_1|ClockDivider_1|LessThan0~1_combout\) # (((\SubMain_1|ClockDivider_1|LessThan0~8_combout\ & \SubMain_1|ClockDivider_1|LessThan0~7_combout\)) # (!\SubMain_1|ClockDivider_1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|LessThan0~8_combout\,
	datab => \SubMain_1|ClockDivider_1|LessThan0~1_combout\,
	datac => \SubMain_1|ClockDivider_1|LessThan0~0_combout\,
	datad => \SubMain_1|ClockDivider_1|LessThan0~7_combout\,
	combout => \SubMain_1|ClockDivider_1|LessThan0~9_combout\);

-- Location: FF_X73_Y39_N7
\SubMain_1|ClockDivider_1|clock_divider[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[0]~27_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(0));

-- Location: LCCOMB_X73_Y39_N8
\SubMain_1|ClockDivider_1|clock_divider[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[1]~29_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(1) & (!\SubMain_1|ClockDivider_1|clock_divider[0]~28\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(1) & ((\SubMain_1|ClockDivider_1|clock_divider[0]~28\) 
-- # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[1]~30\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[0]~28\) # (!\SubMain_1|ClockDivider_1|clock_divider\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(1),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[0]~28\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[1]~29_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[1]~30\);

-- Location: FF_X73_Y39_N9
\SubMain_1|ClockDivider_1|clock_divider[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[1]~29_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(1));

-- Location: LCCOMB_X73_Y39_N10
\SubMain_1|ClockDivider_1|clock_divider[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[2]~31_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(2) & (\SubMain_1|ClockDivider_1|clock_divider[1]~30\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(2) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[1]~30\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[2]~32\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(2) & !\SubMain_1|ClockDivider_1|clock_divider[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(2),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[1]~30\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[2]~31_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[2]~32\);

-- Location: FF_X73_Y39_N11
\SubMain_1|ClockDivider_1|clock_divider[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[2]~31_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(2));

-- Location: LCCOMB_X73_Y39_N12
\SubMain_1|ClockDivider_1|clock_divider[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[3]~33_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(3) & (!\SubMain_1|ClockDivider_1|clock_divider[2]~32\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(3) & ((\SubMain_1|ClockDivider_1|clock_divider[2]~32\) 
-- # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[3]~34\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[2]~32\) # (!\SubMain_1|ClockDivider_1|clock_divider\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(3),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[2]~32\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[3]~33_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[3]~34\);

-- Location: FF_X73_Y39_N13
\SubMain_1|ClockDivider_1|clock_divider[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[3]~33_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(3));

-- Location: LCCOMB_X73_Y39_N14
\SubMain_1|ClockDivider_1|clock_divider[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[4]~35_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(4) & (\SubMain_1|ClockDivider_1|clock_divider[3]~34\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(4) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[3]~34\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[4]~36\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(4) & !\SubMain_1|ClockDivider_1|clock_divider[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(4),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[3]~34\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[4]~35_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[4]~36\);

-- Location: FF_X73_Y39_N15
\SubMain_1|ClockDivider_1|clock_divider[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[4]~35_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(4));

-- Location: LCCOMB_X73_Y39_N16
\SubMain_1|ClockDivider_1|clock_divider[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[5]~37_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(5) & (!\SubMain_1|ClockDivider_1|clock_divider[4]~36\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(5) & ((\SubMain_1|ClockDivider_1|clock_divider[4]~36\) 
-- # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[5]~38\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[4]~36\) # (!\SubMain_1|ClockDivider_1|clock_divider\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(5),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[4]~36\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[5]~37_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[5]~38\);

-- Location: FF_X73_Y39_N17
\SubMain_1|ClockDivider_1|clock_divider[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[5]~37_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(5));

-- Location: LCCOMB_X73_Y39_N18
\SubMain_1|ClockDivider_1|clock_divider[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[6]~39_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(6) & (\SubMain_1|ClockDivider_1|clock_divider[5]~38\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(6) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[5]~38\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[6]~40\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(6) & !\SubMain_1|ClockDivider_1|clock_divider[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(6),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[5]~38\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[6]~39_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[6]~40\);

-- Location: FF_X73_Y39_N19
\SubMain_1|ClockDivider_1|clock_divider[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[6]~39_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(6));

-- Location: LCCOMB_X73_Y39_N20
\SubMain_1|ClockDivider_1|clock_divider[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[7]~41_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(7) & (!\SubMain_1|ClockDivider_1|clock_divider[6]~40\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(7) & ((\SubMain_1|ClockDivider_1|clock_divider[6]~40\) 
-- # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[7]~42\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[6]~40\) # (!\SubMain_1|ClockDivider_1|clock_divider\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(7),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[6]~40\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[7]~41_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[7]~42\);

-- Location: FF_X73_Y39_N21
\SubMain_1|ClockDivider_1|clock_divider[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[7]~41_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(7));

-- Location: LCCOMB_X73_Y39_N22
\SubMain_1|ClockDivider_1|clock_divider[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[8]~43_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(8) & (\SubMain_1|ClockDivider_1|clock_divider[7]~42\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(8) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[7]~42\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[8]~44\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(8) & !\SubMain_1|ClockDivider_1|clock_divider[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(8),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[7]~42\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[8]~43_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[8]~44\);

-- Location: FF_X73_Y39_N23
\SubMain_1|ClockDivider_1|clock_divider[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[8]~43_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(8));

-- Location: LCCOMB_X73_Y39_N24
\SubMain_1|ClockDivider_1|clock_divider[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[9]~45_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(9) & (!\SubMain_1|ClockDivider_1|clock_divider[8]~44\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(9) & ((\SubMain_1|ClockDivider_1|clock_divider[8]~44\) 
-- # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[9]~46\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[8]~44\) # (!\SubMain_1|ClockDivider_1|clock_divider\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(9),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[8]~44\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[9]~45_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[9]~46\);

-- Location: FF_X73_Y39_N25
\SubMain_1|ClockDivider_1|clock_divider[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[9]~45_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(9));

-- Location: LCCOMB_X73_Y39_N26
\SubMain_1|ClockDivider_1|clock_divider[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[10]~47_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(10) & (\SubMain_1|ClockDivider_1|clock_divider[9]~46\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(10) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[9]~46\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[10]~48\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(10) & !\SubMain_1|ClockDivider_1|clock_divider[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(10),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[9]~46\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[10]~47_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[10]~48\);

-- Location: FF_X73_Y39_N27
\SubMain_1|ClockDivider_1|clock_divider[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[10]~47_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(10));

-- Location: LCCOMB_X73_Y39_N28
\SubMain_1|ClockDivider_1|clock_divider[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[11]~49_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(11) & (!\SubMain_1|ClockDivider_1|clock_divider[10]~48\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(11) & 
-- ((\SubMain_1|ClockDivider_1|clock_divider[10]~48\) # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[11]~50\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[10]~48\) # (!\SubMain_1|ClockDivider_1|clock_divider\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(11),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[10]~48\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[11]~49_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[11]~50\);

-- Location: FF_X73_Y39_N29
\SubMain_1|ClockDivider_1|clock_divider[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[11]~49_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(11));

-- Location: LCCOMB_X73_Y39_N30
\SubMain_1|ClockDivider_1|clock_divider[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[12]~51_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(12) & (\SubMain_1|ClockDivider_1|clock_divider[11]~50\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(12) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[11]~50\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[12]~52\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(12) & !\SubMain_1|ClockDivider_1|clock_divider[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(12),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[11]~50\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[12]~51_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[12]~52\);

-- Location: FF_X73_Y39_N31
\SubMain_1|ClockDivider_1|clock_divider[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[12]~51_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(12));

-- Location: LCCOMB_X73_Y38_N0
\SubMain_1|ClockDivider_1|clock_divider[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[13]~53_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(13) & (!\SubMain_1|ClockDivider_1|clock_divider[12]~52\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(13) & 
-- ((\SubMain_1|ClockDivider_1|clock_divider[12]~52\) # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[13]~54\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[12]~52\) # (!\SubMain_1|ClockDivider_1|clock_divider\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(13),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[12]~52\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[13]~53_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[13]~54\);

-- Location: FF_X73_Y38_N1
\SubMain_1|ClockDivider_1|clock_divider[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[13]~53_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(13));

-- Location: LCCOMB_X73_Y38_N2
\SubMain_1|ClockDivider_1|clock_divider[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[14]~55_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(14) & (\SubMain_1|ClockDivider_1|clock_divider[13]~54\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(14) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[13]~54\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[14]~56\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(14) & !\SubMain_1|ClockDivider_1|clock_divider[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(14),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[13]~54\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[14]~55_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[14]~56\);

-- Location: FF_X72_Y39_N27
\SubMain_1|ClockDivider_1|clock_divider[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SubMain_1|ClockDivider_1|clock_divider[14]~55_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(14));

-- Location: LCCOMB_X73_Y38_N4
\SubMain_1|ClockDivider_1|clock_divider[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[15]~57_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(15) & (!\SubMain_1|ClockDivider_1|clock_divider[14]~56\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(15) & 
-- ((\SubMain_1|ClockDivider_1|clock_divider[14]~56\) # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[15]~58\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[14]~56\) # (!\SubMain_1|ClockDivider_1|clock_divider\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(15),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[14]~56\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[15]~57_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[15]~58\);

-- Location: FF_X72_Y39_N19
\SubMain_1|ClockDivider_1|clock_divider[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SubMain_1|ClockDivider_1|clock_divider[15]~57_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(15));

-- Location: LCCOMB_X73_Y38_N6
\SubMain_1|ClockDivider_1|clock_divider[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[16]~59_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(16) & (\SubMain_1|ClockDivider_1|clock_divider[15]~58\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(16) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[15]~58\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[16]~60\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(16) & !\SubMain_1|ClockDivider_1|clock_divider[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(16),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[15]~58\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[16]~59_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[16]~60\);

-- Location: FF_X72_Y39_N15
\SubMain_1|ClockDivider_1|clock_divider[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SubMain_1|ClockDivider_1|clock_divider[16]~59_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(16));

-- Location: LCCOMB_X73_Y38_N8
\SubMain_1|ClockDivider_1|clock_divider[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[17]~61_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(17) & (!\SubMain_1|ClockDivider_1|clock_divider[16]~60\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(17) & 
-- ((\SubMain_1|ClockDivider_1|clock_divider[16]~60\) # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[17]~62\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[16]~60\) # (!\SubMain_1|ClockDivider_1|clock_divider\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(17),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[16]~60\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[17]~61_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[17]~62\);

-- Location: FF_X72_Y39_N5
\SubMain_1|ClockDivider_1|clock_divider[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SubMain_1|ClockDivider_1|clock_divider[17]~61_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(17));

-- Location: LCCOMB_X73_Y38_N10
\SubMain_1|ClockDivider_1|clock_divider[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[18]~63_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(18) & (\SubMain_1|ClockDivider_1|clock_divider[17]~62\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(18) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[17]~62\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[18]~64\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(18) & !\SubMain_1|ClockDivider_1|clock_divider[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(18),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[17]~62\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[18]~63_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[18]~64\);

-- Location: FF_X73_Y38_N11
\SubMain_1|ClockDivider_1|clock_divider[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[18]~63_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(18));

-- Location: LCCOMB_X73_Y38_N12
\SubMain_1|ClockDivider_1|clock_divider[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[19]~65_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(19) & (!\SubMain_1|ClockDivider_1|clock_divider[18]~64\)) # (!\SubMain_1|ClockDivider_1|clock_divider\(19) & 
-- ((\SubMain_1|ClockDivider_1|clock_divider[18]~64\) # (GND)))
-- \SubMain_1|ClockDivider_1|clock_divider[19]~66\ = CARRY((!\SubMain_1|ClockDivider_1|clock_divider[18]~64\) # (!\SubMain_1|ClockDivider_1|clock_divider\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(19),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[18]~64\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[19]~65_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[19]~66\);

-- Location: FF_X73_Y38_N13
\SubMain_1|ClockDivider_1|clock_divider[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[19]~65_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(19));

-- Location: LCCOMB_X73_Y38_N14
\SubMain_1|ClockDivider_1|clock_divider[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|clock_divider[20]~67_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(20) & (\SubMain_1|ClockDivider_1|clock_divider[19]~66\ $ (GND))) # (!\SubMain_1|ClockDivider_1|clock_divider\(20) & 
-- (!\SubMain_1|ClockDivider_1|clock_divider[19]~66\ & VCC))
-- \SubMain_1|ClockDivider_1|clock_divider[20]~68\ = CARRY((\SubMain_1|ClockDivider_1|clock_divider\(20) & !\SubMain_1|ClockDivider_1|clock_divider[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(20),
	datad => VCC,
	cin => \SubMain_1|ClockDivider_1|clock_divider[19]~66\,
	combout => \SubMain_1|ClockDivider_1|clock_divider[20]~67_combout\,
	cout => \SubMain_1|ClockDivider_1|clock_divider[20]~68\);

-- Location: FF_X73_Y38_N15
\SubMain_1|ClockDivider_1|clock_divider[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[20]~67_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(20));

-- Location: FF_X73_Y38_N17
\SubMain_1|ClockDivider_1|clock_divider[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|ClockDivider_1|clock_divider[21]~69_combout\,
	sclr => \SubMain_1|ClockDivider_1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clock_divider\(21));

-- Location: LCCOMB_X73_Y39_N2
\SubMain_1|ClockDivider_1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan1~1_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(6)) # ((\SubMain_1|ClockDivider_1|clock_divider\(5) & ((\SubMain_1|ClockDivider_1|clock_divider\(4)) # (!\SubMain_1|ClockDivider_1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(5),
	datab => \SubMain_1|ClockDivider_1|clock_divider\(6),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(4),
	datad => \SubMain_1|ClockDivider_1|LessThan1~0_combout\,
	combout => \SubMain_1|ClockDivider_1|LessThan1~1_combout\);

-- Location: LCCOMB_X73_Y39_N4
\SubMain_1|ClockDivider_1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan1~2_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(9)) # ((\SubMain_1|ClockDivider_1|clock_divider\(8) & (\SubMain_1|ClockDivider_1|clock_divider\(7) & \SubMain_1|ClockDivider_1|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(8),
	datab => \SubMain_1|ClockDivider_1|clock_divider\(9),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(7),
	datad => \SubMain_1|ClockDivider_1|LessThan1~1_combout\,
	combout => \SubMain_1|ClockDivider_1|LessThan1~2_combout\);

-- Location: LCCOMB_X72_Y39_N6
\SubMain_1|ClockDivider_1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan1~3_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(12)) # ((\SubMain_1|ClockDivider_1|clock_divider\(11)) # ((\SubMain_1|ClockDivider_1|clock_divider\(10) & \SubMain_1|ClockDivider_1|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(12),
	datab => \SubMain_1|ClockDivider_1|clock_divider\(11),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(10),
	datad => \SubMain_1|ClockDivider_1|LessThan1~2_combout\,
	combout => \SubMain_1|ClockDivider_1|LessThan1~3_combout\);

-- Location: LCCOMB_X72_Y39_N16
\SubMain_1|ClockDivider_1|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan1~4_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(15)) # ((\SubMain_1|ClockDivider_1|clock_divider\(14)) # ((\SubMain_1|ClockDivider_1|clock_divider\(13) & \SubMain_1|ClockDivider_1|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(13),
	datab => \SubMain_1|ClockDivider_1|clock_divider\(15),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(14),
	datad => \SubMain_1|ClockDivider_1|LessThan1~3_combout\,
	combout => \SubMain_1|ClockDivider_1|LessThan1~4_combout\);

-- Location: LCCOMB_X72_Y39_N20
\SubMain_1|ClockDivider_1|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan1~5_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(18) & (\SubMain_1|ClockDivider_1|clock_divider\(17) & ((\SubMain_1|ClockDivider_1|clock_divider\(16)) # (\SubMain_1|ClockDivider_1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(18),
	datab => \SubMain_1|ClockDivider_1|clock_divider\(17),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(16),
	datad => \SubMain_1|ClockDivider_1|LessThan1~4_combout\,
	combout => \SubMain_1|ClockDivider_1|LessThan1~5_combout\);

-- Location: LCCOMB_X72_Y39_N24
\SubMain_1|ClockDivider_1|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan1~6_combout\ = (\SubMain_1|ClockDivider_1|clock_divider\(20)) # ((\SubMain_1|ClockDivider_1|clock_divider\(19)) # (\SubMain_1|ClockDivider_1|LessThan1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|ClockDivider_1|clock_divider\(20),
	datac => \SubMain_1|ClockDivider_1|clock_divider\(19),
	datad => \SubMain_1|ClockDivider_1|LessThan1~5_combout\,
	combout => \SubMain_1|ClockDivider_1|LessThan1~6_combout\);

-- Location: LCCOMB_X72_Y39_N0
\SubMain_1|ClockDivider_1|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|ClockDivider_1|LessThan1~7_combout\ = ((\SubMain_1|ClockDivider_1|clock_divider\(22)) # ((\SubMain_1|ClockDivider_1|clock_divider\(21) & \SubMain_1|ClockDivider_1|LessThan1~6_combout\))) # (!\SubMain_1|ClockDivider_1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|ClockDivider_1|clock_divider\(21),
	datab => \SubMain_1|ClockDivider_1|LessThan0~0_combout\,
	datac => \SubMain_1|ClockDivider_1|clock_divider\(22),
	datad => \SubMain_1|ClockDivider_1|LessThan1~6_combout\,
	combout => \SubMain_1|ClockDivider_1|LessThan1~7_combout\);

-- Location: FF_X72_Y39_N1
\SubMain_1|ClockDivider_1|clk_out_alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|ClockDivider_1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|ClockDivider_1|clk_out_alt~q\);

-- Location: LCCOMB_X72_Y40_N6
\SubMain_1|StateMachine_1|Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector47~2_combout\ = (!\SubMain_1|StateMachine_1|Selector47~1_combout\ & ((\SubMain_1|ClockDivider_1|clk_out_alt~q\ & ((!\SubMain_1|StateMachine_1|mode.st_320~q\))) # (!\SubMain_1|ClockDivider_1|clk_out_alt~q\ & 
-- (!\SubMain_1|StateMachine_1|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Selector35~0_combout\,
	datab => \SubMain_1|StateMachine_1|Selector47~1_combout\,
	datac => \SubMain_1|StateMachine_1|mode.st_320~q\,
	datad => \SubMain_1|ClockDivider_1|clk_out_alt~q\,
	combout => \SubMain_1|StateMachine_1|Selector47~2_combout\);

-- Location: CLKCTRL_G9
\SubMain_1|StateMachine_1|Selector47~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SubMain_1|StateMachine_1|Selector47~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\);

-- Location: IOIBUF_X115_Y53_N15
\BtnClear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BtnClear,
	o => \BtnClear~input_o\);

-- Location: LCCOMB_X70_Y40_N26
\SubMain_1|FallingEdge_Clear|SavedValue~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|FallingEdge_Clear|SavedValue~feeder_combout\ = \BtnClear~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BtnClear~input_o\,
	combout => \SubMain_1|FallingEdge_Clear|SavedValue~feeder_combout\);

-- Location: FF_X70_Y40_N27
\SubMain_1|FallingEdge_Clear|SavedValue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|FallingEdge_Clear|SavedValue~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|FallingEdge_Clear|SavedValue~q\);

-- Location: LCCOMB_X70_Y40_N20
\SubMain_1|StateMachine_1|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector48~0_combout\ = (!\BtnClear~input_o\ & (\SubMain_1|FallingEdge_Clear|SavedValue~q\ & \SubMain_1|StateMachine_1|mode.st_100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BtnClear~input_o\,
	datac => \SubMain_1|FallingEdge_Clear|SavedValue~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_100~q\,
	combout => \SubMain_1|StateMachine_1|Selector48~0_combout\);

-- Location: LCCOMB_X72_Y40_N18
\SubMain_1|StateMachine_1|nxt_mode.st_reset_741\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_reset_741~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & (\SubMain_1|StateMachine_1|Selector48~0_combout\)) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|nxt_mode.st_reset_741~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|Selector48~0_combout\,
	datac => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|nxt_mode.st_reset_741~combout\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_reset_741~combout\);

-- Location: LCCOMB_X72_Y40_N10
\SubMain_1|StateMachine_1|mode.st_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|mode.st_reset~0_combout\ = !\SubMain_1|StateMachine_1|nxt_mode.st_reset_741~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SubMain_1|StateMachine_1|nxt_mode.st_reset_741~combout\,
	combout => \SubMain_1|StateMachine_1|mode.st_reset~0_combout\);

-- Location: FF_X72_Y40_N11
\SubMain_1|StateMachine_1|mode.st_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|StateMachine_1|mode.st_reset~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_reset~q\);

-- Location: LCCOMB_X69_Y40_N28
\SubMain_1|StateMachine_1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector31~0_combout\ = (\SubMain_1|StateMachine_1|counter_proc~3_combout\ & \SubMain_1|StateMachine_1|mode.st_300~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|counter_proc~3_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_300~q\,
	combout => \SubMain_1|StateMachine_1|Selector31~0_combout\);

-- Location: LCCOMB_X69_Y40_N10
\SubMain_1|StateMachine_1|nxt_mode.st_390_510\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_390_510~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector31~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_390_510~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_390_510~combout\,
	datac => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|Selector31~0_combout\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_390_510~combout\);

-- Location: FF_X69_Y40_N11
\SubMain_1|StateMachine_1|mode.st_390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_390_510~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_390~q\);

-- Location: LCCOMB_X69_Y40_N4
\SubMain_1|StateMachine_1|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector46~0_combout\ = ((\SubMain_1|StateMachine_1|mode.st_390~q\) # (\SubMain_1|StateMachine_1|mode.st_120~q\)) # (!\SubMain_1|StateMachine_1|mode.st_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_reset~q\,
	datab => \SubMain_1|StateMachine_1|mode.st_390~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_120~q\,
	combout => \SubMain_1|StateMachine_1|Selector46~0_combout\);

-- Location: LCCOMB_X69_Y40_N8
\SubMain_1|StateMachine_1|nxt_mode.st_100_720\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_100_720~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector46~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_100_720~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_100_720~combout\,
	datac => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|Selector46~0_combout\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_100_720~combout\);

-- Location: FF_X69_Y40_N5
\SubMain_1|StateMachine_1|mode.st_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_100_720~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_100~q\);

-- Location: LCCOMB_X70_Y40_N10
\SubMain_1|StateMachine_1|Selector41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector41~4_combout\ = (\SubMain_1|StateMachine_1|mode.st_100~q\ & ((\BtnClear~input_o\) # (!\SubMain_1|FallingEdge_Clear|SavedValue~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_100~q\,
	datac => \SubMain_1|FallingEdge_Clear|SavedValue~q\,
	datad => \BtnClear~input_o\,
	combout => \SubMain_1|StateMachine_1|Selector41~4_combout\);

-- Location: LCCOMB_X72_Y40_N20
\SubMain_1|StateMachine_1|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector44~0_combout\ = (\SubMain_1|FallingEdge_Sec|SavedValue~q\ & (!\BtnSec~input_o\ & (\SubMain_1|StateMachine_1|Selector41~4_combout\ & !\SubMain_1|FallingEdge_Start|FallingOutput~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|FallingEdge_Sec|SavedValue~q\,
	datab => \BtnSec~input_o\,
	datac => \SubMain_1|StateMachine_1|Selector41~4_combout\,
	datad => \SubMain_1|FallingEdge_Start|FallingOutput~combout\,
	combout => \SubMain_1|StateMachine_1|Selector44~0_combout\);

-- Location: LCCOMB_X72_Y40_N12
\SubMain_1|StateMachine_1|nxt_mode.st_111_678\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_111_678~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & (\SubMain_1|StateMachine_1|Selector44~0_combout\)) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|nxt_mode.st_111_678~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|Selector44~0_combout\,
	datac => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|nxt_mode.st_111_678~combout\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_111_678~combout\);

-- Location: FF_X72_Y40_N13
\SubMain_1|StateMachine_1|mode.st_111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_111_678~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_111~q\);

-- Location: LCCOMB_X72_Y40_N4
\SubMain_1|StateMachine_1|nxt_mode.st_110_699\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_110_699~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector45~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_110_699~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_110_699~combout\,
	datac => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|Selector45~0_combout\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_110_699~combout\);

-- Location: FF_X72_Y40_N5
\SubMain_1|StateMachine_1|mode.st_110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_110_699~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_110~q\);

-- Location: LCCOMB_X72_Y40_N22
\SubMain_1|StateMachine_1|nxt_mode~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode~2_combout\ = (!\SubMain_1|StateMachine_1|mode.st_111~q\ & !\SubMain_1|StateMachine_1|mode.st_110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_110~q\,
	combout => \SubMain_1|StateMachine_1|nxt_mode~2_combout\);

-- Location: LCCOMB_X69_Y40_N22
\SubMain_1|StateMachine_1|nxt_mode.st_120_657\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_120_657~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & (!\SubMain_1|StateMachine_1|nxt_mode~2_combout\)) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|nxt_mode.st_120_657~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode~2_combout\,
	datac => \SubMain_1|StateMachine_1|nxt_mode.st_120_657~combout\,
	datad => \SubMain_1|StateMachine_1|Selector47~2clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_120_657~combout\);

-- Location: FF_X69_Y40_N7
\SubMain_1|StateMachine_1|mode.st_120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_120_657~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_120~q\);

-- Location: LCCOMB_X70_Y40_N6
\SubMain_1|StateMachine_1|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr11~combout\ = (\SubMain_1|StateMachine_1|mode.st_120~q\) # ((\SubMain_1|StateMachine_1|mode.st_200~q\) # ((\SubMain_1|StateMachine_1|mode.st_190~q\) # (\SubMain_1|StateMachine_1|mode.st_100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_120~q\,
	datab => \SubMain_1|StateMachine_1|mode.st_200~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_190~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_100~q\,
	combout => \SubMain_1|StateMachine_1|WideOr11~combout\);

-- Location: LCCOMB_X72_Y40_N24
\SubMain_1|StateMachine_1|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr7~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_110~q\) # ((\SubMain_1|StateMachine_1|mode.st_290~q\) # ((\SubMain_1|StateMachine_1|mode.st_390~q\) # (\SubMain_1|StateMachine_1|mode.st_111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datab => \SubMain_1|StateMachine_1|mode.st_290~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_390~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_111~q\,
	combout => \SubMain_1|StateMachine_1|WideOr7~0_combout\);

-- Location: CLKCTRL_G7
\SubMain_1|StateMachine_1|WideOr7~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SubMain_1|StateMachine_1|WideOr7~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\);

-- Location: LCCOMB_X70_Y40_N28
\SubMain_1|StateMachine_1|DebugLED_o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|DebugLED_o\(0) = (GLOBAL(\SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\) & (\SubMain_1|StateMachine_1|DebugLED_o\(0))) # (!GLOBAL(\SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\) & 
-- ((!\SubMain_1|StateMachine_1|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|DebugLED_o\(0),
	datac => \SubMain_1|StateMachine_1|WideOr11~combout\,
	datad => \SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|DebugLED_o\(0));

-- Location: LCCOMB_X70_Y40_N18
\SubMain_1|StateMachine_1|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr9~0_combout\ = (!\SubMain_1|StateMachine_1|mode.st_190~q\ & (!\SubMain_1|StateMachine_1|mode.st_120~q\ & !\SubMain_1|StateMachine_1|mode.st_100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_190~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_120~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_100~q\,
	combout => \SubMain_1|StateMachine_1|WideOr9~0_combout\);

-- Location: LCCOMB_X70_Y40_N0
\SubMain_1|StateMachine_1|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr9~combout\ = ((\SubMain_1|StateMachine_1|mode.st_320~q\) # ((\SubMain_1|StateMachine_1|mode.st_310~q\) # (\SubMain_1|StateMachine_1|mode.st_300~q\))) # (!\SubMain_1|StateMachine_1|WideOr9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|WideOr9~0_combout\,
	datab => \SubMain_1|StateMachine_1|mode.st_320~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_300~q\,
	combout => \SubMain_1|StateMachine_1|WideOr9~combout\);

-- Location: LCCOMB_X70_Y40_N30
\SubMain_1|StateMachine_1|DebugLED_o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|DebugLED_o\(1) = (GLOBAL(\SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\) & (\SubMain_1|StateMachine_1|DebugLED_o\(1))) # (!GLOBAL(\SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\) & 
-- ((!\SubMain_1|StateMachine_1|WideOr9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|DebugLED_o\(1),
	datac => \SubMain_1|StateMachine_1|WideOr9~combout\,
	datad => \SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|DebugLED_o\(1));

-- Location: LCCOMB_X70_Y40_N12
\SubMain_1|StateMachine_1|WideOr8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr8~combout\ = (\SubMain_1|StateMachine_1|mode.st_320~q\) # ((\SubMain_1|StateMachine_1|mode.st_200~q\) # ((\SubMain_1|StateMachine_1|mode.st_300~q\) # (\SubMain_1|StateMachine_1|mode.st_310~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_320~q\,
	datab => \SubMain_1|StateMachine_1|mode.st_200~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_300~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_310~q\,
	combout => \SubMain_1|StateMachine_1|WideOr8~combout\);

-- Location: LCCOMB_X70_Y40_N14
\SubMain_1|StateMachine_1|DebugLED_o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|DebugLED_o\(2) = (GLOBAL(\SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|DebugLED_o\(2)))) # (!GLOBAL(\SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\) & 
-- (!\SubMain_1|StateMachine_1|WideOr8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|WideOr8~combout\,
	datac => \SubMain_1|StateMachine_1|DebugLED_o\(2),
	datad => \SubMain_1|StateMachine_1|WideOr7~0clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|DebugLED_o\(2));

-- Location: LCCOMB_X69_Y40_N14
\SubMain_1|StateMachine_1|WideOr13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr13~combout\ = (\SubMain_1|StateMachine_1|mode.st_120~q\) # ((\SubMain_1|StateMachine_1|mode.st_300~q\) # ((\SubMain_1|StateMachine_1|mode.st_310~q\) # (\SubMain_1|StateMachine_1|mode.st_320~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_120~q\,
	datab => \SubMain_1|StateMachine_1|mode.st_300~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_320~q\,
	combout => \SubMain_1|StateMachine_1|WideOr13~combout\);

-- Location: CLKCTRL_G8
\SubMain_1|StateMachine_1|WideOr13~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SubMain_1|StateMachine_1|WideOr13~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\);

-- Location: LCCOMB_X72_Y40_N14
\SubMain_1|StateMachine_1|CountBlockControl_o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountBlockControl_o\(0) = (GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & (\SubMain_1|StateMachine_1|CountBlockControl_o\(0))) # (!GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & 
-- ((!\SubMain_1|StateMachine_1|mode.st_reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\,
	datac => \SubMain_1|StateMachine_1|CountBlockControl_o\(0),
	datad => \SubMain_1|StateMachine_1|mode.st_reset~q\,
	combout => \SubMain_1|StateMachine_1|CountBlockControl_o\(0));

-- Location: LCCOMB_X70_Y40_N16
\SubMain_1|StateMachine_1|CountBlockControl_o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountBlockControl_o\(1) = (GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|CountBlockControl_o\(1)))) # (!GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|mode.st_200~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_200~q\,
	datac => \SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|CountBlockControl_o\(1),
	combout => \SubMain_1|StateMachine_1|CountBlockControl_o\(1));

-- Location: LCCOMB_X72_Y40_N0
\SubMain_1|StateMachine_1|CountBlockControl_o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountBlockControl_o\(2) = (GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|CountBlockControl_o\(2)))) # (!GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|mode.st_110~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\,
	datac => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datad => \SubMain_1|StateMachine_1|CountBlockControl_o\(2),
	combout => \SubMain_1|StateMachine_1|CountBlockControl_o\(2));

-- Location: LCCOMB_X72_Y40_N30
\SubMain_1|StateMachine_1|CountBlockControl_o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountBlockControl_o\(3) = (GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & (\SubMain_1|StateMachine_1|CountBlockControl_o\(3))) # (!GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|mode.st_111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountBlockControl_o\(3),
	datac => \SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|mode.st_111~q\,
	combout => \SubMain_1|StateMachine_1|CountBlockControl_o\(3));

-- Location: LCCOMB_X70_Y40_N2
\SubMain_1|StateMachine_1|CountBlockControl_o[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountBlockControl_o\(4) = (GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & (\SubMain_1|StateMachine_1|CountBlockControl_o\(4))) # (!GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|mode.st_190~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountBlockControl_o\(4),
	datac => \SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|mode.st_190~q\,
	combout => \SubMain_1|StateMachine_1|CountBlockControl_o\(4));

-- Location: LCCOMB_X69_Y40_N12
\SubMain_1|StateMachine_1|CountBlockControl_o[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountBlockControl_o\(5) = (GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|CountBlockControl_o\(5)))) # (!GLOBAL(\SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|mode.st_390~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_390~q\,
	datac => \SubMain_1|StateMachine_1|WideOr13~clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|CountBlockControl_o\(5),
	combout => \SubMain_1|StateMachine_1|CountBlockControl_o\(5));

-- Location: LCCOMB_X69_Y40_N30
\SubMain_1|StateMachine_1|WideOr20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr20~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_390~q\) # (((\SubMain_1|StateMachine_1|mode.st_100~q\) # (\SubMain_1|StateMachine_1|mode.st_300~q\)) # (!\SubMain_1|StateMachine_1|mode.st_reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_390~q\,
	datab => \SubMain_1|StateMachine_1|mode.st_reset~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_100~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_300~q\,
	combout => \SubMain_1|StateMachine_1|WideOr20~0_combout\);

-- Location: LCCOMB_X69_Y40_N2
\SubMain_1|StateMachine_1|BuzzerEnable_o\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerEnable_o~combout\ = (\SubMain_1|StateMachine_1|WideOr20~0_combout\ & ((\SubMain_1|StateMachine_1|mode.st_300~q\))) # (!\SubMain_1|StateMachine_1|WideOr20~0_combout\ & (\SubMain_1|StateMachine_1|BuzzerEnable_o~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|BuzzerEnable_o~combout\,
	datac => \SubMain_1|StateMachine_1|WideOr20~0_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_300~q\,
	combout => \SubMain_1|StateMachine_1|BuzzerEnable_o~combout\);

-- Location: IOIBUF_X115_Y14_N1
\BuzzerOverride~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BuzzerOverride,
	o => \BuzzerOverride~input_o\);

ww_Output1(0) <= \Output1[0]~output_o\;

ww_Output1(1) <= \Output1[1]~output_o\;

ww_Output1(2) <= \Output1[2]~output_o\;

ww_Output1(3) <= \Output1[3]~output_o\;

ww_Output1(4) <= \Output1[4]~output_o\;

ww_Output1(5) <= \Output1[5]~output_o\;

ww_Output1(6) <= \Output1[6]~output_o\;

ww_Output2(0) <= \Output2[0]~output_o\;

ww_Output2(1) <= \Output2[1]~output_o\;

ww_Output2(2) <= \Output2[2]~output_o\;

ww_Output2(3) <= \Output2[3]~output_o\;

ww_Output2(4) <= \Output2[4]~output_o\;

ww_Output2(5) <= \Output2[5]~output_o\;

ww_Output2(6) <= \Output2[6]~output_o\;

ww_Output3(0) <= \Output3[0]~output_o\;

ww_Output3(1) <= \Output3[1]~output_o\;

ww_Output3(2) <= \Output3[2]~output_o\;

ww_Output3(3) <= \Output3[3]~output_o\;

ww_Output3(4) <= \Output3[4]~output_o\;

ww_Output3(5) <= \Output3[5]~output_o\;

ww_Output3(6) <= \Output3[6]~output_o\;

ww_Output4(0) <= \Output4[0]~output_o\;

ww_Output4(1) <= \Output4[1]~output_o\;

ww_Output4(2) <= \Output4[2]~output_o\;

ww_Output4(3) <= \Output4[3]~output_o\;

ww_Output4(4) <= \Output4[4]~output_o\;

ww_Output4(5) <= \Output4[5]~output_o\;

ww_Output4(6) <= \Output4[6]~output_o\;

ww_CountValueMainOut(0) <= \CountValueMainOut[0]~output_o\;

ww_CountValueMainOut(1) <= \CountValueMainOut[1]~output_o\;

ww_CountValueMainOut(2) <= \CountValueMainOut[2]~output_o\;

ww_CountValueMainOut(3) <= \CountValueMainOut[3]~output_o\;

ww_CountValueMainOut(4) <= \CountValueMainOut[4]~output_o\;

ww_CountValueMainOut(5) <= \CountValueMainOut[5]~output_o\;

ww_CountValueMainOut(6) <= \CountValueMainOut[6]~output_o\;

ww_CountValueMainOut(7) <= \CountValueMainOut[7]~output_o\;

ww_CountValueMainOut(8) <= \CountValueMainOut[8]~output_o\;

ww_CountValueMainOut(9) <= \CountValueMainOut[9]~output_o\;

ww_CountValueMainOut(10) <= \CountValueMainOut[10]~output_o\;

ww_CountValueMainOut(11) <= \CountValueMainOut[11]~output_o\;

ww_CountValueMainOut(12) <= \CountValueMainOut[12]~output_o\;

ww_DebugLED(0) <= \DebugLED[0]~output_o\;

ww_DebugLED(1) <= \DebugLED[1]~output_o\;

ww_DebugLED(2) <= \DebugLED[2]~output_o\;

ww_DebugLED_Control(0) <= \DebugLED_Control[0]~output_o\;

ww_DebugLED_Control(1) <= \DebugLED_Control[1]~output_o\;

ww_DebugLED_Control(2) <= \DebugLED_Control[2]~output_o\;

ww_DebugLED_Control(3) <= \DebugLED_Control[3]~output_o\;

ww_DebugLED_Control(4) <= \DebugLED_Control[4]~output_o\;

ww_DebugLED_Control(5) <= \DebugLED_Control[5]~output_o\;

ww_Debug_clk_Deci <= \Debug_clk_Deci~output_o\;

ww_BuzzerOut <= \BuzzerOut~output_o\;
END structure;


