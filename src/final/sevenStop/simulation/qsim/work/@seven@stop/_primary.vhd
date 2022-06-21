library verilog;
use verilog.vl_types.all;
entity SevenStop is
    port(
        x               : in     vl_logic;
        clk             : in     vl_logic;
        inputer         : in     vl_logic_vector(0 to 6);
        outputer        : out    vl_logic_vector(0 to 6)
    );
end SevenStop;
