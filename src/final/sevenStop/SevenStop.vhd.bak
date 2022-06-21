library IEEE;
use IEEE.std_logic_1164.all;

entity p0606 is
port
(
    inputer       : in    std_logic_vector(0 to 3);--c3c2c1c0
    outputer      : out   std_logic_vector(0 to 6) --abcdefg
);
end entity p0606;

architecture Main of p0606 is
begin
	with inputer select
		outputer <="1111110" when "0000", --0
		
					"0110000" when "0001", --1
					"1101101" when "0010", --2
					"1111001" when "0011", --3
					
					"0110011" when "0100", --4
					"1011011" when "0101", --5
					"1011111" when "0110", --6
					
					"1110000" when "0111", --7
					"1111111" when "1000", --8
					"1111011" when "1001", --9
					
					"1111101" when "1010", --10
					"0011111" when "1011", --11
					"0001101" when "1100", --12
					
					"0111101" when "1101", --13
					"1101111" when "1110", --14
					"1000111" when "1111", --15
					"0000000" when others; 	 --don't care

end architecture Main;