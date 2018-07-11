library verilog;
use verilog.vl_types.all;
entity genius is
    port(
        led0            : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        button_0        : in     vl_logic;
        button_1        : in     vl_logic;
        button_2        : in     vl_logic;
        button_3        : in     vl_logic;
        seed            : in     vl_logic_vector(6 downto 0);
        dif             : in     vl_logic_vector(1 downto 0);
        led1            : out    vl_logic;
        led2            : out    vl_logic;
        led3            : out    vl_logic;
        score           : out    vl_logic_vector(4 downto 0)
    );
end genius;
