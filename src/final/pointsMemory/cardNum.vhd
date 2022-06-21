library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity cardNum is
  port (
		--clk	:	in 	std_logic;
		signal old,newer:	in 	unsigned(0 to 5):="000000";
		signal clk:		in 	std_logic;
		--output:	out	std_logic_vector(0 to 5)
		signal nextC:	out 	unsigned(0 to 5):="000000"
    );
end entity cardNum;
 
architecture Main of cardNum is


begin

	process(clk)
	begin
		if rising_edge(clk) then
			
			nextC <= old+newer;
		end if;
	
	end process;
	
end architecture Main;