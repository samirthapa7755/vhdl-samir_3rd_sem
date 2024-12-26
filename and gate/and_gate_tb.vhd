library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate_tb is
end and_gate_tb;

architecture behavior of and_gate_tb is
    signal a, b, y : std_logic;
begin
    -- Instantiate the AND gate
    uut: entity work.and_gate
        port map (
            a => a,
            b => b,
            y => y
        );

    -- Testbench process
    process
    begin
        -- Test case 1: a = 0, b = 0
        a <= '0';
        b <= '0';
        wait for 10 ns;

        -- Test case 2: a = 0, b = 1
        a <= '0';
        b <= '1';
        wait for 10 ns;

        -- Test case 3: a = 1, b = 0
        a <= '1';
        b <= '0';
        wait for 10 ns;

        -- Test case 4: a = 1, b = 1
        a <= '1';
        b <= '1';
        wait for 10 ns;

        wait; -- Stop simulation
    end process;
end behavior;
