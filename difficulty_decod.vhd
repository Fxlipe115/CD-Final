library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity difficulty_decod is
	port(
		d_in	: in std_logic_vector(1 downto 0);
		d_out	: out std_logic_vector(4 downto 0)
	);
end entity;

architecture arch of difficulty_decod is
begin
	with d_in select d_out <=
    std_logic_vector(to_unsigned(8, d_out'length))  when "00",
    std_logic_vector(to_unsigned(16, d_out'length)) when "01",
    std_logic_vector(to_unsigned(24, d_out'length)) when "10",
    std_logic_vector(to_unsigned(32, d_out'length)) when "11";
end arch;