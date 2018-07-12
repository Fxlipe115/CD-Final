library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity counter is
	port(
		inc : in std_logic;
		clk : in std_logic;
		rst : in std_logic;
		o   : out std_logic_vector(1 downto 0)
	);
end entity;
 
architecture arch of counter is
	signal r_o : std_logic_vector(1 downto 0);
	signal inc_old: std_logic;
begin
	o <= r_o;
	
	process(clk, rst)
	begin
		if rst = '1' then
			r_o <= "00";
			inc_old <= '0';
		elsif rising_edge(clk) then
			inc_old <= inc;
			if (inc and not inc_old) = '1' then
				r_o <= r_o + 1;
			end if;
		end if;
	end process;
end arch;