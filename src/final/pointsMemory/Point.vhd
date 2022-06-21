library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Point is
  port (
		--clk	:	in 	std_logic;
		signal old,newer:	in 	unsigned(0 to 5):="000000";
		signal clk,add,reset:		in 	std_logic;
		--output:	out	std_logic_vector(0 to 5)
		signal nextC:	out 	unsigned(0 to 5):="000000"
    );
end entity Point;
 
architecture Main of Point is


begin
	
		
	process(clk)
	begin
		if rising_edge(clk) then
			if add = '1'then
				nextC <= old+newer;	
			elsif reset = '1' then
				nextC <= "000000";
				end if;
		end if;
	
	end process;
	
end architecture Main;