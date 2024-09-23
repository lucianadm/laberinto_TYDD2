library verilog;
use verilog.vl_types.all;
entity matriz_vlg_check_tst is
    port(
        accion          : in     vl_logic_vector(1 downto 0);
        C0              : in     vl_logic_vector(3 downto 0);
        C2              : in     vl_logic_vector(3 downto 0);
        C3              : in     vl_logic_vector(3 downto 0);
        C4              : in     vl_logic_vector(3 downto 0);
        C5              : in     vl_logic_vector(3 downto 0);
        C6              : in     vl_logic_vector(3 downto 0);
        C7              : in     vl_logic_vector(3 downto 0);
        C8              : in     vl_logic_vector(3 downto 0);
        C9              : in     vl_logic_vector(3 downto 0);
        C10             : in     vl_logic_vector(3 downto 0);
        C11             : in     vl_logic_vector(3 downto 0);
        C12             : in     vl_logic_vector(3 downto 0);
        C13             : in     vl_logic_vector(3 downto 0);
        C14             : in     vl_logic_vector(3 downto 0);
        C15             : in     vl_logic_vector(3 downto 0);
        CE1             : in     vl_logic_vector(3 downto 0);
        vecino0         : in     vl_logic_vector(3 downto 0);
        vecino1         : in     vl_logic_vector(3 downto 0);
        vecino2         : in     vl_logic_vector(3 downto 0);
        Y15             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end matriz_vlg_check_tst;
