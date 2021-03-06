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
ENTITY FallingEdge IS
PORT(
	
	clk			:		IN		std_logic;			--main 50Mhz clock input		
	Button		:		IN		std_logic;			--each clock-cycle here will increment the PWM counter by 1 from 0(off) to 1000(max)
													
	FallingOutput:		OUT	std_logic			--Output to buzzer
	
	);
END FallingEdge;

--------------------------------------------
--        ARCHITECTURE	                  --
--------------------------------------------
ARCHITECTURE behave OF FallingEdge IS

	SIGNAL	SavedValue : std_logic :='0' ;	--Counter for clk_PWM	

BEGIN

	-- counting the main Value for PWM
	SAVE : PROCESS (clk)
	BEGIN
	
        IF (clk = '1' AND clk'EVENT) then
			SavedValue<=Button;
        END IF;
		  FallingOutput<= (NOT Button) AND SavedValue ; 
    
	END PROCESS SAVE;
	
			

END behave;