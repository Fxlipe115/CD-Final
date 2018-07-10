library verilog;
use verilog.vl_types.all;
entity genius_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end genius_vlg_check_tst;
