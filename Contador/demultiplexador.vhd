library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity demultiplexador is
	port (
		clock: in std_logic; 
		reset: in std_logic;
		digitD: in std_logic_vector(6 downto 0);
		digitU: in std_logic_vector(6 downto 0);
		digitO: out std_logic_vector(6 downto 0);
		anodo: out std_logic_vector(3 downto 0)
		);
end demultiplexador;

architecture demux_arch of demultiplexador is
	signal period_display : std_logic_vector (5 downto 0);
	signal led_activating_counter: std_logic_vector (1 downto 0);
begin
	process(clock, reset)
	begin
		if reset = '0' then
			period_display <=(others=>'0');
		elsif (clock'event and clock='1') then
			period_display <=period_display + 1;
		end if;
	end process;
	
	led_activating_counter <= period_display(5 downto 4);
	process (led_activating_counter)
	begin
		case led_activating_counter is
			when "00" =>
				anodo <= "1110";
				digitO <= digitU;
			when others =>
				anodo <= "1101";
				digitO <= digitD;
		end case;
	end process;
end demux_arch;
		