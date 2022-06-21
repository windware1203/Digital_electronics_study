library ieee;
use ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_arith.ALL;

entity bits8_comp is
port (a: in std_logic_vector(5 downto 0);
		nofc: in std_logic_vector(2 downto 0);
		Q: out std_logic_vector(5 downto 0));
end bits8_comp;

architecture comp of bits8_comp is

begin
	process(a)
		begin

				if (a<"10101") then
					if ( nofc = "101") then
						Q <= "111111";
					else
						Q <= a;
					end if;
				else
					Q <= "000000";
					
				end if;

	end process;
end comp;