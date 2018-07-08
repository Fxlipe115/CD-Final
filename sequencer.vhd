library ieee;
use ieee.std_logic_1164.ALL;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity sequencer is
  port(
    init: in std_logic;
    index: in std_logic_vector(4 downto 0);
    n: out std_logic_vector(1 downto 0)
  );
end sequencer;

architecture behavior of sequencer is
  type sequence_type is array(0 to (2**index'length)-1) of std_logic_vector(n'range);
  signal sequence : sequence_type;
begin
  process(init)
      variable seed1, seed2: positive;               -- seed values for random generator
      variable rand: real;   -- random real-number value in range 0 to 1.0
      variable range_of_rand : real := 3.0;    -- the range of random values created will be 0 to +3.
  begin
    if init = '1' then
      generate_rand: for i in 0 to sequence'length-1 loop
        uniform(seed1, seed2, rand);   -- generate random number
        sequence(i) <= std_logic_vector(to_unsigned(integer(rand*range_of_rand), sequence(i)'length));
      end loop generate_rand;
    end if;
  end process;

  n <= sequence(to_integer(unsigned(index)));
end behavior;
