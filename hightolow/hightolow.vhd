library ieee;
use ieee.std_logic_1164.all;

entity hightolow is
    port (
        clk, reset: in std_logic;
        y: out std_logic
    );
end hightolow;

architecture behaviour of hightolow is
    signal slow_clock : std_logic; -- Clock dividido (mais lento)
    
    -- Componente: Divisor de Clock
    component clock_divider is
        generic (
            DIVISOR : integer := 100000 -- Teste com 100Hz primeiro
        );
        port (
            clk_in  : in std_logic;
            clk_out : out std_logic
        );
    end component;
     
    component maquina_estados is
        port (
            clk, reset: in std_logic;
            y: out std_logic
        );
    end component;

begin
    ClockDivider: clock_divider
        generic map (
            DIVISOR => 500000000
        )
        port map (
            clk_in => clk,
            clk_out => slow_clock
        );
          
    MaquinaEstados: maquina_estados
        port map(
            clk => slow_clock,
            reset => reset,
            y => y
        );

end behaviour;