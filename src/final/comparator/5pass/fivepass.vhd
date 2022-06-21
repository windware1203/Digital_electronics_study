library ieee;
use ieee.std_logic_1164.all;

entity fivepass is
port (x: in std_logic_vector(2 downto 0);
		Y: out std_logic);
end fivepass;

architecture testDemo of fivepass is
	begin
		process(x)
		begin
			if (x="101") then
				y <='1';
		
			else
				y <='0';
				
		end if;
	end process;
end testDemo;