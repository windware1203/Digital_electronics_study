library verilog;
use verilog.vl_types.all;
entity p0606_vlg_sample_tst is
    port(
        inputer         : in     vl_logic_vector(0 to 3);
        sampler_tx      : out    vl_logic
    );
end p0606_vlg_sample_tst;
