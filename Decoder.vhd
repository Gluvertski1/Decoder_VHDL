-- Jared Day
-- 9/18/2017

-- This project is lab 4 part b where I will program a 1 of 4 Decoder.


-- including libraries
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


ENTITY Decoder IS
PORT(
		i_DEN		: IN std_logic;									-- Decoder enable input
		i_A		: IN std_logic_vector(1 DOWNTO 0);			-- input A and input B
		o_OUT		: OUT std_logic_vector(3 DOWNTO 0));		-- output vector
		
END Decoder;

ARCHITECTURE ckt OF Decoder IS
	BEGIN
		PROCESS(i_DEN, i_A)											-- The two input processes
			BEGIN
				IF i_DEN = '1' THEN 									-- chip disable
					o_OUT <= "1111";									-- active low so all outputs are high
				ELSE
					IF i_A = "00" THEN								-- otherwise pick the line you want
						o_OUT <= "1110";								-- to select.
						ELSIF i_A = "01" THEN
						o_OUT <= "1101";
						ELSIF i_A = "10" THEN
						o_OUT <= "1011";
						ELSIF i_A = "11" THEN
						o_OUT <= "0111";
					END IF;
				END IF;
		END PROCESS;
END ckt;
						
				