library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mod3adder_tb is
end Mod3adder_tb;

architecture Behavioral of Mod3adder_tb is
    component Mod3adder
      Port ( x, y, z: in std_logic_vector(1 downto 0);
           rc: out std_logic_vector(1 downto 0)
           );
    End component;
signal x, y, z: std_logic_vector(1 downto 0);
signal rc: std_logic_vector(1 downto 0);
    
    begin
    
    uut: Mod3adder Port map (
        x => x,
        y => y,
        z => z,
        rc => rc
        );
    stim_proc: process
     begin 
       -- create test cases
     for i in 0 to 3 loop 
              x <= std_logic_vector(to_unsigned(i+2,2));  
              y <= std_logic_vector(to_unsigned(i+1,2)); 
              z <= std_logic_vector(to_unsigned(i,2));              
              wait for 20 ns; 
         end loop;
     for i in 0 to 3 loop 
                  x <= std_logic_vector(to_unsigned(i+2,2));  
                  y <= std_logic_vector(to_unsigned(i,2)); 
                  z <= std_logic_vector(to_unsigned(i+1,2));              
              wait for 20 ns; 
          end loop;
     for i in 0 to 3 loop 
                  x <= std_logic_vector(to_unsigned(i,2));  
                  y <= std_logic_vector(to_unsigned(i,2)); 
                  z <= std_logic_vector(to_unsigned(i,2));              
              wait for 20 ns; 
          end loop;
        --x <= "01";
       -- y <= "00";
        --z <= "10";
        
     --wait for 20 ns;
        --x <= "01";
        --y <= "01";
        --z <= "10";
     wait;
     end process;
    end ;
