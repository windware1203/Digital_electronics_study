library ieee;
use ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_arith.ALL;

entity bits8_comp_b is
port (b: in std_logic_vector(5 downto 0);
		Q: out std_logic_vector(5 downto 0));
end bits8_comp_b;

architecture comp of bits8_comp_b is

begin
	process(b)
		begin

				if (b<"10101") then
					Q <= "111111";

				else
					Q <= "000000";
					
				end if;

	end process;
end comp;