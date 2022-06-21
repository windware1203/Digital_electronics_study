library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity cardNum is
  port (
		--clk	:	in 	std_logic;
		signal nowC:	in 	unsigned(0 to 2):="000";
		signal clk,add,reset:		in 	std_logic;
		--output:	out	std_logic_vector(0 to 5)
		signal nextC:	out 	unsigned(0 to 2):="000";
		signal five :  out 	std_logic
    );
end entity cardNum;
 
architecture Main of cardNum is


begin

	process(clk)
	begin
		if rising_edge(clk) then
			if add = '1'then
			nextC <= nowC + 1;
			elsif reset = '1' then
			nextC <= "000";
			end if;
		end if;
		
		if (nowC + 1) = "101" then
			five <= '1';
		else
			five <= '0';
		end if;
	end process;
	
end architecture Main;