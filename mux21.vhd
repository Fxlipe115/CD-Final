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
	o <= a when s = '0' else
		  b when s = '1';
end architecture rtl;