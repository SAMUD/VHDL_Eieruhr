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
END StateMachine;

--------------------------------------------
--        ARCHITECTURE	                    --
--------------------------------------------
ARCHITECTURE behave OF StateMachine IS

TYPE state IS (st_reset,st_100,st_110,st_111,st_120,st_190,st_200,st_290,st_300,st_310,st_320,st_390);
SIGNAL mode, nxt_mode : state;

SIGNAL BuzzerCounter : integer range 0 to 600 :=0;


BEGIN

-- Registered Process --
clk_proc : PROCESS (clk_i,reset_i)

BEGIN
		
		IF (reset_i='1') THEN  				-- Active Reset
			mode <= st_reset;
		ELSIF (clk_i'EVENT AND clk_i='1' AND clk_i'LAST_VALUE='0') THEN
			mode <= nxt_mode;					--Set the next mode each X clk-Cycles
		END IF;
		
END PROCESS clk_proc;

	
-- Combinational Process --	
counter_proc : PROCESS (BtnClearF_i,BtnStartF_i,mode,clk_deci_i)
	
	BEGIN 
	CASE mode IS
	   WHEN st_reset => 				-- Reset mode
				nxt_mode <= st_100;
				
		WHEN st_100 =>					-- Set up time
				IF BtnMinF_i = '1' THEN
					nxt_mode <= st_110;
				ELSIF BtnSecF_i = '1' THEN
					nxt_mode <= st_111;
				ELSIF BtnStartF_i = '1' AND CountBlockTelemet_i = '0' THEN
					--nxt_mode <= st_200;	--without saving
					nxt_mode <= st_190;	--with saving
				ELSIF BtnClearF_i = '1' THEN
					nxt_mode <= st_reset;
				END IF;
				
		WHEN st_110 =>					
				nxt_mode <= st_120;
			
		WHEN st_111 =>					
				nxt_mode <= st_120;
			
		WHEN st_120 =>					
				IF BtnSecF_i = '0' AND BtnMinF_i = '0' THEN
					nxt_mode <= st_100;
				END IF;		
		
		
		WHEN st_190 =>					
				nxt_mode <= st_200;
				
------------------------------------
		WHEN st_200 =>
				IF CountBlockTelemet_i = '1'  THEN
					nxt_mode <= st_290;
				ELSIF BtnStartf_i = '1' THEN
					nxt_mode <= st_100;
				END IF;
				
		WHEN st_290 =>					
				nxt_mode <= st_300;
				
------------------------------------
		WHEN st_300 =>
				IF clk_deci_i='1' THEN
					nxt_mode <= st_310;
				END IF;
				IF BtnStartF_i = '1' OR BuzzerCounter = 0 THEN
					--nxt_mode <= st_100;		--no value load
					nxt_mode <= st_390;	--value load
				END IF;

		WHEN st_310 =>					
				nxt_mode <= st_320;
		
		WHEN st_320 =>					
				IF clk_deci_i= '0' THEN
					nxt_mode <= st_300;
				END IF;
				
		WHEN st_390 =>					
				nxt_mode <= st_100;
					
		END CASE;
		
END PROCESS counter_proc;
	   
-- Output Process --
output_proc : PROCESS (mode,BtnSecF_i,BtnMinF_i)
	BEGIN
		
	   CASE mode IS
	   WHEN st_reset => 				-- Reset mode
				DebugLED_o <= "111";
				CountBlockControl_o <= "000001";	
				BuzzerEnable_o <= '0';	
		WHEN st_100 =>					-- Set up time
				DebugLED_o <= "100";
				BuzzerEnable_o <= '0';
				CountBlockControl_o <= "000000";
		WHEN st_110 =>		
				CountBlockControl_o <= "000100";
		WHEN st_111 =>					-- Set up time
				CountBlockControl_o <= "001000";
		WHEN st_120 =>					-- Set up time
				DebugLED_o <= "100";
				--CountBlockControl_o <= "000000";
		WHEN st_190 =>					
				DebugLED_o <= "100";
				CountBlockControl_o <= "010000";		
------------------------------------
		WHEN st_200 =>
				DebugLED_o <= "010";
				CountBlockControl_o <= "000010";		
		WHEN st_290 =>	
				BuzzerCounter <= 50;
				CountBlockControl_o <= "000000";					
------------------------------------
		WHEN st_300 =>
				DebugLED_o <= "001";
				BuzzerEnable_o <= '1';
		WHEN st_310 =>					
				DebugLED_o <= "001";
				BuzzerCounter <= BuzzerCounter-1;	
		WHEN st_320 =>					
				DebugLED_o <= "001";			
		WHEN st_390 =>					
				CountBlockControl_o <= "100000";
				BuzzerEnable_o <= '0';			
		END CASE;
			
	END PROCESS output_proc;

END behave;