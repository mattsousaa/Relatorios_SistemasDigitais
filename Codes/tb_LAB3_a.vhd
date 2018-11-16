----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.04.2017 12:26:26
-- Design Name: 
-- Module Name: tb_LAB3_a - Behavioral
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

entity tb_LAB3_a is
--  Port ( );
end tb_LAB3_a;

architecture Behavioral of tb_LAB3_a is

    component LAB3_a is
        Port ( ct0 : in STD_LOGIC;
               ct1 : in STD_LOGIC;
               a : in STD_LOGIC;
               b : in STD_LOGIC;
               c : in STD_LOGIC;
               d : in STD_LOGIC;
               x : out STD_LOGIC);
    end component;
    
    signal ct: unsigned (1 downto 0) := "00";
    signal a : STD_LOGIC := '1';
    signal b : STD_LOGIC := '0';
    signal c : STD_LOGIC := '1';
    signal d : STD_LOGIC := '0';
    signal x : STD_LOGIC;

begin

    DUT: LAB3_a port map (ct(0),ct(1),a,b,c,d,x);
    
    P1: process
    begin
    
        wait for 20ns;
        ct <= ct + 1;
    
    end process P1;

end Behavioral;
