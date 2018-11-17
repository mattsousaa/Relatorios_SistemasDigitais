library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
Port ( clk : in STD_LOGIC;
       --up  : in STD_LOGIC;
       --down: in STD_LOGIC; 
       ref : in UNSIGNED(7 downto 0); 
       PWM : out STD_LOGIC);
end PWM;

architecture Behavioral of PWM is

constant CMAX : integer := 10; 

signal dut :  UNSIGNED(7 downto 0) := X"30";

begin

dut <= ref;

P1: process(clk,dut)
    variable count : integer := 0;
begin

    if clk'event and clk = '1' then
        count := count + 1;
        if count >= CMAX then count := 0;
        end if;
    end if;
    
    if count <= dut then
        PWM <= '1';
    else
        PWM <= '0';
    end if;

end process P1;

--    P2: process (up,down)
--    begin
--        if up = '1' then
--            if dut <= 195 then
--                dut <= dut + 5;
--            end if;
--        elsif down = '1' then
--            if dut >= 5 then
--                dut <= dut - 5;
--            end if;
--        end if;
--    end process P2;

end Behavioral;
