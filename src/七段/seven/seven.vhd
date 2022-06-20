library ieee;

use ieee.std_logic_1164.all;

use ieee.std_logic_unsigned.all;

entity seven    is

port ( a0,a1,a2,a3: in  std_logic; ----輸入4位

lt,rbi,bi:in  std_logic;

a,b,c,d,e,f,g : out std_logic;

clk: in  std_logic

);      --7段碼

end seven    ;

architecture arch  of seven
 is

signal q: std_logic_vector (3 downto 0);

begin

q<=a3&a2&a1&a0;

process(q,lt,rbi,bi)

variable dout: std_logic_vector (6 downto 0);

begin

if bi='0' then

dout:="0000000";

elsif rbi='1'then

if lt='1' then

case q is

when "0001" => dout := "1111001";

when "0010" => dout := "0100100";

when "0011" => dout := "0110000";

when "0100" => dout := "0011001";

when "0101" => dout := "0010010";

when "0110" => dout := "0000010";

when "0111" => dout := "1111000";

when "1000" => dout := "0000000";

when "1001" => dout := "0011000";

when others => dout := "1000000";

end case;

end if;

end if;

a<=dout(0);

b<=dout(1);

c<=dout(2);

d<=dout(3);

e<=dout(4);

f<=dout(5);

g<=dout(6);

end process;

end arch;