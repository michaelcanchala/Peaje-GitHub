library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contador_Vehiculos is
    port (
        clk : in std_logic;        -- Reloj del sistema
        reset : in std_logic;      -- Señal de reinicio del contador
        display : out std_logic_vector(6 downto 0) -- Salida al display de siete segmentos (BCD)
    );
end entity Contador_Vehiculos;

architecture Behavioral of Contador_Vehiculos is
    signal contador : unsigned(3 downto 0) := (others => '0'); 
    signal contador_bcd : std_logic_vector(6 downto 0); 
begin
   
    proceso_contador: process(clk, reset)
    begin
        if reset = '1' then 
            contador <= (others => '0');
        elsif rising_edge(clk) then 
            contador <= contador + 1; 
        end if;
    end process proceso_contador;

    
    proceso_bcd: process(contador)
    begin
        case to_integer(contador) is
            when 0 => contador_bcd <= "0000001"; 
            when 1 => contador_bcd <= "1001111"; 
            when 2 => contador_bcd <= "0010010";
            when 3 => contador_bcd <= "0000110"; 
            when 4 => contador_bcd <= "1001100"; 
            when 5 => contador_bcd <= "0100100"; 
            when 6 => contador_bcd <= "0100000"; 
            when 7 => contador_bcd <= "0001111"; 
            when 8 => contador_bcd <= "0000000"; 
            when 9 => contador_bcd <= "0000100"; 
            when others => contador_bcd <= "1111111"; 
        end case;
    end process proceso_bcd;

    
    display <= contador_bcd;

end architecture Behavioral;