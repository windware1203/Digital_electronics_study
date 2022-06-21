library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vectorToBits is
port (clk:	in std_logic;
		inputLFSR,inputPoints,inputPointsMOM: in unsigned(0 to 5);
		a0,a1,a2,a3,de1,de2,de3: out std_logic);
end vectorToBits;

architecture main of vectorToBits is

	signal temp: unsigned(0 to 5);
	signal ten : unsigned(0 to 5);
	
	signal tempP: unsigned(0 to 5);
	signal tenP : unsigned(0 to 5);
	
	signal tempMOM: unsigned(0 to 5);
	signal tenMOM : unsigned(0 to 5);
	signal de  : unsigned(0 to 2);
begin
	process(clk)
	begin
		if rising_edge(clk) then
			ten <= inputLFSR/10;
			temp <= inputLFSR mod 10;
			
			tenP <= inputPoints/10;
			tempP <= inputPoints mod 10;
			
			tenMOM <= inputPointsMOM/10;
			tempMOM <= inputPointsMOM mod 10;
			case de is
				when "000" =>
				
				de <= "001";
				a3 <= tempP(2);
				a2 <= tempP(3);
				a1 <= tempP(4);
				a0 <= tempP(5);
			when "001" =>
				
				de <= "010";
				a3 <= ten(2);
				a2 <= ten(3);
				a1 <= ten(4);
				a0 <= ten(5);
				
				
			when "010" =>
				
				de <= "011";
				a3 <= temp(2);
				a2 <= temp(3);
				a1 <= temp(4);
				a0 <= temp(5);
				
			when "011" =>
				
				de <= "100";
				a3 <= tenMOM(2);
				a2 <= tenMOM(3);
				a1 <= tenMOM(4);
				a0 <= tenMOM(5);
			when "100" =>
				
				de <= "101";
				a3 <= tenMOM(2);
				a2 <= tenMOM(3);
				a1 <= tenMOM(4);
				a0 <= tenMOM(5);
			
			when others =>
				
				de <= "000";
				a3 <= tenP(2);
				a2 <= tenP(3);
				a1 <= tenP(4);
				a0 <= tenP(5);
 			end case;
			
			de3 <= de(0);
			de2 <= de(1);
			de1 <= de(2);
		
		end if;
	
	
	end process;
	
	
end main;