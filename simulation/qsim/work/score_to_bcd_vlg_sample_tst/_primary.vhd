library verilog;
use verilog.vl_types.all;
entity score_to_bcd_vlg_sample_tst is
    port(
        score           : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end score_to_bcd_vlg_sample_tst;
