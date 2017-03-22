library verilog;
use verilog.vl_types.all;
entity shift_reg is
    port(
        Data            : in     vl_logic;
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        Qout            : out    vl_logic
    );
end shift_reg;
