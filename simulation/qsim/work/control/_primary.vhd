library verilog;
use verilog.vl_types.all;
entity control is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        difficulty      : in     vl_logic_vector(1 downto 0);
        s_addr          : out    vl_logic_vector(4 downto 0);
        s_we            : out    vl_logic;
        l_sync_reset    : out    vl_logic;
        l_seed          : out    vl_logic_vector(6 downto 0);
        l_en            : out    vl_logic
    );
end control;
