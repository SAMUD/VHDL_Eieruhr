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
ENTITY Main IS
PORT(
	reset			:	IN		std_logic;
	clk			:	IN		std_logic;
	
	--User buttons
	BtnMin		:		IN		std_logic;
	BtnSec		:		IN		std_logic;
	BtnStart		:		IN		std_logic;
	BtnClear		:		IN		std_logic;
	BuzzerEnableAlternate		:		IN		std_logic;
	NumberControlAlternate : std_logic_vector(12 downto 0);
	
	Output1		:		OUT	std_logic_vector (6 downto 0);	-- decoded signals to send to the 7seg
	Output2		:		OUT	std_logic_vector (6 downto 0);	
	Output3		:		OUT	std_logic_vector (6 downto 0);	
	Output4		:		OUT	std_logic_vector (6 downto 0);
	CountValueMainOut			:	OUT integer range 0 to 6000;
		DebugLED 	: 		OUT 	std_logic_vector(7 downto 0);
	
	BuzzerOut	:		OUT	std_logic
	
	);
END Main;

--------------------------------------------
--        ARCHITECTURE	                  --
--------------------------------------------
ARCHITECTURE behave OF Main IS

	CONSTANT Divide10Sec  		: INTEGER := 5000000;
	SIGNAL	clk_Deci				:	std_logic;
	SIGNAL	BuzzerEnable		:	std_logic;
	SIGNAL	CountValue			:	integer range 0 to 6000;
	SIGNAL	CountValueIntermediate			:	integer range 0 to 6000;
	
	SIGNAL BtnMinFalling		:		std_logic;
	SIGNAL BtnSecFalling		:		std_logic;
	SIGNAL BtnStartFalling		:		std_logic;
	SIGNAL BtnClearFalling		:		std_logic;
	
	component ConvertIntBcd
	  port(
																		
	InputInt		:		IN			integer range 0 to 6000 ;		--Input signal containing the actual time information in Deci-Sec
													
	SevenSeg1	:		OUT	std_logic_vector (6 downto 0);	-- decoded signals to send to the 7seg
	SevenSeg2	:		OUT	std_logic_vector (6 downto 0);	
	SevenSeg3	:		OUT	std_logic_vector (6 downto 0);	
	SevenSeg4	:		OUT	std_logic_vector (6 downto 0)
	);
	end component;
	
	component Buzzer
	  port(
		clk			:		IN		std_logic;
		Enable		:		IN		std_logic;
													
		BuzzerOut	:		OUT	std_logic
	);
	end component;
	
	component ClockDivider
	  port(
														--Hardware clock
		clk_in		:		IN		std_logic;
		Divider_in	:		IN integer range 0 to 100000005;
														--divided clock
		clk_out		:		OUT	std_logic
	);
	end component;
	
	component FallingEdge
	  port(
														--Hardware clock
		clk			:		IN		std_logic;			--main 50Mhz clock input		
		Button		:		IN		std_logic;			--each clock-cycle here will increment the PWM counter by 1 from 0(off) to 1000(max)
													
		FallingOutput:		OUT	std_logic			--Output to buzzer
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

	CountValue <= CountValueIntermediate;
	--CountValue <= to_integer(unsigned(NumberControlAlternate));
	CountValueMainOut <= CountValue;
	
	
	StateMachine_1: component StateMachine
		  port map (
			reset		=> reset,	
			clk			=> clk,
			clk_Deci => clk_Deci,
																						
			BtnMin	=> BtnMinFalling,	
			BtnSec	=> BtnSecFalling,	
			BtnStart		=> BtnStartFalling,
			BtnClear		=> BtnClearFalling,
			
														
			CountValueOut	=> 	CountValueIntermediate,		
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
		 
	ConvertIntBcd_1: component ConvertIntBcd
		port map(
				InputInt => CountValue,											
				SevenSeg1 => Output1,
				SevenSeg2 => Output2,
				SevenSeg3 => Output3,
				SevenSeg4 => Output4
		);
	
	Buzzer_1	:component Buzzer
		port map(
			clk => clk,
			Enable => BuzzerEnable, --OR BuzzerEnableAlternate,
			BuzzerOut => BuzzerOut
		);
	
		
		
END behave;