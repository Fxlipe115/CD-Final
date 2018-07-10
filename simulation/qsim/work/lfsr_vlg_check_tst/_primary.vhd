library verilog;
use verilog.vl_types.all;
entity lfsr_vlg_check_tst is
    port(
        lsfr            : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end lfsr_vlg_check_tst;
