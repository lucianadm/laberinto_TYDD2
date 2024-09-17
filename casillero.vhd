library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity casillero is
    Port (
        -- Entradas de 4 bits cada una (con valor predeterminado "1111" cuando no están conectadas)
        A, B, C, D : in std_logic_vector(3 downto 0);

        -- Entradas de los flip-flops D (para controlar la selección de los multiplexores)
        D_in_A, D_in_B, D_in_C, D_in_D : in std_logic :='0';

        -- Reloj para los flip-flops D
        clk : in std_logic;

        -- Señal de reset
        reset : in std_logic;

        -- Salida de 4 bits
        out_value : out std_logic_vector(3 downto 0)
    );
end casillero;

architecture Behavioral of casillero is

    -- Señales internas para las salidas de los multiplexores
    signal mux_A_out, mux_B_out, mux_C_out, mux_D_out,inA,inB,inC,inD : unsigned(3 downto 0);

    -- Señales internas para los flip-flops D (usadas como señales de selección)
    signal sel_A, sel_B, sel_C, sel_D : std_logic;

    -- Señal para almacenar el valor mínimo
    signal min_value : unsigned(3 downto 0);

begin

    process(A, reset)
    begin
        if reset = '0' then
            inA <= unsigned(A);  -- Selecciona la entrada A si sel es '0'
        else
            inA <= "1100";  -- Selecciona la entrada B si sel es '1'
        end if;
    end process;
	 
    process(B, reset)
    begin
        if reset = '0' then
            inB <= unsigned(B);  -- Selecciona la entrada A si sel es '0'
        else
            inB <= "1100";  -- Selecciona la entrada B si sel es '1'
        end if;
    end process;
	 
    process(C, reset)
    begin
        if reset = '0' then
            inC <= unsigned(C);   -- Selecciona la entrada A si sel es '0'
        else
            inC <= "1100";  -- Selecciona la entrada B si sel es '1'
        end if;
    end process;
	 
    process(D, reset)
    begin
        if reset = '0' then
            inD <=unsigned(D);   -- Selecciona la entrada A si sel es '0'
        else
            inD <= "1100";  -- Selecciona la entrada B si sel es '1'
        end if;
    end process;	 
	 
    -- MUX para la entrada A----------------
    process(inA, sel_A)
    begin
        if sel_A = '1' then
            mux_A_out <= "1100";  -- Cuatro unos
        else
            mux_A_out <=  inA; -- Entradas reales
        end if;
    end process;

    -- MUX para la entrada B
    process(inB, sel_B)
    begin
        if sel_B = '1' then
            mux_B_out <= "1100";
        else
            mux_B_out <=  inB; 
        end if;
    end process;

    -- MUX para la entrada C
    process(inC, sel_C)
    begin
        if sel_C = '1' then
            mux_C_out <= "1100";
        else
            mux_C_out <=  inC; 
        end if;
    end process;

    -- MUX para la entrada D
    process(inD, sel_D)
    begin
        if sel_D = '1' then
            mux_D_out <= "1100";
        else
            mux_D_out <= inD; 
        end if;
    end process;
	--clk_reset<=clk and reset;
    -- Flip-flop D para controlar la selección de los multiplexores con reset asíncrono
    process(clk, reset)
    begin
        if reset = '1' then
            -- Inicializa todos los flip-flops a '0' cuando reset está activo
            sel_A <= '0';
            sel_B <= '0';
            sel_C <= '0';
            sel_D <= '0';
        elsif falling_edge(clk) then
            -- Actualiza los flip-flops en el borde de subida del reloj
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
   -- out_value <= std_logic_vector(min_value + to_unsigned(1, 4));
--
    out_value <= std_logic_vector(min_value);
end Behavioral;
