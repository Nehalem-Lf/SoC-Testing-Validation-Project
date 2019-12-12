library IEEE;
use IEEE.std_logic_1164.all;


entity cmp_cell is
    port ( 
     a,b: in std_logic ;
     Cmpin: in std_logic_vector (1 downto 0);
     Cmpout: out std_logic_vector (1 downto 0));
end cmp_cell;


architecture cmp_cell of cmp_cell is
    begin
    process (Cmpin,a,b) is
     begin
      if Cmpin = "10" then Cmpout <= "10";
      elsif Cmpin = "01" then Cmpout <= "01";
      elsif Cmpin = "00" and a=b then Cmpout <= "00";
      elsif Cmpin = "00" and a>b then Cmpout <= "01";
      elsif Cmpin = "00" and a<b then Cmpout <= "10";
      end if;
    end process;
end cmp_cell;



