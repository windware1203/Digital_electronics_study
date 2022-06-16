library IEEE;
use IEEE.std_logic_1164.all;

entity SevenStop is
port
(
	 x,clk			: in    std_logic;
    inputer       : in    std_logic_vector(0 to 6);--c3c2c1c0
    outputer      : out   std_logic_vector(0 to 6) --abcdefg
);
end entity SevenStop;

architecture Main of SevenStop is
begin
	
	process(clk,x)
	begin
	if clk'event and clk = '1' then
		
		if x = '1' then
			case inputer is
				when 	"1011011" =>
						outputer <= "0001111";--s>t
				when 	"0001111" =>
						outputer <= "0011101";--t>o
				when 	"0011101" =>
						outputer <= "1100111";--o>p
				when 	"1100111" =>
						outputer <= "1011011";--p>s		
				when others =>
						outputer <= "1011011";
			end case;
--s 1011011
--t 0001111
--o 0011101
--p 1100111
--l 0110000
--a 1111101
--y 0111011
--- 0000001
		elsif x = '0' then
			case inputer is
				when 	"1100111" =>
						outputer <= "0110000";--p>l
				when 	"0110000" =>
						outputer <= "1111101";--l>a
				when 	"1111101" =>
						outputer <= "0111011";--a>y
				when 	"0111011" =>
						outputer <= "1100111";--y>p		
				when others =>
						outputer <= "1100111";
			end case;
		end if;
		
	end if;
	end process;
end architecture Main;