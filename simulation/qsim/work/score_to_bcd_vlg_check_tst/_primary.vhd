library verilog;
use verilog.vl_types.all;
entity score_to_bcd_vlg_check_tst is
    port(
        d0              : in     vl_logic_vector(3 downto 0);
        d1              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end score_to_bcd_vlg_check_tst;
