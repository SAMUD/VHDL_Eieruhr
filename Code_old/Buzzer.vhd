------------------------------------------------------
--  Buzzer by Samuel Daurat [178190]  --

-- This module will sound a buzzer with increasing volume repeated each 4 sec


-- Changelog:
-- Version 1.1 | 06.12.17
--  *code stopped working during night :(
--  *added comments
-- Version 1.0 | 05.12.17
--  *initial release
------------------------------------------------------

-- Library Declaration --
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use ieee.numeric_std.all;


--------------------------------------------
--	   ENTITY	                           --
--------------------------------------------
ENTITY Buzzer IS
PORT(
	
	clk			:		IN		std_logic;			--main 50Mhz clock input		
	Enable		:		IN		std_logic;			--Turn on buzzer
													
	BuzzerOut	:		OUT	std_logic			--Output to buzzer
	
	);
END Buzzer;

--------------------------------------------
--        ARCHITECTURE	                  --
--------------------------------------------
ARCHITECTURE behave OF Buzzer IS

	CONSTANT Period  : INTEGER := 1000 ;						--We will have 1000 pwm-steps.
	CONSTANT Divide100Sec  		: INTEGER := 200000; 		--CONSTANT for Clock Divider
	SIGNAL	clk_PWM				:	std_logic;					-- Divided clock
	
	SIGNAL	CountedValue : INTEGER range 0 to 1000; 		--Counter for clk
	SIGNAL	CountedValue2nd : INTEGER range 0 to 1000;	--Counter for clk_PWM	
	
	component ClockDivider
	  port(
														
		clk_in		:		IN		std_logic;						--Hardware clock
		Divider_in	:		IN integer range 0 to 100000005;	--Clock Divider
		clk_out		:		OUT	std_logic						--divided clock
	);
	end component;

BEGIN

	ClockDivider_PWM: component ClockDivider
		  port map (
			  clk_in => clk,
			  Divider_in => Divide100Sec,
			  clk_out => clk_PWM
		 );

	-- counting the main Value for PWM
	Counting : PROCESS (clk)
	BEGIN
		IF (clk'EVENT AND clk='1' AND clk'LAST_VALUE='0') THEN
		
			CountedValue <= CountedValue+1;
		
			IF CountedValue > Period THEN
				CountedValue <= 0;
			END IF;		
		
		END IF;
	END PROCESS Counting;
	
	-- counting the second PWM value and taking care of "Enable"
	CountingAgain : PROCESS (clk_PWM)
	BEGIN
			IF (clk_PWM'EVENT AND clk_PWM='1' AND clk_PWM'LAST_VALUE='0') THEN
		
			CountedValue2nd <= CountedValue2nd + 1;
			
			IF CountedValue2nd > Period THEN
				CountedValue2nd <= 0;
			END IF;
			IF Enable = '0' THEN
				CountedValue2nd <= 0;
			END IF;
		
		END IF;
		
	END PROCESS CountingAgain;
	
	-- compare and write Output
	Compare : PROCESS (clk)
	BEGIN
		IF CountedValue2nd > CountedValue THEN
			BuzzerOut <= '1';
		ELSE
			BuzzerOut <= '0';
		END IF;		
	END PROCESS Compare;
	
END behave;




