library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uart_tx is
    generic (
        CLK_FREQ  : integer := 50000000;
        BAUD_RATE : integer := 115200
    );
    port (
        clk      : in  std_logic; 
        rst      : in  std_logic;
        tx_start : in  std_logic; -- comando para iniciar transmissão
        data_in  : in  std_logic_vector(7 downto 0); -- dado de 8 bits a ser transmitido
        tx       : out std_logic; -- saída serial.
        busy     : out std_logic; -- indica transmissão em andamento.
        done     : out std_logic -- sinaliza fim da transmissão.
    );
end uart_tx;

architecture Behavioral of uart_tx is
    constant CLKS_PER_BIT : integer := CLK_FREQ / BAUD_RATE; -- Número de ciclos de clock para cada bit transmitido.
    type state_type is (IDLE, START, DATA, STOP);
    signal state : state_type := IDLE; -- guarda o estado atual.
    signal clk_cnt : integer range 0 to CLKS_PER_BIT-1 := 0; -- contador de ciclos para cada bit.
    signal bit_idx : integer range 0 to 7 := 0; -- índice do bit atual sendo transmitido.
    signal tx_shift_reg : std_logic_vector(7 downto 0) := (others => '0'); -- registrador de deslocamento para os bits.
    signal tx_reg : std_logic := '1'; -- armazena o valor da saída serial.
    signal busy_reg : std_logic := '0'; -- flag de status.
    signal done_reg : std_logic := '0'; -- flag de status.
begin
    process(clk, rst)
    begin
        if rst = '0' then
            state <= IDLE;
            clk_cnt <= 0;
            bit_idx <= 0;
            tx_shift_reg <= (others => '0');
            tx_reg <= '1';
            busy_reg <= '0';
            done_reg <= '0';
        elsif rising_edge(clk) then
            done_reg <= '0';
            case state is
                when IDLE =>
                    tx_reg <= '1';
                    busy_reg <= '0';
                    if tx_start = '1' then
                        tx_shift_reg <= data_in;
                        state <= START;
                        clk_cnt <= CLKS_PER_BIT - 1;
                        busy_reg <= '1';
                    end if;
                when START =>
                    tx_reg <= '0';
                    if clk_cnt = 0 then
                        state <= DATA;
                        bit_idx <= 0;
                        clk_cnt <= CLKS_PER_BIT - 1;
                    else
                        clk_cnt <= clk_cnt - 1;
                    end if;
                when DATA =>
                    tx_reg <= tx_shift_reg(bit_idx);
                    if clk_cnt = 0 then
                        if bit_idx = 7 then
                            state <= STOP;
                        else
                            bit_idx <= bit_idx + 1;
                        end if;
                        clk_cnt <= CLKS_PER_BIT - 1;
                    else
                        clk_cnt <= clk_cnt - 1;
                    end if;
                when STOP =>
                    tx_reg <= '1';
                    if clk_cnt = 0 then
                        state <= IDLE;
                        done_reg <= '1';
                        busy_reg <= '0';
                    else
                        clk_cnt <= clk_cnt - 1;
                    end if;
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;
    tx <= tx_reg;
    busy <= busy_reg;
    done <= done_reg;
end Behavioral;
