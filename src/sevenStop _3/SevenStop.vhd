library IEEE;
use IEEE.std_logic_1164.all;

entity SevenStop is
port
(
	 a,b,clk			: in    std_logic;
    --inputer       : in    std_logic_vector(0 to 6);--c3c2c1c0
	 index			: in    std_logic_vector(0 to 3);
    outputer      : out   std_logic_vector(0 to 6);--abcdefg
	 outindex		: out   std_logic_vector(0 to 3)
);
end entity SevenStop;

architecture Main of SevenStop is
begin
	
	process(clk,a,b)
	begin
	if clk'event and clk = '1' then
		if (a and b)= '1' then
			case index is
				when 	"0001" =>--1
						outindex <= "0010";
						outputer <= "1011011";
				when 	"0010" =>--2
						outindex <= "0011";
						outputer <= "0000001";
				when 	"0011" =>--3
						outindex <= "0100";
						outputer <= "0001111";
				when 	"0100" =>--4
						outindex <= "0101";
						outputer <= "0000001";
				when 	"0101" =>--5
						outindex <= "0110";
						outputer <= "0011101";
				when 	"0110" =>--6
						outindex <= "0111";
						outputer <= "0000001";
				when 	"0111" =>--7
						outindex <= "1000";
						outputer <= "1100111";
				when 	"1000" =>--8
						outindex <= "0001";
						outputer <= "0000001";
				when others =>
						outindex <= "0001";
			end case;
--s 1011011
--t 0001111
--o 0011101
--p 1100111
--l 0110000
--a 1111101
--y 0111011
--- 0000001
		elsif (a and b) = '0' then
			case index is
				when 	"0001" =>--1
						outindex <= "0010";
						outputer <= "1100111";
				when 	"0010" =>--2
						outindex <= "0011";
						outputer <= "0000001";
				when 	"0011" =>--3
						outindex <= "0100";
						outputer <= "0110000";
				when 	"0100" =>--4
						outindex <= "0101";
						outputer <= "0000001";
				when 	"0101" =>--5
						outindex <= "0110";
						outputer <= "1111101";
				when 	"0110" =>--6
						outindex <= "0111";
						outputer <= "0000001";
				when 	"0111" =>--7
						outindex <= "1000";
						outputer <= "0111011";
				when 	"1000" =>--8
						outindex <= "0001";
						outputer <= "0000001";
				when others =>
						outindex <= "0001";
			end case;
		end if;
		
	end if;
	end process;
end architecture Main;