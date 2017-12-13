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
	SIGNAL BtnMinFalling		:	std_logic;
	SIGNAL BtnSecFalling		:	std_logic;
	SIGNAL BtnStartFalling	:	std_logic;
	SIGNAL BtnClearFalling	:	std_logic;


--Main state machine
	component StateMachine
	  port(											
			reset_i			:		IN		std_logic;
			clk_i				:		IN		std_logic;
			clk_deci_i		:		IN		std_logic;
												
			--User buttons
			BtnMinF_i		:		IN		 std_logic;
			BtnSecF_i		:		IN		 std_logic;
			BtnStartF_i		:		IN		 std_logic;
			BtnClearF_i		:		IN		 std_logic;
			
			--Outputs to other blocks
			DebugLED_o		:	OUT 	std_logic_vector(2 downto 0);
			BuzzerEnable_o	:	OUT	std_logic;
			
			--Control the Counter-Block
			CountBlockControl_o 	:OUT	std_logic_vector(5 downto 0);	--Bit0: LoadLastSavedValue (Left)
																						--Bit1: SaveActualValue
																						--Bit2: Inrement 1s
																						--Bit3: Increment 1min
																						--Bit4: Counting is enabled
																						--Bit5: Reset to 0			(Right)
			CountBlockTelemet_i 	:In	std_logic							--Bit0: Counter is at 0
	);
	end component;
	
	
	--Detecting a falling edge (when button is pressed)
	component FallingEdge
	  port(
		clk			 :		IN		std_logic;			--main 50Mhz clock input		
		Button		 :		IN		std_logic;			--Input											
		FallingOutput:		OUT	std_logic			--Output
	);
	end component;

	
	

BEGIN

	StateMachine_1: component StateMachine
		port map (
			reset_i 					=> reset,
			clk_i						=> clk,
			clk_deci_i				=> SW2,
												
			BtnMinF_i				=> BtnMinFalling,
			BtnSecF_i				=> BtnSecFalling,
			BtnStartF_i				=> BtnStartFalling,
			BtnClearF_i				=> BtnClearFalling,
			
			--Outputs to other blocks
			DebugLED_o(0)				=> DebugLED(0),
			DebugLED_o(1)				=> DebugLED(1),
			DebugLED_o(2)				=> DebugLED(2),
			BuzzerEnable_o			=> BuzzerOut,
			
			--Control the Counter-Block
			CountBlockControl_o(0)	=> DebugLED_Control(0),
			CountBlockControl_o(1)	=> DebugLED_Control(1),
			CountBlockControl_o(2)	=> DebugLED_Control(2),
			CountBlockControl_o(3)	=> DebugLED_Control(3),
			CountBlockControl_o(4)	=> DebugLED_Control(4),
			CountBlockControl_o(5)	=> DebugLED_Control(5),
			CountBlockTelemet_i	=> SW3
			
			);
			
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

		
END behave;