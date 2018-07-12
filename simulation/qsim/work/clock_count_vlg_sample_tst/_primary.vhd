library verilog;
use verilog.vl_types.all;
entity clock_count_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        dis             : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end clock_count_vlg_sample_tst;
