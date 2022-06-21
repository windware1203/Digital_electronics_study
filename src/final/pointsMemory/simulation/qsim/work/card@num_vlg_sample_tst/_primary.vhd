library verilog;
use verilog.vl_types.all;
entity cardNum_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        nowC1           : in     vl_logic_vector(0 to 5);
        nowC2           : in     vl_logic_vector(0 to 5);
        sampler_tx      : out    vl_logic
    );
end cardNum_vlg_sample_tst;
