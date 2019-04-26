----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2019 11:29:12 AM
-- Design Name: 
-- Module Name: Comp - Behavioral
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

entity Comp is
  Port ( clk_n : in std_logic;
         clk_p : in std_logic;
         rst1 : in std_logic;
         rx : in std_logic;
         tx : out std_logic
  );
end Comp;

architecture Behavioral of Comp is
  signal clk : std_logic;
  signal tdv : std_logic:='0';
  signal rdv : std_logic;
  signal tdone: std_logic;
  --signal rdone: std_logic;
  signal active : std_logic;
  signal txdata : std_logic_vector(7 downto 0):= (others => '0');
  signal rxdata : std_logic_vector(7 downto 0):= (others => '0');
  --signal rx3byte : std_logic_vector(23 downto 0) := (others => '0');
  signal numa : std_logic_vector(7 downto 0);
  signal numb : std_logic_vector(7 downto 0);
  signal mode8 : std_logic_vector(7 downto 0);
  signal j : integer range 0 to 3 :=0;
  signal myled : std_logic:='0';
  --signal rst1 : std_logic;
    component IBUFGDS is 

    generic (IOSTANDARD : string); 

    port(I : in STD_LOGIC; 

    IB: in STD_LOGIC; 

    O : out STD_LOGIC); 

    end component;
    ---
    component UART_TX
    port(
        i_Clk       : in  std_logic;
        i_TX_DV     : in  std_logic;
        i_TX_Byte   : in  std_logic_vector(7 downto 0);
        o_TX_Active : out std_logic;
        o_TX_Serial : out std_logic;
        o_TX_Done   : out std_logic
    );
    end component;
    ---
    component UART_RX
      port (
      i_Clk       : in  std_logic;
      i_RX_Serial : in  std_logic;
      o_RX_DV     : out std_logic;
      o_RX_Byte   : out std_logic_vector(7 downto 0)
      );
     end component;
     ---
     component ffld1
        port (	 --fdata : in std_logic_vector(23 downto 0);	
                 num_a : in std_logic_vector (7 downto 0);
                 num_b : in std_logic_vector (7 downto 0);
                 mode : in std_logic; -- operation 1 = add , 0 = sub
                 clk : in std_logic;
                 rst : in std_logic;
                 rs : out std_logic_vector (7 downto 0)
                 );
      end component;
begin
    UIBUFG : IBUFGDS 
    generic map (IOSTANDARD => "BLVDS_25") 
    port map (clk_p, clk_n, clk);
    
    uarttx : UART_TX port map(clk, tdv, txdata, active, tx, tdone);
    uartrx : UART_RX port map(clk, rx, rdv, rxdata);
    
    --ffarith : ffld1 port map(num_a=>numa, num_b=>numb, mode=>mode8(7), clk=>clk,rst=>rst1,rs=>txdata);
    
    process(clk)
    begin
   -- myled <= rxdata(0) or rxdata(1) or rxdata(2) or rxdata(3) or rxdata(4) or rxdata(5) or rxdata(6) or rxdata(7);
   --     if rising_edge(rdv) then
            --rx3byte<=rx3byte(15 downto 0) & rxdata;
            
            txdata<="01010101"; tdv <='1';
       -- case j is
       --     when 0 => numa <= rxdata;
       --     when 1 => numb <= rxdata;
       --     when 2 => mode8 <=rxdata;-- tdv <= '1';
       --     when 3 => tdv <= '1';
       --     when others => numa <= rxdata;
       -- end case;
            --j<=j+1;
    end process;
end Behavioral;
