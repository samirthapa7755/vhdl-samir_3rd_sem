library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture behavioral of full_adder_tb is
    signal a, b, cin : std_logic := '0';
    signal sum, cout : std_logic;
begin
    uut: entity work.full_adder
        port map (a => a, b => b, cin => cin, sum => sum, cout => cout);
    
    process
    begin
        a <= '0'; b <= '0'; cin <= '0';
        wait for 10 ns;
        a <= '0'; b <= '1'; cin <= '0';
        wait for 10 ns;
        a <= '1'; b <= '0'; cin <= '0';
        wait for 10 ns;
        a <= '1'; b <= '1'; cin <= '0';
        wait for 10 ns;
        a <= '0'; b <= '0'; cin <= '1';
        wait for 10 ns;
        a <= '0'; b <= '1'; cin <= '1';
        wait for 10 ns;
        a <= '1'; b <= '0'; cin <= '1';
        wait for 10 ns;
        a <= '1'; b <= '1'; cin <= '1';
        wait for 10 ns;
        wait;
    end process;
end behavioral;
