library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity clock_count is
	port(
		clk : in std_logic;
		rst : in std_logic;
		dis : in std_logic;
		o   : out std_logic_vector(6 downto 0)
	);
end entity;
 
architecture arch of clock_count is
	signal r_o : std_logic_vector(6 downto 0);
	signal en  : std_logic;
begin
	o <= r_o;
	
	process(clk, rst, dis)
	begin
		if rst = '1' then
			r_o <= "0000000";
			en  <= '1';
		elsif dis = '1' then
			en <= '0';
		elsif rising_edge(clk) then
			if en = '1' then
				r_o <= r_o + 1;				
			end if;
		end if;
	end process;
end arch;