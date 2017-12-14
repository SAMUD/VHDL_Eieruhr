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
	SW2				:	IN		std_logic;
	SW3				:	IN		std_logic;
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

--internal Signals
	SIGNAL BtnStartFalling	:	std_logic := '0';
	SIGNAL BtnClearFalling	:	std_logic := '0';
	SIGNAL BtnMinFalling	:	std_logic := '0';
	SIGNAL BtnSecFalling	:	std_logic := '0';
	
	CONSTANT Divide10Sec  	: INTEGER := 5000000;
	
	SIGNAL CountBlockControl:	std_logic_vector(5 downto 0) :="000000";
	SIGNAL CountBlockTelemet:	std_logic :='0';
	
	SIGNAL clk_Deci			:	std_logic;
	
	SIGNAL CountValue : integer range 0 to 6000 :=0;

--Divides the main clock
	component ClockDivider
	  port(
														
		clk_in		:		IN		std_logic;							--Hardware clock
		reset_i			:		IN		std_logic;
		Divider_in	:		IN integer range 0 to 100000005;		--Divider					
		clk_out		:		OUT	std_logic;							--divided clock
		clk_out_alt	:		OUT std_logic
	);
	end component;	
	

--Main state machine
	component StateMachine
	  port(											
			reset_i			:		IN		std_logic;
		clk_i				:		IN		std_logic;
		clk_Deci_i		:		IN		std_logic;
											
		--User buttons
		BtnStartF_i		:		IN		 std_logic;
		BtnClearF_i		:		IN		 std_logic;
		
		--Outputs to other blocks
		DebugLED_o		:	OUT 	std_logic_vector(2 downto 0);
		
		--Control the Counter-Block
		CountBlockControl_o 	:OUT	std_logic_vector(5 downto 0);	
		CountBlockTelemet_i 	:In	std_logic							--Bit0: Counter is at 0
	);
	end component;
	
	
	--Detecting a falling edge (when button is pressed)
	component FallingEdge
	  port(
		clk_i			 :		IN		std_logic;			--main 50Mhz clock input		
		Button_i		 :		IN		std_logic;			--Input											
		Falling_o:		OUT	std_logic
	);
	end component;
	
	--Detecting a falling edge (when button is pressed)
	component Counter
	  port(
		clk_i		 :		IN		 std_logic;
		clk_deci_i:		IN		std_logic;
		
		--Control the Counter-Block
		CountBlockControl_i 	:IN	std_logic_vector(5 downto 0);	
		CountBlockTelemet_o 	:OUT	std_logic;							--Bit0: Counter is at 0
		CountValue_o		:OUT integer range 0 to 6000;
		
		BtnMinF_i		:		IN		 std_logic;
		BtnSecF_i		:		IN		 std_logic;
		BtnMin_i		:		IN		 std_logic;
		BtnSec_i		:		IN		 std_logic
	);
	end component;

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
	

BEGIN

----------------------------------------------
--Write some outputs
	DebugLED_Control <= CountBlockControl;
	CountValueMainOut <= CountValue;

----------------------------------------------
--State machine

	StateMachine_1: component StateMachine
		port map (
			reset_i 					=> reset,
			clk_i						=> clk,
			clk_Deci_i				=>clk_Deci,
												
			BtnStartF_i				=> BtnStartFalling,
			BtnClearF_i				=> BtnClearFalling,
			
			--Outputs to other blocks
			DebugLED_o				=> DebugLED,
			
			--Control the Counter-Block
			CountBlockControl_o	=> CountBlockControl,
			CountBlockTelemet_i	=> CountBlockTelemet
			
			);
			
	----------------------------------------------
--Falling Edge

			
	FallingEdge_Clear : component FallingEdge
		port map(
			clk_i => clk,
			Button_i => BtnClear,
			Falling_o => BtnClearFalling
			);
			
	FallingEdge_Start : component FallingEdge
		port map(
			clk_i => clk,
			Button_i => BtnStart,
			Falling_o => BtnStartFalling
			);
			
	FallingEdge_Min : component FallingEdge
		port map(
			clk_i => clk,
			Button_i => BtnMin,
			Falling_o => BtnMinFalling
			);
	
	FallingEdge_Sec : component FallingEdge
		port map(
			clk_i => clk,
			Button_i => BtnSec,
			Falling_o => BtnSecFalling
			);

----------------------------------------------
--Falling Edge

			
	Counter_1 : component Counter
		port map(
			clk_i		  => clk,
			clk_deci_i=>clk_Deci,
			
			--Control the Counter-Block
			CountBlockControl_i 	=> CountBlockControl,
			CountBlockTelemet_o 	=> CountBlockTelemet,
			CountValue_o		=> CountValue,
			
			--User buttons
			BtnMinF_i		=>BtnMinFalling,
			BtnSecF_i		=>BtnSecFalling,
			BtnMin_i			=>BtnMin,
			BtnSec_i			=>BtnSec
			);
			

----------------------------------------------
--Clock Divider

	ClockDivider_1: component ClockDivider
		  port map (
			  clk_in => clk,
			  reset_i => '0',
			  Divider_in => Divide10Sec,
			  clk_out_alt => clk_Deci
		 );

----------------------------------------------
--Convert Int to 7Seg
		 
ConvertIntBcd_1: component ConvertIntBcd
		port map(
				InputInt => CountValue,											
				SevenSeg1 => Output1,
				SevenSeg2 => Output2,
				SevenSeg3 => Output3,
				SevenSeg4 => Output4
		);
		
----------------------------------------------
--Buzzer	
	
Buzzer_1	:component Buzzer
port map(
	clk => clk,
	Enable => CountBlockControl(0),
	BuzzerOut => BuzzerOut
);

			
		
END behave;