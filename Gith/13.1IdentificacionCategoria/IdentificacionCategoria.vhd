library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IdentificacionCategoria is
    port (
        tag_id: in std_logic_vector(4 downto 0); -- Identificación del vehículo
        categoria: out integer range 1 to 4 -- Categoría del vehículo
    );
end entity IdentificacionCategoria;

architecture rtl of IdentificacionCategoria is
    
    type vehiculo_categoria is (CATI, CATII, CATIII);

begin
   
    process(tag_id)
    begin
        
        case tag_id(4 downto 3) is
            when "00" =>
                categoria <= 1; 
            when "01" =>
                categoria <= 2; 
            when "10" =>
                categoria <= 3; 
            when others =>
                categoria <= 4;  
        end case;
    end process;

end rtl;
