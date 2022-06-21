library verilog;
use verilog.vl_types.all;
entity LFSR_vlg_check_tst is
    port(
        o_LFSR_Data     : in     vl_logic_vector(4 downto 0);
        o_LFSR_Done     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end LFSR_vlg_check_tst;
