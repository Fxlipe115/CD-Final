library verilog;
use verilog.vl_types.all;
entity clk_divider is
    port(
        clk_in          : in     vl_logic;
        reset           : in     vl_logic;
        clk_out         : out    vl_logic
    );
end clk_divider;
