-- Conteúdo para o arquivo: UART.vhd
-- Versão robusta com reset explícito e configurado para 115200 baud.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART is
    port (
        i_clk_50mhz : in  std_logic;
        i_reset_n   : in  std_logic; -- Reset físico da placa, ativo em baixo
        i_buttons   : in  std_logic_vector(3 downto 0);
        o_uart_tx   : out std_logic
    );
end entity UART;

architecture rtl of UART is

    -- Declaração do seu componente uart_tx
    component uart_tx is
        generic (
            CLK_FREQ  : integer;
            BAUD_RATE : integer
        );
        port (
            clk      : in  std_logic;
            rst      : in  std_logic;
            tx_start : in  std_logic;
            data_in  : in  std_logic_vector(7 downto 0);
            tx       : out std_logic;
            busy     : out std_logic;
            done     : out std_logic
        );
    end component uart_tx;

    -- Sinais internos
    signal s_tx_start     : std_logic := '0';
    signal s_data_to_send : std_logic_vector(7 downto 0) := (others => '0');
    signal s_tx_busy      : std_logic;
    signal r_buttons_prev : std_logic_vector(3 downto 0) := (others => '0');

begin

    -- Instanciação do seu componente
    uart_tx_inst : component uart_tx
    generic map (
        CLK_FREQ  => 50_000_000,
        BAUD_RATE => 115200      -- Configurado para a nova velocidade
    )
    port map (
        clk      => i_clk_50mhz,
        rst      => i_reset_n,
        tx_start => s_tx_start,
        data_in  => s_data_to_send,
        tx       => o_uart_tx,
        busy     => s_tx_busy,
        done     => open
    );
    
    -- Processo com lógica de reset para garantir estado inicial conhecido
    process(i_clk_50mhz, i_reset_n)
    begin
        if i_reset_n = '0' then -- Reset ativo em baixo
            s_tx_start <= '0';
            r_buttons_prev <= (others => '0');
            s_data_to_send <= (others => '0');
        elsif rising_edge(i_clk_50mhz) then
            -- Por padrão, o início da transmissão fica em '0'
            s_tx_start <= '0';

            -- Se os botões mudaram e a UART não está ocupada
            if (i_buttons /= r_buttons_prev) and (s_tx_busy = '0') then
                s_tx_start <= '1';
                s_data_to_send <= "0000" & i_buttons;
                r_buttons_prev <= i_buttons; 
            end if;
        end if;
    end process;

end architecture rtl;