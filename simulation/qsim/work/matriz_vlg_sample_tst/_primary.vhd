library verilog;
use verilog.vl_types.all;
entity matriz_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        D_in_A          : in     vl_logic;
        D_in_B          : in     vl_logic;
        D_in_C          : in     vl_logic;
        D_in_D          : in     vl_logic;
        EN              : in     vl_logic;
        LEE1            : in     vl_logic_vector(3 downto 0);
        LEE2            : in     vl_logic_vector(3 downto 0);
        LEE3            : in     vl_logic_vector(3 downto 0);
        num_casillero   : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end matriz_vlg_sample_tst;
