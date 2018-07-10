library verilog;
use verilog.vl_types.all;
entity lfsr is
    port(
        clk             : in     vl_logic;
        rstb            : in     vl_logic;
        sync_reset      : in     vl_logic;
        seed            : in     vl_logic_vector(6 downto 0);
        en              : in     vl_logic;
        lsfr            : out    vl_logic_vector(6 downto 0)
    );
end lfsr;
