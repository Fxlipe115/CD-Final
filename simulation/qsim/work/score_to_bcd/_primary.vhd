library verilog;
use verilog.vl_types.all;
entity score_to_bcd is
    port(
        score           : in     vl_logic_vector(4 downto 0);
        d0              : out    vl_logic_vector(3 downto 0);
        d1              : out    vl_logic_vector(3 downto 0)
    );
end score_to_bcd;
