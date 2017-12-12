---------------------------------------------------------------------
--  State-machine for project "Eieruhr" by Samuel Daurat [178190]  --
--  07.10.17
---------------------------------------------------------------------

-- Library Declaration --
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


--------------------------------------------
--	   ENTITY	                           --
--------------------------------------------
ENTITY Counter IS
PORT(
											--Clock and reset buttons
	reset			:		IN		std_logic;
	clk_Deci		: 		IN		std_logic;
	DecountEnable	: 		IN		std_logic;
	CounterIsZero		:		OUT		 std_logic;
											
											--User buttons
	LoadSavedValue		:		IN		 std_logic;
	SaveCurrentValue		:		IN		 std_logic;
	
	IncrementCounter1s : IN std_logic;
	IncrementCounter1min :IN  std_logic;
	
	
	
	CounterNow:		OUT	 integer range 0 to 6000
	);
END Counter;

--------------------------------------------
--        ARCHITECTURE	                    --
--------------------------------------------
ARCHITECTURE behave OF Counter IS

SIGNAL CountValue:integer range 0 to 6000  :=0;
SHARED VARIABLE CountValueSaved: integer range 0 to 6000 :=0;


BEGIN

-- Registered Process --
Counter : PROCESS (reset, clk_Deci, DecountEnable, LoadSavedValue, SaveCurrentValue, IncrementCounter1s, IncrementCounter1min)



BEGIN
		
	   IF reset = '1' THEN 				-- Reset mode
			CountValue <= 0;
			CountValueSaved := 0;		
		ELSIF DecountEnable = '1' AND clk_Deci = '1' AND clk_Deci'LAST_VALUE = '0' AND CountValue>0 THEN					
			CountValue <= CountValue -1 ;
		ELSIF LoadSavedValue = '1' AND LoadSavedValue'LAST_VALUE = '0' THEN					
			CountValue <= CountValueSaved;
		ELSIF SaveCurrentValue = '1' AND SaveCurrentValue'LAST_VALUE = '0' THEN					
			CountValueSaved := CountValue;
		ELSIF IncrementCounter1min = '1' THEN					
			CountValue <= CountValue + 600;
		ELSIF IncrementCounter1s = '1' THEN
			CountValue <= CountValue + 10;
		END IF;
		
	END PROCESS counter;
	
-- Registered Process --
output_proc : PROCESS (reset, DecountEnable, CountValue)

BEGIN
		
	   IF CountValue = 0 THEN 				-- Reset mode
			CounterIsZero <= '1';
		ELSE
			CounterIsZero <= '0';
		END IF;
	
		CounterNow <= CountValue;
		
	END PROCESS output_proc;
	
END behave;
