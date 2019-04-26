----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2019 02:12:44 PM
-- Design Name: 
-- Module Name: ffld1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ffld1 is
Port (		--asdf : in std_logic_vector (23 downto 0);
            num_a : in std_logic_vector (8 downto 1);
            num_b : in std_logic_vector (8 downto 1);
            mode : in std_logic; -- operation 1 = add , 0 = sub
            clk : in std_logic;
            rst : in std_logic;
            rs : out std_logic_vector (8 downto 1)
            );
end ffld1;

architecture Behavioral of ffld1 is
    type state_type is(idle, add, sub, sub_2, done, check,comp, sub_p, sub_1, sub_3);
    --signal num_a :std_logic_vector(7 downto 0);
    --signal num_b :std_logic_vector(7 downto 0);
    --signal mode  :std_logic;
    signal state_reg, state_next: state_type;
    signal s1 : std_logic_vector(8 downto 1);
    signal s2 : std_logic_vector(8 downto 1);
    signal s1_9 : std_logic_vector(9 downto 1);
    signal s2_9 : std_logic_vector(9 downto 1);
    signal temp_result : std_logic_vector(9 downto 1);
    signal temp_result2 : std_logic_vector(9 downto 1);
    signal c_in : std_logic := '0';
    signal c_out : std_logic;
    signal result : std_logic_vector(9 downto 1);
    signal pn : std_logic_vector(8 downto 1) := "11101001";
    signal overf : std_logic := '1';
    signal temp_max : std_logic_vector(8 downto 1);
    signal temp_min : std_logic_vector(8 downto 1);
    component KS
        port (
            a : in std_logic_vector (9 downto 1);
            b : in std_logic_vector (9 downto 1);
            cin : in std_logic;
            s : out std_logic_vector (9 downto 1);
            cout : out std_logic
        );
    end component;
begin
    --num_a <= asdf(23 downto 16);
    --num_b <= asdf(15 downto 8);
    --mode <=asdf(7);
    adder : KS port map (s1_9, s2_9, c_in, result, c_out);
process(clk,rst,mode)
begin
    if rst = '1' then
        state_reg <= idle;
    elsif(clk'event and clk = '1') then
        temp_result2 <= result;
        state_reg <=state_next;
    end if;
end process;
process(state_reg)
begin
    case state_reg is
        when idle =>
            if mode = '0' then
            state_next <= sub;
            elsif mode = '1' then
            state_next <= add;
            end if;
        when add =>
            s1_9 <= '0' & num_a;
            s2_9 <= '0' & num_b;
            state_next <= check;
        when sub =>
            s1_9 <= '1' & not num_b;
            s2_9(9 downto 2) <= (others => '0');
            s2_9(1) <= '1';
            state_next <= sub_2;
        when sub_2 =>
            s1_9 <= '0' & pn;
            s2_9 <= temp_result2;
            state_next <= sub_3;
        when sub_3 =>
            s1_9 <= temp_result2;
            s2_9 <= '0' & num_a;
            state_next <= check;         
        when check =>
            if temp_result2 >= '0' & pn then
                s1_9 <= '1' & not pn;
                s2_9(9 downto 2) <= (others => '0');
                s2_9(1) <= '1';
                temp_result <= result;
                state_next <= sub_p;
            elsif temp_result2 < '0' & pn then
                state_next <= done;
            end if;
        when sub_p =>
                s1_9 <= temp_result;
                s2_9 <= result;
                state_next <= done;
        when done =>
            rs <= result(8 downto 1);            
        when others => 
            state_next <= idle;
    end case;
end process;
end Behavioral;