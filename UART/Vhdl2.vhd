library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity transmissor is
	generic(
		baud : integer := 162
	);
	port (
		clk : 		in  std_logic;
		TX_DV :     in  std_logic;
		TX_Byte:    in  std_logic_vector(7 downto 0);
		TX_Active : out std_logic;
		TX_Serial:  out std_logic;
		TX_Done :   out std_logic
	);
end transmissor;

architecture behaviour of transmissor is
	type state is (Idle, Start_Bit, Send_Data, Parity_Bit, Stop_Bit, Cleanup);
	signal estado  			: state    						 	 := Idle;
	signal Count   			: integer range 0 to baud-1 	 := 0;
	signal Index   			: integer range 0 to 7 			 := 0;
	signal TX_Data 			: std_logic_vector(7 downto 0) := (others => '0');
	signal TX_Done_Internal : std_logic 						 := '0';
begin
	UART_TX : process (clk)
	begin
		if (clk'event and clk='1') then
			case estado is
				when Idle =>
					TX_Active 			 <= '0';
					TX_Serial 			 <= '1';
					TX_Done_Internal   <= '0';
					Count     			 <= 0;
					Index     			 <= 0;
					if TX_DV = '1' then
						TX_Data <= TX_Byte;
						estado  <= Start_Bit;
					else
						estado <= Idle;
					end if;
					
				when Start_Bit =>
					TX_Active <= '1';
					TX_Serial <= '0';
					if (Count < baud-1) then
						Count  <= Count + 1;
						estado <= Start_Bit;
					else
						Count  <= 0;
						estado <= Send_Data;
					end if;
				
				when Send_Data =>
					TX_Serial <= TX_Data(Index);
					if (Count < baud-1) then 
						Count  <= Count + 1;
						estado <= Send_Data;
					else
						Count <= 0;
						if Index < 7 then
							Index  <= Index + 1;
							Estado <= Send_Data;
						else
							Index  <= 0;
							estado <= Parity_Bit;
						end if;
					end if;
				
				when Parity_Bit =>
					TX_Serial <= '1';
					if (Count < baud-1) then 
						Count  <= Count + 1;
						estado <= Parity_Bit;
					else
						Count  <= 0;
						estado <= Stop_Bit;
					end if;
					
				when Stop_Bit =>
					TX_Serial <= '1';
					if (Count < baud-1) then 
						Count  <= Count + 1;
						estado <= Stop_Bit;
					else
						TX_Done_Internal <= '1';
						Count   			  <= 0;
						estado  			  <= Cleanup;
					end if;
				
				when Cleanup =>
					TX_Active 			 <= '0';
					TX_Done_Internal   <= '1';
					estado    			 <= Idle;
				
				when others =>
					estado <= Idle;
			end case;
		end if;
	end process UART_TX;
	
	TX_Done <= TX_Done_Internal;
end behaviour;