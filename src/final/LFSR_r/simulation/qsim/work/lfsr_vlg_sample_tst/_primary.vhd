library verilog;
use verilog.vl_types.all;
entity lfsr_vlg_sample_tst is
    port(
        inSeed          : in     vl_logic_vector(0 to 5);
        sampler_tx      : out    vl_logic
    );
end lfsr_vlg_sample_tst;
