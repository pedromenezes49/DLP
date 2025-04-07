library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_sinal is
	port (
		clock  : in std_logic;  
		reset  : in std_logic;
		enable : in std_logic;
		digitD : out std_logic_vector(3 downto 0); --digito que vai ser usado na casa da dezena
		digitU : out std_logic_vector(3 downto 0) --digito que vai ser usado na casa da unidade
		);
end contador_sinal;

architecture contsignal_arch of contador_sinal is
	
	signal dezena  : integer := 0; --sinal que vai receber o resultado da dezena do processo de contagem
	signal unidade : integer := 0; --sinal que vai receber o resultado da unidade do processo de contagem

begin
	counter: process (clock, reset)
	
	variable contagem : integer range 0 to 99; --variavel que vai ser manipulada durante a contagem
	variable virada   : integer range 0 to 1;  --variavel que vai ser utilizada para indicar que o contador vai decrescer
	
	begin
		if (reset = '1') then
			contagem := 0;
			virada 	:= 0;
			
		elsif (clock'event and clock='1') then
			if (enable = '1' and virada = 0) then --se o enable estiver ativo e a virada nao tiver acontecido, incrementa o contador
				contagem := contagem + 1; 
				
				if (contagem = 99) then virada :=  1; --quando o contador chegar ao maximo, a virada acontece
				end if;
				
			elsif (enable = '1' and virada = 1) then --se o enable estiver ativo e a virada nao tiver acontecido, decrementa o contador
				contagem := contagem - 1;
				
				if (contagem = 0) then virada :=  0; --quando o contador chegar ao maximo, a virada acontece novamente
				end if;
			end if;			
			dezena <= contagem / 10; --pega apenas a dezena do contador
			unidade <= contagem mod 10; --pega apenas a unidade do contador
		end if;
	end process counter;
	
	digitD <= std_logic_vector(to_unsigned(dezena, digitD'length)); --converte o sinal dezena em um vetor de 4 bits e atribui ao vetor de saida digitD
	digitU <= std_logic_vector(to_unsigned(unidade, digitU'length)); --converte o sinal unidade em um vetor de 4 bits e atribui ao vetor de saida digitU
	
end contsignal_arch;