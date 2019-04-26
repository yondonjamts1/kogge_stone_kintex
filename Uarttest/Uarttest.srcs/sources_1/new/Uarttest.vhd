----------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
----------------------------------------------------------------------
-- This file contains the UART Transmitter.  This transmitter is able
-- to transmit 8 bits of serial data, one start bit, one stop bit,
-- and no parity bit.  When transmit is complete o_TX_Done will be
-- driven high for one clock cycle.
--
-- Set Generic g_CLKS_PER_BIT as follows:
-- g_CLKS_PER_BIT = (Frequency of i_Clk)/(Frequency of UART)
-- Example: 10 MHz Clock, 115200 baud UART
-- (10000000)/(115200) = 87
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity UART_TX is
  generic (
    g_CLKS_PER_BIT : integer := 1736     -- Needs to be set correctly
    );
  port (
    clk_p       : in  std_logic;
    clk_n       : in std_logic;
    tx          : out std_logic;
    rx          : in std_logic;
    swcheck     : in std_logic
    );
end UART_TX;
 
 
architecture RTL of UART_TX is
  ----
  signal clk : std_logic;
  component IBUFGDS is 
  
  generic (IOSTANDARD : string); 
  
  port(I : in STD_LOGIC; 
  
  IB: in STD_LOGIC; 
  
  O : out STD_LOGIC); 
  
  end component;
  ----
  
  type states is (s_idle, s_start, s_tdata, s_stop);
  signal state_main : states := s_start;
 
  signal r_Clk_Count : integer range 0 to g_CLKS_PER_BIT-1 := 0;
  signal clk_div : std_logic := '0';
  signal index : integer range 0 to 7 := 0;
  signal txdata : std_logic_vector(7 downto 0) := "00001100";
  signal asignal : std_logic :='0';
  signal done : std_logic := '0';
   
begin
---
 UIBUFG : IBUFGDS 
  
  generic map (IOSTANDARD => "BLVDS_25") 
  
  port map (clk_p, clk_n, clk);

  ----
 --process(clk)
 --begin
 --     if r_Clk_Count < g_CLKS_PER_BIT-1 then
 --            r_Clk_Count <= r_Clk_Count + 1;
 --     end if;
 --     clk_div <= not clk_div;
 --     r_Clk_Count <= 0;
 --end process;
  p_UART_TX : process (clk,swcheck)
  begin
   if swcheck = '1' then
     asignal <= '0';
   end if;
    if rising_edge(clk) then 
      case state_main is
            when s_idle =>
                tx <= '1';
                index <= 0;
                if done = '0' then
                    state_main <= s_start;
                    asignal <= '0';
                elsif done = '1' then
                    state_main <= s_idle;
                end if;
            when s_start =>
                tx <= '0';
                if r_Clk_Count < g_CLKS_PER_BIT-1 then
		            r_Clk_Count <= r_Clk_Count + 1;
		            state_main   <= s_start;
				else
                state_main <= s_tdata;
                end if;
            when s_tdata =>
                 tx <= txdata(index);
                 if r_Clk_Count < g_CLKS_PER_BIT-1 then
                    r_Clk_Count <= r_Clk_Count + 1;
                    state_main   <= s_tdata;
                 else
                    r_Clk_Count <= 0;
                    if index < 7 then
                        index <= index +1 ;
                        state_main <= s_tdata;
                    else
                    index <= 0;
                    state_main <= s_stop;
                    end if;
                 end if;
            when s_stop =>
                --tx <= '1';
                if r_Clk_Count < g_CLKS_PER_BIT-1 then
		            r_Clk_Count <= r_Clk_Count + 1;
		            state_main   <= s_stop;
				else
				done <= '1';
                state_main <= s_idle;
                end if;
      end case;
    end if;
  end process p_UART_TX;
end RTL;