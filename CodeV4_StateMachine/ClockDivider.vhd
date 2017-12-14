------------------------------------------------------
--  Module for Timer by Samuel Daurat [178190]      --

-- This module will divide a clock:
-- Divider_in: 6
-- clk_in:		-_-_-_-_-_-_-_-_-_-_-_-_-_
-- clk_out:		__________--__________--__
-- clk_out_alt:______------______------__


-- Changelog:
-- Version 1.0RS | 14.12.17
--	 *lot of changes and tests during this time
--  *commented code again
--  *renamed signals
--Version 0.1 | 27.11.17
--  *initial release
------------------------------------------------------

-- Library Declaration --
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use ieee.numeric_std.all;


------------------------------------------------------
--	   ENTITY	                           			 --
------------------------------------------------------
ENTITY ClockDivider IS
PORT(
						
													
	clk_in			:	IN	 std_logic;							--Clock input
	Divider_in		:	IN  integer range 0 to 100000005;--Divider for dividing the clock
	reset_i			:	IN	 std_logic;							--Setting this to 1 resets the timer and Sets Outputs to 0
													
	clk_out			:	OUT std_logic;							--Will only be 1 for 1 clock cycle
	clk_out_alt		:	OUT std_logic							--Will be 1 half the time
	);
END ClockDivider;

------------------------------------------------------
--        ARCHITECTURE	                    			 --
------------------------------------------------------
ARCHITECTURE behave OF ClockDivider IS

	signal clock_divider: integer range 0 to 100000005 :=0;--Temporary save the value, so we know where we are

------------------------------------------------------
BEGIN

divide_proc : PROCESS (clk_in)
	BEGIN
	
		IF (rising_edge(clk_in)) THEN
			--We have a rising edge on clock
			
			clock_divider <= clock_divider+1;					--Increment the Variable by 1
			
			IF (clock_divider>Divider_in) OR (reset_i='1') THEN
				--We are at max value. Set back to 0
				clock_divider <= 0;
			END IF;
			
			--Write outputs: Mode 1
			IF clock_divider = Divider_in THEN
				clk_out <= '1';
			ELSE
				clk_out <= '0';
			END IF;
			
			--Write outputs: Mode2
			IF clock_divider > (Divider_in/2) THEN
				clk_out_alt <= '1';
			ELSe
				clk_out_alt <= '0';
			END IF;
			
		END IF;
		
	END PROCESS divide_proc;

END behave;
