library ieee;
use ieee.std_logic_1164.all;
 
entity decod_7seg is
	port(
		num : in std_logic_vector(3 downto 0);
		seven_seg : out std_logic_vector(6 downto 0)
	);
end entity;
 
architecture arch of decod_7seg is
begin
with num select seven_seg <=
   "0000001" when "0000",
	"1001111" when "0001",
	"0010010" when "0010",
	"0000110" when "0011",
	"1001100" when "0100",
	"0100100" when "0101",
	"0100000" when "0110",
	"0001111" when "0111",
	"0000000" when "1000",
	"0000100" when "1001",
	"1111111" when others;
end arch;