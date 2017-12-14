------------------------------------------------------
--  Timer by Samuel Daurat [178190]  --
------------------------------------------------------

------------------------------------------------------
--  State Machine by Samuel Daurat [178190]  --


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
ENTITY StateMachine IS
PORT(
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
END StateMachine;

--------------------------------------------
--        ARCHITECTURE	                    --
--------------------------------------------
ARCHITECTURE behave OF StateMachine IS

TYPE state IS (st_reset,st_100,st_110,st_111,st_120,st_190,st_200,st_210,st_220,st_221,st_290,st_300,st_310,st_320,st_321,st_330);
SIGNAL mode, nxt_mode : state;


BEGIN

-- Registered Process --
clk_proc : PROCESS (clk,reset)

BEGIN
		
		IF (reset='1') THEN  				-- Active Reset
			mode <= st_reset;
		ELSIF (clk'EVENT AND clk='1' AND clk'LAST_VALUE='0') THEN
			mode <= nxt_mode;					--Set the next mode each X clk-Cycles
		END IF;
		
END PROCESS clk_proc;

	
-- Combinational Process --	
counter_proc : PROCESS (BtnSecF,BtnMinF,BtnClearF,BtnStartF,mode)
	
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
				
		WHEN st_110 =>					
				nxt_mode <= st_100;
			
		WHEN st_111 =>	
				nxt_mode <= st_100;
		
		WHEN st_190 =>					
				nxt_mode <= st_200;
				
--###############################

		WHEN st_200 =>
				IF clk_Deci='1' THEN
					nxt_mode <= st_210;
				END IF;
				IF BtnStart = '1' THEN
					nxt_mode <= st_221;
				END IF;
				IF CountValue=0 THEN
					nxt_mode <= st_290;
				END IF;
				
		WHEN st_210 =>					
				nxt_mode <= st_220;
				
		WHEN st_220 =>					
				IF clk_Deci= '0' THEN
					nxt_mode <= st_200;
				END IF;
				
		WHEN st_221 =>					
				IF BtnStart= '0' THEN
					nxt_mode <= st_100;
				END IF;
				
		WHEN st_290 =>					
				nxt_mode <= st_300;
--###############################
		WHEN st_300 =>
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
		
	   IF mode=st_reset THEN 				-- Reset mode
			CountValue := 0;
			CountValueSaved := 0;		
		ELSIF mode=st_110 THEN					
			CountValue := CountValue + 600;
		ELSIF mode=st_111 THEN					
			CountValue := CountValue + 10;
		--ELSIF mode=st_120 THEN					
			--CountValue := CountValue- (CountValue mod 10);
		ELSIF mode=st_190 THEN					
			CountValueSaved := CountValue;
		ELSIF mode=st_210 THEN
			CountValue := CountValue -1;
		ELSIF mode=st_290 THEN
			CountValueBuzzer := 600;
		ELSIF mode=st_310 THEN
			CountValueBuzzer := CountValueBuzzer -1;
		ELSIF mode=st_330 THEN					
			CountValue := CountValueSaved;
		END IF;

		If mode = st_300 THEN
			BuzzerEnable <= '1';
		ELSE
			BuzzerEnable <= '0';
		END IF;
		
		
			
	END PROCESS output_proc;
	
	CountValueOut <= CountValue;

END behave;