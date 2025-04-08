library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decodificador is
	port (
		clock: in std_logic;
		digitI: in std_logic_vector(3 downto 0);
		digitDisp: out std_logic_vector(6 downto 0)
		);
end decodificador;

architecture decod_arch of decodificador is
begin

            case digitI is --tem que ver se o led nessa placa ativa com high ou low
                when "0000" => digitDisp <= "0000001"; -- "0"     
                when "0001" => digitDisp <= "1001111"; -- "1" 
                when "0010" => digitDisp <= "0010010"; -- "2" 
                when "0011" => digitDisp <= "0000110"; -- "3" 
                when "0100" => digitDisp <= "1001100"; -- "4" 
                when "0101" => digitDisp <= "0100100"; -- "5" 
                when "0110" => digitDisp <= "0100000"; -- "6" 
                when "0111" => digitDisp <= "0001111"; -- "7" 
                when "1000" => digitDisp <= "0000000"; -- "8"     
                when "1001" => digitDisp <= "0000100"; -- "9" 
                when others => digitDisp <= "1111110"; -- "-"
            end case;
       
end decod_arch;