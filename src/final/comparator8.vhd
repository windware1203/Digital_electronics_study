library ieee;
use ieee.std_logic_1164.all;

entity comparator8 is
port (a: in std_logic_vector(5 downto 0);
		b: in std_logic_vector(5 downto 0);
		playerWin:out std_logic);
end comparator8;

architecture testDemo of comparator8 is
	begin
		process(a,b)
		begin
			if (a > b) then
				playerWin <='1';
			
			else
				playerWin <='0';
		
		end if;
	end process;
end testDemo;