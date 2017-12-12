------------------------------------------------------
--  BCD COUNTER by Samuel Daurat [178190]  --
--  07.10.17
------------------------------------------------------

-- Library Declaration --
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;


--------------------------------------------
--	   ENTITY	                           --
--------------------------------------------
ENTITY Zaehler IS
PORT(
	reset			:		IN		std_logic;
	clk			:		IN		std_logic;
	countmode	:		IN		std_logic;
													--signals between Counter and Decoder. Contains the actual counting value
	b0				:		OUT	std_logic;	--LSB
	b1				:		OUT	std_logic;
	b2				:		OUT	std_logic;
	b3				:		OUT	std_logic	--MSB
	);
END Zaehler;

--------------------------------------------
--        ARCHITECTURE	                    --
--------------------------------------------
ARCHITECTURE behave OF Zaehler IS

TYPE state IS (st_reset,st_1,st_2,st_3,st_4,st_5,st_6,st_7,st_8,st_9,st_0);
SIGNAL mode, nxt_mode : state;
signal clock_divider: integer range 0 to 100000005 :=0;

BEGIN

-- Registered Process --
clk_proc : PROCESS (clk,reset)
BEGIN
	
		IF (reset='1') THEN  					-- Active Reset
			mode <= st_reset;
			clock_divider <=100000000; 
			
		ELSIF (clk'EVENT AND clk='1' AND clk'LAST_VALUE='0') THEN
			
			clock_divider <= clock_divider+1;--Divide the clock
			IF clock_divider>100000000 THEN
				clock_divider <= 0;
				mode <= nxt_mode;					--Set the next mode each X clk-Cycles
			END IF;
			
		END IF;
		
END PROCESS clk_proc;

	
-- Combinational Process --	
counter_proc : PROCESS (mode,countmode)
	BEGIN 
	CASE mode IS
	   WHEN st_reset => 				-- Reset mode
				nxt_mode <= st_0;
				
		WHEN st_0 =>					-- Counting modes --> Each state represents one number
				IF countmode='1' THEN
					nxt_mode <= st_1;
				ELSE
					nxt_mode <= st_2;
				END IF;
				
		WHEN st_1 =>
				IF countmode='1' THEN
					nxt_mode <= st_3;
				ELSE
					nxt_mode <= st_2;
				END IF;
		
		WHEN st_2 =>
				IF countmode='1' THEN
					nxt_mode <= st_3;
				ELSE
					nxt_mode <= st_4;
				END IF;
		
		WHEN st_3 =>
				IF countmode='1' THEN
					nxt_mode <= st_5;
				ELSE
					nxt_mode <= st_4;
				END IF;
				
		WHEN st_4 =>
				IF countmode='1' THEN
					nxt_mode <= st_5;
				ELSE
					nxt_mode <= st_6;
				END IF;
				
		WHEN st_5 =>
				IF countmode='1' THEN
					nxt_mode <= st_7;
				ELSE
					nxt_mode <= st_6;
				END IF;
				
		WHEN st_6 =>
				IF countmode='1' THEN
					nxt_mode <= st_7;
				ELSE
					nxt_mode <= st_8;
				END IF;
				
		WHEN st_7 =>
				IF countmode='1' THEN
					nxt_mode <= st_9;
				ELSE
					nxt_mode <= st_8;
				END IF;
				
		WHEN st_8 =>
				IF countmode='1' THEN
					nxt_mode <= st_9;
				ELSE
					nxt_mode <= st_0;
				END IF;
				
		WHEN st_9 =>
					nxt_mode <= st_0;

		END CASE;
		
END PROCESS counter_proc;
	   
-- Output Process --
output_proc : PROCESS (mode)
	BEGIN
	
		CASE mode IS
			WHEN st_0 =>
				b3 <= '0';
				b2 <= '0';
				b1 <= '0';
				b0 <= '0';
			WHEN st_1 =>
				b3 <= '0';
				b2 <= '0';
				b1 <= '0';
				b0 <= '1';
			WHEN st_2 =>
				b3 <= '0';
				b2 <= '0';
				b1 <= '1';
				b0 <= '0';
			WHEN st_3 =>
				b3 <= '0';
				b2 <= '0';
				b1 <= '1';
				b0 <= '1';
			WHEN st_4 =>
				b3 <= '0';
				b2 <= '1';
				b1 <= '0';
				b0 <= '0';
			WHEN st_5 =>
				b3 <= '0';
				b2 <= '1';
				b1 <= '0';
				b0 <= '1';
			WHEN st_6 =>
				b3 <= '0';
				b2 <= '1';
				b1 <= '1';
				b0 <= '0';
			WHEN st_7 =>
				b3 <= '0';
				b2 <= '1';
				b1 <= '1';
				b0 <= '1';
			WHEN st_8 =>
				b3 <= '1';
				b2 <= '0';
				b1 <= '0';
				b0 <= '0';
			WHEN st_9 =>
				b3 <= '1';
				b2 <= '0';
				b1 <= '0';
				b0 <= '1';
			when others => -- reset or something is wrong --> 7seg will show special caracter "-"
				b3 <= '1';
				b2 <= '1';
				b1 <= '1';
				b0 <= '1';
		END CASE;
			
	END PROCESS output_proc;

END behave;
