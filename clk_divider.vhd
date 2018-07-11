library ieee;
use ieee.std_logic_1164.all;

entity clk_divider is
port (
	clk_in:  in   std_logic;
	clk_out: out  std_logic
  );
end entity;