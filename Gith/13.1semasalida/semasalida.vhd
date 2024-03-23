library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity semasalida is
    Port ( LED_Verde : out STD_LOGIC;
           LED_Rojo : out STD_LOGIC;
           Boton : in STD_LOGIC );
end semasalida;

architecture Behavioral of semasalida is
    type estado_semaforo is (verde, rojo);
    signal estado_actual, estado_siguiente : estado_semaforo := verde;  -- Inicializamos el estado actual como verde
begin
    -- Proceso para cambiar los estados del semáforo
    process (Boton)
    begin
        if rising_edge(Boton) then  -- Detectamos el flanco de subida del botón
            -- Cambiar al próximo estado cuando se presiona el botón
            case estado_actual is
                when verde =>
                    estado_siguiente <= rojo;
                when rojo =>
                    estado_siguiente <= verde;
            end case;
        end if;
    end process;

    -- Proceso para controlar los LEDs según el estado actual del semáforo
    process (estado_actual)
    begin
        case estado_actual is
            when verde =>
                LED_Verde <= '1';
                LED_Rojo <= '0';
            when rojo =>
                LED_Verde <= '0';
                LED_Rojo <= '1';
        end case;
    end process;

    -- Actualizar el estado actual del semáforo
    process (estado_siguiente)
    begin
        estado_actual <= estado_siguiente;
    end process;

end Behavioral;

