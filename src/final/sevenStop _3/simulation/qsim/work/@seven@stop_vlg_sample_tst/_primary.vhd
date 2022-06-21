library verilog;
use verilog.vl_types.all;
entity SevenStop_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        inputer         : in     vl_logic_vector(0 to 6);
        x               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SevenStop_vlg_sample_tst;
