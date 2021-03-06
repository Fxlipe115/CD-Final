library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity score_to_bcd is
	port(
		score	: in std_logic_vector(4 downto 0);
		d0	: out std_logic_vector(3 downto 0);
		d1 : out std_logic_vector(3 downto 0)
	);
end entity;

architecture arch of score_to_bcd is
	function to_bcd ( bin : std_logic_vector(7 downto 0) ) return std_logic_vector is
		variable i : integer:=0;
		variable bcd : std_logic_vector(11 downto 0) := (others => '0');
		variable bint : std_logic_vector(7 downto 0) := bin;
	begin
		for i in 0 to 7 loop  -- repeating 8 times.
			bcd(11 downto 1) := bcd(10 downto 0);  --shifting the bits.
			bcd(0) := bint(7);
			bint(7 downto 1) := bint(6 downto 0);
			bint(0) :='0';
			if(i < 7 and bcd(3 downto 0) > "0100") then --add 3 if BCD digit is greater than 4.
				bcd(3 downto 0) := bcd(3 downto 0) + "0011";
			end if;
			if(i < 7 and bcd(7 downto 4) > "0100") then --add 3 if BCD digit is greater than 4.
				bcd(7 downto 4) := bcd(7 downto 4) + "0011";
			end if;
			if(i < 7 and bcd(11 downto 8) > "0100") then  --add 3 if BCD digit is greater than 4.
				bcd(11 downto 8) := bcd(11 downto 8) + "0011";
			end if;
		end loop;
		return bcd;
	end to_bcd;
	
	signal bcd : std_logic_vector(11 downto 0);
	signal score_8bit: std_logic_vector(7 downto 0);
begin
	score_8bit <= "000" & score;
	bcd <= to_bcd(score_8bit);
	d0 <= bcd(3 downto 0);
	d1 <= bcd(7 downto 4);		
end arch;