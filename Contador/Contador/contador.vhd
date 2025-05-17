library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
    port (
        clock : in std_logic; -- Clock principal do sistema (50 MHz)
        digitUnidade : out std_logic_vector(6 downto 0); -- Saída para o display de unidade
        digitDezena : out std_logic_vector(6 downto 0)   -- Saída para o display de dezena
    );
end contador;

architecture cont_arch of contador is
    signal slow_clock : std_logic; -- Clock dividido (mais lento)
    signal digitU, digitD : std_logic_vector(3 downto 0);

    -- Componente: Divisor de Clock
    component clock_divider is
        generic (
            DIVISOR : integer := 50000000 -- Define a divisão para 1 Hz
        );
        port (
            clk_in  : in std_logic;
            clk_out : out std_logic
        );
    end component;

    -- Componente: Contador
    component contador_signal is
        port (
            clock : in std_logic;
            digitD : out std_logic_vector(3 downto 0); -- Dígito da dezena (4 bits)
            digitU : out std_logic_vector(3 downto 0)  -- Dígito da unidade (4 bits)
        );
    end component;

    -- Componente: Decodificador
    component decodificador is
        port (
            digitI : in std_logic_vector(3 downto 0);  -- Entrada de 4 bits (BCD)
            digitDisp : out std_logic_vector(6 downto 0) -- Saída para o display de 7 segmentos
        );
    end component;

begin
    -- Instancia o divisor de clock
    ClockDivider: clock_divider
        generic map (
            DIVISOR => 50000000 -- Divide o clock para 1 Hz
        )
        port map (
            clk_in => clock,
            clk_out => slow_clock
        );

    -- Instancia o contador
    Contador0990: contador_signal port map (slow_clock, digitD, digitU);

    -- Instancia os decodificadores para os displays de 7 segmentos
    Decodificador_Unidade: decodificador port map (digitU, digitUnidade);
    Decodificador_Dezena: decodificador port map (digitD, digitDezena);

end cont_arch;