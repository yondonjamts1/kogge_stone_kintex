----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2019 01:41:55 AM
-- Design Name: 
-- Module Name: ffield - Behavioral
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
---
--*90hasah not + 1 dutuu baigaa
---

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ffield is
Port (		num_a : in std_logic_vector (8 downto 1);
            num_b : in std_logic_vector (8 downto 1);
            mode : in std_logic_vector(1 downto 0); -- operation 1 = add , 0 = sub
            s : out std_logic_vector (8 downto 1)
            );
end ffield;

architecture Behavioral of ffield is
component KS
	port (
		a : in std_logic_vector (8 downto 0);
		b : in std_logic_vector (8 downto 0);
		cin : in std_logic;
		s : out std_logic_vector (8 downto 0);
		cout : out std_logic
	);
end component;
--prime number 233 11101001
signal pn : std_logic_vector(8 downto 1);
signal anum :std_logic_vector(8 downto 1);
signal bnum :std_logic_vector(8 downto 1);
signal result :std_logic_vector(8 downto 1);
signal temp1 :std_logic_vector(8 downto 1);
signal temp2 :std_logic_vector(8 downto 1);
signal temp1_9 :std_logic_vector(8 downto 0);
signal temp2_9 :std_logic_vector(8 downto 0);
signal sel_mode :std_logic_vector(1 downto 0);
signal c_in :std_logic;
signal c_out :std_logic;
signal overf :std_logic := '0';
----
begin
process(mode)
begin
sel_mode <= mode;
end process;
----
process(sel_mode)
begin
    case sel_mode is
    --sub operator
        when "00" => 
                    if num_a < num_b then
                    temp1 <= num_b;
                    temp2 <= not num_a;
                    else
                    temp1 <= num_a;
                    temp2 <= not num_b;
                    end if;
                    temp1_9 <= '0' & temp1;
                    temp2_9 <= '0' & temp2;
    -- add operator
        when "01" =>
                    temp1 <= num_a;
                    temp2 <= num_b;
                    temp1_9 <= '0' & temp1;
                    temp2_9 <= '0' & temp2;
        when "10" =>
                    temp1 <= result;
                    temp2 <= pn;
                    temp2_9 <= '0' & temp2;
        when OTHERS =>     
    end case;
end process;
ffld: KS port map(temp1_9,temp2_9, c_in, result, c_out );
    process(result,c_out)
        begin
            if result > pn then
                overf <= '1';
                sel_mode <= "10";
            end if;
    end process;
end Behavioral;