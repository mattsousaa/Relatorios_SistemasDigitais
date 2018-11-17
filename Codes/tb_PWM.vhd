library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_PWM is
--  Port ( );
end tb_PWM;

architecture Behavioral of tb_PWM is

    component PWM is
    Port ( clk : in STD_LOGIC;
           ref : in UNSIGNED(7 downto 0); 
           PWM : out STD_LOGIC);
    end component;
    
    signal clk: STD_LOGIC := '0';
    signal ref: UNSIGNED(7 downto 0) := X"01";
    signal iPWM: STD_LOGIC;

begin

    DUT: PWM port map(clk,ref,iPWM);
    
    clk <= not clk after 10ns;
    
    P: process
    begin
        wait for 200ns;
        ref <= X"03";
        wait for 200ns;
        ref <= X"08";
        wait for 200ns;
        ref <= X"01";                
    end process P;

end Behavioral;
