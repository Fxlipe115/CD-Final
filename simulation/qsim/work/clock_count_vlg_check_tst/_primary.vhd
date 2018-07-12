library verilog;
use verilog.vl_types.all;
entity clock_count_vlg_check_tst is
    port(
        o               : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end clock_count_vlg_check_tst;
