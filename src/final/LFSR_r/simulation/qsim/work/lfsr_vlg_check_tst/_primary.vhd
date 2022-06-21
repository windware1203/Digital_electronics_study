library verilog;
use verilog.vl_types.all;
entity lfsr_vlg_check_tst is
    port(
        outt            : in     vl_logic_vector(0 to 5);
        sampler_rx      : in     vl_logic
    );
end lfsr_vlg_check_tst;
