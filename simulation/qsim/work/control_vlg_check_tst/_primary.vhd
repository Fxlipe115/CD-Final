library verilog;
use verilog.vl_types.all;
entity control_vlg_check_tst is
    port(
        l_en            : in     vl_logic;
        l_seed          : in     vl_logic_vector(6 downto 0);
        l_sync_reset    : in     vl_logic;
        s_addr          : in     vl_logic_vector(4 downto 0);
        s_we            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end control_vlg_check_tst;
