library ieee;

use ieee.std_logic_1164.all;

use ieee.std_logic_unsigned.all;

entity seven    is

port ( a0,a1,a2,a3: in  std_logic; ----輸入位

a,b,c,d,e,f,g : out std_logic


);      --7段碼

end seven    ;

architecture arch  of seven
 is

signal q: std_logic_vector (3 downto 0);

begin

q<=a3&a2&a1&a0;

process(q)

variable dout: std_logic_vector (0 to 6);

begin

case q is
when "0000" => dout := "1111110";--0

when "0001" => dout := "0110000";

when "0010" => dout := "1101101";

when "0011" => dout := "1111001";

when "0100" => dout := "0110011";

when "0101" => dout := "1011011";

when "0110" => dout := "1011111";

when "0111" => dout := "1110000";

when "1000" => dout := "1111111";

when "1001" => dout := "1111011";--9

when "1010" => dout := "1111101";--9

when others => dout := "0000000";

end case;

a<=dout(0);

b<=dout(1);

c<=dout(2);

d<=dout(3);

e<=dout(4);

f<=dout(5);

g<=dout(6);

end process;

end arch;