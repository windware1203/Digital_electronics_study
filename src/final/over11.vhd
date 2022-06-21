library ieee;
use ieee.std_logic_1164.all;

entity over11 is
port (x: in std_logic_vector(4 downto 0);
		y: out std_logic);
end over11;

architecture testDemo of over11 is
	begin
		process(x)  --莊家ㄉ
		begin
			if (x>"01011") then
				y <='1';
			
			else
				y <='0';
				
		end if;
	end process;
end testDemo;