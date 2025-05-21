--TOP LEVEL ENTITY

library ieee;
use ieee.std_logic_1164.all;

entity UART is 
	port(
		clk			 		: in  std_logic;
		input_bit 	 		: in  std_logic;
		transmission_on 	: out std_logic;
		output_bit			: out std_logic;
		transmission_done : out std_logic
	);
end UART;

architecture behaviour of UART is

signal RX_Byte_Vector  		 	: std_logic_vector(7 downto 0) := (others => '0');
signal RX_Recieve_Finished  	: std_logic;
signal TX_Trasmission_Begin 	: std_logic;
signal TX_is_Active 			 	: std_logic;
signal TX_Byte_Transmitted  	: std_logic;
signal TX_Transmission_Finish : std_logic;



component reciever is
	generic(
		baud : integer := 162 -- 50000000/(19200*16)
	);
	port(
		clk       : in  std_logic;
		RX_Serial : in  std_logic;
		RX_DV     : out std_logic;
		RX_Byte   : out std_logic_vector(7 downto 0)
	);
end component;

component transmissor is
	generic(
		baud : integer := 162
	);
	port (
		clk       : in  std_logic;
		TX_DV     : in  std_logic;
		TX_Byte   : in  std_logic_vector(7 downto 0);
		TX_Active : out std_logic;
		TX_Serial : out std_logic;
		TX_Done   : out std_logic
	);
end component;

begin
	UART_RX: reciever
    generic map (
      baud => 162
      )
    port map (
      clk       => clk,
      RX_Serial => input_bit,
      RX_DV     => RX_Recieve_Finished,
      RX_Byte   => RX_Byte_Vector
      );
		
	UART_TX: transmissor 
	 generic map (
		baud => 162
      )
    port map (
      clk       => clk,
      TX_DV     => TX_Trasmission_Begin,
      TX_Byte   => RX_Byte_Vector,
      TX_Active => TX_is_Active,
      TX_Serial => TX_Byte_Transmitted,
      TX_Done   => TX_Transmission_Finish
      );
		
		transmission_on 	<= TX_is_Active;
		output_bit			<= TX_Byte_Transmitted;
		transmission_done <= TX_Transmission_Finish;
 
end behaviour;