library verilog;
use verilog.vl_types.all;
entity lfsr_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        rstb            : in     vl_logic;
        seed            : in     vl_logic_vector(6 downto 0);
        sync_reset      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lfsr_vlg_sample_tst;
