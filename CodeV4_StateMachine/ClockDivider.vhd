------------------------------------------------------
--  Clock Divider by Samuel Daurat [178190]  --

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
ENTITY ClockDivider IS
PORT(
						
													--Hardware clock
	clk_in		:		IN		 std_logic;
	Divider_in	:		IN integer range 0 to 100000005;
	reset_i			:		IN		std_logic;
													--divided clock
	clk_out		:		OUT std_logic;
	clk_out_alt	:		OUT std_logic
	);
END ClockDivider;

--------------------------------------------
--        ARCHITECTURE	                    --
--------------------------------------------
ARCHITECTURE behave OF ClockDivider IS

	signal clock_divider: integer range 0 to 100000005 :=0;

BEGIN

-- Registered Process --
convert_proc : PROCESS (clk_in)
	BEGIN
	
		IF (clk_in'EVENT AND clk_in='1' AND clk_in'LAST_VALUE='0') THEN
			
			clock_divider <= clock_divider+1;	--Divide the clock
			IF (clock_divider>Divider_in) OR (reset_i='1') THEN  --5000000 THEN			--with this value we will generate a 10Hz clock
				clock_divider <= 0;
			END IF;
			
			--Mode 1
			IF clock_divider = Divider_in THEN
				clk_out <= '1';
			ELSE
				clk_out <= '0';
			END IF;
			
			--Mode2
			IF clock_divider > (Divider_in/2) THEN
				clk_out_alt <= '1';
			ELSe
				clk_out_alt <= '0';
			END IF;
			
		END IF;
		
	END PROCESS convert_proc;

END behave;
