library ieee;
use ieee.std_logic_1164.all;

entity mux21 is
port (
	a: in  std_logic;
	b: in  std_logic;
	s: in  std_logic;
	o: out std_logic
  );
end entity;

architecture rtl of mux21 is
begin
	with s select o <=
		a when '0',
		b when '1';
end architecture rtl;