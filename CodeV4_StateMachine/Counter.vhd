------------------------------------------------------
--  Timer by Samuel Daurat [178190]  --

-- This module generates a slower clock fron the system clock


-- Changelogs:
-- Version 1.0 | 27.11.17
--  *initial release
------------------------------------------------------

-- Library Declaration --
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;


--------------------------------------------
--	   ENTITY	                           --
--------------------------------------------
ENTITY Counter IS
PORT(
																		--Hardware clock
	clk_i		 :		IN		 std_logic;
	clk_deci_i:		IN		 std_logic;
	
	--Control the Counter-Block
	CountBlockControl_i 	:IN	std_logic_vector(5 downto 0);	
	CountBlockTelemet_o 	:OUT	std_logic;							--Bit0: Counter is at 0
	CountValue_o		:OUT integer range 0 to 6000;
	
	--User buttons
	BtnMinF_i		:		IN		 std_logic;
	BtnSecF_i		:		IN		 std_logic;
	BtnMin_i		:		IN		 std_logic;
	BtnSec_i		:		IN		 std_logic
	
	
	
	);
END Counter;

--------------------------------------------
--        ARCHITECTURE	                    --
--------------------------------------------
ARCHITECTURE behave OF Counter IS

	signal CountValue: integer range 0 to 6000 :=0;
	signal CountValueSaved: integer range 0 to 6000 :=0;
	signal AlreadyIncremented : std_logic :='0';
	SIGNAL clk_Four: std_logic;
	CONSTANT Divide4Sec  	: INTEGER := 12500000;
	
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

BEGIN

ClockDivider_1: component ClockDivider
		  port map (
			  clk_in => clk_i,
			  reset_i => BtnSec_i AND BtnMin_i,
			  Divider_in => Divide4Sec,
			  clk_out => clk_Four
		 );

-- Registered Process --
count_proc : PROCESS (clk_i)
	BEGIN
	
		
		IF (rising_edge(clk_i)) THEN
		
		
			IF CountBlockControl_i(5) = '1' THEN		--Time to reset
				CountValue <= 0;
				CountValueSaved <= 0;
				AlreadyIncremented <= '0';
			ELSIF CountBlockControl_i(4) = '1' THEN	--Counting is enabled
				IF clk_Deci_i = '1' AND AlreadyIncremented = '0' AND CountValue>0 THEN
					CountValue <= CountValue-1;
					AlreadyIncremented <= '1';
				END IF;
			ELSIF CountBlockControl_i(3) = '1' THEN  --Increment enable
				--IF (BtnMinF_i = '1' OR (BtnMin = '0' AND clk_Deci_i = '1') )	THEN
				IF (BtnMinF_i = '1' OR (BtnMin_i = '0' AND clk_Four = '1') )	THEN
					IF CountValue < 5399 THEN
						CountValue <= CountValue + 600 - (CountValue mod 10);
					ELSE
						CountValue <= CountValue - 5400 - (CountValue mod 10);
					END IF;
				END IF;
				IF (BtnSecF_i = '1' OR (BtnSec_i = '0' AND clk_Four = '1') )	THEN
					IF (CountValue-(((CountValue/10)-((CountValue/10) mod 60)))*10) < 589 THEN
						CountValue <= CountValue + 10 - (CountValue mod 10);
					ELSE
						CountValue <= CountValue - 590 - (CountValue mod 10);
					END IF;
				END IF;
			ELSIF CountBlockControl_i(2) = '1' THEN  --Save Value
					CountValueSaved <= CountValue;
			ELSIF CountBlockControl_i(1) = '1' THEN  --Restore Value
					CountValue <= CountValueSaved;
			END IF;
			
			--Reset AlreadyIncremented
			IF clk_deci_i='0'  THEN
				ALreadyIncremented <= '0';
			END IF;
			
			--Write Outputs
			CountValue_o <= CountValue;
			
			IF CountValue = 0 THEN
				CountBlockTelemet_o <= '1';
			ELSE
				CountBlockTelemet_o <= '0';
			END IF;
		
		END IF;
		
END PROCESS count_proc;

END behave;
