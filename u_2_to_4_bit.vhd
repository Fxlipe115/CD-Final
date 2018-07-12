library ieee;
use ieee.std_logic_1164.all;

entity u_2_to_4_bit is
	port(
		d_in	: in std_logic_vector(1 downto 0);
		d_out	: out std_logic_vector(3 downto 0)
	);
end entity;

architecture arch of u_2_to_4_bit is
begin
	d_out <= (1 => d_in(1), 0 => d_in(0), others => '0');
end arch;