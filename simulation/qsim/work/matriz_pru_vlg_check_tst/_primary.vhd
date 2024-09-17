library verilog;
use verilog.vl_types.all;
entity matriz_pru_vlg_check_tst is
    port(
        C0              : in     vl_logic_vector(3 downto 0);
        C2              : in     vl_logic_vector(3 downto 0);
        C3              : in     vl_logic_vector(3 downto 0);
        C4              : in     vl_logic_vector(3 downto 0);
        C5              : in     vl_logic_vector(3 downto 0);
        C6              : in     vl_logic_vector(3 downto 0);
        C7              : in     vl_logic_vector(3 downto 0);
        C8              : in     vl_logic_vector(3 downto 0);
        C9              : in     vl_logic_vector(3 downto 0);
        C10             : in     vl_logic;
        C11             : in     vl_logic;
        C12             : in     vl_logic;
        C13             : in     vl_logic;
        C14             : in     vl_logic_vector(3 downto 0);
        C15             : in     vl_logic_vector(3 downto 0);
        C100            : in     vl_logic;
        C101            : in     vl_logic;
        C102            : in     vl_logic;
        C103            : in     vl_logic;
        C110            : in     vl_logic;
        C111            : in     vl_logic;
        C112            : in     vl_logic;
        C113            : in     vl_logic;
        C120            : in     vl_logic;
        C121            : in     vl_logic;
        C122            : in     vl_logic;
        C123            : in     vl_logic;
        C130            : in     vl_logic;
        C131            : in     vl_logic;
        C132            : in     vl_logic;
        C133            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end matriz_pru_vlg_check_tst;
