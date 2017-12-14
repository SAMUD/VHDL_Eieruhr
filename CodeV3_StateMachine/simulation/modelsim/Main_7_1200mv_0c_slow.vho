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

-- DATE "12/12/2017 21:15:52"

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
	SW2 : IN std_logic;
	SW3 : IN std_logic;
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
-- SW3	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnClear	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnStart	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnSec	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnMin	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW3 : std_logic;
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
SIGNAL \StateMachine_1|Selector48~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \StateMachine_1|WideOr7~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \StateMachine_1|WideOr13~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \BtnStart~input_o\ : std_logic;
SIGNAL \FallingEdge_Start|SavedValue~q\ : std_logic;
SIGNAL \StateMachine_1|counter_proc~0_combout\ : std_logic;
SIGNAL \BtnMin~input_o\ : std_logic;
SIGNAL \FallingEdge_Min|SavedValue~q\ : std_logic;
SIGNAL \FallingEdge_Min|FallingOutput~combout\ : std_logic;
SIGNAL \BtnSec~input_o\ : std_logic;
SIGNAL \FallingEdge_Sec|SavedValue~feeder_combout\ : std_logic;
SIGNAL \FallingEdge_Sec|SavedValue~q\ : std_logic;
SIGNAL \FallingEdge_Sec|FallingOutput~combout\ : std_logic;
SIGNAL \StateMachine_1|Selector4~0_combout\ : std_logic;
SIGNAL \BtnClear~input_o\ : std_logic;
SIGNAL \FallingEdge_Clear|SavedValue~q\ : std_logic;
SIGNAL \StateMachine_1|Selector6~0_combout\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_110_731~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_110~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \StateMachine_1|mode.st_110~q\ : std_logic;
SIGNAL \StateMachine_1|Selector7~4_combout\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_111_708~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_111~q\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode~2_combout\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_120_685~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_120~feeder_combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_120~q\ : std_logic;
SIGNAL \StateMachine_1|counter_proc~1_combout\ : std_logic;
SIGNAL \StateMachine_1|Selector48~0_combout\ : std_logic;
SIGNAL \StateMachine_1|Selector48~1_combout\ : std_logic;
SIGNAL \StateMachine_1|Selector48~2_combout\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_310_570~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_310~q\ : std_logic;
SIGNAL \StateMachine_1|WideOr21~0_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~0_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~29_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~1\ : std_logic;
SIGNAL \StateMachine_1|Add0~2_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~7_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~3\ : std_logic;
SIGNAL \StateMachine_1|Add0~4_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~6_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~5\ : std_logic;
SIGNAL \StateMachine_1|Add0~8_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~16_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~9\ : std_logic;
SIGNAL \StateMachine_1|Add0~10_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~12_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~11\ : std_logic;
SIGNAL \StateMachine_1|Add0~13_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~15_combout\ : std_logic;
SIGNAL \StateMachine_1|LessThan0~0_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~14\ : std_logic;
SIGNAL \StateMachine_1|Add0~17_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~19_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~18\ : std_logic;
SIGNAL \StateMachine_1|Add0~20_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~22_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~21\ : std_logic;
SIGNAL \StateMachine_1|Add0~23_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~25_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~24\ : std_logic;
SIGNAL \StateMachine_1|Add0~26_combout\ : std_logic;
SIGNAL \StateMachine_1|Add0~28_combout\ : std_logic;
SIGNAL \StateMachine_1|LessThan0~1_combout\ : std_logic;
SIGNAL \StateMachine_1|Selector13~0_combout\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_320_547~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_320~q\ : std_logic;
SIGNAL \StateMachine_1|Selector48~3_combout\ : std_logic;
SIGNAL \StateMachine_1|Selector48~3clkctrl_outclk\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_200_639~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_200~q\ : std_logic;
SIGNAL \StateMachine_1|Selector11~0_combout\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_290_616~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_290~feeder_combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_290~q\ : std_logic;
SIGNAL \StateMachine_1|Selector12~0_combout\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_300_593~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_300~q\ : std_logic;
SIGNAL \StateMachine_1|Selector42~0_combout\ : std_logic;
SIGNAL \StateMachine_1|Selector42~1_combout\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_390_524~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_390~q\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_reset_777~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_reset~0_combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_reset~q\ : std_logic;
SIGNAL \StateMachine_1|Selector5~0_combout\ : std_logic;
SIGNAL \StateMachine_1|Selector5~1_combout\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_100_754~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_100~q\ : std_logic;
SIGNAL \StateMachine_1|Selector9~0_combout\ : std_logic;
SIGNAL \StateMachine_1|nxt_mode.st_190_662~combout\ : std_logic;
SIGNAL \StateMachine_1|mode.st_190~q\ : std_logic;
SIGNAL \StateMachine_1|WideOr11~0_combout\ : std_logic;
SIGNAL \StateMachine_1|WideOr7~combout\ : std_logic;
SIGNAL \StateMachine_1|WideOr7~clkctrl_outclk\ : std_logic;
SIGNAL \StateMachine_1|WideOr8~0_combout\ : std_logic;
SIGNAL \StateMachine_1|WideOr8~combout\ : std_logic;
SIGNAL \StateMachine_1|WideOr13~combout\ : std_logic;
SIGNAL \StateMachine_1|WideOr13~clkctrl_outclk\ : std_logic;
SIGNAL \StateMachine_1|WideOr20~0_combout\ : std_logic;
SIGNAL \StateMachine_1|BuzzerEnable_o~combout\ : std_logic;
SIGNAL \StateMachine_1|DebugLED_o\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \StateMachine_1|CountBlockControl_o\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \StateMachine_1|BuzzerCounter\ : std_logic_vector(9 DOWNTO 0);
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
ww_SW2 <= SW2;
ww_SW3 <= SW3;
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

\StateMachine_1|Selector48~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \StateMachine_1|Selector48~3_combout\);

\StateMachine_1|WideOr7~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \StateMachine_1|WideOr7~combout\);

\StateMachine_1|WideOr13~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \StateMachine_1|WideOr13~combout\);
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
	i => \StateMachine_1|DebugLED_o\(0),
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
	i => \StateMachine_1|DebugLED_o\(1),
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
	i => \StateMachine_1|DebugLED_o\(2),
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
	i => \StateMachine_1|CountBlockControl_o\(0),
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
	i => \StateMachine_1|CountBlockControl_o\(1),
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
	i => \StateMachine_1|CountBlockControl_o\(2),
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
	i => \StateMachine_1|CountBlockControl_o\(3),
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
	i => \StateMachine_1|CountBlockControl_o\(4),
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
	i => \StateMachine_1|CountBlockControl_o\(5),
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
	i => GND,
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
	i => \StateMachine_1|BuzzerEnable_o~combout\,
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

-- Location: IOIBUF_X115_Y13_N8
\SW3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

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

-- Location: FF_X95_Y40_N19
\FallingEdge_Start|SavedValue\ : dffeas
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
	q => \FallingEdge_Start|SavedValue~q\);

-- Location: LCCOMB_X95_Y40_N10
\StateMachine_1|counter_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|counter_proc~0_combout\ = (!\SW3~input_o\ & (!\BtnStart~input_o\ & \FallingEdge_Start|SavedValue~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW3~input_o\,
	datac => \BtnStart~input_o\,
	datad => \FallingEdge_Start|SavedValue~q\,
	combout => \StateMachine_1|counter_proc~0_combout\);

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

-- Location: FF_X94_Y40_N25
\FallingEdge_Min|SavedValue\ : dffeas
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
	q => \FallingEdge_Min|SavedValue~q\);

-- Location: LCCOMB_X94_Y40_N16
\FallingEdge_Min|FallingOutput\ : cycloneive_lcell_comb
-- Equation(s):
-- \FallingEdge_Min|FallingOutput~combout\ = (!\BtnMin~input_o\ & \FallingEdge_Min|SavedValue~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BtnMin~input_o\,
	datad => \FallingEdge_Min|SavedValue~q\,
	combout => \FallingEdge_Min|FallingOutput~combout\);

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

-- Location: LCCOMB_X94_Y40_N20
\FallingEdge_Sec|SavedValue~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FallingEdge_Sec|SavedValue~feeder_combout\ = \BtnSec~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BtnSec~input_o\,
	combout => \FallingEdge_Sec|SavedValue~feeder_combout\);

-- Location: FF_X94_Y40_N21
\FallingEdge_Sec|SavedValue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FallingEdge_Sec|SavedValue~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FallingEdge_Sec|SavedValue~q\);

-- Location: LCCOMB_X94_Y40_N8
\FallingEdge_Sec|FallingOutput\ : cycloneive_lcell_comb
-- Equation(s):
-- \FallingEdge_Sec|FallingOutput~combout\ = (!\BtnSec~input_o\ & \FallingEdge_Sec|SavedValue~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BtnSec~input_o\,
	datad => \FallingEdge_Sec|SavedValue~q\,
	combout => \FallingEdge_Sec|FallingOutput~combout\);

-- Location: LCCOMB_X95_Y40_N22
\StateMachine_1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector4~0_combout\ = (!\FallingEdge_Sec|FallingOutput~combout\ & (\StateMachine_1|mode.st_100~q\ & (!\FallingEdge_Min|FallingOutput~combout\ & !\StateMachine_1|counter_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FallingEdge_Sec|FallingOutput~combout\,
	datab => \StateMachine_1|mode.st_100~q\,
	datac => \FallingEdge_Min|FallingOutput~combout\,
	datad => \StateMachine_1|counter_proc~0_combout\,
	combout => \StateMachine_1|Selector4~0_combout\);

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

-- Location: FF_X95_Y40_N3
\FallingEdge_Clear|SavedValue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \BtnClear~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FallingEdge_Clear|SavedValue~q\);

-- Location: LCCOMB_X94_Y40_N4
\StateMachine_1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector6~0_combout\ = (\StateMachine_1|mode.st_100~q\ & (!\BtnMin~input_o\ & \FallingEdge_Min|SavedValue~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|mode.st_100~q\,
	datab => \BtnMin~input_o\,
	datad => \FallingEdge_Min|SavedValue~q\,
	combout => \StateMachine_1|Selector6~0_combout\);

-- Location: LCCOMB_X94_Y40_N6
\StateMachine_1|nxt_mode.st_110_731\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_110_731~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|Selector6~0_combout\))) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|nxt_mode.st_110_731~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|nxt_mode.st_110_731~combout\,
	datac => \StateMachine_1|Selector6~0_combout\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_110_731~combout\);

-- Location: LCCOMB_X94_Y40_N2
\StateMachine_1|mode.st_110~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|mode.st_110~feeder_combout\ = \StateMachine_1|nxt_mode.st_110_731~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \StateMachine_1|nxt_mode.st_110_731~combout\,
	combout => \StateMachine_1|mode.st_110~feeder_combout\);

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

-- Location: FF_X94_Y40_N3
\StateMachine_1|mode.st_110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \StateMachine_1|mode.st_110~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_110~q\);

-- Location: LCCOMB_X94_Y40_N12
\StateMachine_1|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector7~4_combout\ = (!\BtnSec~input_o\ & (!\FallingEdge_Min|FallingOutput~combout\ & (\FallingEdge_Sec|SavedValue~q\ & \StateMachine_1|mode.st_100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BtnSec~input_o\,
	datab => \FallingEdge_Min|FallingOutput~combout\,
	datac => \FallingEdge_Sec|SavedValue~q\,
	datad => \StateMachine_1|mode.st_100~q\,
	combout => \StateMachine_1|Selector7~4_combout\);

-- Location: LCCOMB_X94_Y40_N22
\StateMachine_1|nxt_mode.st_111_708\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_111_708~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|Selector7~4_combout\)) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|nxt_mode.st_111_708~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|Selector7~4_combout\,
	datac => \StateMachine_1|nxt_mode.st_111_708~combout\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_111_708~combout\);

-- Location: FF_X94_Y40_N5
\StateMachine_1|mode.st_111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \StateMachine_1|nxt_mode.st_111_708~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_111~q\);

-- Location: LCCOMB_X94_Y40_N24
\StateMachine_1|nxt_mode~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode~2_combout\ = (!\StateMachine_1|mode.st_110~q\ & !\StateMachine_1|mode.st_111~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|mode.st_110~q\,
	datad => \StateMachine_1|mode.st_111~q\,
	combout => \StateMachine_1|nxt_mode~2_combout\);

-- Location: LCCOMB_X94_Y40_N0
\StateMachine_1|nxt_mode.st_120_685\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_120_685~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((!\StateMachine_1|nxt_mode~2_combout\))) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|nxt_mode.st_120_685~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|nxt_mode.st_120_685~combout\,
	datac => \StateMachine_1|nxt_mode~2_combout\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_120_685~combout\);

-- Location: LCCOMB_X94_Y40_N28
\StateMachine_1|mode.st_120~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|mode.st_120~feeder_combout\ = \StateMachine_1|nxt_mode.st_120_685~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \StateMachine_1|nxt_mode.st_120_685~combout\,
	combout => \StateMachine_1|mode.st_120~feeder_combout\);

-- Location: FF_X94_Y40_N29
\StateMachine_1|mode.st_120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \StateMachine_1|mode.st_120~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_120~q\);

-- Location: LCCOMB_X94_Y40_N14
\StateMachine_1|counter_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|counter_proc~1_combout\ = (\BtnSec~input_o\ & (((\BtnMin~input_o\)) # (!\FallingEdge_Min|SavedValue~q\))) # (!\BtnSec~input_o\ & (!\FallingEdge_Sec|SavedValue~q\ & ((\BtnMin~input_o\) # (!\FallingEdge_Min|SavedValue~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BtnSec~input_o\,
	datab => \FallingEdge_Min|SavedValue~q\,
	datac => \BtnMin~input_o\,
	datad => \FallingEdge_Sec|SavedValue~q\,
	combout => \StateMachine_1|counter_proc~1_combout\);

-- Location: LCCOMB_X95_Y40_N18
\StateMachine_1|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector48~0_combout\ = (\SW3~input_o\) # (((!\BtnStart~input_o\ & \FallingEdge_Start|SavedValue~q\)) # (!\StateMachine_1|mode.st_200~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BtnStart~input_o\,
	datab => \SW3~input_o\,
	datac => \FallingEdge_Start|SavedValue~q\,
	datad => \StateMachine_1|mode.st_200~q\,
	combout => \StateMachine_1|Selector48~0_combout\);

-- Location: LCCOMB_X94_Y40_N18
\StateMachine_1|Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector48~1_combout\ = (\StateMachine_1|Selector48~0_combout\ & ((\StateMachine_1|counter_proc~1_combout\) # (!\StateMachine_1|mode.st_120~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|mode.st_120~q\,
	datac => \StateMachine_1|counter_proc~1_combout\,
	datad => \StateMachine_1|Selector48~0_combout\,
	combout => \StateMachine_1|Selector48~1_combout\);

-- Location: LCCOMB_X95_Y40_N2
\StateMachine_1|Selector48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector48~2_combout\ = (\StateMachine_1|Selector48~1_combout\ & (((!\BtnClear~input_o\ & \FallingEdge_Clear|SavedValue~q\)) # (!\StateMachine_1|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|Selector4~0_combout\,
	datab => \BtnClear~input_o\,
	datac => \FallingEdge_Clear|SavedValue~q\,
	datad => \StateMachine_1|Selector48~1_combout\,
	combout => \StateMachine_1|Selector48~2_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: LCCOMB_X99_Y40_N28
\StateMachine_1|nxt_mode.st_310_570\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_310_570~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|Selector13~0_combout\))) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|nxt_mode.st_310_570~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|nxt_mode.st_310_570~combout\,
	datac => \StateMachine_1|Selector13~0_combout\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_310_570~combout\);

-- Location: FF_X99_Y40_N29
\StateMachine_1|mode.st_310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \StateMachine_1|nxt_mode.st_310_570~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_310~q\);

-- Location: LCCOMB_X98_Y40_N14
\StateMachine_1|WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|WideOr21~0_combout\ = (\StateMachine_1|mode.st_290~q\) # (\StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|mode.st_290~q\,
	datad => \StateMachine_1|mode.st_310~q\,
	combout => \StateMachine_1|WideOr21~0_combout\);

-- Location: LCCOMB_X100_Y40_N6
\StateMachine_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~0_combout\ = \StateMachine_1|BuzzerCounter\(0) $ (VCC)
-- \StateMachine_1|Add0~1\ = CARRY(\StateMachine_1|BuzzerCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|BuzzerCounter\(0),
	datad => VCC,
	combout => \StateMachine_1|Add0~0_combout\,
	cout => \StateMachine_1|Add0~1\);

-- Location: LCCOMB_X99_Y40_N14
\StateMachine_1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~29_combout\ = (\StateMachine_1|Add0~0_combout\ & \StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|Add0~0_combout\,
	datad => \StateMachine_1|mode.st_310~q\,
	combout => \StateMachine_1|Add0~29_combout\);

-- Location: LCCOMB_X99_Y40_N6
\StateMachine_1|BuzzerCounter[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerCounter\(0) = (\StateMachine_1|WideOr21~0_combout\ & ((\StateMachine_1|Add0~29_combout\))) # (!\StateMachine_1|WideOr21~0_combout\ & (\StateMachine_1|BuzzerCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|BuzzerCounter\(0),
	datac => \StateMachine_1|Add0~29_combout\,
	datad => \StateMachine_1|WideOr21~0_combout\,
	combout => \StateMachine_1|BuzzerCounter\(0));

-- Location: LCCOMB_X100_Y40_N8
\StateMachine_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~2_combout\ = (\StateMachine_1|BuzzerCounter\(1) & (\StateMachine_1|Add0~1\ & VCC)) # (!\StateMachine_1|BuzzerCounter\(1) & (!\StateMachine_1|Add0~1\))
-- \StateMachine_1|Add0~3\ = CARRY((!\StateMachine_1|BuzzerCounter\(1) & !\StateMachine_1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|BuzzerCounter\(1),
	datad => VCC,
	cin => \StateMachine_1|Add0~1\,
	combout => \StateMachine_1|Add0~2_combout\,
	cout => \StateMachine_1|Add0~3\);

-- Location: LCCOMB_X99_Y40_N30
\StateMachine_1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~7_combout\ = (\StateMachine_1|Add0~2_combout\) # (!\StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateMachine_1|Add0~2_combout\,
	datad => \StateMachine_1|mode.st_310~q\,
	combout => \StateMachine_1|Add0~7_combout\);

-- Location: LCCOMB_X99_Y40_N16
\StateMachine_1|BuzzerCounter[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerCounter\(1) = (\StateMachine_1|WideOr21~0_combout\ & ((\StateMachine_1|Add0~7_combout\))) # (!\StateMachine_1|WideOr21~0_combout\ & (\StateMachine_1|BuzzerCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|BuzzerCounter\(1),
	datac => \StateMachine_1|Add0~7_combout\,
	datad => \StateMachine_1|WideOr21~0_combout\,
	combout => \StateMachine_1|BuzzerCounter\(1));

-- Location: LCCOMB_X100_Y40_N10
\StateMachine_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~4_combout\ = (\StateMachine_1|BuzzerCounter\(2) & ((GND) # (!\StateMachine_1|Add0~3\))) # (!\StateMachine_1|BuzzerCounter\(2) & (\StateMachine_1|Add0~3\ $ (GND)))
-- \StateMachine_1|Add0~5\ = CARRY((\StateMachine_1|BuzzerCounter\(2)) # (!\StateMachine_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|BuzzerCounter\(2),
	datad => VCC,
	cin => \StateMachine_1|Add0~3\,
	combout => \StateMachine_1|Add0~4_combout\,
	cout => \StateMachine_1|Add0~5\);

-- Location: LCCOMB_X100_Y40_N2
\StateMachine_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~6_combout\ = (\StateMachine_1|Add0~4_combout\ & \StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|Add0~4_combout\,
	datac => \StateMachine_1|mode.st_310~q\,
	combout => \StateMachine_1|Add0~6_combout\);

-- Location: LCCOMB_X100_Y40_N30
\StateMachine_1|BuzzerCounter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerCounter\(2) = (\StateMachine_1|WideOr21~0_combout\ & ((\StateMachine_1|Add0~6_combout\))) # (!\StateMachine_1|WideOr21~0_combout\ & (\StateMachine_1|BuzzerCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|BuzzerCounter\(2),
	datac => \StateMachine_1|WideOr21~0_combout\,
	datad => \StateMachine_1|Add0~6_combout\,
	combout => \StateMachine_1|BuzzerCounter\(2));

-- Location: LCCOMB_X100_Y40_N12
\StateMachine_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~8_combout\ = (\StateMachine_1|BuzzerCounter\(3) & (\StateMachine_1|Add0~5\ & VCC)) # (!\StateMachine_1|BuzzerCounter\(3) & (!\StateMachine_1|Add0~5\))
-- \StateMachine_1|Add0~9\ = CARRY((!\StateMachine_1|BuzzerCounter\(3) & !\StateMachine_1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|BuzzerCounter\(3),
	datad => VCC,
	cin => \StateMachine_1|Add0~5\,
	combout => \StateMachine_1|Add0~8_combout\,
	cout => \StateMachine_1|Add0~9\);

-- Location: LCCOMB_X100_Y40_N4
\StateMachine_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~16_combout\ = (\StateMachine_1|Add0~8_combout\ & \StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|Add0~8_combout\,
	datac => \StateMachine_1|mode.st_310~q\,
	combout => \StateMachine_1|Add0~16_combout\);

-- Location: LCCOMB_X100_Y40_N0
\StateMachine_1|BuzzerCounter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerCounter\(3) = (\StateMachine_1|WideOr21~0_combout\ & ((\StateMachine_1|Add0~16_combout\))) # (!\StateMachine_1|WideOr21~0_combout\ & (\StateMachine_1|BuzzerCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|BuzzerCounter\(3),
	datac => \StateMachine_1|Add0~16_combout\,
	datad => \StateMachine_1|WideOr21~0_combout\,
	combout => \StateMachine_1|BuzzerCounter\(3));

-- Location: LCCOMB_X100_Y40_N14
\StateMachine_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~10_combout\ = (\StateMachine_1|BuzzerCounter\(4) & ((GND) # (!\StateMachine_1|Add0~9\))) # (!\StateMachine_1|BuzzerCounter\(4) & (\StateMachine_1|Add0~9\ $ (GND)))
-- \StateMachine_1|Add0~11\ = CARRY((\StateMachine_1|BuzzerCounter\(4)) # (!\StateMachine_1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|BuzzerCounter\(4),
	datad => VCC,
	cin => \StateMachine_1|Add0~9\,
	combout => \StateMachine_1|Add0~10_combout\,
	cout => \StateMachine_1|Add0~11\);

-- Location: LCCOMB_X100_Y40_N26
\StateMachine_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~12_combout\ = (\StateMachine_1|Add0~10_combout\) # (!\StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateMachine_1|mode.st_310~q\,
	datad => \StateMachine_1|Add0~10_combout\,
	combout => \StateMachine_1|Add0~12_combout\);

-- Location: LCCOMB_X100_Y40_N28
\StateMachine_1|BuzzerCounter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerCounter\(4) = (\StateMachine_1|WideOr21~0_combout\ & ((\StateMachine_1|Add0~12_combout\))) # (!\StateMachine_1|WideOr21~0_combout\ & (\StateMachine_1|BuzzerCounter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|BuzzerCounter\(4),
	datac => \StateMachine_1|Add0~12_combout\,
	datad => \StateMachine_1|WideOr21~0_combout\,
	combout => \StateMachine_1|BuzzerCounter\(4));

-- Location: LCCOMB_X100_Y40_N16
\StateMachine_1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~13_combout\ = (\StateMachine_1|BuzzerCounter\(5) & (\StateMachine_1|Add0~11\ & VCC)) # (!\StateMachine_1|BuzzerCounter\(5) & (!\StateMachine_1|Add0~11\))
-- \StateMachine_1|Add0~14\ = CARRY((!\StateMachine_1|BuzzerCounter\(5) & !\StateMachine_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|BuzzerCounter\(5),
	datad => VCC,
	cin => \StateMachine_1|Add0~11\,
	combout => \StateMachine_1|Add0~13_combout\,
	cout => \StateMachine_1|Add0~14\);

-- Location: LCCOMB_X101_Y40_N24
\StateMachine_1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~15_combout\ = (\StateMachine_1|Add0~13_combout\) # (!\StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateMachine_1|Add0~13_combout\,
	datad => \StateMachine_1|mode.st_310~q\,
	combout => \StateMachine_1|Add0~15_combout\);

-- Location: LCCOMB_X101_Y40_N26
\StateMachine_1|BuzzerCounter[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerCounter\(5) = (\StateMachine_1|WideOr21~0_combout\ & ((\StateMachine_1|Add0~15_combout\))) # (!\StateMachine_1|WideOr21~0_combout\ & (\StateMachine_1|BuzzerCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|BuzzerCounter\(5),
	datac => \StateMachine_1|WideOr21~0_combout\,
	datad => \StateMachine_1|Add0~15_combout\,
	combout => \StateMachine_1|BuzzerCounter\(5));

-- Location: LCCOMB_X99_Y40_N26
\StateMachine_1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|LessThan0~0_combout\ = (\StateMachine_1|BuzzerCounter\(5)) # ((\StateMachine_1|BuzzerCounter\(4)) # ((\StateMachine_1|BuzzerCounter\(2)) # (\StateMachine_1|BuzzerCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|BuzzerCounter\(5),
	datab => \StateMachine_1|BuzzerCounter\(4),
	datac => \StateMachine_1|BuzzerCounter\(2),
	datad => \StateMachine_1|BuzzerCounter\(1),
	combout => \StateMachine_1|LessThan0~0_combout\);

-- Location: LCCOMB_X100_Y40_N18
\StateMachine_1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~17_combout\ = (\StateMachine_1|BuzzerCounter\(6) & ((GND) # (!\StateMachine_1|Add0~14\))) # (!\StateMachine_1|BuzzerCounter\(6) & (\StateMachine_1|Add0~14\ $ (GND)))
-- \StateMachine_1|Add0~18\ = CARRY((\StateMachine_1|BuzzerCounter\(6)) # (!\StateMachine_1|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|BuzzerCounter\(6),
	datad => VCC,
	cin => \StateMachine_1|Add0~14\,
	combout => \StateMachine_1|Add0~17_combout\,
	cout => \StateMachine_1|Add0~18\);

-- Location: LCCOMB_X99_Y40_N12
\StateMachine_1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~19_combout\ = (\StateMachine_1|mode.st_310~q\ & \StateMachine_1|Add0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|mode.st_310~q\,
	datad => \StateMachine_1|Add0~17_combout\,
	combout => \StateMachine_1|Add0~19_combout\);

-- Location: LCCOMB_X99_Y40_N4
\StateMachine_1|BuzzerCounter[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerCounter\(6) = (\StateMachine_1|WideOr21~0_combout\ & ((\StateMachine_1|Add0~19_combout\))) # (!\StateMachine_1|WideOr21~0_combout\ & (\StateMachine_1|BuzzerCounter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|WideOr21~0_combout\,
	datac => \StateMachine_1|BuzzerCounter\(6),
	datad => \StateMachine_1|Add0~19_combout\,
	combout => \StateMachine_1|BuzzerCounter\(6));

-- Location: LCCOMB_X100_Y40_N20
\StateMachine_1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~20_combout\ = (\StateMachine_1|BuzzerCounter\(7) & (\StateMachine_1|Add0~18\ & VCC)) # (!\StateMachine_1|BuzzerCounter\(7) & (!\StateMachine_1|Add0~18\))
-- \StateMachine_1|Add0~21\ = CARRY((!\StateMachine_1|BuzzerCounter\(7) & !\StateMachine_1|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|BuzzerCounter\(7),
	datad => VCC,
	cin => \StateMachine_1|Add0~18\,
	combout => \StateMachine_1|Add0~20_combout\,
	cout => \StateMachine_1|Add0~21\);

-- Location: LCCOMB_X99_Y40_N18
\StateMachine_1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~22_combout\ = (\StateMachine_1|Add0~20_combout\ & \StateMachine_1|mode.st_310~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateMachine_1|Add0~20_combout\,
	datad => \StateMachine_1|mode.st_310~q\,
	combout => \StateMachine_1|Add0~22_combout\);

-- Location: LCCOMB_X99_Y40_N20
\StateMachine_1|BuzzerCounter[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerCounter\(7) = (\StateMachine_1|WideOr21~0_combout\ & ((\StateMachine_1|Add0~22_combout\))) # (!\StateMachine_1|WideOr21~0_combout\ & (\StateMachine_1|BuzzerCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|WideOr21~0_combout\,
	datab => \StateMachine_1|BuzzerCounter\(7),
	datad => \StateMachine_1|Add0~22_combout\,
	combout => \StateMachine_1|BuzzerCounter\(7));

-- Location: LCCOMB_X100_Y40_N22
\StateMachine_1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~23_combout\ = (\StateMachine_1|BuzzerCounter\(8) & ((GND) # (!\StateMachine_1|Add0~21\))) # (!\StateMachine_1|BuzzerCounter\(8) & (\StateMachine_1|Add0~21\ $ (GND)))
-- \StateMachine_1|Add0~24\ = CARRY((\StateMachine_1|BuzzerCounter\(8)) # (!\StateMachine_1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|BuzzerCounter\(8),
	datad => VCC,
	cin => \StateMachine_1|Add0~21\,
	combout => \StateMachine_1|Add0~23_combout\,
	cout => \StateMachine_1|Add0~24\);

-- Location: LCCOMB_X99_Y40_N2
\StateMachine_1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~25_combout\ = (\StateMachine_1|mode.st_310~q\ & \StateMachine_1|Add0~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|mode.st_310~q\,
	datad => \StateMachine_1|Add0~23_combout\,
	combout => \StateMachine_1|Add0~25_combout\);

-- Location: LCCOMB_X99_Y40_N10
\StateMachine_1|BuzzerCounter[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerCounter\(8) = (\StateMachine_1|WideOr21~0_combout\ & ((\StateMachine_1|Add0~25_combout\))) # (!\StateMachine_1|WideOr21~0_combout\ & (\StateMachine_1|BuzzerCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|WideOr21~0_combout\,
	datac => \StateMachine_1|BuzzerCounter\(8),
	datad => \StateMachine_1|Add0~25_combout\,
	combout => \StateMachine_1|BuzzerCounter\(8));

-- Location: LCCOMB_X100_Y40_N24
\StateMachine_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~26_combout\ = \StateMachine_1|Add0~24\ $ (!\StateMachine_1|BuzzerCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \StateMachine_1|BuzzerCounter\(9),
	cin => \StateMachine_1|Add0~24\,
	combout => \StateMachine_1|Add0~26_combout\);

-- Location: LCCOMB_X99_Y40_N24
\StateMachine_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Add0~28_combout\ = (\StateMachine_1|mode.st_310~q\ & \StateMachine_1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|mode.st_310~q\,
	datad => \StateMachine_1|Add0~26_combout\,
	combout => \StateMachine_1|Add0~28_combout\);

-- Location: LCCOMB_X99_Y40_N8
\StateMachine_1|BuzzerCounter[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerCounter\(9) = (\StateMachine_1|WideOr21~0_combout\ & ((\StateMachine_1|Add0~28_combout\))) # (!\StateMachine_1|WideOr21~0_combout\ & (\StateMachine_1|BuzzerCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|WideOr21~0_combout\,
	datac => \StateMachine_1|BuzzerCounter\(9),
	datad => \StateMachine_1|Add0~28_combout\,
	combout => \StateMachine_1|BuzzerCounter\(9));

-- Location: LCCOMB_X99_Y40_N0
\StateMachine_1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|LessThan0~1_combout\ = (\StateMachine_1|BuzzerCounter\(7)) # ((\StateMachine_1|BuzzerCounter\(6)) # ((\StateMachine_1|BuzzerCounter\(9)) # (\StateMachine_1|BuzzerCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|BuzzerCounter\(7),
	datab => \StateMachine_1|BuzzerCounter\(6),
	datac => \StateMachine_1|BuzzerCounter\(9),
	datad => \StateMachine_1|BuzzerCounter\(8),
	combout => \StateMachine_1|LessThan0~1_combout\);

-- Location: LCCOMB_X99_Y40_N22
\StateMachine_1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector13~0_combout\ = (\StateMachine_1|mode.st_300~q\ & ((\StateMachine_1|BuzzerCounter\(3)) # ((\StateMachine_1|LessThan0~0_combout\) # (\StateMachine_1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|BuzzerCounter\(3),
	datab => \StateMachine_1|mode.st_300~q\,
	datac => \StateMachine_1|LessThan0~0_combout\,
	datad => \StateMachine_1|LessThan0~1_combout\,
	combout => \StateMachine_1|Selector13~0_combout\);

-- Location: LCCOMB_X96_Y40_N20
\StateMachine_1|nxt_mode.st_320_547\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_320_547~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|mode.st_310~q\))) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|nxt_mode.st_320_547~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|nxt_mode.st_320_547~combout\,
	datac => \StateMachine_1|mode.st_310~q\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_320_547~combout\);

-- Location: FF_X96_Y40_N21
\StateMachine_1|mode.st_320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \StateMachine_1|nxt_mode.st_320_547~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_320~q\);

-- Location: LCCOMB_X96_Y40_N6
\StateMachine_1|Selector48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector48~3_combout\ = (\StateMachine_1|Selector48~2_combout\ & ((\SW2~input_o\ & ((!\StateMachine_1|mode.st_320~q\))) # (!\SW2~input_o\ & (!\StateMachine_1|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|Selector48~2_combout\,
	datab => \SW2~input_o\,
	datac => \StateMachine_1|Selector13~0_combout\,
	datad => \StateMachine_1|mode.st_320~q\,
	combout => \StateMachine_1|Selector48~3_combout\);

-- Location: CLKCTRL_G7
\StateMachine_1|Selector48~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \StateMachine_1|Selector48~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \StateMachine_1|Selector48~3clkctrl_outclk\);

-- Location: LCCOMB_X96_Y40_N22
\StateMachine_1|nxt_mode.st_200_639\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_200_639~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|mode.st_190~q\))) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|nxt_mode.st_200_639~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|nxt_mode.st_200_639~combout\,
	datac => \StateMachine_1|mode.st_190~q\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_200_639~combout\);

-- Location: FF_X96_Y40_N15
\StateMachine_1|mode.st_200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \StateMachine_1|nxt_mode.st_200_639~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_200~q\);

-- Location: LCCOMB_X96_Y40_N16
\StateMachine_1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector11~0_combout\ = (\StateMachine_1|mode.st_200~q\ & \SW3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateMachine_1|mode.st_200~q\,
	datad => \SW3~input_o\,
	combout => \StateMachine_1|Selector11~0_combout\);

-- Location: LCCOMB_X97_Y40_N18
\StateMachine_1|nxt_mode.st_290_616\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_290_616~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|Selector11~0_combout\)) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|nxt_mode.st_290_616~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|Selector11~0_combout\,
	datac => \StateMachine_1|nxt_mode.st_290_616~combout\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_290_616~combout\);

-- Location: LCCOMB_X97_Y40_N22
\StateMachine_1|mode.st_290~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|mode.st_290~feeder_combout\ = \StateMachine_1|nxt_mode.st_290_616~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \StateMachine_1|nxt_mode.st_290_616~combout\,
	combout => \StateMachine_1|mode.st_290~feeder_combout\);

-- Location: FF_X97_Y40_N23
\StateMachine_1|mode.st_290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \StateMachine_1|mode.st_290~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_290~q\);

-- Location: LCCOMB_X96_Y40_N24
\StateMachine_1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector12~0_combout\ = (\StateMachine_1|mode.st_290~q\) # (\StateMachine_1|mode.st_320~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateMachine_1|mode.st_290~q\,
	datad => \StateMachine_1|mode.st_320~q\,
	combout => \StateMachine_1|Selector12~0_combout\);

-- Location: LCCOMB_X95_Y40_N30
\StateMachine_1|nxt_mode.st_300_593\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_300_593~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|Selector12~0_combout\))) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|nxt_mode.st_300_593~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|nxt_mode.st_300_593~combout\,
	datac => \StateMachine_1|Selector12~0_combout\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_300_593~combout\);

-- Location: FF_X95_Y40_N7
\StateMachine_1|mode.st_300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \StateMachine_1|nxt_mode.st_300_593~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_300~q\);

-- Location: LCCOMB_X97_Y40_N12
\StateMachine_1|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector42~0_combout\ = (!\StateMachine_1|BuzzerCounter\(8) & (!\StateMachine_1|BuzzerCounter\(6) & (!\StateMachine_1|BuzzerCounter\(9) & !\StateMachine_1|BuzzerCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|BuzzerCounter\(8),
	datab => \StateMachine_1|BuzzerCounter\(6),
	datac => \StateMachine_1|BuzzerCounter\(9),
	datad => \StateMachine_1|BuzzerCounter\(3),
	combout => \StateMachine_1|Selector42~0_combout\);

-- Location: LCCOMB_X96_Y40_N26
\StateMachine_1|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector42~1_combout\ = (\StateMachine_1|mode.st_300~q\ & (!\StateMachine_1|BuzzerCounter\(7) & (\StateMachine_1|Selector42~0_combout\ & !\StateMachine_1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|mode.st_300~q\,
	datab => \StateMachine_1|BuzzerCounter\(7),
	datac => \StateMachine_1|Selector42~0_combout\,
	datad => \StateMachine_1|LessThan0~0_combout\,
	combout => \StateMachine_1|Selector42~1_combout\);

-- Location: LCCOMB_X96_Y40_N8
\StateMachine_1|nxt_mode.st_390_524\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_390_524~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|Selector42~1_combout\)) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|nxt_mode.st_390_524~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|Selector42~1_combout\,
	datac => \StateMachine_1|nxt_mode.st_390_524~combout\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_390_524~combout\);

-- Location: FF_X96_Y40_N9
\StateMachine_1|mode.st_390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \StateMachine_1|nxt_mode.st_390_524~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_390~q\);

-- Location: LCCOMB_X95_Y40_N20
\StateMachine_1|nxt_mode.st_reset_777\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_reset_777~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|Selector4~0_combout\))) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|nxt_mode.st_reset_777~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|nxt_mode.st_reset_777~combout\,
	datac => \StateMachine_1|Selector4~0_combout\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_reset_777~combout\);

-- Location: LCCOMB_X95_Y40_N8
\StateMachine_1|mode.st_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|mode.st_reset~0_combout\ = !\StateMachine_1|nxt_mode.st_reset_777~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \StateMachine_1|nxt_mode.st_reset_777~combout\,
	combout => \StateMachine_1|mode.st_reset~0_combout\);

-- Location: FF_X95_Y40_N9
\StateMachine_1|mode.st_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \StateMachine_1|mode.st_reset~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_reset~q\);

-- Location: LCCOMB_X95_Y40_N16
\StateMachine_1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector5~0_combout\ = (\StateMachine_1|mode.st_390~q\) # (((\StateMachine_1|mode.st_200~q\ & !\SW3~input_o\)) # (!\StateMachine_1|mode.st_reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|mode.st_390~q\,
	datab => \StateMachine_1|mode.st_200~q\,
	datac => \StateMachine_1|mode.st_reset~q\,
	datad => \SW3~input_o\,
	combout => \StateMachine_1|Selector5~0_combout\);

-- Location: LCCOMB_X95_Y40_N12
\StateMachine_1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector5~1_combout\ = (\StateMachine_1|Selector5~0_combout\) # (\StateMachine_1|mode.st_120~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|Selector5~0_combout\,
	datad => \StateMachine_1|mode.st_120~q\,
	combout => \StateMachine_1|Selector5~1_combout\);

-- Location: LCCOMB_X95_Y40_N4
\StateMachine_1|nxt_mode.st_100_754\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_100_754~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|Selector5~1_combout\))) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|nxt_mode.st_100_754~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|nxt_mode.st_100_754~combout\,
	datab => \StateMachine_1|Selector5~1_combout\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_100_754~combout\);

-- Location: FF_X95_Y40_N5
\StateMachine_1|mode.st_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \StateMachine_1|nxt_mode.st_100_754~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_100~q\);

-- Location: LCCOMB_X95_Y40_N24
\StateMachine_1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|Selector9~0_combout\ = (\StateMachine_1|counter_proc~0_combout\ & (!\FallingEdge_Min|FallingOutput~combout\ & (!\FallingEdge_Sec|FallingOutput~combout\ & \StateMachine_1|mode.st_100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|counter_proc~0_combout\,
	datab => \FallingEdge_Min|FallingOutput~combout\,
	datac => \FallingEdge_Sec|FallingOutput~combout\,
	datad => \StateMachine_1|mode.st_100~q\,
	combout => \StateMachine_1|Selector9~0_combout\);

-- Location: LCCOMB_X95_Y40_N28
\StateMachine_1|nxt_mode.st_190_662\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|nxt_mode.st_190_662~combout\ = (GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & ((\StateMachine_1|Selector9~0_combout\))) # (!GLOBAL(\StateMachine_1|Selector48~3clkctrl_outclk\) & (\StateMachine_1|nxt_mode.st_190_662~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|nxt_mode.st_190_662~combout\,
	datac => \StateMachine_1|Selector9~0_combout\,
	datad => \StateMachine_1|Selector48~3clkctrl_outclk\,
	combout => \StateMachine_1|nxt_mode.st_190_662~combout\);

-- Location: FF_X95_Y40_N29
\StateMachine_1|mode.st_190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \StateMachine_1|nxt_mode.st_190_662~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StateMachine_1|mode.st_190~q\);

-- Location: LCCOMB_X96_Y40_N4
\StateMachine_1|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|WideOr11~0_combout\ = (\StateMachine_1|mode.st_190~q\) # ((\StateMachine_1|mode.st_100~q\) # ((\StateMachine_1|mode.st_200~q\) # (\StateMachine_1|mode.st_120~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|mode.st_190~q\,
	datab => \StateMachine_1|mode.st_100~q\,
	datac => \StateMachine_1|mode.st_200~q\,
	datad => \StateMachine_1|mode.st_120~q\,
	combout => \StateMachine_1|WideOr11~0_combout\);

-- Location: LCCOMB_X94_Y40_N30
\StateMachine_1|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|WideOr7~combout\ = (\StateMachine_1|mode.st_110~q\) # ((\StateMachine_1|mode.st_111~q\) # (\StateMachine_1|mode.st_390~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|mode.st_110~q\,
	datac => \StateMachine_1|mode.st_111~q\,
	datad => \StateMachine_1|mode.st_390~q\,
	combout => \StateMachine_1|WideOr7~combout\);

-- Location: CLKCTRL_G8
\StateMachine_1|WideOr7~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \StateMachine_1|WideOr7~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \StateMachine_1|WideOr7~clkctrl_outclk\);

-- Location: LCCOMB_X96_Y40_N14
\StateMachine_1|DebugLED_o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|DebugLED_o\(0) = (GLOBAL(\StateMachine_1|WideOr7~clkctrl_outclk\) & ((\StateMachine_1|DebugLED_o\(0)))) # (!GLOBAL(\StateMachine_1|WideOr7~clkctrl_outclk\) & (!\StateMachine_1|WideOr11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|WideOr11~0_combout\,
	datab => \StateMachine_1|DebugLED_o\(0),
	datad => \StateMachine_1|WideOr7~clkctrl_outclk\,
	combout => \StateMachine_1|DebugLED_o\(0));

-- Location: LCCOMB_X96_Y40_N18
\StateMachine_1|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|WideOr8~0_combout\ = (!\StateMachine_1|mode.st_200~q\ & !\StateMachine_1|mode.st_290~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StateMachine_1|mode.st_200~q\,
	datad => \StateMachine_1|mode.st_290~q\,
	combout => \StateMachine_1|WideOr8~0_combout\);

-- Location: LCCOMB_X96_Y40_N10
\StateMachine_1|DebugLED_o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|DebugLED_o\(1) = (GLOBAL(\StateMachine_1|WideOr7~clkctrl_outclk\) & (\StateMachine_1|DebugLED_o\(1))) # (!GLOBAL(\StateMachine_1|WideOr7~clkctrl_outclk\) & ((!\StateMachine_1|WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|DebugLED_o\(1),
	datac => \StateMachine_1|WideOr8~0_combout\,
	datad => \StateMachine_1|WideOr7~clkctrl_outclk\,
	combout => \StateMachine_1|DebugLED_o\(1));

-- Location: LCCOMB_X96_Y40_N0
\StateMachine_1|WideOr8\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|WideOr8~combout\ = (\StateMachine_1|mode.st_320~q\) # (((\StateMachine_1|mode.st_300~q\) # (\StateMachine_1|mode.st_310~q\)) # (!\StateMachine_1|WideOr8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|mode.st_320~q\,
	datab => \StateMachine_1|WideOr8~0_combout\,
	datac => \StateMachine_1|mode.st_300~q\,
	datad => \StateMachine_1|mode.st_310~q\,
	combout => \StateMachine_1|WideOr8~combout\);

-- Location: LCCOMB_X96_Y40_N12
\StateMachine_1|DebugLED_o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|DebugLED_o\(2) = (GLOBAL(\StateMachine_1|WideOr7~clkctrl_outclk\) & (\StateMachine_1|DebugLED_o\(2))) # (!GLOBAL(\StateMachine_1|WideOr7~clkctrl_outclk\) & ((!\StateMachine_1|WideOr8~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|DebugLED_o\(2),
	datac => \StateMachine_1|WideOr8~combout\,
	datad => \StateMachine_1|WideOr7~clkctrl_outclk\,
	combout => \StateMachine_1|DebugLED_o\(2));

-- Location: LCCOMB_X95_Y40_N14
\StateMachine_1|WideOr13\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|WideOr13~combout\ = (\StateMachine_1|mode.st_320~q\) # ((\StateMachine_1|mode.st_120~q\) # ((\StateMachine_1|mode.st_310~q\) # (\StateMachine_1|mode.st_300~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|mode.st_320~q\,
	datab => \StateMachine_1|mode.st_120~q\,
	datac => \StateMachine_1|mode.st_310~q\,
	datad => \StateMachine_1|mode.st_300~q\,
	combout => \StateMachine_1|WideOr13~combout\);

-- Location: CLKCTRL_G9
\StateMachine_1|WideOr13~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \StateMachine_1|WideOr13~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \StateMachine_1|WideOr13~clkctrl_outclk\);

-- Location: LCCOMB_X95_Y40_N0
\StateMachine_1|CountBlockControl_o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|CountBlockControl_o\(0) = (GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & ((\StateMachine_1|CountBlockControl_o\(0)))) # (!GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & (!\StateMachine_1|mode.st_reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|WideOr13~clkctrl_outclk\,
	datac => \StateMachine_1|mode.st_reset~q\,
	datad => \StateMachine_1|CountBlockControl_o\(0),
	combout => \StateMachine_1|CountBlockControl_o\(0));

-- Location: LCCOMB_X96_Y40_N2
\StateMachine_1|CountBlockControl_o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|CountBlockControl_o\(1) = (GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & ((\StateMachine_1|CountBlockControl_o\(1)))) # (!GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & (\StateMachine_1|mode.st_200~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|mode.st_200~q\,
	datac => \StateMachine_1|WideOr13~clkctrl_outclk\,
	datad => \StateMachine_1|CountBlockControl_o\(1),
	combout => \StateMachine_1|CountBlockControl_o\(1));

-- Location: LCCOMB_X94_Y40_N26
\StateMachine_1|CountBlockControl_o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|CountBlockControl_o\(2) = (GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & (\StateMachine_1|CountBlockControl_o\(2))) # (!GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & ((\StateMachine_1|mode.st_110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|CountBlockControl_o\(2),
	datac => \StateMachine_1|mode.st_110~q\,
	datad => \StateMachine_1|WideOr13~clkctrl_outclk\,
	combout => \StateMachine_1|CountBlockControl_o\(2));

-- Location: LCCOMB_X94_Y40_N10
\StateMachine_1|CountBlockControl_o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|CountBlockControl_o\(3) = (GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & (\StateMachine_1|CountBlockControl_o\(3))) # (!GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & ((\StateMachine_1|mode.st_111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|CountBlockControl_o\(3),
	datac => \StateMachine_1|mode.st_111~q\,
	datad => \StateMachine_1|WideOr13~clkctrl_outclk\,
	combout => \StateMachine_1|CountBlockControl_o\(3));

-- Location: LCCOMB_X96_Y40_N30
\StateMachine_1|CountBlockControl_o[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|CountBlockControl_o\(4) = (GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & ((\StateMachine_1|CountBlockControl_o\(4)))) # (!GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & (\StateMachine_1|mode.st_190~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|mode.st_190~q\,
	datac => \StateMachine_1|WideOr13~clkctrl_outclk\,
	datad => \StateMachine_1|CountBlockControl_o\(4),
	combout => \StateMachine_1|CountBlockControl_o\(4));

-- Location: LCCOMB_X96_Y40_N28
\StateMachine_1|CountBlockControl_o[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|CountBlockControl_o\(5) = (GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & ((\StateMachine_1|CountBlockControl_o\(5)))) # (!GLOBAL(\StateMachine_1|WideOr13~clkctrl_outclk\) & (\StateMachine_1|mode.st_390~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|mode.st_390~q\,
	datac => \StateMachine_1|WideOr13~clkctrl_outclk\,
	datad => \StateMachine_1|CountBlockControl_o\(5),
	combout => \StateMachine_1|CountBlockControl_o\(5));

-- Location: LCCOMB_X95_Y40_N26
\StateMachine_1|WideOr20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|WideOr20~0_combout\ = (\StateMachine_1|mode.st_100~q\) # (((\StateMachine_1|mode.st_390~q\) # (\StateMachine_1|mode.st_300~q\)) # (!\StateMachine_1|mode.st_reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StateMachine_1|mode.st_100~q\,
	datab => \StateMachine_1|mode.st_reset~q\,
	datac => \StateMachine_1|mode.st_390~q\,
	datad => \StateMachine_1|mode.st_300~q\,
	combout => \StateMachine_1|WideOr20~0_combout\);

-- Location: LCCOMB_X95_Y40_N6
\StateMachine_1|BuzzerEnable_o\ : cycloneive_lcell_comb
-- Equation(s):
-- \StateMachine_1|BuzzerEnable_o~combout\ = (\StateMachine_1|WideOr20~0_combout\ & (\StateMachine_1|mode.st_300~q\)) # (!\StateMachine_1|WideOr20~0_combout\ & ((\StateMachine_1|BuzzerEnable_o~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StateMachine_1|WideOr20~0_combout\,
	datac => \StateMachine_1|mode.st_300~q\,
	datad => \StateMachine_1|BuzzerEnable_o~combout\,
	combout => \StateMachine_1|BuzzerEnable_o~combout\);

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


