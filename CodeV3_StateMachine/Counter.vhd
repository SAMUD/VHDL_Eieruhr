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
	clk_i		:		IN		 std_logic;
	clk_deci_i:		IN		std_logic;
	
	--Control the Counter-Block
	CountBlockControl_i 	:IN	std_logic_vector(5 downto 0);	--Bit5: LoadLastSavedValue (Left)
																				--Bit4: SaveActualValue
																				--Bit3: Inrement 1s
																				--Bit2: Increment 1min
																				--Bit1: Counting is enabled
																				--Bit0: Reset to 0			(Right)
	CountBlockTelemet_o 	:OUT	std_logic;							--Bit0: Counter is at 0
	CountValue_o		:OUT integer range 0 to 6000
	
	
	
	);
END Counter;

--------------------------------------------
--        ARCHITECTURE	                    --
--------------------------------------------
ARCHITECTURE behave OF Counter IS

	signal CountValue: integer range 0 to 6000 :=0;
	signal CountValueSaved: integer range 0 to 6000 :=0;
	signal AlreadyIncremented : std_logic;

BEGIN

-- Registered Process --
count_proc : PROCESS (clk_i)
	BEGIN
	
		IF CountBlockControl_i(0) = '1' THEN		--Time to reset
			CountValue <= 0;
			CountValueSaved <= 0;
			AlreadyIncremented <= '0';
		ELSIF CountBlockControl_i(1) = '1' THEN	--Counting is enabled
			IF clk_Deci_i = '1' AND AlreadyIncremented = '0' AND CountValue>0 THEN
				CountValue <= CountValue-1;
				AlreadyIncremented <= '1';
			END IF;
		ELSIF CountBlockControl_i(2) = '1' THEN  --Increment 1 min
			IF CountValue < 4999 THEN
				CountValue <= CountValue+600;
			END IF;
		ELSIF CountBlockControl_i(3) = '1' THEN  --Increment 1 sec
			IF CountValue < 5589 THEN
				CountValue <= CountValue+10;
			END IF;
		ELSIF CountBlockControl_i(4) = '1' THEN  --Save Value
				CountValueSaved <= CountValue;
		ELSIF CountBlockControl_i(5) = '1' THEN  --Restore Value
				CountValue <= CountValueSaved;
		END IF;
		
		--Reset AlreadyIncremented
		IF clk_Deci_i = '0' THEN
			ALreadyIncremented <= '0';
		END IF;
		
		--Write Outputs
		CountValue_o <= CountValue;
		
		IF CountValue = 0 THEN
			CountBlockTelemet_o <= '1';
		ELSE
			CountBlockTelemet_o <= '0';
		END IF;
		
END PROCESS count_proc;

END behave;
