library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity tester1 is
end;

architecture beh of tester1 is
component KS
	port (
		a : in std_logic_vector (7 downto 0);
		b : in std_logic_vector (7 downto 0);
		cin : in std_logic;
		s : out std_logic_vector (7 downto 0);
		cout : out std_logic
	);
end component;

signal a, b, s : std_logic_vector (7 downto 0);
signal carryin, carry : std_logic;
signal reset : std_logic;

begin
	adder : KS port map (a, b, carryin, s, carry);
values_ab : process
begin
	if reset='1' then
        b <= "00000000";
        a <= "00000000";
    else
        a <= "00111111";
        b <= "00110011";
    end if;
    wait for 10ns;
end process values_ab;
values_carryin : process
begin
	carryin <= '0', '1' after 100 ns;
	wait for 200 ns ;
end process values_carryin;

init : process
begin
	reset <= '1', '0' after 15 ns;
	wait;
end  process init;
end beh;