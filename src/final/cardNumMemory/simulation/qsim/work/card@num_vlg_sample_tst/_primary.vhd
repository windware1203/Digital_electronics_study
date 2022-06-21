library verilog;
use verilog.vl_types.all;
entity cardNum_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        nowC            : in     vl_logic_vector(0 to 2);
        sampler_tx      : out    vl_logic
    );
end cardNum_vlg_sample_tst;
