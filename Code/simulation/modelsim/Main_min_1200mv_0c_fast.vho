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

-- DATE "12/12/2017 12:47:07"

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
	clk_DeciOverride : IN std_logic;
	Output1 : BUFFER std_logic_vector(6 DOWNTO 0);
	Output2 : BUFFER std_logic_vector(6 DOWNTO 0);
	Output3 : BUFFER std_logic_vector(6 DOWNTO 0);
	Output4 : BUFFER std_logic_vector(6 DOWNTO 0);
	CountValue_o : BUFFER std_logic_vector(12 DOWNTO 0);
	DebugLED : BUFFER std_logic_vector(7 DOWNTO 0);
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
-- CountValue_o[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[8]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[10]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CountValue_o[12]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DebugLED[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BuzzerOut	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnStart	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_DeciOverride	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnMin	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnSec	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_clk_DeciOverride : std_logic;
SIGNAL ww_Output1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Output2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Output3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Output4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CountValue_o : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_DebugLED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BuzzerOut : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SubMain_1|StateMachine_1|Selector32~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CountValue_o[0]~output_o\ : std_logic;
SIGNAL \CountValue_o[1]~output_o\ : std_logic;
SIGNAL \CountValue_o[2]~output_o\ : std_logic;
SIGNAL \CountValue_o[3]~output_o\ : std_logic;
SIGNAL \CountValue_o[4]~output_o\ : std_logic;
SIGNAL \CountValue_o[5]~output_o\ : std_logic;
SIGNAL \CountValue_o[6]~output_o\ : std_logic;
SIGNAL \CountValue_o[7]~output_o\ : std_logic;
SIGNAL \CountValue_o[8]~output_o\ : std_logic;
SIGNAL \CountValue_o[9]~output_o\ : std_logic;
SIGNAL \CountValue_o[10]~output_o\ : std_logic;
SIGNAL \CountValue_o[11]~output_o\ : std_logic;
SIGNAL \CountValue_o[12]~output_o\ : std_logic;
SIGNAL \DebugLED[0]~output_o\ : std_logic;
SIGNAL \DebugLED[1]~output_o\ : std_logic;
SIGNAL \DebugLED[2]~output_o\ : std_logic;
SIGNAL \DebugLED[3]~output_o\ : std_logic;
SIGNAL \DebugLED[4]~output_o\ : std_logic;
SIGNAL \DebugLED[5]~output_o\ : std_logic;
SIGNAL \DebugLED[6]~output_o\ : std_logic;
SIGNAL \DebugLED[7]~output_o\ : std_logic;
SIGNAL \BuzzerOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~1\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~3_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~5_combout\ : std_logic;
SIGNAL \BtnMin~input_o\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~13\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~14_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~13\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~16\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~19\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~22\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~25\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~27_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~29_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~28\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~30_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~15\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~16_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~32_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~17\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~18_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~31\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~33_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~35_combout\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Min|SavedValue~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector32~4_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector32~5_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector32~6_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector32~7_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~0_combout\ : std_logic;
SIGNAL \BtnSec~input_o\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Sec|SavedValue~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~1_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Equal0~1_combout\ : std_logic;
SIGNAL \BtnClear~input_o\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Clear|SavedValue~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Equal0~2_combout\ : std_logic;
SIGNAL \BtnStart~input_o\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Start|SavedValue~q\ : std_logic;
SIGNAL \SubMain_1|FallingEdge_Start|FallingOutput~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector5~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_190_1040~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_190~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector7~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector7~1_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_210_980~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_210~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_220_950~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_220~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector6~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_200_1010~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_200~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector10~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_290_890~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_290~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr11~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_300_860~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_300~feeder_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_300~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector12~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_310_830~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_310~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_320_800~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_320~q\ : std_logic;
SIGNAL \clk_DeciOverride~input_o\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector9~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_221_920~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_221~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector14~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_321_770~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_321~feeder_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_321~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector32~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector32~1_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_120_1070~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_120~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector32~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector32~3_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector32~8_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector15~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector15~1_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_330_740~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_330~feeder_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_330~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector1~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_100_1160~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_100~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector0~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_reset_1190~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_reset~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_reset~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr8~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~4\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~6_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~8_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~7\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~9_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~1\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~11_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~10\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~12_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~3\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~4_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~14_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~5\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~6_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~15_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~17_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~7\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~8_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~18_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~20_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~4_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~5_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~3_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|counter_proc~6_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector3~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector2~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_110_1130~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_110~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr12~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~9\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~10_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~21_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~23_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~11\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add0~12_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~24_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~26_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Equal0~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|LessThan1~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector3~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|LessThan1~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|LessThan1~1_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector3~1_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Selector3~3_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|nxt_mode.st_111_1100~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|mode.st_111~q\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|Add1~2_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr12~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr9~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr11~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr10~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr9~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|WideOr13~0_combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|BuzzerEnable~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|CountValue\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|ALT_INV_WideOr12~combout\ : std_logic;
SIGNAL \SubMain_1|StateMachine_1|ALT_INV_mode.st_reset~q\ : std_logic;

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
ww_clk_DeciOverride <= clk_DeciOverride;
Output1 <= ww_Output1;
Output2 <= ww_Output2;
Output3 <= ww_Output3;
Output4 <= ww_Output4;
CountValue_o <= ww_CountValue_o;
DebugLED <= ww_DebugLED;
BuzzerOut <= ww_BuzzerOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\SubMain_1|StateMachine_1|Selector32~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SubMain_1|StateMachine_1|Selector32~8_combout\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\SubMain_1|StateMachine_1|ALT_INV_WideOr12~combout\ <= NOT \SubMain_1|StateMachine_1|WideOr12~combout\;
\SubMain_1|StateMachine_1|ALT_INV_mode.st_reset~q\ <= NOT \SubMain_1|StateMachine_1|mode.st_reset~q\;
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

-- Location: IOOBUF_X87_Y73_N9
\CountValue_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CountValue_o[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\CountValue_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(1),
	devoe => ww_devoe,
	o => \CountValue_o[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\CountValue_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(2),
	devoe => ww_devoe,
	o => \CountValue_o[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\CountValue_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(3),
	devoe => ww_devoe,
	o => \CountValue_o[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\CountValue_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(4),
	devoe => ww_devoe,
	o => \CountValue_o[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\CountValue_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(5),
	devoe => ww_devoe,
	o => \CountValue_o[5]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\CountValue_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(6),
	devoe => ww_devoe,
	o => \CountValue_o[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\CountValue_o[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(7),
	devoe => ww_devoe,
	o => \CountValue_o[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\CountValue_o[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(8),
	devoe => ww_devoe,
	o => \CountValue_o[8]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\CountValue_o[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(9),
	devoe => ww_devoe,
	o => \CountValue_o[9]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\CountValue_o[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(10),
	devoe => ww_devoe,
	o => \CountValue_o[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\CountValue_o[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(11),
	devoe => ww_devoe,
	o => \CountValue_o[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\CountValue_o[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|CountValue\(12),
	devoe => ww_devoe,
	o => \CountValue_o[12]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\DebugLED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|ALT_INV_WideOr12~combout\,
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
	i => GND,
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
	i => \SubMain_1|StateMachine_1|WideOr11~combout\,
	devoe => ww_devoe,
	o => \DebugLED[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\DebugLED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugLED[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\DebugLED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|WideOr10~combout\,
	devoe => ww_devoe,
	o => \DebugLED[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\DebugLED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DebugLED[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\DebugLED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|WideOr9~combout\,
	devoe => ww_devoe,
	o => \DebugLED[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\DebugLED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|ALT_INV_mode.st_reset~q\,
	devoe => ww_devoe,
	o => \DebugLED[7]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\BuzzerOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SubMain_1|StateMachine_1|BuzzerEnable~combout\,
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

-- Location: LCCOMB_X72_Y49_N6
\SubMain_1|StateMachine_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~0_combout\ = \SubMain_1|StateMachine_1|CountValue\(3) $ (VCC)
-- \SubMain_1|StateMachine_1|Add0~1\ = CARRY(\SubMain_1|StateMachine_1|CountValue\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(3),
	datad => VCC,
	combout => \SubMain_1|StateMachine_1|Add0~0_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~1\);

-- Location: LCCOMB_X74_Y49_N6
\SubMain_1|StateMachine_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~0_combout\ = \SubMain_1|StateMachine_1|CountValue\(1) $ (VCC)
-- \SubMain_1|StateMachine_1|Add1~1\ = CARRY(\SubMain_1|StateMachine_1|CountValue\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(1),
	datad => VCC,
	combout => \SubMain_1|StateMachine_1|Add1~0_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~1\);

-- Location: LCCOMB_X74_Y49_N8
\SubMain_1|StateMachine_1|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~3_combout\ = (\SubMain_1|StateMachine_1|CountValue\(2) & (!\SubMain_1|StateMachine_1|Add1~1\)) # (!\SubMain_1|StateMachine_1|CountValue\(2) & ((\SubMain_1|StateMachine_1|Add1~1\) # (GND)))
-- \SubMain_1|StateMachine_1|Add1~4\ = CARRY((!\SubMain_1|StateMachine_1|Add1~1\) # (!\SubMain_1|StateMachine_1|CountValue\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(2),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add1~1\,
	combout => \SubMain_1|StateMachine_1|Add1~3_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~4\);

-- Location: LCCOMB_X75_Y50_N22
\SubMain_1|StateMachine_1|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~5_combout\ = (\SubMain_1|StateMachine_1|Add1~3_combout\ & \SubMain_1|StateMachine_1|mode.st_111~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|Add1~3_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_111~q\,
	combout => \SubMain_1|StateMachine_1|Add1~5_combout\);

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

-- Location: LCCOMB_X72_Y49_N18
\SubMain_1|StateMachine_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~12_combout\ = (\SubMain_1|StateMachine_1|CountValue\(9) & ((GND) # (!\SubMain_1|StateMachine_1|Add0~11\))) # (!\SubMain_1|StateMachine_1|CountValue\(9) & (\SubMain_1|StateMachine_1|Add0~11\ $ (GND)))
-- \SubMain_1|StateMachine_1|Add0~13\ = CARRY((\SubMain_1|StateMachine_1|CountValue\(9)) # (!\SubMain_1|StateMachine_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(9),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~11\,
	combout => \SubMain_1|StateMachine_1|Add0~12_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~13\);

-- Location: LCCOMB_X72_Y49_N20
\SubMain_1|StateMachine_1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~14_combout\ = (\SubMain_1|StateMachine_1|CountValue\(10) & (!\SubMain_1|StateMachine_1|Add0~13\)) # (!\SubMain_1|StateMachine_1|CountValue\(10) & ((\SubMain_1|StateMachine_1|Add0~13\) # (GND)))
-- \SubMain_1|StateMachine_1|Add0~15\ = CARRY((!\SubMain_1|StateMachine_1|Add0~13\) # (!\SubMain_1|StateMachine_1|CountValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(10),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~13\,
	combout => \SubMain_1|StateMachine_1|Add0~14_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~15\);

-- Location: LCCOMB_X74_Y49_N14
\SubMain_1|StateMachine_1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~12_combout\ = (\SubMain_1|StateMachine_1|CountValue\(5) & (\SubMain_1|StateMachine_1|Add1~10\ $ (GND))) # (!\SubMain_1|StateMachine_1|CountValue\(5) & (!\SubMain_1|StateMachine_1|Add1~10\ & VCC))
-- \SubMain_1|StateMachine_1|Add1~13\ = CARRY((\SubMain_1|StateMachine_1|CountValue\(5) & !\SubMain_1|StateMachine_1|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(5),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add1~10\,
	combout => \SubMain_1|StateMachine_1|Add1~12_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~13\);

-- Location: LCCOMB_X74_Y49_N16
\SubMain_1|StateMachine_1|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~15_combout\ = (\SubMain_1|StateMachine_1|CountValue\(6) & (!\SubMain_1|StateMachine_1|Add1~13\)) # (!\SubMain_1|StateMachine_1|CountValue\(6) & ((\SubMain_1|StateMachine_1|Add1~13\) # (GND)))
-- \SubMain_1|StateMachine_1|Add1~16\ = CARRY((!\SubMain_1|StateMachine_1|Add1~13\) # (!\SubMain_1|StateMachine_1|CountValue\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(6),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add1~13\,
	combout => \SubMain_1|StateMachine_1|Add1~15_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~16\);

-- Location: LCCOMB_X74_Y49_N18
\SubMain_1|StateMachine_1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~18_combout\ = (\SubMain_1|StateMachine_1|CountValue\(7) & (\SubMain_1|StateMachine_1|Add1~16\ $ (GND))) # (!\SubMain_1|StateMachine_1|CountValue\(7) & (!\SubMain_1|StateMachine_1|Add1~16\ & VCC))
-- \SubMain_1|StateMachine_1|Add1~19\ = CARRY((\SubMain_1|StateMachine_1|CountValue\(7) & !\SubMain_1|StateMachine_1|Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(7),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add1~16\,
	combout => \SubMain_1|StateMachine_1|Add1~18_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~19\);

-- Location: LCCOMB_X74_Y49_N20
\SubMain_1|StateMachine_1|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~21_combout\ = (\SubMain_1|StateMachine_1|CountValue\(8) & (!\SubMain_1|StateMachine_1|Add1~19\)) # (!\SubMain_1|StateMachine_1|CountValue\(8) & ((\SubMain_1|StateMachine_1|Add1~19\) # (GND)))
-- \SubMain_1|StateMachine_1|Add1~22\ = CARRY((!\SubMain_1|StateMachine_1|Add1~19\) # (!\SubMain_1|StateMachine_1|CountValue\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(8),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add1~19\,
	combout => \SubMain_1|StateMachine_1|Add1~21_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~22\);

-- Location: LCCOMB_X74_Y49_N22
\SubMain_1|StateMachine_1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~24_combout\ = (\SubMain_1|StateMachine_1|CountValue\(9) & (\SubMain_1|StateMachine_1|Add1~22\ $ (GND))) # (!\SubMain_1|StateMachine_1|CountValue\(9) & (!\SubMain_1|StateMachine_1|Add1~22\ & VCC))
-- \SubMain_1|StateMachine_1|Add1~25\ = CARRY((\SubMain_1|StateMachine_1|CountValue\(9) & !\SubMain_1|StateMachine_1|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(9),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add1~22\,
	combout => \SubMain_1|StateMachine_1|Add1~24_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~25\);

-- Location: LCCOMB_X74_Y49_N24
\SubMain_1|StateMachine_1|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~27_combout\ = (\SubMain_1|StateMachine_1|CountValue\(10) & (!\SubMain_1|StateMachine_1|Add1~25\)) # (!\SubMain_1|StateMachine_1|CountValue\(10) & ((\SubMain_1|StateMachine_1|Add1~25\) # (GND)))
-- \SubMain_1|StateMachine_1|Add1~28\ = CARRY((!\SubMain_1|StateMachine_1|Add1~25\) # (!\SubMain_1|StateMachine_1|CountValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(10),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add1~25\,
	combout => \SubMain_1|StateMachine_1|Add1~27_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~28\);

-- Location: LCCOMB_X72_Y49_N30
\SubMain_1|StateMachine_1|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~29_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & (((\SubMain_1|StateMachine_1|Add1~27_combout\)))) # (!\SubMain_1|StateMachine_1|mode.st_111~q\ & (\SubMain_1|StateMachine_1|Add0~14_combout\ & 
-- ((\SubMain_1|StateMachine_1|mode.st_110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datab => \SubMain_1|StateMachine_1|Add0~14_combout\,
	datac => \SubMain_1|StateMachine_1|Add1~27_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_110~q\,
	combout => \SubMain_1|StateMachine_1|Add1~29_combout\);

-- Location: LCCOMB_X72_Y49_N2
\SubMain_1|StateMachine_1|CountValue[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(10) = (\SubMain_1|StateMachine_1|WideOr12~0_combout\ & (\SubMain_1|StateMachine_1|CountValue\(10))) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\ & ((\SubMain_1|StateMachine_1|Add1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(10),
	datac => \SubMain_1|StateMachine_1|Add1~29_combout\,
	datad => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	combout => \SubMain_1|StateMachine_1|CountValue\(10));

-- Location: LCCOMB_X74_Y49_N26
\SubMain_1|StateMachine_1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~30_combout\ = (\SubMain_1|StateMachine_1|CountValue\(11) & (\SubMain_1|StateMachine_1|Add1~28\ $ (GND))) # (!\SubMain_1|StateMachine_1|CountValue\(11) & (!\SubMain_1|StateMachine_1|Add1~28\ & VCC))
-- \SubMain_1|StateMachine_1|Add1~31\ = CARRY((\SubMain_1|StateMachine_1|CountValue\(11) & !\SubMain_1|StateMachine_1|Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(11),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add1~28\,
	combout => \SubMain_1|StateMachine_1|Add1~30_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~31\);

-- Location: LCCOMB_X72_Y49_N22
\SubMain_1|StateMachine_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~16_combout\ = (\SubMain_1|StateMachine_1|CountValue\(11) & (\SubMain_1|StateMachine_1|Add0~15\ $ (GND))) # (!\SubMain_1|StateMachine_1|CountValue\(11) & (!\SubMain_1|StateMachine_1|Add0~15\ & VCC))
-- \SubMain_1|StateMachine_1|Add0~17\ = CARRY((\SubMain_1|StateMachine_1|CountValue\(11) & !\SubMain_1|StateMachine_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(11),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~15\,
	combout => \SubMain_1|StateMachine_1|Add0~16_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~17\);

-- Location: LCCOMB_X75_Y49_N22
\SubMain_1|StateMachine_1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~32_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & (((\SubMain_1|StateMachine_1|Add1~30_combout\)))) # (!\SubMain_1|StateMachine_1|mode.st_111~q\ & (\SubMain_1|StateMachine_1|mode.st_110~q\ & 
-- ((\SubMain_1|StateMachine_1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datab => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datac => \SubMain_1|StateMachine_1|Add1~30_combout\,
	datad => \SubMain_1|StateMachine_1|Add0~16_combout\,
	combout => \SubMain_1|StateMachine_1|Add1~32_combout\);

-- Location: LCCOMB_X75_Y49_N16
\SubMain_1|StateMachine_1|CountValue[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(11) = (\SubMain_1|StateMachine_1|WideOr12~0_combout\ & (\SubMain_1|StateMachine_1|CountValue\(11))) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\ & ((\SubMain_1|StateMachine_1|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	datac => \SubMain_1|StateMachine_1|CountValue\(11),
	datad => \SubMain_1|StateMachine_1|Add1~32_combout\,
	combout => \SubMain_1|StateMachine_1|CountValue\(11));

-- Location: LCCOMB_X72_Y49_N24
\SubMain_1|StateMachine_1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~18_combout\ = \SubMain_1|StateMachine_1|CountValue\(12) $ (\SubMain_1|StateMachine_1|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(12),
	cin => \SubMain_1|StateMachine_1|Add0~17\,
	combout => \SubMain_1|StateMachine_1|Add0~18_combout\);

-- Location: LCCOMB_X74_Y49_N28
\SubMain_1|StateMachine_1|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~33_combout\ = \SubMain_1|StateMachine_1|Add1~31\ $ (\SubMain_1|StateMachine_1|CountValue\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SubMain_1|StateMachine_1|CountValue\(12),
	cin => \SubMain_1|StateMachine_1|Add1~31\,
	combout => \SubMain_1|StateMachine_1|Add1~33_combout\);

-- Location: LCCOMB_X72_Y49_N28
\SubMain_1|StateMachine_1|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~35_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & (((\SubMain_1|StateMachine_1|Add1~33_combout\)))) # (!\SubMain_1|StateMachine_1|mode.st_111~q\ & (\SubMain_1|StateMachine_1|Add0~18_combout\ & 
-- ((\SubMain_1|StateMachine_1|mode.st_110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datab => \SubMain_1|StateMachine_1|Add0~18_combout\,
	datac => \SubMain_1|StateMachine_1|Add1~33_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_110~q\,
	combout => \SubMain_1|StateMachine_1|Add1~35_combout\);

-- Location: LCCOMB_X72_Y49_N4
\SubMain_1|StateMachine_1|CountValue[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(12) = (\SubMain_1|StateMachine_1|WideOr12~0_combout\ & ((\SubMain_1|StateMachine_1|CountValue\(12)))) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\ & (\SubMain_1|StateMachine_1|Add1~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|Add1~35_combout\,
	datac => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	datad => \SubMain_1|StateMachine_1|CountValue\(12),
	combout => \SubMain_1|StateMachine_1|CountValue\(12));

-- Location: FF_X76_Y49_N23
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

-- Location: LCCOMB_X73_Y49_N28
\SubMain_1|StateMachine_1|Selector32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector32~4_combout\ = (!\SubMain_1|StateMachine_1|CountValue\(4) & (!\SubMain_1|StateMachine_1|CountValue\(6) & (!\SubMain_1|StateMachine_1|CountValue\(5) & !\SubMain_1|StateMachine_1|CountValue\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(4),
	datab => \SubMain_1|StateMachine_1|CountValue\(6),
	datac => \SubMain_1|StateMachine_1|CountValue\(5),
	datad => \SubMain_1|StateMachine_1|CountValue\(3),
	combout => \SubMain_1|StateMachine_1|Selector32~4_combout\);

-- Location: LCCOMB_X73_Y49_N30
\SubMain_1|StateMachine_1|Selector32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector32~5_combout\ = (((\SubMain_1|StateMachine_1|Selector32~4_combout\) # (!\SubMain_1|StateMachine_1|CountValue\(8))) # (!\SubMain_1|StateMachine_1|CountValue\(7))) # (!\SubMain_1|StateMachine_1|CountValue\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(9),
	datab => \SubMain_1|StateMachine_1|CountValue\(7),
	datac => \SubMain_1|StateMachine_1|CountValue\(8),
	datad => \SubMain_1|StateMachine_1|Selector32~4_combout\,
	combout => \SubMain_1|StateMachine_1|Selector32~5_combout\);

-- Location: LCCOMB_X73_Y49_N24
\SubMain_1|StateMachine_1|Selector32~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector32~6_combout\ = (\SubMain_1|StateMachine_1|Selector32~5_combout\ & (!\SubMain_1|StateMachine_1|CountValue\(11) & !\SubMain_1|StateMachine_1|CountValue\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Selector32~5_combout\,
	datac => \SubMain_1|StateMachine_1|CountValue\(11),
	datad => \SubMain_1|StateMachine_1|CountValue\(10),
	combout => \SubMain_1|StateMachine_1|Selector32~6_combout\);

-- Location: LCCOMB_X76_Y49_N12
\SubMain_1|StateMachine_1|Selector32~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector32~7_combout\ = (!\BtnMin~input_o\ & (\SubMain_1|FallingEdge_Min|SavedValue~q\ & ((\SubMain_1|StateMachine_1|Selector32~6_combout\) # (!\SubMain_1|StateMachine_1|CountValue\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BtnMin~input_o\,
	datab => \SubMain_1|StateMachine_1|CountValue\(12),
	datac => \SubMain_1|FallingEdge_Min|SavedValue~q\,
	datad => \SubMain_1|StateMachine_1|Selector32~6_combout\,
	combout => \SubMain_1|StateMachine_1|Selector32~7_combout\);

-- Location: LCCOMB_X76_Y49_N26
\SubMain_1|StateMachine_1|counter_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~0_combout\ = (!\BtnMin~input_o\ & \SubMain_1|FallingEdge_Min|SavedValue~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BtnMin~input_o\,
	datac => \SubMain_1|FallingEdge_Min|SavedValue~q\,
	combout => \SubMain_1|StateMachine_1|counter_proc~0_combout\);

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

-- Location: FF_X75_Y49_N19
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

-- Location: LCCOMB_X75_Y49_N18
\SubMain_1|StateMachine_1|counter_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~1_combout\ = (!\BtnSec~input_o\ & \SubMain_1|FallingEdge_Sec|SavedValue~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BtnSec~input_o\,
	datac => \SubMain_1|FallingEdge_Sec|SavedValue~q\,
	combout => \SubMain_1|StateMachine_1|counter_proc~1_combout\);

-- Location: LCCOMB_X73_Y49_N6
\SubMain_1|StateMachine_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Equal0~1_combout\ = (!\SubMain_1|StateMachine_1|CountValue\(7) & (!\SubMain_1|StateMachine_1|CountValue\(8) & (!\SubMain_1|StateMachine_1|CountValue\(12) & !\SubMain_1|StateMachine_1|CountValue\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(7),
	datab => \SubMain_1|StateMachine_1|CountValue\(8),
	datac => \SubMain_1|StateMachine_1|CountValue\(12),
	datad => \SubMain_1|StateMachine_1|CountValue\(10),
	combout => \SubMain_1|StateMachine_1|Equal0~1_combout\);

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

-- Location: FF_X76_Y49_N31
\SubMain_1|FallingEdge_Clear|SavedValue\ : dffeas
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
	q => \SubMain_1|FallingEdge_Clear|SavedValue~q\);

-- Location: LCCOMB_X76_Y49_N24
\SubMain_1|StateMachine_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Equal0~2_combout\ = (!\SubMain_1|StateMachine_1|CountValue\(2) & (!\SubMain_1|StateMachine_1|CountValue\(1) & (!\SubMain_1|StateMachine_1|CountValue\(6) & !\SubMain_1|StateMachine_1|CountValue\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(2),
	datab => \SubMain_1|StateMachine_1|CountValue\(1),
	datac => \SubMain_1|StateMachine_1|CountValue\(6),
	datad => \SubMain_1|StateMachine_1|CountValue\(4),
	combout => \SubMain_1|StateMachine_1|Equal0~2_combout\);

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

-- Location: FF_X76_Y49_N1
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

-- Location: LCCOMB_X76_Y49_N6
\SubMain_1|FallingEdge_Start|FallingOutput\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|FallingEdge_Start|FallingOutput~combout\ = (!\BtnStart~input_o\ & \SubMain_1|FallingEdge_Start|SavedValue~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BtnStart~input_o\,
	datad => \SubMain_1|FallingEdge_Start|SavedValue~q\,
	combout => \SubMain_1|FallingEdge_Start|FallingOutput~combout\);

-- Location: LCCOMB_X76_Y49_N18
\SubMain_1|StateMachine_1|counter_proc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~2_combout\ = (\SubMain_1|FallingEdge_Start|FallingOutput~combout\ & (((!\SubMain_1|StateMachine_1|Equal0~0_combout\) # (!\SubMain_1|StateMachine_1|Equal0~2_combout\)) # 
-- (!\SubMain_1|StateMachine_1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Equal0~1_combout\,
	datab => \SubMain_1|StateMachine_1|Equal0~2_combout\,
	datac => \SubMain_1|StateMachine_1|Equal0~0_combout\,
	datad => \SubMain_1|FallingEdge_Start|FallingOutput~combout\,
	combout => \SubMain_1|StateMachine_1|counter_proc~2_combout\);

-- Location: LCCOMB_X76_Y49_N28
\SubMain_1|StateMachine_1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector5~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_100~q\ & (\SubMain_1|StateMachine_1|counter_proc~2_combout\ & ((\BtnClear~input_o\) # (!\SubMain_1|FallingEdge_Clear|SavedValue~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_100~q\,
	datab => \BtnClear~input_o\,
	datac => \SubMain_1|FallingEdge_Clear|SavedValue~q\,
	datad => \SubMain_1|StateMachine_1|counter_proc~2_combout\,
	combout => \SubMain_1|StateMachine_1|Selector5~0_combout\);

-- Location: LCCOMB_X76_Y49_N4
\SubMain_1|StateMachine_1|nxt_mode.st_190_1040\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_190_1040~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector5~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_190_1040~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_190_1040~combout\,
	datac => \SubMain_1|StateMachine_1|Selector5~0_combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_190_1040~combout\);

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

-- Location: FF_X76_Y49_N7
\SubMain_1|StateMachine_1|mode.st_190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_190_1040~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_190~q\);

-- Location: LCCOMB_X77_Y49_N24
\SubMain_1|StateMachine_1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector7~0_combout\ = (!\SubMain_1|FallingEdge_Start|FallingOutput~combout\ & (((!\SubMain_1|StateMachine_1|Equal0~2_combout\) # (!\SubMain_1|StateMachine_1|Equal0~0_combout\)) # (!\SubMain_1|StateMachine_1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Equal0~1_combout\,
	datab => \SubMain_1|FallingEdge_Start|FallingOutput~combout\,
	datac => \SubMain_1|StateMachine_1|Equal0~0_combout\,
	datad => \SubMain_1|StateMachine_1|Equal0~2_combout\,
	combout => \SubMain_1|StateMachine_1|Selector7~0_combout\);

-- Location: LCCOMB_X77_Y49_N30
\SubMain_1|StateMachine_1|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector7~1_combout\ = (\SubMain_1|StateMachine_1|mode.st_200~q\ & \SubMain_1|StateMachine_1|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_200~q\,
	datad => \SubMain_1|StateMachine_1|Selector7~0_combout\,
	combout => \SubMain_1|StateMachine_1|Selector7~1_combout\);

-- Location: LCCOMB_X77_Y49_N14
\SubMain_1|StateMachine_1|nxt_mode.st_210_980\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_210_980~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector7~1_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_210_980~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_210_980~combout\,
	datac => \SubMain_1|StateMachine_1|Selector7~1_combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_210_980~combout\);

-- Location: FF_X77_Y49_N7
\SubMain_1|StateMachine_1|mode.st_210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_210_980~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_210~q\);

-- Location: LCCOMB_X77_Y49_N26
\SubMain_1|StateMachine_1|nxt_mode.st_220_950\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_220_950~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & (\SubMain_1|StateMachine_1|mode.st_210~q\)) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|nxt_mode.st_220_950~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_210~q\,
	datac => \SubMain_1|StateMachine_1|nxt_mode.st_220_950~combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_220_950~combout\);

-- Location: FF_X77_Y49_N1
\SubMain_1|StateMachine_1|mode.st_220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_220_950~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_220~q\);

-- Location: LCCOMB_X77_Y49_N10
\SubMain_1|StateMachine_1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector6~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_190~q\) # (\SubMain_1|StateMachine_1|mode.st_220~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_190~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_220~q\,
	combout => \SubMain_1|StateMachine_1|Selector6~0_combout\);

-- Location: LCCOMB_X77_Y49_N4
\SubMain_1|StateMachine_1|nxt_mode.st_200_1010\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_200_1010~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector6~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_200_1010~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_200_1010~combout\,
	datac => \SubMain_1|StateMachine_1|Selector6~0_combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_200_1010~combout\);

-- Location: FF_X77_Y49_N17
\SubMain_1|StateMachine_1|mode.st_200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_200_1010~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_200~q\);

-- Location: LCCOMB_X79_Y49_N24
\SubMain_1|StateMachine_1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector10~0_combout\ = (\SubMain_1|StateMachine_1|Equal0~1_combout\ & (\SubMain_1|StateMachine_1|mode.st_200~q\ & (\SubMain_1|StateMachine_1|Equal0~2_combout\ & \SubMain_1|StateMachine_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Equal0~1_combout\,
	datab => \SubMain_1|StateMachine_1|mode.st_200~q\,
	datac => \SubMain_1|StateMachine_1|Equal0~2_combout\,
	datad => \SubMain_1|StateMachine_1|Equal0~0_combout\,
	combout => \SubMain_1|StateMachine_1|Selector10~0_combout\);

-- Location: LCCOMB_X79_Y49_N26
\SubMain_1|StateMachine_1|nxt_mode.st_290_890\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_290_890~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector10~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_290_890~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|nxt_mode.st_290_890~combout\,
	datac => \SubMain_1|StateMachine_1|Selector10~0_combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_290_890~combout\);

-- Location: FF_X79_Y49_N31
\SubMain_1|StateMachine_1|mode.st_290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_290_890~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_290~q\);

-- Location: LCCOMB_X79_Y49_N30
\SubMain_1|StateMachine_1|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr11~0_combout\ = (!\SubMain_1|StateMachine_1|mode.st_320~q\ & !\SubMain_1|StateMachine_1|mode.st_290~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_320~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_290~q\,
	combout => \SubMain_1|StateMachine_1|WideOr11~0_combout\);

-- Location: LCCOMB_X79_Y49_N12
\SubMain_1|StateMachine_1|nxt_mode.st_300_860\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_300_860~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & (!\SubMain_1|StateMachine_1|WideOr11~0_combout\)) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|nxt_mode.st_300_860~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|WideOr11~0_combout\,
	datac => \SubMain_1|StateMachine_1|nxt_mode.st_300_860~combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_300_860~combout\);

-- Location: LCCOMB_X79_Y49_N0
\SubMain_1|StateMachine_1|mode.st_300~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|mode.st_300~feeder_combout\ = \SubMain_1|StateMachine_1|nxt_mode.st_300_860~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SubMain_1|StateMachine_1|nxt_mode.st_300_860~combout\,
	combout => \SubMain_1|StateMachine_1|mode.st_300~feeder_combout\);

-- Location: FF_X79_Y49_N1
\SubMain_1|StateMachine_1|mode.st_300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|StateMachine_1|mode.st_300~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_300~q\);

-- Location: LCCOMB_X77_Y49_N6
\SubMain_1|StateMachine_1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector12~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_300~q\ & \SubMain_1|StateMachine_1|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_300~q\,
	datad => \SubMain_1|StateMachine_1|Selector7~0_combout\,
	combout => \SubMain_1|StateMachine_1|Selector12~0_combout\);

-- Location: LCCOMB_X77_Y49_N8
\SubMain_1|StateMachine_1|nxt_mode.st_310_830\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_310_830~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector12~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_310_830~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_310_830~combout\,
	datac => \SubMain_1|StateMachine_1|Selector12~0_combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_310_830~combout\);

-- Location: FF_X77_Y49_N9
\SubMain_1|StateMachine_1|mode.st_310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_310_830~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_310~q\);

-- Location: LCCOMB_X77_Y49_N20
\SubMain_1|StateMachine_1|nxt_mode.st_320_800\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_320_800~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|mode.st_310~q\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_320_800~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_320_800~combout\,
	datac => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_320_800~combout\);

-- Location: FF_X77_Y49_N31
\SubMain_1|StateMachine_1|mode.st_320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_320_800~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_320~q\);

-- Location: IOIBUF_X115_Y15_N8
\clk_DeciOverride~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_DeciOverride,
	o => \clk_DeciOverride~input_o\);

-- Location: LCCOMB_X76_Y49_N0
\SubMain_1|StateMachine_1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector9~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_200~q\ & \SubMain_1|StateMachine_1|counter_proc~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_200~q\,
	datad => \SubMain_1|StateMachine_1|counter_proc~2_combout\,
	combout => \SubMain_1|StateMachine_1|Selector9~0_combout\);

-- Location: LCCOMB_X76_Y49_N20
\SubMain_1|StateMachine_1|nxt_mode.st_221_920\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_221_920~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector9~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_221_920~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_221_920~combout\,
	datac => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|Selector9~0_combout\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_221_920~combout\);

-- Location: FF_X76_Y49_N21
\SubMain_1|StateMachine_1|mode.st_221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_221_920~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_221~q\);

-- Location: LCCOMB_X79_Y49_N16
\SubMain_1|StateMachine_1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector14~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_300~q\ & \SubMain_1|StateMachine_1|counter_proc~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|mode.st_300~q\,
	datad => \SubMain_1|StateMachine_1|counter_proc~2_combout\,
	combout => \SubMain_1|StateMachine_1|Selector14~0_combout\);

-- Location: LCCOMB_X79_Y49_N2
\SubMain_1|StateMachine_1|nxt_mode.st_321_770\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_321_770~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector14~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_321_770~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_321_770~combout\,
	datac => \SubMain_1|StateMachine_1|Selector14~0_combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_321_770~combout\);

-- Location: LCCOMB_X79_Y49_N10
\SubMain_1|StateMachine_1|mode.st_321~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|mode.st_321~feeder_combout\ = \SubMain_1|StateMachine_1|nxt_mode.st_321_770~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SubMain_1|StateMachine_1|nxt_mode.st_321_770~combout\,
	combout => \SubMain_1|StateMachine_1|mode.st_321~feeder_combout\);

-- Location: FF_X79_Y49_N11
\SubMain_1|StateMachine_1|mode.st_321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|StateMachine_1|mode.st_321~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_321~q\);

-- Location: LCCOMB_X79_Y49_N4
\SubMain_1|StateMachine_1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector32~0_combout\ = (\BtnStart~input_o\) # (((!\SubMain_1|StateMachine_1|mode.st_221~q\ & !\SubMain_1|StateMachine_1|mode.st_321~q\)) # (!\SubMain_1|FallingEdge_Start|SavedValue~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_221~q\,
	datab => \BtnStart~input_o\,
	datac => \SubMain_1|FallingEdge_Start|SavedValue~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_321~q\,
	combout => \SubMain_1|StateMachine_1|Selector32~0_combout\);

-- Location: LCCOMB_X77_Y49_N12
\SubMain_1|StateMachine_1|Selector32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector32~1_combout\ = (\SubMain_1|StateMachine_1|Selector32~0_combout\ & (((!\SubMain_1|StateMachine_1|mode.st_320~q\ & !\SubMain_1|StateMachine_1|mode.st_220~q\)) # (!\clk_DeciOverride~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_320~q\,
	datab => \clk_DeciOverride~input_o\,
	datac => \SubMain_1|StateMachine_1|Selector32~0_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_220~q\,
	combout => \SubMain_1|StateMachine_1|Selector32~1_combout\);

-- Location: LCCOMB_X76_Y49_N2
\SubMain_1|StateMachine_1|nxt_mode~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode~2_combout\ = (!\SubMain_1|StateMachine_1|mode.st_110~q\ & !\SubMain_1|StateMachine_1|mode.st_111~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_111~q\,
	combout => \SubMain_1|StateMachine_1|nxt_mode~2_combout\);

-- Location: LCCOMB_X76_Y49_N14
\SubMain_1|StateMachine_1|nxt_mode.st_120_1070\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_120_1070~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((!\SubMain_1|StateMachine_1|nxt_mode~2_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_120_1070~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_120_1070~combout\,
	datac => \SubMain_1|StateMachine_1|nxt_mode~2_combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_120_1070~combout\);

-- Location: FF_X76_Y49_N3
\SubMain_1|StateMachine_1|mode.st_120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_120_1070~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_120~q\);

-- Location: LCCOMB_X76_Y49_N8
\SubMain_1|StateMachine_1|Selector32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector32~2_combout\ = (\SubMain_1|StateMachine_1|Selector32~1_combout\ & (((!\SubMain_1|StateMachine_1|counter_proc~0_combout\ & !\SubMain_1|StateMachine_1|counter_proc~1_combout\)) # 
-- (!\SubMain_1|StateMachine_1|mode.st_120~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|counter_proc~0_combout\,
	datab => \SubMain_1|StateMachine_1|counter_proc~1_combout\,
	datac => \SubMain_1|StateMachine_1|Selector32~1_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_120~q\,
	combout => \SubMain_1|StateMachine_1|Selector32~2_combout\);

-- Location: LCCOMB_X77_Y49_N18
\SubMain_1|StateMachine_1|Selector32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector32~3_combout\ = (\clk_DeciOverride~input_o\) # (((!\SubMain_1|StateMachine_1|mode.st_300~q\ & !\SubMain_1|StateMachine_1|mode.st_200~q\)) # (!\SubMain_1|StateMachine_1|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_DeciOverride~input_o\,
	datab => \SubMain_1|StateMachine_1|Selector7~0_combout\,
	datac => \SubMain_1|StateMachine_1|mode.st_300~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_200~q\,
	combout => \SubMain_1|StateMachine_1|Selector32~3_combout\);

-- Location: LCCOMB_X76_Y49_N10
\SubMain_1|StateMachine_1|Selector32~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector32~8_combout\ = (\SubMain_1|StateMachine_1|Selector32~2_combout\ & (\SubMain_1|StateMachine_1|Selector32~3_combout\ & ((\SubMain_1|StateMachine_1|Selector32~7_combout\) # 
-- (!\SubMain_1|StateMachine_1|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Selector32~7_combout\,
	datab => \SubMain_1|StateMachine_1|Selector32~2_combout\,
	datac => \SubMain_1|StateMachine_1|Selector2~0_combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~3_combout\,
	combout => \SubMain_1|StateMachine_1|Selector32~8_combout\);

-- Location: CLKCTRL_G13
\SubMain_1|StateMachine_1|Selector32~8clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SubMain_1|StateMachine_1|Selector32~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\);

-- Location: LCCOMB_X79_Y49_N6
\SubMain_1|StateMachine_1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector15~0_combout\ = (\SubMain_1|StateMachine_1|Equal0~2_combout\ & (\SubMain_1|StateMachine_1|Equal0~1_combout\ & (\SubMain_1|StateMachine_1|Equal0~0_combout\ & \SubMain_1|StateMachine_1|mode.st_300~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Equal0~2_combout\,
	datab => \SubMain_1|StateMachine_1|Equal0~1_combout\,
	datac => \SubMain_1|StateMachine_1|Equal0~0_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_300~q\,
	combout => \SubMain_1|StateMachine_1|Selector15~0_combout\);

-- Location: LCCOMB_X79_Y49_N18
\SubMain_1|StateMachine_1|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector15~1_combout\ = (\SubMain_1|StateMachine_1|Selector15~0_combout\) # (\SubMain_1|StateMachine_1|mode.st_321~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|Selector15~0_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_321~q\,
	combout => \SubMain_1|StateMachine_1|Selector15~1_combout\);

-- Location: LCCOMB_X79_Y49_N20
\SubMain_1|StateMachine_1|nxt_mode.st_330_740\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_330_740~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector15~1_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_330_740~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_330_740~combout\,
	datac => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	datad => \SubMain_1|StateMachine_1|Selector15~1_combout\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_330_740~combout\);

-- Location: LCCOMB_X79_Y49_N8
\SubMain_1|StateMachine_1|mode.st_330~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|mode.st_330~feeder_combout\ = \SubMain_1|StateMachine_1|nxt_mode.st_330_740~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SubMain_1|StateMachine_1|nxt_mode.st_330_740~combout\,
	combout => \SubMain_1|StateMachine_1|mode.st_330~feeder_combout\);

-- Location: FF_X79_Y49_N9
\SubMain_1|StateMachine_1|mode.st_330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|StateMachine_1|mode.st_330~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_330~q\);

-- Location: LCCOMB_X77_Y49_N28
\SubMain_1|StateMachine_1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector1~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_330~q\) # (((\SubMain_1|StateMachine_1|mode.st_221~q\) # (\SubMain_1|StateMachine_1|mode.st_120~q\)) # (!\SubMain_1|StateMachine_1|mode.st_reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_330~q\,
	datab => \SubMain_1|StateMachine_1|mode.st_reset~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_221~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_120~q\,
	combout => \SubMain_1|StateMachine_1|Selector1~0_combout\);

-- Location: LCCOMB_X77_Y49_N22
\SubMain_1|StateMachine_1|nxt_mode.st_100_1160\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_100_1160~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & (\SubMain_1|StateMachine_1|Selector1~0_combout\)) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- ((\SubMain_1|StateMachine_1|nxt_mode.st_100_1160~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|Selector1~0_combout\,
	datac => \SubMain_1|StateMachine_1|nxt_mode.st_100_1160~combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_100_1160~combout\);

-- Location: FF_X77_Y49_N11
\SubMain_1|StateMachine_1|mode.st_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \SubMain_1|StateMachine_1|nxt_mode.st_100_1160~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_100~q\);

-- Location: LCCOMB_X76_Y49_N22
\SubMain_1|StateMachine_1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector0~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_100~q\ & (!\BtnClear~input_o\ & \SubMain_1|FallingEdge_Clear|SavedValue~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_100~q\,
	datab => \BtnClear~input_o\,
	datad => \SubMain_1|FallingEdge_Clear|SavedValue~q\,
	combout => \SubMain_1|StateMachine_1|Selector0~0_combout\);

-- Location: LCCOMB_X75_Y49_N10
\SubMain_1|StateMachine_1|nxt_mode.st_reset_1190\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_reset_1190~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector0~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_reset_1190~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|nxt_mode.st_reset_1190~combout\,
	datab => \SubMain_1|StateMachine_1|Selector0~0_combout\,
	datac => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_reset_1190~combout\);

-- Location: LCCOMB_X75_Y49_N20
\SubMain_1|StateMachine_1|mode.st_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|mode.st_reset~0_combout\ = !\SubMain_1|StateMachine_1|nxt_mode.st_reset_1190~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SubMain_1|StateMachine_1|nxt_mode.st_reset_1190~combout\,
	combout => \SubMain_1|StateMachine_1|mode.st_reset~0_combout\);

-- Location: FF_X75_Y49_N21
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

-- Location: LCCOMB_X75_Y49_N0
\SubMain_1|StateMachine_1|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr8~0_combout\ = (!\SubMain_1|StateMachine_1|mode.st_111~q\ & \SubMain_1|StateMachine_1|mode.st_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_reset~q\,
	combout => \SubMain_1|StateMachine_1|WideOr8~0_combout\);

-- Location: LCCOMB_X75_Y50_N14
\SubMain_1|StateMachine_1|CountValue[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(2) = (\SubMain_1|StateMachine_1|WideOr8~0_combout\ & ((\SubMain_1|StateMachine_1|CountValue\(2)))) # (!\SubMain_1|StateMachine_1|WideOr8~0_combout\ & (\SubMain_1|StateMachine_1|Add1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Add1~5_combout\,
	datac => \SubMain_1|StateMachine_1|CountValue\(2),
	datad => \SubMain_1|StateMachine_1|WideOr8~0_combout\,
	combout => \SubMain_1|StateMachine_1|CountValue\(2));

-- Location: LCCOMB_X74_Y49_N10
\SubMain_1|StateMachine_1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~6_combout\ = (\SubMain_1|StateMachine_1|CountValue\(3) & ((GND) # (!\SubMain_1|StateMachine_1|Add1~4\))) # (!\SubMain_1|StateMachine_1|CountValue\(3) & (\SubMain_1|StateMachine_1|Add1~4\ $ (GND)))
-- \SubMain_1|StateMachine_1|Add1~7\ = CARRY((\SubMain_1|StateMachine_1|CountValue\(3)) # (!\SubMain_1|StateMachine_1|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(3),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add1~4\,
	combout => \SubMain_1|StateMachine_1|Add1~6_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~7\);

-- Location: LCCOMB_X73_Y49_N4
\SubMain_1|StateMachine_1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~8_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & (((\SubMain_1|StateMachine_1|Add1~6_combout\)))) # (!\SubMain_1|StateMachine_1|mode.st_111~q\ & (\SubMain_1|StateMachine_1|Add0~0_combout\ & 
-- (\SubMain_1|StateMachine_1|mode.st_110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Add0~0_combout\,
	datab => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datad => \SubMain_1|StateMachine_1|Add1~6_combout\,
	combout => \SubMain_1|StateMachine_1|Add1~8_combout\);

-- Location: LCCOMB_X73_Y49_N16
\SubMain_1|StateMachine_1|CountValue[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(3) = (\SubMain_1|StateMachine_1|WideOr12~0_combout\ & (\SubMain_1|StateMachine_1|CountValue\(3))) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\ & ((\SubMain_1|StateMachine_1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(3),
	datac => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	datad => \SubMain_1|StateMachine_1|Add1~8_combout\,
	combout => \SubMain_1|StateMachine_1|CountValue\(3));

-- Location: LCCOMB_X74_Y49_N12
\SubMain_1|StateMachine_1|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~9_combout\ = (\SubMain_1|StateMachine_1|CountValue\(4) & (!\SubMain_1|StateMachine_1|Add1~7\)) # (!\SubMain_1|StateMachine_1|CountValue\(4) & ((\SubMain_1|StateMachine_1|Add1~7\) # (GND)))
-- \SubMain_1|StateMachine_1|Add1~10\ = CARRY((!\SubMain_1|StateMachine_1|Add1~7\) # (!\SubMain_1|StateMachine_1|CountValue\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(4),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add1~7\,
	combout => \SubMain_1|StateMachine_1|Add1~9_combout\,
	cout => \SubMain_1|StateMachine_1|Add1~10\);

-- Location: LCCOMB_X72_Y49_N8
\SubMain_1|StateMachine_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~2_combout\ = (\SubMain_1|StateMachine_1|CountValue\(4) & (\SubMain_1|StateMachine_1|Add0~1\ & VCC)) # (!\SubMain_1|StateMachine_1|CountValue\(4) & (!\SubMain_1|StateMachine_1|Add0~1\))
-- \SubMain_1|StateMachine_1|Add0~3\ = CARRY((!\SubMain_1|StateMachine_1|CountValue\(4) & !\SubMain_1|StateMachine_1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(4),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~1\,
	combout => \SubMain_1|StateMachine_1|Add0~2_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~3\);

-- Location: LCCOMB_X75_Y49_N6
\SubMain_1|StateMachine_1|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~11_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & (\SubMain_1|StateMachine_1|Add1~9_combout\)) # (!\SubMain_1|StateMachine_1|mode.st_111~q\ & (((\SubMain_1|StateMachine_1|mode.st_110~q\ & 
-- \SubMain_1|StateMachine_1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datab => \SubMain_1|StateMachine_1|Add1~9_combout\,
	datac => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datad => \SubMain_1|StateMachine_1|Add0~2_combout\,
	combout => \SubMain_1|StateMachine_1|Add1~11_combout\);

-- Location: LCCOMB_X75_Y49_N2
\SubMain_1|StateMachine_1|CountValue[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(4) = (\SubMain_1|StateMachine_1|WideOr12~0_combout\ & ((\SubMain_1|StateMachine_1|CountValue\(4)))) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\ & (\SubMain_1|StateMachine_1|Add1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Add1~11_combout\,
	datac => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	datad => \SubMain_1|StateMachine_1|CountValue\(4),
	combout => \SubMain_1|StateMachine_1|CountValue\(4));

-- Location: LCCOMB_X72_Y49_N10
\SubMain_1|StateMachine_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~4_combout\ = (\SubMain_1|StateMachine_1|CountValue\(5) & (\SubMain_1|StateMachine_1|Add0~3\ $ (GND))) # (!\SubMain_1|StateMachine_1|CountValue\(5) & (!\SubMain_1|StateMachine_1|Add0~3\ & VCC))
-- \SubMain_1|StateMachine_1|Add0~5\ = CARRY((\SubMain_1|StateMachine_1|CountValue\(5) & !\SubMain_1|StateMachine_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(5),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~3\,
	combout => \SubMain_1|StateMachine_1|Add0~4_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~5\);

-- Location: LCCOMB_X74_Y49_N30
\SubMain_1|StateMachine_1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~14_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & (\SubMain_1|StateMachine_1|Add1~12_combout\)) # (!\SubMain_1|StateMachine_1|mode.st_111~q\ & (((\SubMain_1|StateMachine_1|Add0~4_combout\ & 
-- \SubMain_1|StateMachine_1|mode.st_110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Add1~12_combout\,
	datab => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datac => \SubMain_1|StateMachine_1|Add0~4_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_110~q\,
	combout => \SubMain_1|StateMachine_1|Add1~14_combout\);

-- Location: LCCOMB_X74_Y49_N0
\SubMain_1|StateMachine_1|CountValue[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(5) = (\SubMain_1|StateMachine_1|WideOr12~0_combout\ & (\SubMain_1|StateMachine_1|CountValue\(5))) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\ & ((\SubMain_1|StateMachine_1|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(5),
	datac => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	datad => \SubMain_1|StateMachine_1|Add1~14_combout\,
	combout => \SubMain_1|StateMachine_1|CountValue\(5));

-- Location: LCCOMB_X72_Y49_N12
\SubMain_1|StateMachine_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~6_combout\ = (\SubMain_1|StateMachine_1|CountValue\(6) & (\SubMain_1|StateMachine_1|Add0~5\ & VCC)) # (!\SubMain_1|StateMachine_1|CountValue\(6) & (!\SubMain_1|StateMachine_1|Add0~5\))
-- \SubMain_1|StateMachine_1|Add0~7\ = CARRY((!\SubMain_1|StateMachine_1|CountValue\(6) & !\SubMain_1|StateMachine_1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(6),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~5\,
	combout => \SubMain_1|StateMachine_1|Add0~6_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~7\);

-- Location: LCCOMB_X73_Y49_N26
\SubMain_1|StateMachine_1|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~17_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & (((\SubMain_1|StateMachine_1|Add1~15_combout\)))) # (!\SubMain_1|StateMachine_1|mode.st_111~q\ & (\SubMain_1|StateMachine_1|Add0~6_combout\ & 
-- (\SubMain_1|StateMachine_1|mode.st_110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Add0~6_combout\,
	datab => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datad => \SubMain_1|StateMachine_1|Add1~15_combout\,
	combout => \SubMain_1|StateMachine_1|Add1~17_combout\);

-- Location: LCCOMB_X73_Y49_N2
\SubMain_1|StateMachine_1|CountValue[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(6) = (\SubMain_1|StateMachine_1|WideOr12~0_combout\ & (\SubMain_1|StateMachine_1|CountValue\(6))) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\ & ((\SubMain_1|StateMachine_1|Add1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(6),
	datac => \SubMain_1|StateMachine_1|Add1~17_combout\,
	datad => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	combout => \SubMain_1|StateMachine_1|CountValue\(6));

-- Location: LCCOMB_X72_Y49_N14
\SubMain_1|StateMachine_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~8_combout\ = (\SubMain_1|StateMachine_1|CountValue\(7) & (\SubMain_1|StateMachine_1|Add0~7\ $ (GND))) # (!\SubMain_1|StateMachine_1|CountValue\(7) & (!\SubMain_1|StateMachine_1|Add0~7\ & VCC))
-- \SubMain_1|StateMachine_1|Add0~9\ = CARRY((\SubMain_1|StateMachine_1|CountValue\(7) & !\SubMain_1|StateMachine_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(7),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~7\,
	combout => \SubMain_1|StateMachine_1|Add0~8_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~9\);

-- Location: LCCOMB_X73_Y49_N22
\SubMain_1|StateMachine_1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~20_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & (((\SubMain_1|StateMachine_1|Add1~18_combout\)))) # (!\SubMain_1|StateMachine_1|mode.st_111~q\ & (\SubMain_1|StateMachine_1|Add0~8_combout\ & 
-- ((\SubMain_1|StateMachine_1|mode.st_110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Add0~8_combout\,
	datab => \SubMain_1|StateMachine_1|Add1~18_combout\,
	datac => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_111~q\,
	combout => \SubMain_1|StateMachine_1|Add1~20_combout\);

-- Location: LCCOMB_X73_Y49_N10
\SubMain_1|StateMachine_1|CountValue[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(7) = (\SubMain_1|StateMachine_1|WideOr12~0_combout\ & (\SubMain_1|StateMachine_1|CountValue\(7))) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\ & ((\SubMain_1|StateMachine_1|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(7),
	datac => \SubMain_1|StateMachine_1|Add1~20_combout\,
	datad => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	combout => \SubMain_1|StateMachine_1|CountValue\(7));

-- Location: LCCOMB_X73_Y49_N14
\SubMain_1|StateMachine_1|counter_proc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~4_combout\ = (((!\SubMain_1|StateMachine_1|CountValue\(4) & !\SubMain_1|StateMachine_1|CountValue\(5))) # (!\SubMain_1|StateMachine_1|CountValue\(6))) # (!\SubMain_1|StateMachine_1|CountValue\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(4),
	datab => \SubMain_1|StateMachine_1|CountValue\(5),
	datac => \SubMain_1|StateMachine_1|CountValue\(8),
	datad => \SubMain_1|StateMachine_1|CountValue\(6),
	combout => \SubMain_1|StateMachine_1|counter_proc~4_combout\);

-- Location: LCCOMB_X73_Y49_N20
\SubMain_1|StateMachine_1|counter_proc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~5_combout\ = ((!\SubMain_1|StateMachine_1|CountValue\(9) & ((\SubMain_1|StateMachine_1|counter_proc~4_combout\) # (!\SubMain_1|StateMachine_1|CountValue\(7))))) # (!\SubMain_1|StateMachine_1|CountValue\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(9),
	datab => \SubMain_1|StateMachine_1|CountValue\(7),
	datac => \SubMain_1|StateMachine_1|counter_proc~4_combout\,
	datad => \SubMain_1|StateMachine_1|CountValue\(10),
	combout => \SubMain_1|StateMachine_1|counter_proc~5_combout\);

-- Location: LCCOMB_X75_Y49_N14
\SubMain_1|StateMachine_1|counter_proc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~3_combout\ = ((\SubMain_1|StateMachine_1|Equal0~0_combout\ & ((!\SubMain_1|StateMachine_1|CountValue\(1)) # (!\SubMain_1|StateMachine_1|CountValue\(2))))) # (!\SubMain_1|StateMachine_1|CountValue\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(2),
	datab => \SubMain_1|StateMachine_1|CountValue\(12),
	datac => \SubMain_1|StateMachine_1|CountValue\(1),
	datad => \SubMain_1|StateMachine_1|Equal0~0_combout\,
	combout => \SubMain_1|StateMachine_1|counter_proc~3_combout\);

-- Location: LCCOMB_X75_Y49_N8
\SubMain_1|StateMachine_1|counter_proc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|counter_proc~6_combout\ = (\SubMain_1|StateMachine_1|counter_proc~1_combout\ & ((\SubMain_1|StateMachine_1|counter_proc~3_combout\) # ((\SubMain_1|StateMachine_1|counter_proc~5_combout\ & 
-- !\SubMain_1|StateMachine_1|CountValue\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|counter_proc~5_combout\,
	datab => \SubMain_1|StateMachine_1|counter_proc~1_combout\,
	datac => \SubMain_1|StateMachine_1|counter_proc~3_combout\,
	datad => \SubMain_1|StateMachine_1|CountValue\(11),
	combout => \SubMain_1|StateMachine_1|counter_proc~6_combout\);

-- Location: LCCOMB_X76_Y49_N16
\SubMain_1|StateMachine_1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector3~0_combout\ = (\SubMain_1|StateMachine_1|mode.st_100~q\ & (!\SubMain_1|StateMachine_1|counter_proc~2_combout\ & ((\BtnClear~input_o\) # (!\SubMain_1|FallingEdge_Clear|SavedValue~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|FallingEdge_Clear|SavedValue~q\,
	datab => \BtnClear~input_o\,
	datac => \SubMain_1|StateMachine_1|mode.st_100~q\,
	datad => \SubMain_1|StateMachine_1|counter_proc~2_combout\,
	combout => \SubMain_1|StateMachine_1|Selector3~0_combout\);

-- Location: LCCOMB_X75_Y49_N4
\SubMain_1|StateMachine_1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector2~0_combout\ = (!\SubMain_1|StateMachine_1|counter_proc~6_combout\ & \SubMain_1|StateMachine_1|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SubMain_1|StateMachine_1|counter_proc~6_combout\,
	datad => \SubMain_1|StateMachine_1|Selector3~0_combout\,
	combout => \SubMain_1|StateMachine_1|Selector2~0_combout\);

-- Location: LCCOMB_X75_Y49_N26
\SubMain_1|StateMachine_1|nxt_mode.st_110_1130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_110_1130~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector2~0_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_110_1130~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_110_1130~combout\,
	datac => \SubMain_1|StateMachine_1|Selector2~0_combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_110_1130~combout\);

-- Location: FF_X75_Y49_N27
\SubMain_1|StateMachine_1|mode.st_110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_110_1130~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_110~q\);

-- Location: LCCOMB_X75_Y49_N12
\SubMain_1|StateMachine_1|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr12~0_combout\ = (!\SubMain_1|StateMachine_1|mode.st_110~q\ & (!\SubMain_1|StateMachine_1|mode.st_111~q\ & \SubMain_1|StateMachine_1|mode.st_reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_reset~q\,
	combout => \SubMain_1|StateMachine_1|WideOr12~0_combout\);

-- Location: LCCOMB_X72_Y49_N16
\SubMain_1|StateMachine_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add0~10_combout\ = (\SubMain_1|StateMachine_1|CountValue\(8) & (!\SubMain_1|StateMachine_1|Add0~9\)) # (!\SubMain_1|StateMachine_1|CountValue\(8) & ((\SubMain_1|StateMachine_1|Add0~9\) # (GND)))
-- \SubMain_1|StateMachine_1|Add0~11\ = CARRY((!\SubMain_1|StateMachine_1|Add0~9\) # (!\SubMain_1|StateMachine_1|CountValue\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(8),
	datad => VCC,
	cin => \SubMain_1|StateMachine_1|Add0~9\,
	combout => \SubMain_1|StateMachine_1|Add0~10_combout\,
	cout => \SubMain_1|StateMachine_1|Add0~11\);

-- Location: LCCOMB_X72_Y49_N26
\SubMain_1|StateMachine_1|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~23_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & (((\SubMain_1|StateMachine_1|Add1~21_combout\)))) # (!\SubMain_1|StateMachine_1|mode.st_111~q\ & (\SubMain_1|StateMachine_1|Add0~10_combout\ & 
-- ((\SubMain_1|StateMachine_1|mode.st_110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datab => \SubMain_1|StateMachine_1|Add0~10_combout\,
	datac => \SubMain_1|StateMachine_1|Add1~21_combout\,
	datad => \SubMain_1|StateMachine_1|mode.st_110~q\,
	combout => \SubMain_1|StateMachine_1|Add1~23_combout\);

-- Location: LCCOMB_X72_Y49_N0
\SubMain_1|StateMachine_1|CountValue[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(8) = (\SubMain_1|StateMachine_1|WideOr12~0_combout\ & (\SubMain_1|StateMachine_1|CountValue\(8))) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\ & ((\SubMain_1|StateMachine_1|Add1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(8),
	datac => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	datad => \SubMain_1|StateMachine_1|Add1~23_combout\,
	combout => \SubMain_1|StateMachine_1|CountValue\(8));

-- Location: LCCOMB_X73_Y49_N8
\SubMain_1|StateMachine_1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~26_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & (((\SubMain_1|StateMachine_1|Add1~24_combout\)))) # (!\SubMain_1|StateMachine_1|mode.st_111~q\ & (\SubMain_1|StateMachine_1|Add0~12_combout\ & 
-- ((\SubMain_1|StateMachine_1|mode.st_110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Add0~12_combout\,
	datab => \SubMain_1|StateMachine_1|Add1~24_combout\,
	datac => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_111~q\,
	combout => \SubMain_1|StateMachine_1|Add1~26_combout\);

-- Location: LCCOMB_X73_Y49_N12
\SubMain_1|StateMachine_1|CountValue[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(9) = (\SubMain_1|StateMachine_1|WideOr12~0_combout\ & (\SubMain_1|StateMachine_1|CountValue\(9))) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\ & ((\SubMain_1|StateMachine_1|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(9),
	datac => \SubMain_1|StateMachine_1|Add1~26_combout\,
	datad => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	combout => \SubMain_1|StateMachine_1|CountValue\(9));

-- Location: LCCOMB_X74_Y49_N2
\SubMain_1|StateMachine_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Equal0~0_combout\ = (!\SubMain_1|StateMachine_1|CountValue\(9) & (!\SubMain_1|StateMachine_1|CountValue\(5) & (!\SubMain_1|StateMachine_1|CountValue\(3) & !\SubMain_1|StateMachine_1|CountValue\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(9),
	datab => \SubMain_1|StateMachine_1|CountValue\(5),
	datac => \SubMain_1|StateMachine_1|CountValue\(3),
	datad => \SubMain_1|StateMachine_1|CountValue\(11),
	combout => \SubMain_1|StateMachine_1|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y50_N28
\SubMain_1|StateMachine_1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|LessThan1~2_combout\ = ((!\SubMain_1|StateMachine_1|CountValue\(10) & !\SubMain_1|StateMachine_1|CountValue\(11))) # (!\SubMain_1|StateMachine_1|CountValue\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|CountValue\(12),
	datac => \SubMain_1|StateMachine_1|CountValue\(10),
	datad => \SubMain_1|StateMachine_1|CountValue\(11),
	combout => \SubMain_1|StateMachine_1|LessThan1~2_combout\);

-- Location: LCCOMB_X75_Y50_N30
\SubMain_1|StateMachine_1|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector3~2_combout\ = (\SubMain_1|StateMachine_1|LessThan1~2_combout\) # ((\SubMain_1|StateMachine_1|Equal0~0_combout\ & ((!\SubMain_1|StateMachine_1|CountValue\(1)) # (!\SubMain_1|StateMachine_1|CountValue\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Equal0~0_combout\,
	datab => \SubMain_1|StateMachine_1|LessThan1~2_combout\,
	datac => \SubMain_1|StateMachine_1|CountValue\(2),
	datad => \SubMain_1|StateMachine_1|CountValue\(1),
	combout => \SubMain_1|StateMachine_1|Selector3~2_combout\);

-- Location: LCCOMB_X73_Y49_N18
\SubMain_1|StateMachine_1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|LessThan1~0_combout\ = (((!\SubMain_1|StateMachine_1|CountValue\(5) & !\SubMain_1|StateMachine_1|CountValue\(4))) # (!\SubMain_1|StateMachine_1|CountValue\(7))) # (!\SubMain_1|StateMachine_1|CountValue\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(8),
	datab => \SubMain_1|StateMachine_1|CountValue\(5),
	datac => \SubMain_1|StateMachine_1|CountValue\(7),
	datad => \SubMain_1|StateMachine_1|CountValue\(4),
	combout => \SubMain_1|StateMachine_1|LessThan1~0_combout\);

-- Location: LCCOMB_X73_Y49_N0
\SubMain_1|StateMachine_1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|LessThan1~1_combout\ = (!\SubMain_1|StateMachine_1|CountValue\(9) & (!\SubMain_1|StateMachine_1|CountValue\(11) & ((\SubMain_1|StateMachine_1|LessThan1~0_combout\) # (!\SubMain_1|StateMachine_1|CountValue\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|CountValue\(9),
	datab => \SubMain_1|StateMachine_1|CountValue\(6),
	datac => \SubMain_1|StateMachine_1|LessThan1~0_combout\,
	datad => \SubMain_1|StateMachine_1|CountValue\(11),
	combout => \SubMain_1|StateMachine_1|LessThan1~1_combout\);

-- Location: LCCOMB_X75_Y49_N28
\SubMain_1|StateMachine_1|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector3~1_combout\ = (\SubMain_1|StateMachine_1|counter_proc~1_combout\ & (\SubMain_1|StateMachine_1|mode.st_100~q\ & ((\BtnClear~input_o\) # (!\SubMain_1|FallingEdge_Clear|SavedValue~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|counter_proc~1_combout\,
	datab => \SubMain_1|StateMachine_1|mode.st_100~q\,
	datac => \SubMain_1|FallingEdge_Clear|SavedValue~q\,
	datad => \BtnClear~input_o\,
	combout => \SubMain_1|StateMachine_1|Selector3~1_combout\);

-- Location: LCCOMB_X75_Y49_N24
\SubMain_1|StateMachine_1|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Selector3~3_combout\ = (!\SubMain_1|StateMachine_1|counter_proc~2_combout\ & (\SubMain_1|StateMachine_1|Selector3~1_combout\ & ((\SubMain_1|StateMachine_1|Selector3~2_combout\) # 
-- (\SubMain_1|StateMachine_1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Selector3~2_combout\,
	datab => \SubMain_1|StateMachine_1|LessThan1~1_combout\,
	datac => \SubMain_1|StateMachine_1|counter_proc~2_combout\,
	datad => \SubMain_1|StateMachine_1|Selector3~1_combout\,
	combout => \SubMain_1|StateMachine_1|Selector3~3_combout\);

-- Location: LCCOMB_X75_Y49_N30
\SubMain_1|StateMachine_1|nxt_mode.st_111_1100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|nxt_mode.st_111_1100~combout\ = (GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & ((\SubMain_1|StateMachine_1|Selector3~3_combout\))) # (!GLOBAL(\SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\) & 
-- (\SubMain_1|StateMachine_1|nxt_mode.st_111_1100~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|nxt_mode.st_111_1100~combout\,
	datac => \SubMain_1|StateMachine_1|Selector3~3_combout\,
	datad => \SubMain_1|StateMachine_1|Selector32~8clkctrl_outclk\,
	combout => \SubMain_1|StateMachine_1|nxt_mode.st_111_1100~combout\);

-- Location: FF_X75_Y49_N31
\SubMain_1|StateMachine_1|mode.st_111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SubMain_1|StateMachine_1|nxt_mode.st_111_1100~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SubMain_1|StateMachine_1|mode.st_111~q\);

-- Location: LCCOMB_X76_Y49_N30
\SubMain_1|StateMachine_1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|Add1~2_combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\ & \SubMain_1|StateMachine_1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datad => \SubMain_1|StateMachine_1|Add1~0_combout\,
	combout => \SubMain_1|StateMachine_1|Add1~2_combout\);

-- Location: LCCOMB_X74_Y49_N4
\SubMain_1|StateMachine_1|CountValue[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|CountValue\(1) = (\SubMain_1|StateMachine_1|WideOr8~0_combout\ & ((\SubMain_1|StateMachine_1|CountValue\(1)))) # (!\SubMain_1|StateMachine_1|WideOr8~0_combout\ & (\SubMain_1|StateMachine_1|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|Add1~2_combout\,
	datab => \SubMain_1|StateMachine_1|WideOr8~0_combout\,
	datac => \SubMain_1|StateMachine_1|CountValue\(1),
	combout => \SubMain_1|StateMachine_1|CountValue\(1));

-- Location: LCCOMB_X77_Y49_N0
\SubMain_1|StateMachine_1|WideOr12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr12~combout\ = (\SubMain_1|StateMachine_1|mode.st_210~q\) # ((\SubMain_1|StateMachine_1|mode.st_221~q\) # ((\SubMain_1|StateMachine_1|mode.st_220~q\) # (!\SubMain_1|StateMachine_1|WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_210~q\,
	datab => \SubMain_1|StateMachine_1|mode.st_221~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_220~q\,
	datad => \SubMain_1|StateMachine_1|WideOr12~0_combout\,
	combout => \SubMain_1|StateMachine_1|WideOr12~combout\);

-- Location: LCCOMB_X77_Y49_N16
\SubMain_1|StateMachine_1|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr9~0_combout\ = (!\SubMain_1|StateMachine_1|mode.st_120~q\ & !\SubMain_1|StateMachine_1|mode.st_100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_120~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_100~q\,
	combout => \SubMain_1|StateMachine_1|WideOr9~0_combout\);

-- Location: LCCOMB_X77_Y49_N2
\SubMain_1|StateMachine_1|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr11~combout\ = (\SubMain_1|StateMachine_1|mode.st_310~q\) # (((\SubMain_1|StateMachine_1|mode.st_300~q\) # (!\SubMain_1|StateMachine_1|WideOr11~0_combout\)) # (!\SubMain_1|StateMachine_1|WideOr9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_310~q\,
	datab => \SubMain_1|StateMachine_1|WideOr9~0_combout\,
	datac => \SubMain_1|StateMachine_1|mode.st_300~q\,
	datad => \SubMain_1|StateMachine_1|WideOr11~0_combout\,
	combout => \SubMain_1|StateMachine_1|WideOr11~combout\);

-- Location: LCCOMB_X76_Y50_N20
\SubMain_1|StateMachine_1|WideOr10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr10~combout\ = (\SubMain_1|StateMachine_1|mode.st_111~q\) # ((\SubMain_1|StateMachine_1|mode.st_100~q\) # (\SubMain_1|StateMachine_1|mode.st_120~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_111~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_100~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_120~q\,
	combout => \SubMain_1|StateMachine_1|WideOr10~combout\);

-- Location: LCCOMB_X76_Y50_N18
\SubMain_1|StateMachine_1|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr9~combout\ = (\SubMain_1|StateMachine_1|mode.st_110~q\) # ((\SubMain_1|StateMachine_1|mode.st_100~q\) # (\SubMain_1|StateMachine_1|mode.st_120~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SubMain_1|StateMachine_1|mode.st_110~q\,
	datac => \SubMain_1|StateMachine_1|mode.st_100~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_120~q\,
	combout => \SubMain_1|StateMachine_1|WideOr9~combout\);

-- Location: LCCOMB_X79_Y49_N22
\SubMain_1|StateMachine_1|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|WideOr13~0_combout\ = ((\SubMain_1|StateMachine_1|mode.st_300~q\) # (\SubMain_1|StateMachine_1|mode.st_321~q\)) # (!\SubMain_1|StateMachine_1|mode.st_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_reset~q\,
	datab => \SubMain_1|StateMachine_1|mode.st_300~q\,
	datad => \SubMain_1|StateMachine_1|mode.st_321~q\,
	combout => \SubMain_1|StateMachine_1|WideOr13~0_combout\);

-- Location: LCCOMB_X79_Y49_N28
\SubMain_1|StateMachine_1|BuzzerEnable\ : cycloneive_lcell_comb
-- Equation(s):
-- \SubMain_1|StateMachine_1|BuzzerEnable~combout\ = (\SubMain_1|StateMachine_1|WideOr13~0_combout\ & (\SubMain_1|StateMachine_1|mode.st_300~q\)) # (!\SubMain_1|StateMachine_1|WideOr13~0_combout\ & ((\SubMain_1|StateMachine_1|BuzzerEnable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SubMain_1|StateMachine_1|mode.st_300~q\,
	datac => \SubMain_1|StateMachine_1|WideOr13~0_combout\,
	datad => \SubMain_1|StateMachine_1|BuzzerEnable~combout\,
	combout => \SubMain_1|StateMachine_1|BuzzerEnable~combout\);

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

ww_CountValue_o(0) <= \CountValue_o[0]~output_o\;

ww_CountValue_o(1) <= \CountValue_o[1]~output_o\;

ww_CountValue_o(2) <= \CountValue_o[2]~output_o\;

ww_CountValue_o(3) <= \CountValue_o[3]~output_o\;

ww_CountValue_o(4) <= \CountValue_o[4]~output_o\;

ww_CountValue_o(5) <= \CountValue_o[5]~output_o\;

ww_CountValue_o(6) <= \CountValue_o[6]~output_o\;

ww_CountValue_o(7) <= \CountValue_o[7]~output_o\;

ww_CountValue_o(8) <= \CountValue_o[8]~output_o\;

ww_CountValue_o(9) <= \CountValue_o[9]~output_o\;

ww_CountValue_o(10) <= \CountValue_o[10]~output_o\;

ww_CountValue_o(11) <= \CountValue_o[11]~output_o\;

ww_CountValue_o(12) <= \CountValue_o[12]~output_o\;

ww_DebugLED(0) <= \DebugLED[0]~output_o\;

ww_DebugLED(1) <= \DebugLED[1]~output_o\;

ww_DebugLED(2) <= \DebugLED[2]~output_o\;

ww_DebugLED(3) <= \DebugLED[3]~output_o\;

ww_DebugLED(4) <= \DebugLED[4]~output_o\;

ww_DebugLED(5) <= \DebugLED[5]~output_o\;

ww_DebugLED(6) <= \DebugLED[6]~output_o\;

ww_DebugLED(7) <= \DebugLED[7]~output_o\;

ww_BuzzerOut <= \BuzzerOut~output_o\;
END structure;


