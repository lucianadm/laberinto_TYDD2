library verilog;
use verilog.vl_types.all;
entity matriz_pru_vlg_sample_tst is
    port(
        D_in_A          : in     vl_logic;
        D_in_B          : in     vl_logic;
        D_in_C          : in     vl_logic;
        D_in_D          : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end matriz_pru_vlg_sample_tst;
