library ieee;
use ieee.std_logic_1164.all;

entity win_lose is
	port(
		result_input : in std_logic;
		--紅燈
		E2 : out std_logic;
		D3 : out std_logic;
		C2 : out std_logic;
		C1 : out std_logic;
		L2 : out std_logic;
		L1 : out std_logic;
		G2 : out std_logic;
		--綠燈
		G1 : out std_logic;
		U2 : out std_logic;
		N1 : out std_logic;
		AA2 : out std_logic;
		AA1 : out std_logic;
		W2 : out std_logic;
		U1 : out std_logic
	);
end win_lose;

architecture dise of win_lose is
begin
	process (result_input)
	begin
		if result_input = '1' then--lose
			E2 <= '1';
			D3 <= '1';
			C2 <= '1';
			C1 <= '1';
			L2 <= '1';
			L1 <= '1';
			G2 <= '1';
			
			G1 <= '0';
			U2 <= '0';
			N1 <= '0';
			AA2 <= '0';
			AA1 <= '0';
			W2 <= '0';
			U1 <= '0';
		else--win
			E2 <= '0';
			D3 <= '0';
			C2 <= '0';
			C1 <= '0';
			L2 <= '0';
			L1 <= '0';
			G2 <= '0';
			
			G1 <= '1';
			U2 <= '1';
			N1 <= '1';
			AA2 <= '1';
			AA1 <= '1';
			W2 <= '1';
			U1 <= '1';
		end if;
	end process;
end dise;