library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lfsr is
  port (
		--clk	:	in 	std_logic;
		signal inSeed:	in 	std_logic_vector(0 to 5);
		--output:	out	std_logic_vector(0 to 5)
		signal outt:	out 	std_logic_vector(0 to 5)
    );
end entity lfsr;
 
architecture Main of lfsr is

	signal temp: std_logic;

begin
	temp <= (inSeed(4) xor inSeed(5));
	outt <= (temp & inSeed(0 to 4));
	
end architecture Main;