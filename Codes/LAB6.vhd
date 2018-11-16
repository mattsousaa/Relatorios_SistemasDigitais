library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

entity LAB6 is
    Port ( 
           sw  : in UNSIGNED  (3 downto 0);
           btn : in UNSIGNED (3 downto 0);
           led : out UNSIGNED (3 downto 0);
           clk : in STD_LOGIC
         );
end LAB6;

architecture Behavioral of LAB6 is

signal X: std_logic := '0';
signal c4: UNSIGNED (3 downto 0) := "0000";

begin

    led <= c4;
    
    A: process(clk)
        variable conta: integer range 0 to 160000000 := 0;
    begin
    
        if clk'event and clk = '1' then
            conta := conta + 1;
            if conta >= 150000000 then
                conta := 0;
                x <= not x;
            end if;
        end if;
    
    end process A;
    
    B: process(X)
    begin
    
        if X'event and X = '1' then
            if sw(0) = '1' then
                c4 <= c4 + 1;
            else
                c4 <= c4 - 1;
            end if;
        end if;
    end process B;

end Behavioral;
