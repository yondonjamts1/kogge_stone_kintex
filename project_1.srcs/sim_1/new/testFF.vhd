library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity fftester is
end;

architecture beh of fftester is
component ffld1
	port (
		num_a : in std_logic_vector (8 downto 1);
		num_b : in std_logic_vector (8 downto 1);
		mode : in std_logic;
		clk: in std_logic;
		rst: in std_logic;
		rs : out std_logic_vector (8 downto 1)
	);
end component;

signal a, b, s : std_logic_vector (8 downto 1);
signal clk, mode : std_logic;
signal reset : std_logic;
constant CLK_PERIOD : time := 40 ns;

begin
    ffarith : ffld1 port map (a, b, mode, clk, reset, s);
values_ab : process
begin
	if reset='1' then
    b <= "00000000";
    a <= "00000000";
    else
    b <= "01010100";
    a <= "10011011";
    --b <= "00000001";
    end if;
    wait for 5 ns;
end process values_ab;
values_mode : process
begin
    mode <= '0';
    wait for 303 ns;
    mode <= '0';
    wait for 303 ns;
end process values_mode;

values_clock : process
begin
    clk <= '0';
    wait for CLK_PERIOD/2;  --for half of clock period clk stays at '0'.
    clk <= '1';
    wait for CLK_PERIOD/2;  --for next half of clock period clk stays at '1'
end process values_clock;

init : process
begin
	reset <= '1', '0' after 25 ns;
	wait;
end  process init;
end beh;