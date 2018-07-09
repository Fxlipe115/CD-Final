library ieee;
use ieee.std_logic_1164.all;
entity lfsr is
port (
  clk           : in  std_logic;
  rstb          : in  std_logic;
  sync_reset    : in  std_logic;
  seed          : in  std_logic_vector (6 downto 0);
  en            : in  std_logic;
  lsfr          : out std_logic_vector (6 downto 0));
end lfsr;
architecture rtl of lfsr is
signal r_lfsr           : std_logic_vector (7 downto 1);
begin
lsfr  <= r_lfsr(7 downto 1);
p_lfsr : process (clk,rstb) begin
  if (rstb = '0') then
    r_lfsr   <= (others=>'1');
  elsif rising_edge(i_clk) then
    if(sync_reset='1') then
      r_lfsr   <= i_seed;
    elsif (en = '1') then
      r_lfsr(7) <= r_lfsr(1);
      r_lfsr(6) <= r_lfsr(7) xor r_lfsr(1);
      r_lfsr(5) <= r_lfsr(6);
      r_lfsr(4) <= r_lfsr(5);
      r_lfsr(3) <= r_lfsr(4);
      r_lfsr(2) <= r_lfsr(3);
      r_lfsr(1) <= r_lfsr(2);
    end if;
  end if;
end process p_lfsr;
end architecture rtl;
