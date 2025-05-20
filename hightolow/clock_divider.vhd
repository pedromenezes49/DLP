library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_divider is
    generic (
        DIVISOR : integer := 100000 -- Divide o clock por este valor (50 MHz / 50e6 = 1 Hz)
    );
    port (
        clk_in  : in std_logic;  -- Clock de entrada (50 MHz)
        clk_out : out std_logic  -- Clock de saída (frequência dividida)
    );
end clock_divider;

architecture divider_arch of clock_divider is
    signal count : integer range 0 to DIVISOR - 1 := 0; -- Contador interno
    signal temp_clk : std_logic := '0';               -- Sinal temporário para o clock de saída

begin
    process (clk_in)
    begin
        if rising_edge(clk_in) then
            if count = DIVISOR - 1 then
                count <= 0;       -- Reinicia o contador
                temp_clk <= not temp_clk; -- Alterna o estado do clock de saída
            else
                count <= count + 1; -- Incrementa o contador
            end if;
        end if;
    end process;

    clk_out <= temp_clk; -- Atribui o clock dividido à saída
end divider_arch;