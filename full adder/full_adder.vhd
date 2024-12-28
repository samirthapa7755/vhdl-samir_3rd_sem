library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port ( a : in std_logic;
           b : in std_logic;
           cin : in std_logic;
           sum : out std_logic;
           cout : out std_logic);
end full_adder;

architecture behavioral of full_adder is
    signal sum1, carry1, carry2 : std_logic;
    component half_adder is
        port ( a : in std_logic;
               b : in std_logic;
               sum : out std_logic;
               carry : out std_logic);
    end component;
begin
    ha1: half_adder port map (a => a, b => b, sum => sum1, carry => carry1);
    ha2: half_adder port map (a => sum1, b => cin, sum => sum, carry => carry2);
    cout <= carry1 or carry2;
end behavioral;
