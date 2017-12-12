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
ENTITY SubMain IS
PORT(
	reset				:	IN		std_logic;	--Mapped to SW0
	clk				:	IN		std_logic;
	
	--User buttons
	BtnMin			:	IN		std_logic;	--Mapped to Btn3
	BtnSec			:	IN		std_logic;	--Mapped to Btn2
	BtnStart			:	IN		std_logic;	--Mapped to Btn0
	BtnClear			:	IN		std_logic;	--Mapped to Btn1
	
	--Debug outputs
	DebugLED 		: 	OUT 	std_logic_vector(7 downto 0);		--Showing state of state machine on LEDs Green 
	
	--Count Value Output
	CountValueOut	:	OUT	integer range 0 to 6000;			--Current counting value in Deci-Seconds
	
	--Buzzer Output
	BuzzerOut	:		OUT	std_logic
	);
END SubMain;

--------------------------------------------
--        ARCHITECTURE	                  --
--------------------------------------------
ARCHITECTURE behave OF SubMain IS

	--internal Signals
	SIGNAL BtnMinFalling		:	std_logic;
	SIGNAL BtnSecFalling		:	std_logic;
	SIGNAL BtnStartFalling	:	std_logic;
	SIGNAL BtnClearFalling	:	std_logic;
	
	SIGNAL CountValue			:  integer range 0 to 6000;
	SIGNAL CountBlockControl:	std_logic_vector(5 downto 0);
	
	--Detecting a falling edge (when button is pressed)
	component FallingEdge
	  port(
		clk			 :		IN		std_logic;			--main 50Mhz clock input		
		Button		 :		IN		std_logic;			--Input											
		FallingOutput:		OUT	std_logic			--Output
	);
	end component;
	
	--Mai state machine
	component StateMachine
	  port(											
		reset			:		IN		std_logic;
		clk			:		IN		std_logic;
											
		--User buttons
		BtnMinF		:		IN		 std_logic;
		BtnSecF		:		IN		 std_logic;
		BtnStartF	:		IN		 std_logic;
		BtnClearF	:		IN		 std_logic;
		
		--Current count Value Input
		CountValue	:		IN 	 integer range 0 to 6000;
		
		--Outputs to other blocks
		DebugLED			:	OUT 	std_logic_vector(7 downto 0);
		BuzzerEnable	:	OUT	std_logic;
		
		--Control the Counter-Block
		CountBlockControl	:OUT	std_logic_vector(5 downto 0);	--Bit0: LoadLastSavedValue, Bit1: SaveActualValue, Bit2: Inrement 1s, Bit3: Increment 1min, Bit4: Counting is enabled, Bit5: Reset to 0
	);
	end component;
	
BEGIN

----------------------------------------------
--Falling Edge

	FallingEdge_Min : component FallingEdge
		port map(
			clk => clk,
			Button => BtnMin,
			FallingOutput => BtnMinFalling
			);
				
	FallingEdge_Sec : component FallingEdge
		port map(
			clk => clk,
			Button => BtnSec,
			FallingOutput => BtnSecFalling
			);
			
	FallingEdge_Clear : component FallingEdge
		port map(
			clk => clk,
			Button => BtnClear,
			FallingOutput => BtnClearFalling
			);
			
	FallingEdge_Start : component FallingEdge
		port map(
			clk => clk,
			Button => BtnStart,
			FallingOutput => BtnStartFalling
			);
			
----------------------------------------------
--State Machine
		 
	StateMachine_1: component StateMachine
		port map (
			reset 			=> reset,
			clk				=> clk,
												
			BtnMinF			=> BtnMinFalling,
			BtnSecF			=> BtnSecFalling,
			BtnStartF		=> BtnStartFalling,
			BtnClearF		=> BtnClearFalling,
			
			--Current count Value Input
			CountValue		=> CountValue,
			
			--Outputs to other blocks
			DebugLED			=> DebugLED,
			BuzzerEnable	=> BuzzerOut,
			
			--Control the Counter-Block
			CountBlockControl	=> CountBlockControl
			
			);
	
			
END behave;