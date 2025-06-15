library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reciever is
	generic(
	   CLK_FREQ  : integer := 50000000;  -- frequência do clock em Hz
	   BAUD_RATE : integer := 115200     -- baudrate UART
	);
	port(
		clk       		  : in  std_logic;
		RX_Serial 		  : in  std_logic;
		RX_DV     		  : out std_logic;
		RX_Byte   		  : out std_logic_vector(7 downto 0);
		RX_Current_State : out integer		
	);
end reciever;
architecture behaviour of reciever is

	constant baud : integer := CLK_FREQ / BAUD_RATE;
-- State Machine
	type state is(Idle, Start, ReadByte, Parity, Stop, Cleanup);
	signal estado            : state 								:= Idle;
--Internal Logical Signals	
	signal RX_Data_Redundant : std_logic 							:= '0';
	signal RX_Data           : std_logic 							:= '0';
	signal DV 	 				 : std_logic 							:= '0';
	signal Byte  				 : std_logic_vector(7 downto 0)	:= (others => '0');
--Internal Integer Signals	
	signal Count 				 : integer range 0 to baud - 1 	:=  0;
	signal Index 				 : integer range 0 to 7 			:=  0;
	signal Current 			 : integer 								:=  0;
	
begin
-- registra a entrada duas vezes para evitar problemas de metaestabilidade
	SAMPLE: process (clk)
	begin
		if (clk'event and clk='1') then
			RX_Data_Redundant <= RX_Serial;
			RX_Data 				<= RX_Data_Redundant;
		end if;
	end process SAMPLE;
		
	UART_RX: process (clk)
	begin
	 if (clk'event and clk='1') then
		case estado is
			when Idle =>
			-- Reseta todos os sinais de funcionamento interno do receptor
				Current  <=  0;
				Count 	<=  0;
				Index 	<=  0;
				DV 		<= '0';
				Byte 		<= (others => '0');
				-- If para verificar se recebeu o start bit
				if RX_Data = '0' then
					estado <= Start;
				else
					estado <= Idle;
				end if;
			
			when Start =>
				Current <= 1;
				--Espera ate metade da duração do bit 
				if (Count = (baud-1)/2) then
				--IF para verificar se o bit recebido ainda é de start
					if RX_Data = '0' then
						estado <= ReadByte;
						Count  <= 0;
					else
						estado <= Idle;
					end if;
				else
					Count  <= Count + 1;
					estado <= Start;
				end if;
			
			when ReadByte =>
				Current <= 2;
				-- nao verifica o meio dnv, pois continua sampleando num intervalo igual a baud
				if (Count < baud-1) then
					Count  <= Count + 1;
					estado <= ReadByte;
				else
				-- Quando está no tempo certo, atribui o bit recebido no vetor de armazenamento
					Count <= 0;
					Byte(Index) <= RX_Data;
					-- If para verificar se o vetor está cheio
					if Index < 7 then
						Index  <= Index + 1;
						estado <= ReadByte;
					else 
						Index  <= 0;
						estado <= Parity;
					end if;
				end if;
				
			when Parity =>
			-- Paridade serve para verificar se a transmissão foi feita de forma correta
				Current <= 3;
				if (Count < baud-1) then
					Count  <= Count + 1;
					estado <= Parity;
				else
			-- Bit de paridade é arbitrario, escolhemos 1	
					if RX_Data = '1' then
						Count  <= 0;
						estado <= Stop;
					else 
						estado <= Idle;
					end if;
				end if;
			
			when Stop =>
			-- Estado de parada para mandar o sinal DV de recepção encerrada
				Current <= 4;
				if (Count < baud-1) then
					Count  <= Count + 1;
					estado <= Stop;
				else
					DV <= '1';
					Count  <= 0;
					estado <= Cleanup;
				end if;
			
			when Cleanup =>
			-- Estado de limpeza. Serve, nessa implementação, para dar tempo da transmissão funcionar de forma continua.
				Current <=  5;
				DV   	  <= '1';
				estado  <= Idle;
				
			when others =>
				estado <= Idle;
		end case;
	end if;
end process UART_RX;
-- Atribuição dos sinais internos à saídas
	RX_DV     		  <= DV;
	RX_Byte			  <= Byte;
	RX_Current_State <= Current;
	
end behaviour;
	