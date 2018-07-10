library verilog;
use verilog.vl_types.all;
entity sequence is
    port(
        clk             : in     vl_logic;
        addr            : in     vl_logic_vector(4 downto 0);
        data            : in     vl_logic_vector(1 downto 0);
        we              : in     vl_logic;
        q               : out    vl_logic_vector(1 downto 0)
    );
end sequence;
