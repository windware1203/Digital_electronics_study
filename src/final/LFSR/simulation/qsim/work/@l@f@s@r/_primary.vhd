library verilog;
use verilog.vl_types.all;
entity LFSR is
    port(
        i_Clk           : in     vl_logic;
        i_Enable        : in     vl_logic;
        i_Seed_DV       : in     vl_logic;
        i_Seed_Data     : in     vl_logic_vector(4 downto 0);
        o_LFSR_Data     : out    vl_logic_vector(4 downto 0);
        o_LFSR_Done     : out    vl_logic
    );
end LFSR;
