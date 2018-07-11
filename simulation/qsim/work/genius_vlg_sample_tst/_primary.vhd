library verilog;
use verilog.vl_types.all;
entity genius_vlg_sample_tst is
    port(
        button_0        : in     vl_logic;
        button_1        : in     vl_logic;
        button_2        : in     vl_logic;
        button_3        : in     vl_logic;
        clk             : in     vl_logic;
        dif             : in     vl_logic_vector(1 downto 0);
        rst             : in     vl_logic;
        seed            : in     vl_logic_vector(6 downto 0);
        sampler_tx      : out    vl_logic
    );
end genius_vlg_sample_tst;
