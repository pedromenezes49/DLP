library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_signal is
    port (
        clock : in std_logic; -- Clock dividido (mais lento)
        digitD : out std_logic_vector(3 downto 0); -- Dígito da dezena (4 bits)
        digitU : out std_logic_vector(3 downto 0) -- Dígito da unidade (4 bits)
    );
end contador_signal;

architecture contsignal_arch of contador_signal is
    signal dezena  : integer range 0 to 9 := 0; -- Armazena a parte das dezenas (0-9)
    signal unidade : integer range 0 to 9 := 0; -- Armazena a parte das unidades (0-9)
    signal contagem : integer range 0 to 99 := 0; -- Contador principal (0-99)
    signal virada : std_logic := '0'; -- Controla se o contador está incrementando ou decrementando

begin
    counter: process (clock)
    begin
        if rising_edge(clock) then
            if virada = '0' then
                -- Incrementa o contador até 99
                if contagem < 99 then
                    contagem <= contagem + 1;
                else
                    -- Quando chegar a 99, muda para modo de decremento
                    virada <= '1';
                end if;
            else
                -- Decrementa o contador até 0
                if contagem > 0 then
                    contagem <= contagem - 1;
                else
                    -- Quando chegar a 0, muda para modo de incremento
                    virada <= '0';
                end if;
            end if;

            -- Atualiza as partes de dezena e unidade
            dezena <= contagem / 10; -- Calcula a dezena
            unidade <= contagem mod 10; -- Calcula a unidade
        end if;
    end process counter;

    -- Converte os valores de dezena e unidade para vetores de 4 bits
    digitD <= std_logic_vector(to_unsigned(dezena, digitD'length));
    digitU <= std_logic_vector(to_unsigned(unidade, digitU'length));

end contsignal_arch;