library verilog;
use verilog.vl_types.all;
entity cardNum_vlg_check_tst is
    port(
        nextC           : in     vl_logic_vector(0 to 2);
        sampler_rx      : in     vl_logic
    );
end cardNum_vlg_check_tst;
