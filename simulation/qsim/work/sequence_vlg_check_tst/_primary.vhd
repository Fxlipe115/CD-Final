library verilog;
use verilog.vl_types.all;
entity sequence_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end sequence_vlg_check_tst;
