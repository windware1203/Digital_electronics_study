library ieee;
use ieee.std_logic_1164.all;

entity comparator8 is
port (a: in std_logic_vector(7 downto 0);
		b: in std_logic_vector(7 downto 0);
		less: out std_logic;
		equal: out std_logic;
		larger:out std_logic);
end comparator8;

architecture testDemo of comparator8 is
	begin
		process(a,b)
		begin
			if (a>b) then
				less <='0';
				equal <='0';
				larger <='1';
			elsif (a=b) then
				less <='0';
				equal <='1';
				larger <='0';
			else
				less <='1';
				equal <='0';
				larger <='0';
		end if;
	end process;
end testDemo;