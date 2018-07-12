library ieee;
use ieee.std_logic_1164.all;

entity clk_divider is
generic (
	FACTOR : integer := 20000000
);
port (
	clk_in : in   std_logic;
	reset	 : in	  std_logic;
	clk_out: out  std_logic
  );
end entity;

architecture stl of clk_divider is
signal count : integer range 0 to FACTOR-1;
begin
	process(clk_in, reset)
	begin
		if reset = '1' then
			count <= 0;
		elsif rising_edge(clk_in) then
			count <= count + 1;
			if count = FACTOR-1 then
				 count <= 0;
			end if;

			if count < FACTOR/2 then
				 clk_out <= '1';
			else
				clk_out <= '0';
			end if;
		end if;
	end process;
end architecture;