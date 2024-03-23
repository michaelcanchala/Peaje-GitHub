library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity semaforo01 is
    Port (
        clk : in STD_LOGIC;                
        reset : in STD_LOGIC;               
        cambio_color : in STD_LOGIC;        
        semaforo_verde : out STD_LOGIC;     
        semaforo_rojo : out STD_LOGIC;      
        barrera_abierta : out STD_LOGIC;    
        barrera_cerrada : out STD_LOGIC     
    );
end semaforo01;

architecture Behavioral of semaforo01 is

    
    type estados_semaforo is (ROJO, VERDE);
    signal estado_actual_semaforo : estados_semaforo := ROJO;

    
    type estados_barrera is (CERRADA, ABIERTA);
    signal estado_actual_barrera : estados_barrera := CERRADA;

begin

   
    process(clk, reset, cambio_color)
    begin
        if reset = '1' then
            estado_actual_semaforo <= ROJO;   
            estado_actual_barrera <= CERRADA; 
        elsif rising_edge(clk) then
            
            if cambio_color = '1' then
                estado_actual_semaforo <= VERDE;
            elsif cambio_color = '0' then
                estado_actual_semaforo <= ROJO;
            end if;

          
            case estado_actual_semaforo is
                when VERDE =>
                    semaforo_verde <= '1';      
                    semaforo_rojo <= '0';       
                    barrera_abierta <= '1';     
                    barrera_cerrada <= '0';     
                when ROJO =>
                    semaforo_verde <= '0';      
                    semaforo_rojo <= '1';    
                    barrera_abierta <= '0';     
                    barrera_cerrada <= '1';     
            end case;

            
            if estado_actual_semaforo = ROJO then
                estado_actual_barrera <= CERRADA; 
            elsif estado_actual_semaforo = VERDE then
                estado_actual_barrera <= ABIERTA; 
					 end if;
        end if;
    end process;

end Behavioral;

