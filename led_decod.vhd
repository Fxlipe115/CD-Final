library ieee;
use ieee.std_logic_1164.all;
 
entity decod_led is
	port(
		n: in  std_logic_vector(1 downto 0);
		a: out std_logic;
		b: out std_logic;
		c: out std_logic;
		d: out std_logic
	);
end entity;
 
architecture arch of decod_led is
begin
	process(n)
	begin
		case n is
			when "00" =>
				a <= '1';
				b <= '0';
				c <= '0';
				d <= '0';
			when "01" =>
				a <= '0';
				b <= '1';
				c <= '0';
				d <= '0';
			when "10" =>
				a <= '0';
				b <= '0';
				c <= '1';
				d <= '0';
			when "11" =>
				a <= '0';
				b <= '0';
				c <= '0';
				d <= '1';
		end case;
	end process;
end arch;