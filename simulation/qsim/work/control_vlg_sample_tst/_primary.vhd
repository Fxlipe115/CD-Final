library verilog;
use verilog.vl_types.all;
entity control_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        difficulty      : in     vl_logic_vector(1 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end control_vlg_sample_tst;
