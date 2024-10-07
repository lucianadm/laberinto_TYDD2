library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity accion is
    Port (
	     Hab_sentido: in std_logic;
        accion_nw  : in  std_logic_vector(1 downto 0);        -- Habilitador del registro ACTUAL
        accion_out  : out std_logic_vector(1 downto 0)  -- Salida del valor actual
    );
end accion;

architecture Behavioral of accion is
   begin

    -- Proceso para calcular el valor en ca2 dependiendo del valor de SENTIDO
    process(Hab_sentido)
    begin
        if rising_edge(Hab_sentido) then
                -- Suma el valor de ca2 al registro actual y lo almacena
                accion_out <= accion_nw;
            end if;
    end process;

end Behavioral;
