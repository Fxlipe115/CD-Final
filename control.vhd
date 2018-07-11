library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity control is
	port(
		clk			: in std_logic;
		rst			: in std_logic;
		difficulty	: in std_logic_vector(4 downto 0);
		data			: in std_logic_vector(1 downto 0);
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
		en_show		: out std_logic
	);
end entity;

architecture arch of control is
	type state_type is (init, 
							  gen0, gen1, gen2, 
							  play0, play1, play2, 
							  cpu0, cpu1, cpu2, cpu3, 
							  game_over);
	signal state			: state_type;
	signal dif				: std_logic_vector(4 downto 0);
	signal count			: std_logic_vector(4 downto 0);
	signal old_button0	: std_logic;
	signal old_button1	: std_logic;
	signal old_button2	: std_logic;
	signal old_button3	: std_logic;
	
	signal r_score			: std_logic_vector(4 downto 0);
	signal r_sel_turn		: std_logic;
	signal r_s_addr		: std_logic_vector(4 downto 0);
	signal r_s_we			: std_logic;
	signal r_l_sync_reset: std_logic;
	signal r_l_en        : std_logic;
	signal r_en_show		: std_logic;
	
begin

	score 			<= r_score;
	sel_turn			<= r_sel_turn;
	s_addr 			<= r_s_addr;
	s_we 				<= r_s_we;
	l_sync_reset 	<= r_l_sync_reset;
	l_en 				<= r_l_en;
	en_show			<= r_en_show;

	process (clk, rst, state, difficulty, count, button_0, button_1, button_2, button_3)
	begin
		if rst = '1' then
			state <= init;

		elsif (rising_edge(clk)) then
			old_button0 <= button_0;
			old_button1 <= button_1;
			old_button2 <= button_2;
			old_button3 <= button_3;
		
			case state is
				when init=>
					count <= (others => '0');
					dif 				<= difficulty;
					r_score 			<= "00000";
					r_sel_turn		<= '1'; --CPU
					r_s_addr			<= "00000";
					r_s_we			<= '0';
					r_l_sync_reset <= '1';
					r_l_en			<= '0';
					r_en_show		<= '0';
					state 			<= gen0;
					
				when gen0=>
					r_l_sync_reset <= '0';
					r_l_en 			<= '1';
					state 			<= gen1;
					
				when gen1=>
					r_l_en 			<= '0';
					r_s_we 			<= '1';
					r_s_addr 		<= count;
					r_l_sync_reset <= '0';
					state 			<= gen2;
					
				when gen2=>
					if count = (dif-1) then
						r_s_we 			<= '0';
						r_l_sync_reset <= '0';
						count 			<= (others => '0');
						state 			<= cpu0;
					else
						count <= count + 1;
						state <= gen0;
					end if;
					
				when cpu0=>
					r_s_we		<= '0';
					r_sel_turn 	<= '1';
					r_en_show	<= '0';
					r_s_addr		<= count;
					state 		<= cpu1;
					
				when cpu1=>
					r_en_show	<= '1';
					r_sel_turn 	<= '1';
					state 		<= cpu2;
					
				when cpu2=>
					r_en_show 	<= '1';
					state 		<= cpu3;
					
				when cpu3=>
					if count = r_score then
						state <= play0;
					else
						r_en_show <= '0';
						count <= count + 1;
						r_s_addr	<= count + 1;
						state <= cpu1;
					end if;
					
				when play0=>
					r_sel_turn 	<= '0';
					r_en_show	<= '1';
					count			<= (others => '0');
					state			<= play1;
					
				when play1=>
					r_s_addr		<= count;
					state 		<= play2;
						
				when play2=>
					if (not button_0 and old_button0) = '1' then
						if data = "00" then
							if count = r_score then
								if count = dif-1 then
									state <= game_over; -- win
								else
									r_score 	<= r_score + 1;
									count	<= (others => '0');
									state <= cpu0;
								end if;
							else
								count	<= count + 1;
								state <= play1;
							end if;
						else
							state <= game_over; -- lose
						end if;
					elsif (not button_1 and old_button1) = '1' then
						if data = "01" then
							if count = r_score then
								if count = dif-1 then
									state <= game_over; -- win
								else
									r_score 	<= r_score + 1;
									count	<= (others => '0');
									state <= cpu0;
								end if;
							else
								count	<= count + 1;
								state <= play1;
							end if;
						else
							state <= game_over; -- lose
						end if;
					elsif (not button_2 and old_button2) = '1' then
						if data = "10" then
							if count = r_score then
								if count = dif-1 then
									state <= game_over; -- win
								else
									r_score 	<= r_score + 1;
									count	<= (others => '0');
									state <= cpu0;
								end if;
							else
								count	<= count + 1;
								state <= play1;
							end if;
						else
							state <= game_over; -- lose
						end if;
					elsif (not button_3 and old_button3) = '1' then
						if data = "11" then
							if count = r_score then
								if count = dif-1 then
									state <= game_over; -- win
								else
									count	<= (others => '0');
									state <= cpu0;
								end if;
							else
								r_score 	<= r_score + 1;
								count	<= count + 1;
								state <= play1;
							end if;
						else
							state <= game_over; -- lose
						end if;
					end if;
				
				when others=>
					null;
			end case;
		end if;
	end process;
end arch;