--TOP LEVEL ENTITY

library ieee;
use ieee.std_logic_1164.all;

entity UART is 
	port(
		clk			 					: in  std_logic;
		input_bit 	 					: in  std_logic;
		Transmission_On 				: out std_logic;
		Transmission_Done 			: out std_logic;
		Transmission_Bit				: out std_logic;		
		--Recieved_Byte					: out std_logic_vector(7 downto 0); --Testar reciever
		Reciever_Current_State 		: out integer;
		Transmission_Current_State : out integer
		
	);
end UART;

architecture behaviour of UART is

--Reciver signals
signal RX_Byte_Vector  		 	: std_logic_vector(7 downto 0) := (others => '0');
signal RX_Recieve_Finished  	: std_logic;
signal RX_Current 				: integer;

--Transmissor signals
signal TX_Trasmission_Begin 	: std_logic;
signal TX_is_Active 			 	: std_logic;
signal TX_Byte_Transmitted  	: std_logic;
signal TX_Transmission_Finish : std_logic;
signal TX_Byte_Vector  		 	: std_logic_vector(7 downto 0) := (others => '0');
signal TX_Current 				: integer;

--Test signals for the transmissor
signal Test_Transmission_Ok	: std_logic 						 := '1';
signal Test_Word 					: std_logic_vector(7 downto 0) := "10101010";

--reciever works
component reciever is
	generic(
		baud : integer := 7 -- 50000000/(460800*16)
	);
	port(
		clk       		  : in  std_logic;
		RX_Serial 		  : in  std_logic;
		RX_DV     		  : out std_logic;
		RX_Byte   		  : out std_logic_vector(7 downto 0);
		RX_Current_State : out integer
	);
end component;

component transmissor is
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
end component;

begin
	UART_RX: reciever
		generic map (
			baud => 7
		)
		port map (
			clk       		   => clk,
			RX_Serial 		   => input_bit,
			RX_DV     		   => RX_Recieve_Finished,
			RX_Byte   		   => RX_Byte_Vector,
			RX_Current_State  => RX_Current
		);
		
	TX_Byte_Vector 		  <= RX_Byte_Vector;
	Reciever_Current_State <= RX_Current;
		
	UART_TX: transmissor 
		generic map (
			baud => 7
    )
    port map (
		clk       => clk,
    	TX_DV     => RX_Recieve_Finished,
      TX_Byte   => TX_Byte_Vector,
      TX_Active => TX_is_Active,
      TX_Serial => TX_Byte_Transmitted,
      TX_Done   => TX_Transmission_Finish,
		TX_Current_State => TX_Current
    );
	 
	Transmission_On 						<= TX_is_Active;
	Transmission_Bit						<= TX_Byte_Transmitted;
	Transmission_Done 					<= TX_Transmission_Finish;
	Transmission_Current_State 		<= TX_Current;
 
end behaviour;