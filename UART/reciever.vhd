library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reciever is
	generic(
		baud : integer := 162 -- 50000000/(19200*16)
	);
	port(
		clk       : in std_logic;
		RX_Serial : in std_logic;
		RX_DV     : out std_logic;
		RX_Byte   : out std_logic_vector(7 downto 0)
	);
end reciever;
architecture behaviour of reciever is
	type state is(Idle, Start, ReadByte, Parity, Stop, Cleanup);
	signal estado : state := Idle;
	signal RX_Data_Redundant : std_logic := '0';
	signal RX_Data           : std_logic := '0';
	signal Count : integer range 0 to baud - 1 := 0;
	signal Index : integer range 0 to 7 := 0;
	signal Byte  : std_logic_vector(7 downto 0)	:= (others => '0');
	signal DV 	 : std_logic := '0';
	
begin
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
				DV 	<= '0';
				Count <= 0;
				Index <= 0;
				if RX_Data = '0' then
					estado <= Start;
				else
					estado <= Idle;
				end if;
			
			when Start =>
				if (Count = (baud-1)/2) then
					if RX_Data = '0' then
						Count  <= 0;
						estado <= ReadByte;
					else
						estado <= Idle;
					end if;
				else
					Count  <= Count + 1;
					estado <= Start;
				end if;
			
			when ReadByte =>
				if (Count < baud-1) then
					Count  <= Count + 1;
					estado <= ReadByte;
				else 
					Count <= 0;
					Byte(Index) <= RX_Data;
					if Index < 7 then
						Index  <= Index + 1;
						estado <= ReadByte;
					else 
						Index <= 0;
						estado <= Parity;
					end if;
				end if;
				
			when Parity =>
				if (Count < baud-1) then
					Count  <= Count + 1;
					estado <= Parity;
				else	
					if RX_Data = '1' then
						Count <= 0;
						estado <= Stop;
					else 
						estado <= Idle;
					end if;
				end if;
			
			when Stop =>
				if (Count < baud-1) then
					Count  <= Count + 1;
					estado <= Stop;
				else
					DV <= '1';
					Count  <= 0;
					estado <= Cleanup;
				end if;
			
			when Cleanup => 
				estado <= Idle;
				DV <= '0';
				
			when others =>
				estado <= Idle;
		end case;
	end if;
end process UART_RX;

	RX_DV   <= DV;
	RX_Byte <= Byte;

end behaviour;
	