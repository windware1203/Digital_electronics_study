library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity lfsr is
  port (
		clk	:	in 	std_logic;
		signal inSeed:	in 	unsigned(0 to 5);
		--output:	out	std_logic_vector(0 to 5)
		signal outt:	out 	unsigned(0 to 5)
    );
end entity lfsr;
 
architecture Main of lfsr is

	signal temp: std_logic;
	signal tempInt: integer;

begin
	process(clk)
	begin
		if rising_edge(clk) then
			temp <= (inSeed(4) xor inSeed(5));
			tempInt <= to_integer(unsigned(temp & inSeed(0 to 4))) mod 10;
			outt <= to_unsigned(tempInt,6 )+1;
		end if;
	
	end process;
	
	
end architecture Main;