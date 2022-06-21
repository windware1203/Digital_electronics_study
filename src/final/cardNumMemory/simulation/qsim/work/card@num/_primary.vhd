library verilog;
use verilog.vl_types.all;
entity cardNum is
    port(
        nowC            : in     vl_logic_vector(0 to 2);
        clk             : in     vl_logic;
        nextC           : out    vl_logic_vector(0 to 2)
    );
end cardNum;
