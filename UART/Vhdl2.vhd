library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity transmissor is
	generic(
		baud : integer := 7 -- 50000000/(460800*16)
	);
	port (
		clk       		  : in  std_logic;
		TX_DV     		  : in  std_logic;
		TX_Byte   		  : in  std_logic_vector(7 downto 0);
		TX_Active 		  : out std_logic;
		TX_Serial 		  : out std_logic;
		TX_Done   		  : out std_logic;
		TX_Current_State : out integer
	);
end transmissor;

architecture behaviour of transmissor is
--State Machine
	type state is (Idle, Start_Bit, Send_Data, Parity_Bit, Stop_Bit, Cleanup);
	signal estado  			: state    						 	 := Idle;
--Internal Logical Signals
	signal TX_Done_Internal : std_logic 						 := '0';
	signal TX_Data 			: std_logic_vector(7 downto 0) := (others => '0');
--Internal Integer Signals	
	signal Count   			: integer range 0 to baud-1 	 := 0;
	signal Index   			: integer range 0 to 7 			 := 0;
	signal Current 			: integer 							 := 0;
	
begin
	UART_TX : process (clk)
	begin
		if (clk'event and clk='1') then
			case estado is
				when Idle =>
				-- Reseta todos os sinais internos
					Current				 <=  0;
					TX_Active 			 <= '0';
					TX_Serial 			 <= '1'; --Resetado igual a 1, pois start bit da transmissão é 0
					TX_Done_Internal   <= '0';
					Count     			 <=  0;
					Index     			 <=  0;
					--If de verificação de se pode começar a transmissão
					if TX_DV = '1' then
						TX_Data <= TX_Byte;
						estado  <= Start_Bit;
					else
						estado <= Idle;
					end if;
					
				when Start_Bit =>
				-- Inicializa os parametros de start
					Current	 <=  1;
					TX_Active <= '1';
					TX_Serial <= '0';
					--Não precisa verificar ate a metade, basta esperar o tempo do baud passar pra transmitir o próximo bit
					if (Count < baud-1) then
						Count  <= Count + 1;
						estado <= Start_Bit;
					else
						Count  <= 0;
						estado <= Send_Data;
					end if;
				
				when Send_Data =>
					Current	 <= 2;
					--Atribui à o bit de saída o bit do vetor da vez
					TX_Serial <= TX_Data(Index);
					if (Count < baud-1) then 
						Count  <= Count + 1;
						estado <= Send_Data;
					else
						Count <= 0;
						-- If para verificar se todos os bits do vetor ja foram transmitidos
						if Index < 7 then
							Index  <= Index + 1;
							Estado <= Send_Data;
						else
							Index  <= 0;
							estado <= Parity_Bit;
						end if;
					end if;
				
				when Parity_Bit =>
				--transmitir o bit de paridade em um intervalo de baud
					Current	 <=  3;
					TX_Serial <= '1';
					if (Count < baud-1) then 
						Count  <= Count + 1;
						estado <= Parity_Bit;
					else
						Count  <= 0;
						estado <= Stop_Bit;
					end if;
					
				when Stop_Bit =>
				--transmitir o bit de stop em um intervalo de baud
					Current	 <=  4;
					TX_Serial <= '1';
					if (Count < baud-1) then 
						Count  <= Count + 1;
						estado <= Stop_Bit;
					else
						TX_Done_Internal <= '1';
						Count   			  <=  0;
						estado  			  <= Cleanup;
					end if;
				
				when Cleanup =>
				-- estado de limpeza para finalizar a transmissão
					Current	 			 <=  5;
					TX_Active 			 <= '0';
					TX_Done_Internal   <= '1';
					estado    			 <= Idle;
				
				when others =>
					estado <= Idle;
			end case;
		end if;
	end process UART_TX;
-- Atribuição dos sinais internos à saídas
	TX_Done 			  <= TX_Done_Internal;
	TX_Current_State <= Current;

end behaviour;