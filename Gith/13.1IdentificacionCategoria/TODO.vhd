library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TODO is
    Port (
        -- Entradas y salidas del componente TODO
        clk : in std_logic;                     
        reset : in std_logic;                   
        start : in std_logic;                   
        stop : in std_logic;                    
        cambio_color : in std_logic;            
        tag_id: in std_logic_vector(4 downto 0);
        categoria: out integer range 1 to 4;
        semaforo_verde : out STD_LOGIC;     
        semaforo_rojo : out STD_LOGIC;      
        barrera_abierta : out STD_LOGIC;    
        barrera_cerrada : out STD_LOGIC;
        display_unidades : out std_logic_vector(6 downto 0);  
        display_decenas : out std_logic_vector(6 downto 0);  
        display : out std_logic_vector(6 downto 0)  
    );
end TODO;

architecture Behavioral of TODO is
    -- Declaración de las señales internas
    signal clk_div_1seg : std_logic;
    signal contador_unidades : unsigned(3 downto 0);
    signal contador_decenas : unsigned(3 downto 0);
    signal categoria_interna : integer range 1 to 4;
    signal contador_bcd : std_logic_vector(6 downto 0);

begin
    -- Instanciación de los componentes internos
    semaforo_inst : entity work.semaforo01
        port map (
            clk => clk,
            reset => reset,
            cambio_color => cambio_color,
            semaforo_verde => semaforo_verde,
            semaforo_rojo => semaforo_rojo,
            barrera_abierta => barrera_abierta,
            barrera_cerrada => barrera_cerrada
        );

    identificacion_inst : entity work.IdentificacionCategoria
        port map (
            tag_id => tag_id,
            categoria => categoria_interna
        );

    contador_inst : entity work.Contador_Vehiculos
        port map (
            clk => clk,
            reset => reset,
            display => display
        );

    div_1seg_inst : entity work.div_1seg
        port map (
            clk50mhz => clk,
            clk => clk_div_1seg
        );

    rtc_inst : entity work.rtc
        port map (
            clk => clk,
            reset => reset,
            start => start,
            stop => stop,
            clk_div_1seg => clk_div_1seg,
            display_unidades => display_unidades,
            display_decenas => display_decenas
        );

    -- Proceso para asignar la categoría interna al resultado
    process (categoria_interna)
    begin
        case categoria_interna is
            when 1 =>
                categoria <= 1;
            when 2 =>
                categoria <= 2;
            when 3 =>
                categoria <= 3;
            when 4 =>
                categoria <= 4;
            when others =>
                categoria <= 1; -- Valor por defecto
        end case;
    end process;

    -- Proceso para asignar el display BCD al display general
    process (clk_div_1seg)
    begin
        if rising_edge(clk_div_1seg) then
            display <= display_decenas & display_unidades;
        end if;
    end process;

end Behavioral;
