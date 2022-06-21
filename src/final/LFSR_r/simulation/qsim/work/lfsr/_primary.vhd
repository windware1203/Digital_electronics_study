library verilog;
use verilog.vl_types.all;
entity lfsr is
    port(
        clk             : in     vl_logic;
        inSeed          : in     vl_logic_vector(0 to 5);
        outt            : out    vl_logic_vector(0 to 5)
    );
end lfsr;
