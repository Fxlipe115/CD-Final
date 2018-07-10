library verilog;
use verilog.vl_types.all;
entity genius is
    port(
        \out\           : out    vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        dif             : in     vl_logic_vector(1 downto 0);
        seed            : in     vl_logic_vector(6 downto 0)
    );
end genius;
