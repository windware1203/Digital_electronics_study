library verilog;
use verilog.vl_types.all;
entity LFSR_vlg_sample_tst is
    port(
        i_Clk           : in     vl_logic;
        i_Enable        : in     vl_logic;
        i_Seed_Data     : in     vl_logic_vector(4 downto 0);
        i_Seed_DV       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end LFSR_vlg_sample_tst;
