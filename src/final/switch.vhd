library ieee;
use ieee.std_logic_1164.all;

entity switch is
	port(
		--加牌PS1
		C13 : in std_logic;
		--不加牌PS2
		B13 : in std_logic;
		
		Add : out std_logic
	);
end switch;

architecture addcard of switch is
begin
	process (C13, B13)
	begin
		
		if C13 = '1' then
			Add <= '1';
		else
			Add <= '0';
		end if;

	end process;
end addcard;