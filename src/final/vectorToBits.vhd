library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vectorToBits is
port (clk:	in std_logic;
		inputLFSR: in unsigned(0 to 5);--inputPoints,inputPointsMOM
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
	
	

					a0 <= inputLFSR(1);
					a1 <= inputLFSR(2);
					a2 <= inputLFSR(3);
					a3 <= inputLFSR(4);
					de <= "000";
		
		end if;
	
	
	end process;
	
	
end main;