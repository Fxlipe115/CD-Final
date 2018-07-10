library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity control is
	port(
		clk			: in std_logic;
		rst			: in std_logic;
		difficulty	: in std_logic_vector(4 downto 0);
		value			: in std_logic_vector(1 downto 0);
		button_0		: in std_logic;
		button_1		: in std_logic;
		button_2		: in std_logic;
		button_3		: in std_logic;
		score			: out std_logic_vector(4 downto 0);
		sel_turn		: out std_logic;
		s_addr		: out std_logic_vector(4 downto 0);
		s_we			: out std_logic;
		l_sync_reset: out std_logic;
		l_en        : out std_logic;
		en_show			: out std_logic
	);
end entity;

architecture arch of control is
	type state_type is (init, gen0, gen1, gen2, game_over);
	signal state : state_type;
	signal r_s_addr		: std_logic_vector(4 downto 0);
	signal r_s_we			: std_logic;
	signal r_l_sync_reset: std_logic;
	signal r_l_en        : std_logic;
	signal dif  : std_logic_vector(4 downto 0);
	signal count : std_logic_vector(4 downto 0);
begin

	s_addr <= r_s_addr;
	s_we <= r_s_we;
	l_sync_reset <= r_l_sync_reset;
	l_en <= r_l_en;

	process (clk, rst)
	begin
		if rst = '1' then
			state <= init;

		elsif (rising_edge(clk)) then
			case state is
				when init=>
					state <= gen0;
					count <= std_logic_vector(to_unsigned(0, count'length));
				when gen0=>
					state <= gen1;
				when gen1=>
					state <= gen2;
				when gen2=>
					if count = (dif-1) then
						state <= game_over;
					else
						count <= count + 1;
						state <= gen0;
					end if;
				when others=>
					null;
			end case;

		end if;
	end process;

	process (state, difficulty, count)
	begin
			case state is
				when init=>
					dif <= difficulty;
					r_l_sync_reset <= '1';
				when gen0=>
					r_l_sync_reset <= '0';
					r_l_en <= '1';
					r_l_sync_reset <= '0';
				when gen1=>
					r_l_en <= '0';
					r_s_we <= '1';
					r_s_addr <= count;
					r_l_sync_reset <= '0';
				when gen2=>
					r_s_we <= '0';
					r_l_sync_reset <= '0';
				when others=>
					r_s_we <= '0';
					r_s_addr <= "00000";
			end case;
	end process;
end arch;