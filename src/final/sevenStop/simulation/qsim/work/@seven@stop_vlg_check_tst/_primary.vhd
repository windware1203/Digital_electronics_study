library verilog;
use verilog.vl_types.all;
entity SevenStop_vlg_check_tst is
    port(
        outputer        : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end SevenStop_vlg_check_tst;
