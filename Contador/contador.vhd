library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is -- NOME DESSA ENTIDADE TEM QUE SER A MESMA DO PROJETO PRA SER A TOP LEVEL
	port (
		clock, reset, enable : in std_logic;
		anodo : out std_logic_vector(3 downto 0);
		digit : out std_logic_vector(6 downto 0)
		);
end contador;

architecture cont_arch of contador is
	
	signal digitU, digitD : std_logic_vector(3 downto 0);
	signal digitU_display, digitD_display : std_logic_vector(6 downto 0);

	component contador_sinal is
	port (
		clock : in std_logic;
		reset : in std_logic;
		enable : in std_logic;
		digitD : out std_logic_vector(3 downto 0); 
		digitU : out std_logic_vector(3 downto 0)
		);
	end component;
	
	component decodificador is
	port (
		clock: in std_logic;
		digitI: in std_logic_vector(3 downto 0);
		digitDisp: out std_logic_vector(6 downto 0)
		);
	end component;
	
	component demultiplexador is
	port (
		clock: in std_logic;
		reset: in std_logic;
		digitD: in std_logic_vector(6 downto 0);
		digitU: in std_logic_vector(6 downto 0);
		digitO: out std_logic_vector(6 downto 0);
		anodo: out std_logic_vector(3 downto 0)
		);
	end component;
	
begin
	
	Contador0990: contador_sinal port map (clock, reset, enable, digitD, digitU);
	Decodificador_Unidade: decodificador port map (clock, digitU, digitU_display);
	Decodificador_Dezena: decodificador port map (clock, digitD, digitD_display);
	Demux: demultiplexador port map(clock, reset, digitD_display, digitU_display, digit, anodo);
	
end cont_arch;