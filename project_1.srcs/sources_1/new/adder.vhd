-- **************************************************
--  Kogge-Stone Prefix Adder
--   Adder size 9
--   Inputs a(9 downto 1, b(9 downto 1), cin, outputs s(9 downto 1), cout
-- ***************************************************

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity whitebox is
	port (
		a : in std_logic;
		b : in std_logic;

		g : out std_logic;
		p : out std_logic;
		h : out std_logic
	);
end whitebox;

architecture structure of whitebox is
begin
g <= a and b;
p <= a or b;
h <= a xor b;
end structure;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity whitebox2 is
	port (
		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;

		g : out std_logic;
		p : out std_logic;
		h : out std_logic
	);
end whitebox2;

architecture structure of whitebox2 is
begin
g <= (a and b) or (a and cin) or (b and cin);
p <= a or b or cin;
h <= a xor b;
end structure;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity blackcircle is
	port (
		gn : in std_logic;
		pn : in std_logic;
		gn_1 : in std_logic;
		pn_1 : in std_logic;

		gout : out std_logic;
		pout : out std_logic
	);
end blackcircle;

architecture structure of blackcircle is
begin
gout <= gn or (gn_1 and pn);
pout <= pn_1 and pn;
end structure;

-- **************************

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity KS is
	port (
		a : in std_logic_vector (9 downto 1);
		b : in std_logic_vector (9 downto 1);
		cin : in std_logic;

		s : out std_logic_vector (9 downto 1);
		cout : out std_logic
	);
end KS;

architecture structure of KS is
component whitebox
	port (
		a : in std_logic;
		b : in std_logic;
		g : out std_logic;
		p : out std_logic;
		h : out std_logic
	);
end component;

component whitebox2
	port (
		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;
		g : out std_logic;
		p : out std_logic;
		h : out std_logic
	);
end component;

component blackcircle
	port (
		gn : in std_logic;
		pn : in std_logic;
		gn_1 : in std_logic;
		pn_1 : in std_logic;
		gout : out std_logic;
		pout : out std_logic
	);
end component;

signal g, p, h : std_logic_vector (9 downto 1) ;
signal c : std_logic_vector (8 downto 1);
signal g1, p1 : std_logic_vector (9 downto 1);
signal g2, p2 : std_logic_vector (9 downto 1);
signal g3, p3 : std_logic_vector (9 downto 1);
signal g4, p4 : std_logic_vector (9 downto 1);

begin
wbox1 : whitebox2 port map (a(   1), b(   1), cin, g(   1), p(   1), h(   1));
wbox2 : whitebox port map (a(   2), b(   2), g(   2), p(   2), h(   2));
wbox3 : whitebox port map (a(   3), b(   3), g(   3), p(   3), h(   3));
wbox4 : whitebox port map (a(   4), b(   4), g(   4), p(   4), h(   4));
wbox5 : whitebox port map (a(   5), b(   5), g(   5), p(   5), h(   5));
wbox6 : whitebox port map (a(   6), b(   6), g(   6), p(   6), h(   6));
wbox7 : whitebox port map (a(   7), b(   7), g(   7), p(   7), h(   7));
wbox8 : whitebox port map (a(   8), b(   8), g(   8), p(   8), h(   8));
wbox9 : whitebox port map (a(   9), b(   9), g(   9), p(   9), h(   9));

bcircle10 : blackcircle port map (g(   9), p(   9), g(   8), p(   8), g1(   9), p1(   9));
bcircle11 : blackcircle port map (g(   8), p(   8), g(   7), p(   7), g1(   8), p1(   8));
bcircle12 : blackcircle port map (g(   7), p(   7), g(   6), p(   6), g1(   7), p1(   7));
bcircle13 : blackcircle port map (g(   6), p(   6), g(   5), p(   5), g1(   6), p1(   6));
bcircle14 : blackcircle port map (g(   5), p(   5), g(   4), p(   4), g1(   5), p1(   5));
bcircle15 : blackcircle port map (g(   4), p(   4), g(   3), p(   3), g1(   4), p1(   4));
bcircle16 : blackcircle port map (g(   3), p(   3), g(   2), p(   2), g1(   3), p1(   3));
bcircle17 : blackcircle port map (g(   2), p(   2), g(   1), p(   1), g1(   2), p1(   2));

bcircle18 : blackcircle port map (g1(   9), p1(   9), g1(   7), p1(   7), g2(   9), p2(   9));
bcircle19 : blackcircle port map (g1(   8), p1(   8), g1(   6), p1(   6), g2(   8), p2(   8));
bcircle20 : blackcircle port map (g1(   7), p1(   7), g1(   5), p1(   5), g2(   7), p2(   7));
bcircle21 : blackcircle port map (g1(   6), p1(   6), g1(   4), p1(   4), g2(   6), p2(   6));
bcircle22 : blackcircle port map (g1(   5), p1(   5), g1(   3), p1(   3), g2(   5), p2(   5));
bcircle23 : blackcircle port map (g1(   4), p1(   4), g1(   2), p1(   2), g2(   4), p2(   4));
bcircle24 : blackcircle port map (g1(   3), p1(   3), g(   1), p(   1), g2(   3), p2(   3));

bcircle25 : blackcircle port map (g2(   9), p2(   9), g2(   5), p2(   5), g3(   9), p3(   9));
bcircle26 : blackcircle port map (g2(   8), p2(   8), g2(   4), p2(   4), g3(   8), p3(   8));
bcircle27 : blackcircle port map (g2(   7), p2(   7), g2(   3), p2(   3), g3(   7), p3(   7));
bcircle28 : blackcircle port map (g2(   6), p2(   6), g1(   2), p1(   2), g3(   6), p3(   6));
bcircle29 : blackcircle port map (g2(   5), p2(   5), g(   1), p(   1), g3(   5), p3(   5));

bcircle30 : blackcircle port map (g3(   9), p3(   9), g(   1), p(   1), cout, p4(   9));

s(   9) <= h(   9) xor g3(   8);
s(   8) <= h(   8) xor g3(   7);
s(   7) <= h(   7) xor g3(   6);
s(   6) <= h(   6) xor g3(   5);
s(   5) <= h(   5) xor g2(   4);
s(   4) <= h(   4) xor g2(   3);
s(   3) <= h(   3) xor g1(   2);
s(   2) <= h(   2) xor g(   1);
s(   1) <= h(   1) xor cin;
end structure;