library ieee;
use ieee.std_logic_1164.all;

entity maquina_estados is
	port (
		clk, reset: in std_logic;
		y: out std_logic
);
end maquina_estados;

architecture behaviour of maquina_estados is
	type STATE_TYPE is (S0, S1, S2, S3, S4, S5, S6, S7);
	signal estado: STATE_TYPE;

begin

	process(clk, reset)
	
	begin
	
--		led1 <= key0;

		if (reset = '0') then
			estado <= S0;
		elsif (clk'event and clk='1') then
			case estado is
				when S0 => y <='0';
							  estado <=S1;
				when S1 => estado <=S2;
				when S2 => y <='1';
							  estado <=S3;
				when S3 => estado <=S4;
				when S4 => estado <=S5;
				when S5 => estado <=S6;
				when S6 => estado <=S7;
				when S7 => estado <=S0;
			end case;
		end if;
	end process;
end behaviour;
