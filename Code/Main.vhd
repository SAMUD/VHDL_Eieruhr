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
	clk_DeciOverride:	IN		std_logic;	--Manual switch to simulate deci-second clock (SW2)
	--NumberControlOverride : std_logic_vector(12 downto 0);
	
	-- decoded signals to send to the 7seg
	Output1			:	OUT	std_logic_vector (6 downto 0);	
	Output2			:	OUT	std_logic_vector (6 downto 0);	
	Output3			:	OUT	std_logic_vector (6 downto 0);	
	Output4			:	OUT	std_logic_vector (6 downto 0);
	
	--Debug outputs
	CountValue_o:OUT integer range 0 to 6000;				--Showing the actual count value in binary on LEDs Red 17-
	DebugLED 	: 		OUT 	std_logic_vector(7 downto 0);		--Showing state of state machine on LEDs Green 
	
	--Buzzer Output
	BuzzerOut	:		OUT	std_logic
	
	);
END Main;

--------------------------------------------
--        ARCHITECTURE	                  --
--------------------------------------------
ARCHITECTURE behave OF Main IS
	
	--SubMain
	component SubMain
	  port(											
		reset				:	IN		std_logic;	--Mapped to SW0
		clk				:	IN		std_logic;
		
		--User buttons
		BtnMin			:	IN		std_logic;	--Mapped to Btn3
		BtnSec			:	IN		std_logic;	--Mapped to Btn2
		BtnStart			:	IN		std_logic;	--Mapped to Btn0
		BtnClear			:	IN		std_logic;	--Mapped to Btn1
		
		--Debug buttons
		clk_DeciOverride:	IN		std_logic;	--Manual switch to simulate deci-second clock (SW2)
		
		--Debug outputs
		DebugLED 		: 	OUT 	std_logic_vector(7 downto 0);		--Showing state of state machine on LEDs Green 
		
		--Count Value Output
		CountValue	:	OUT	integer range 0 to 6000;			--Current counting value in Deci-Seconds
		
		--Buzzer Output
		BuzzerOut	:		OUT	std_logic
		
	);
	end component;

BEGIN

	SubMain_1 : component SubMain
		port map(
			clk => clk,
			reset => reset,
			
			BtnMin => BtnMin,
			BtnSec => BtnSec,
			BtnStart => BtnStart,
			BtnClear => BtnClear,
			
			clk_DeciOverride => clk_DeciOverride,
			DebugLED => DebugLED,
			CountValue => CountValue_o,
			BuzzerOut => BuzzerOut 
			);


		
END behave;