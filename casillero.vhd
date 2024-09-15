library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity casillero is
    Port (
        -- Entradas de 4 bits cada una (con valor predeterminado "1111" cuando no están conectadas)
        A, B, C, D : in std_logic_vector(3 downto 0) := "1111";

        -- Entradas de los flip-flops D (para controlar la selección de los multiplexores)
        D_in_A, D_in_B, D_in_C, D_in_D : in std_logic;

        -- Reloj para los flip-flops D
        clk : in std_logic;

        -- Salida de 4 bits
        out_value : out std_logic_vector(3 downto 0)
    );
end casillero;

architecture Behavioral of casillero is

    -- Señales internas para las salidas de los multiplexores
    signal mux_A_out, mux_B_out, mux_C_out, mux_D_out : std_logic_vector(3 downto 0);

    -- Señales internas para los flip-flops D (usadas como señales de selección)
    signal sel_A, sel_B, sel_C, sel_D : std_logic;

    -- Señal para almacenar el valor mínimo
    signal min_value : std_logic_vector(3 downto 0);

begin

    -- MUX para la entrada A
    process(A, sel_A)
    begin
        if sel_A = '1' then
            mux_A_out <= "1111";  -- Cuatro unos
        else
            mux_A_out <= A;  -- Entradas reales
        end if;
    end process;

    -- MUX para la entrada B
    process(B, sel_B)
    begin
        if sel_B = '1' then
            mux_B_out <= "1111";
        else
            mux_B_out <= B;
        end if;
    end process;

    -- MUX para la entrada C
    process(C, sel_C)
    begin
        if sel_C = '1' then
            mux_C_out <= "1111";
        else
            mux_C_out <= C;
        end if;
    end process;

    -- MUX para la entrada D
    process(D, sel_D)
    begin
        if sel_D = '1' then
            mux_D_out <= "1111";
        else
            mux_D_out <= D;
        end if;
    end process;

    -- Flip-flop D para controlar la selección de los multiplexores
    process(clk)
    begin
        if rising_edge(clk) then
            sel_A <= D_in_A;
            sel_B <= D_in_B;
            sel_C <= D_in_C;
            sel_D <= D_in_D;
        end if;
    end process;

    -- Comparador para encontrar el valor más pequeño
    process(mux_A_out, mux_B_out, mux_C_out, mux_D_out)
    begin
        min_value <= mux_A_out;
        if mux_B_out < min_value then
            min_value <= mux_B_out;
        end if;
        if mux_C_out < min_value then
            min_value <= mux_C_out;
        end if;
        if mux_D_out < min_value then
            min_value <= mux_D_out;
        end if;
    end process;

    -- Sumar 1 al valor mínimo y asignar a la salida
    out_value <= min_value + 1;

end Behavioral;
