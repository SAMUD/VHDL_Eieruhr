------------------------------------------------------
--  Timer by Samuel Daurat [178190]  --
------------------------------------------------------

------------------------------------------------------
--  Top Level Entity by Samuel Daurat [178190]  --


-- Changelog:
-- Version 2.0 | 
-- Version 1.1 | 05.12.17
--  *refresh interfaces
-- Version 1.0 | 27.11.17
--  *initial release
------------------------------------------------------

-- Library Declaration --
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use ieee.numeric_std.all;

--------------------------------------------
--	   ENTITY	                           --
--------------------------------------------
ENTITY Main IS
PORT(
	reset				:	IN		std_logic;	--Mapped to SW0
	clk				:	IN		std_logic;
	
	--User buttons
	BtnMin			:	IN		std_logic;	--Mapped to Btn3
	BtnSec			:	IN		std_logic;	--Mapped to Btn2
	BtnStart			:	IN		std_logic;	--Mapped to Btn0
	BtnClear			:	IN		std_logic;	--Mapped to Btn1
	
	--Debug buttons
	BuzzerOverride	:	IN		std_logic;	--Manual activation for the Buzzer, Mapped to SW1
	--NumberControlOverride : std_logic_vector(12 downto 0);
	
	-- decoded signals to send to the 7seg
	Output1			:	OUT	std_logic_vector (6 downto 0);	
	Output2			:	OUT	std_logic_vector (6 downto 0);	
	Output3			:	OUT	std_logic_vector (6 downto 0);	
	Output4			:	OUT	std_logic_vector (6 downto 0);
	
	--Debug outputs
	CountValueMainOut:OUT 	integer range 0 to 6000;				--Showing the actual count value in binary on LEDs Red 17-
	DebugLED			:	OUT 	std_logic_vector(2 downto 0);		--Showing state of state machine on LEDs Green 
	DebugLED_Control:	OUT 	std_logic_vector(5 downto 0);
	Debug_clk_Deci	:	OUT	std_logic;
		
	--Buzzer Output
	BuzzerOut		:	OUT	std_logic
	
	);
END Main;

--------------------------------------------
--        ARCHITECTURE	                  --
--------------------------------------------
ARCHITECTURE behave OF Main IS

	SIGNAL CountValue	: integer range 0 to 6000;

	--Call the sub block with state machine and other helpers
	component SubMain
	  port(
		reset_i					:	IN		std_logic;	--Mapped to SW0
		clk_i						:	IN		std_logic;
		
		--User buttons
		BtnMin_i					:	IN		std_logic;	--Mapped to Btn3
		BtnSec_i					:	IN		std_logic;	--Mapped to Btn2
		BtnStart_i				:	IN		std_logic;	--Mapped to Btn0
		BtnClear_i				:	IN		std_logic;	--Mapped to Btn1
		
		--Debug outputs
		DebugLED_o 				: 	OUT 	std_logic_vector(2 downto 0);		--Showing state of state machine on LEDs Green 
		DebugLED_Control_o 	: 	OUT 	std_logic_vector(5 downto 0);
		Debug_clk_Deci_o		:	OUT	std_logic;
		
		--Count Value Output
		CountValue_o			:	OUT	integer range 0 to 6000;			--Current counting value in Deci-Seconds
		
		--Buzzer Output
		Buzzer_o					:	OUT	std_logic
	);
	end component;

BEGIN

	SubMain_1 : component SubMain
		port map(
			reset_i				=> reset,	
			clk_i					=> clk,				
			
			--User buttons
			BtnMin_i				=> BtnMin,				
			BtnSec_i				=> BtnSec,	
			BtnStart_i			=> BtnStart,	
			BtnClear_i			=> BtnClear,	
			
			--Debug outputs
			DebugLED_o 			=> DebugLED,		
			DebugLED_Control_o=> DebugLED_Control, 	
			Debug_clk_Deci_o	=> Debug_clk_Deci,	
			
			--Count Value Output
			CountValue_o		=> CountValue,		
			
			--Buzzer Output
			Buzzer_o				=> BuzzerOut					
			);

		
END behave;