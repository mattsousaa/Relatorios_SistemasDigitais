----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2017 13:27:23
-- Design Name: 
-- Module Name: tb_LAB3_b - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_LAB3_b is
--  Port ( );
end tb_LAB3_b;

architecture Behavioral of tb_LAB3_b is

    component LAB3_b is
        Port ( ct0 : in STD_LOGIC;
               ct1 : in STD_LOGIC;
               a : out STD_LOGIC;
               b : out STD_LOGIC;
               c : out STD_LOGIC;
               d : out STD_LOGIC;
               x : in STD_LOGIC);
    end component;
    
    signal ct: unsigned (1 downto 0) := "00";
    signal a : STD_LOGIC;
    signal b : STD_LOGIC;
    signal c : STD_LOGIC;
    signal d : STD_LOGIC;
    signal x : STD_LOGIC := '0';

begin

    DUT: LAB3_b port map (ct(0),ct(1),a,b,c,d,x);
    
    x <= not x after 30ns;
    
    P1: process
    begin
    
        wait for 20ns;
        ct <= ct + 1;
    
    end process P1;

end Behavioral;
