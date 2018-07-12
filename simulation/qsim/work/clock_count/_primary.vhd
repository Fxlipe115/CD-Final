library verilog;
use verilog.vl_types.all;
entity clock_count is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        dis             : in     vl_logic;
        o               : out    vl_logic_vector(6 downto 0)
    );
end clock_count;
