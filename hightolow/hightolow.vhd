library ieee;
use ieee.std_logic_1164.all;

entity hightolow is
	port (
		clk, reset, key0: in std_logic;
		y, led1: out std_logic
);
end hightolow;

architecture behaviour of hightolow is
	signal slow_clock : std_logic; -- Clock dividido (mais lento)
	
	    -- Componente: Divisor de Clock
    component clock_divider is
        generic (
            DIVISOR : integer := 50000000 -- Define a divisão para 1 Hz
        );
        port (
            clk_in  : in std_logic;
            clk_out : out std_logic
        );
    end component;
	 
	 component maquina_estados is
		port (
			clk, reset, key0: in std_logic;
			y, led1: out std_logic
		);
		end component;

begin

	ClockDivider: clock_divider
			  generic map (
					DIVISOR => 50000000 -- Divide o clock para 1 Hz
			  )
			  port map (
					clk_in => clk,
					clk_out => slow_clock
			  );
			  
	MaquinaEstados: maquina_estados
		port map(
			clk => slow_clock,
			reset => reset,
			key0 => key0,
			y => y,
			led1 => led1
		);

end behaviour;
