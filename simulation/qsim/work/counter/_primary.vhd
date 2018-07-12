library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        inc             : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        o               : out    vl_logic_vector(1 downto 0)
    );
end counter;
