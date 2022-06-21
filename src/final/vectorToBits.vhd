library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vectorToBits is
port (clk:	in std_logic;
		inputA,inputB: in unsigned(0 to 5);
		a0,a1,a2,a3,de1,de2,de3: out std_logic);
end vectorToBits;

architecture main of vectorToBits is

	
	signal de  : unsigned(0 to 2):="000";
begin
	process(clk)
	begin
		if rising_edge(clk) then
			
			case de is
				when "000" =>
					de <= "001";
					a3 <= inputA(2);
					a2 <= inputA(3);
					a1 <= inputA(4);
					a0 <= inputA(5);
				when "001" =>
					de <= "000";
					a3 <= inputB(2);
					a2 <= inputB(3);
					a1 <= inputB(4);
					a0 <= inputB(5);
				when others =>
					de <= "000";

 			end case;
			
			de3 <= de(0);
			de2 <= de(1);
			de1 <= de(2);
		
		end if;
	
	
	end process;
	
	
end main;