library verilog;
use verilog.vl_types.all;
entity sequence_vlg_sample_tst is
    port(
        addr            : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(1 downto 0);
        we              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sequence_vlg_sample_tst;
