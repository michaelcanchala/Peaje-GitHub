library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity rtc is
    port (
        clk : in std_logic;           
        reset : in std_logic;        
        start : in std_logic;         
        stop : in std_logic;          
        clk_div_1seg : buffer std_logic; 
        display_unidades : out std_logic_vector(6 downto 0);  
        display_decenas : out std_logic_vector(6 downto 0)    
    );
end entity rtc;

architecture Behavioral of rtc is
    signal contador : unsigned(7 downto 0) := (others => '0');  -- Contador de tiempo
    signal contador_unidades : unsigned(3 downto 0);  -- Contador de unidades
    signal contador_decenas : unsigned(3 downto 0);    -- Contador de decenas
    signal display_unidades_temp : std_logic_vector(6 downto 0);  -- Display temporal de unidades
    signal display_decenas_temp : std_logic_vector(6 downto 0);    -- Display temporal de decenas
    signal clk_div_1seg_temp : std_logic; -- Reloj de 1 Hz temporal
    signal clk_div_1seg_state : std_logic := '0'; -- Estado del reloj de 1 Hz
begin
    -- Divisor de frecuencia de 50 MHz a 1 Hz
    div_1seg_inst : entity work.div_1seg
        port map (
            clk50mhz => clk,
            clk => clk_div_1seg_temp
        );

    -- Señal de reloj de 1 Hz
    process(clk_div_1seg_temp)
    begin
        if rising_edge(clk_div_1seg_temp) then
            clk_div_1seg_state <= not clk_div_1seg_state;
        end if;
    end process;

    -- Muestreo del reloj de 1 Hz
    clk_div_1seg <= clk_div_1seg_state;

    -- Proceso para el contador
    proceso_contador: process(clk_div_1seg, reset)
    begin
        if reset = '1' then 
            contador <= (others => '0');
        elsif rising_edge(clk_div_1seg) then 
            if start = '1' and stop = '0' then 
                contador <= contador + 1; 
            end if;
        end if;
    end process proceso_contador;

    -- Proceso para la conversión BCD
    proceso_bcd: process(contador)
    begin
        case to_integer(contador mod 10) is
            when 0 => display_unidades_temp <= "0000001"; 
            when 1 => display_unidades_temp <= "1001111"; 
            when 2 => display_unidades_temp <= "0010010";
            when 3 => display_unidades_temp <= "0000110"; 
            when 4 => display_unidades_temp <= "1001100"; 
            when 5 => display_unidades_temp <= "0100100"; 
            when 6 => display_unidades_temp <= "0100000"; 
            when 7 => display_unidades_temp <= "0001111"; 
            when 8 => display_unidades_temp <= "0000000"; 
            when 9 => display_unidades_temp <= "0000100"; 
            when others => display_unidades_temp <= "1111111"; 
        end case;
        
        case to_integer(contador/10) is
            when 0 => display_decenas_temp <= "0000001"; 
            when 1 => display_decenas_temp <= "1001111"; 
            when 2 => display_decenas_temp <= "0010010";
            when 3 => display_decenas_temp <= "0000110"; 
            when 4 => display_decenas_temp <= "1001100"; 
            when 5 => display_decenas_temp <= "0100100"; 
            when 6 => display_decenas_temp <= "0100000"; 
            when 7 => display_decenas_temp <= "0001111"; 
            when 8 => display_decenas_temp <= "0000000"; 
            when 9 => display_decenas_temp <= "0000100"; 
            when others => display_decenas_temp <= "1111111"; 
        end case;
    end process proceso_bcd;

    -- Proceso para actualizar los contadores de unidades y decenas
    proceso_cuenta: process(clk_div_1seg, reset)
    begin
        if reset = '1' then 
            contador_unidades <= (others => '0');
            contador_decenas <= (others => '0');
        elsif rising_edge(clk_div_1seg) then 
            if start = '1' and stop = '0' then 
                contador_unidades <= contador(3 downto 0);
                contador_decenas <= contador(7 downto 4);
            end if;
        end if;
    end process proceso_cuenta;

    -- Asignación de los displays de unidades y decenas
    display_unidades <= std_logic_vector(contador_unidades & "000") when stop = '1' else display_unidades_temp;
    display_decenas <= std_logic_vector(contador_decenas & "000") when stop = '1' else display_decenas_temp;

end Behavioral;