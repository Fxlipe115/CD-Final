library verilog;
use verilog.vl_types.all;
entity genius_vlg_check_tst is
    port(
        led0            : in     vl_logic;
        led1            : in     vl_logic;
        led2            : in     vl_logic;
        led3            : in     vl_logic;
        score           : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end genius_vlg_check_tst;
