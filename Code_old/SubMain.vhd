------------------------------------------------------
--  BCD COUNTER by Samuel Daurat [178190]  --
--  08.10.17
------------------------------------------------------

------------------------------------------------------
--  Top Level by Samuel Daurat [178190]  --


-- Changelog:
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
	reset					:		IN		std_logic;
	clk					:		IN		std_logic;
	
	--User buttons
	BtnMin				:		IN		std_logic;
	BtnSec				:		IN		std_logic;
	BtnStart				:		IN		std_logic;
	BtnClear				:		IN		std_logic;
	
	BuzzerEnable			:		OUT	std_logic;
	DebugLED 			: 		OUT std_logic_vector(7 downto 0);
	
	CountValue			:		OUT integer range 0 to 6000

	
	);
END SubMain;

--------------------------------------------
--        ARCHITECTURE	                  --
--------------------------------------------
ARCHITECTURE behave OF SubMain IS

	CONSTANT Divide10Sec  			: INTEGER := 5000000;
	SIGNAL	clk_Deci					: std_logic;
	
	SIGNAL BtnMinFalling				:	std_logic;
	SIGNAL BtnSecFalling				:	std_logic;
	SIGNAL BtnStartFalling			:	std_logic;
	SIGNAL BtnClearFalling			:	std_logic;
	
	component ClockDivider
	  port(
														
		clk_in		:		IN		std_logic;							--Hardware clock
		Divider_in	:		IN integer range 0 to 100000005;		--Divider					
		clk_out		:		OUT	std_logic							--divided clock
	);
	end component;
	
	component FallingEdge
	  port(
		clk			:		IN		std_logic;			--main 50Mhz clock input		
		Button		:		IN		std_logic;			--Input											
		FallingOutput:		OUT	std_logic			--Output
	);
	end component;
	
	
	component StateMachine
	  port(											
		reset			:		IN		std_logic;
		clk			:		IN		std_logic;
		clk_Deci		: 		IN		std_logic;
											
											--User buttons
		BtnMin		:		IN		 std_logic;
		BtnSec		:		IN		 std_logic;
		BtnStart		:		IN		 std_logic;
		BtnClear		:		IN		 std_logic;
		
												--Outputs to other blocks
		CountValueOut	:		OUT integer range 0 to 6000;
		DebugLED			:		OUT std_logic_vector(7 downto 0);
		BuzzerEnable:		OUT	 std_logic
	);
	end component;
	
BEGIN

	
	StateMachine_1: component StateMachine
		  port map (
			reset		=> reset,	
			clk			=> clk,
			clk_Deci => clk_Deci,
																						
			BtnMin	=> BtnMinFalling,	
			BtnSec	=> BtnSecFalling,	
			BtnStart		=> BtnStartFalling,
			BtnClear		=> BtnClearFalling,
			
														
			CountValueOut	=> 	CountValue,		
			BuzzerEnable => BuzzerEnable,
			DebugLED => DebugLED		
		 );
		 
	
	
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
	
	ClockDivider_1: component ClockDivider
		  port map (
			  clk_in => clk,
			  Divider_in => Divide10Sec,
			  clk_out => clk_Deci
		 );
	
			
END behave;