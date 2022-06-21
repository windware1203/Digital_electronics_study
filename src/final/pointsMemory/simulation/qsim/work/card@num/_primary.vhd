library verilog;
use verilog.vl_types.all;
entity cardNum is
    port(
        nowC1           : in     vl_logic_vector(0 to 5);
        nowC2           : in     vl_logic_vector(0 to 5);
        clk             : in     vl_logic;
        nextC           : out    vl_logic_vector(0 to 5)
    );
end cardNum;
