library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AND_Gate_TB is

end AND_Gate_TB;

architecture Behavioral of AND_Gate_TB is
    
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Y : std_logic;

    
    component AND_Gate
        Port (
            A : in  std_logic;
            B : in  std_logic;
            Y : out std_logic
        );
    end component;
begin
    
    UUT: AND_Gate Port Map (
        A => A,
        B => B,
        Y => Y
    );

    
    Stimulus: process
    begin
        
        A <= '0'; B <= '0';
        wait for 10 ns;
        assert (Y = '0') report "Test case 1 failed" severity error;

        
        A <= '0'; B <= '1';
        wait for 10 ns;
        assert (Y = '0') report "Test case 2 failed" severity error;

        
        A <= '1'; B <= '0';
        wait for 10 ns;
        assert (Y = '0') report "Test case 3 failed" severity error;

        
        A <= '1'; B <= '1';
        wait for 10 ns;
        assert (Y = '1') report "Test case 4 failed" severity error;

        
        wait;
    end process;
end Behavioral;
