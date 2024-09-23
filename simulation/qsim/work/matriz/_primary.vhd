library verilog;
use verilog.vl_types.all;
entity matriz is
    port(
        Y15             : out    vl_logic;
        EN              : in     vl_logic;
        num_casillero   : in     vl_logic_vector(3 downto 0);
        accion          : out    vl_logic_vector(1 downto 0);
        C0              : out    vl_logic_vector(3 downto 0);
        D_in_A          : in     vl_logic;
        D_in_B          : in     vl_logic;
        D_in_C          : in     vl_logic;
        D_in_D          : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        CE1             : out    vl_logic_vector(3 downto 0);
        C10             : out    vl_logic_vector(3 downto 0);
        C11             : out    vl_logic_vector(3 downto 0);
        C12             : out    vl_logic_vector(3 downto 0);
        C13             : out    vl_logic_vector(3 downto 0);
        C14             : out    vl_logic_vector(3 downto 0);
        C2              : out    vl_logic_vector(3 downto 0);
        C3              : out    vl_logic_vector(3 downto 0);
        C4              : out    vl_logic_vector(3 downto 0);
        C5              : out    vl_logic_vector(3 downto 0);
        C6              : out    vl_logic_vector(3 downto 0);
        C7              : out    vl_logic_vector(3 downto 0);
        C8              : out    vl_logic_vector(3 downto 0);
        C9              : out    vl_logic_vector(3 downto 0);
        LEE2            : in     vl_logic_vector(3 downto 0);
        LEE3            : in     vl_logic_vector(3 downto 0);
        C15             : out    vl_logic_vector(3 downto 0);
        vecino0         : out    vl_logic_vector(3 downto 0);
        vecino1         : out    vl_logic_vector(3 downto 0);
        vecino2         : out    vl_logic_vector(3 downto 0);
        LEE1            : in     vl_logic_vector(3 downto 0)
    );
end matriz;
