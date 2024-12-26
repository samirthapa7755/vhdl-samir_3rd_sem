library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the test bench
entity AND_Gate_TB is
-- Test bench has no ports
end AND_Gate_TB;

architecture Behavioral of AND_Gate_TB is
    -- Signal declarations for inputs and output
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Y : std_logic;

    -- Component declaration for the AND gate
    component AND_Gate
        Port (
            A : in  std_logic;
            B : in  std_logic;
            Y : out std_logic
        );
    end component;
begin
    -- Instantiate the AND gate
    UUT: AND_Gate Port Map (
        A => A,
        B => B,
        Y => Y
    );

    -- Stimulus process
    Stimulus: process
    begin
        -- Test case 1: A = 0, B = 0
        A <= '0'; B <= '0';
        wait for 10 ns;
        assert (Y = '0') report "Test case 1 failed" severity error;

        -- Test case 2: A = 0, B = 1
        A <= '0'; B <= '1';
        wait for 10 ns;
        assert (Y = '0') report "Test case 2 failed" severity error;

        -- Test case 3: A = 1, B = 0
        A <= '1'; B <= '0';
        wait for 10 ns;
        assert (Y = '0') report "Test case 3 failed" severity error;

        -- Test case 4: A = 1, B = 1
        A <= '1'; B <= '1';
        wait for 10 ns;
        assert (Y = '1') report "Test case 4 failed" severity error;

        -- End simulation
        wait;
    end process;
end Behavioral;
