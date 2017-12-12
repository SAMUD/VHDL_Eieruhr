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
ENTITY StateMachine IS
PORT(
	--Clock and reset buttons
	reset			:		IN		std_logic;
	clk			:		IN		std_logic;
	clk_Deci		:		IN		std_logic;
										
	--User buttons
	BtnMin		:		IN		 std_logic;
	BtnSec		:		IN		 std_logic;
	BtnStart		:		IN		 std_logic;
	BtnClear		:		IN		 std_logic;
	
	--Current count Value Input
	CountValue_o	:		OUT 	 integer range 0 to 6000;
	
	--Outputs to other blocks
	DebugLED			:	OUT 	std_logic_vector(7 downto 0);
	BuzzerEnable	:	OUT	std_logic
	);
END StateMachine;

--------------------------------------------
--        ARCHITECTURE	                    --
--------------------------------------------
ARCHITECTURE behave OF StateMAchine IS

TYPE state IS (st_reset,st_100,st_110,st_111,st_120,st_190,st_200,st_210,st_220,st_221,st_290,st_300,st_310,st_320,st_321,st_330);
SIGNAL mode, nxt_mode : state;

SIGNAL CountValue : integer range 0 to 6000  := 0;
SIGNAL CountValueSaved: integer range 0 to 6000 :=0;
SIGNAL CountValueBuzzer:integer range 0 to 600  :=0;


BEGIN

-- Registered Process --
clk_proc : PROCESS (clk,reset)

BEGIN
		
		IF (reset='1') THEN  					-- Active Reset
			mode <= st_reset;
		ELSIF (clk'EVENT AND clk='1' AND clk'LAST_VALUE='0') THEN
			mode <= nxt_mode;					--Set the next mode each X clk-Cycles
		END IF;
		
END PROCESS clk_proc;

	
-- Combinational Process --	
counter_proc : PROCESS (clk_Deci,BtnSec,BtnMin,BtnClear,BtnStart,mode)
	
	BEGIN 
	CASE mode IS
	   WHEN st_reset => 				-- Reset mode
				nxt_mode <= st_100;
				
		WHEN st_100 =>					-- Set up time
				IF BtnMin = '1' AND CountValue<4999 THEN
					nxt_mode <= st_110;
				END IF;
				IF BtnSec = '1' AND CountValue<5589 THEN
					nxt_mode <= st_111;
				END IF;
				IF BtnStart = '1' AND CountValue>0 THEN
					nxt_mode <= st_190;
				END IF;
				IF BtnClear = '1' THEN
					nxt_mode <= st_reset;
				END IF;
				
		WHEN st_110 =>					--Increment 1 Min	
				nxt_mode <= st_120;
			
		WHEN st_111 =>					--Increment 1 Sec
				nxt_mode <= st_120;
			
		WHEN st_120 =>					-- Set Deci-Sec to 0
				IF BtnSec= '0' AND BtnMin = '0' THEN
					nxt_mode <= st_100;
				END IF;
		
		WHEN st_190 =>					--Save current value and start counting				
				nxt_mode <= st_200;
				
----------------------------

		WHEN st_200 =>					--Main State during counting
				IF clk_Deci='1' THEN
					nxt_mode <= st_210;
				END IF;
				IF BtnStart = '1' THEN
					nxt_mode <= st_221;
				END IF;
				IF CountValue=0 THEN
					nxt_mode <= st_290;
				END IF;
				
		WHEN st_210 =>					--Decrement 1			
				nxt_mode <= st_220;
				
		WHEN st_220 =>					--Wait until button is not pressed anymore			
				IF clk_Deci= '0' THEN
					nxt_mode <= st_200;
				END IF;
				
		WHEN st_221 =>					--Going into pause mode				
				IF BtnStart= '0' THEN
					nxt_mode <= st_100;
				END IF;
				
		WHEN st_290 =>					--Finished Counting, preparing alarm-timer			
				nxt_mode <= st_300;
				
----------------------------

		WHEN st_300 =>					--Main state for alarm
				IF clk_Deci='1' THEN
					nxt_mode <= st_310;
				END IF;
				IF BtnStart = '1' THEN
					nxt_mode <= st_321;
				END IF;
				IF CountValue=0 THEN
					nxt_mode <= st_330;
				END IF;
				
		WHEN st_310 =>					
				nxt_mode <= st_320;
				
		WHEN st_320 =>					
				IF clk_Deci= '0' THEN
					nxt_mode <= st_300;
				END IF;
				
		WHEN st_321 =>					
				IF BtnStart= '0' THEN
					nxt_mode <= st_330;
				END IF;
				
		WHEN st_330 =>					
				nxt_mode <= st_100;

		END CASE;
		
		
		
END PROCESS counter_proc;
	   
-- Output Process --
output_proc : PROCESS (mode)
	BEGIN
		
		CASE mode IS
	   WHEN st_reset => 				-- Reset mode
				CountValue <= 0;
				CountValueSaved <= 0;
				DebugLED <= "10000000";
				BuzzerEnable <= '0';	
		WHEN st_100 =>					-- Set up time
				DebugLED <= "01010101";		
		WHEN st_110 =>					--Increment 1 Min	
				CountValue <= CountValue + 600;
				DebugLED <= "01000000";
		WHEN st_111 =>					--Increment 1 Sec
				CountValue <= CountValue + 10;
				DebugLED <= "00010000";
		WHEN st_120 =>					-- Set Deci-Sec to 0
				DebugLED <= "01010101";
		WHEN st_190 =>					--Save current value and start counting				
				DebugLED <= "00000001";
				CountValueSaved <= CountValue;			
	   -----------------------------
		WHEN st_200 =>					--Main State during counting
				DebugLED <= "00000001";		
		WHEN st_210 =>					--Decrement 1			
				DebugLED <= "00000000";		
		WHEN st_220 =>					--Wait until button is not pressed anymore			
				DebugLED <= "00000000";		
		WHEN st_221 =>					--Going into pause mode				
				DebugLED <= "00000000";		
		WHEN st_290 =>					--Finished Counting, preparing alarm-timer			
				DebugLED <= "00000101";
				CountValueBuzzer <= 600;			
	   ------------------------------	
		WHEN st_300 =>					--Main state for alarm
				DebugLED <= "00000101";
				BuzzerEnable <= '1';		
		WHEN st_310 =>					
				CountValueBuzzer <= CountValueBuzzer -1;
				DebugLED <= "00000101";		
		WHEN st_320 =>					
				DebugLED <= "00000101";		
		WHEN st_321 =>					
				DebugLED <= "00000001";
				BuzzerEnable <= '0';		
		WHEN st_330 =>					
				DebugLED <= "00000001";
				
		END CASE;
		
		CountValue_o <= CountValue;
		
			
			
	END PROCESS output_proc;
	
	CountValue_o <= CountValue;

END behave;
