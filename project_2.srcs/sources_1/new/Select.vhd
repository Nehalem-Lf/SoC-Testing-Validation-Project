library IEEE;
use IEEE.std_logic_1164.all;
 entity func_sel is
  port( F: in std_logic_vector (2 downto 0);
		cin,ra,rb,rab: in std_logic_vector(1 downto 0); 
		xout, yout, zout : out std_logic_vector(1 downto 0));
end func_sel;
	

architecture behaviour of func_sel is
 begin	
  process (cin, ra, rb, rab, F) is
  begin
    case F is
    
    -- Addition
    when "000" => xout <= ra; 
    yout <= rb ;
    zout <= cin; 
    
    -- Subtraction    
    when "001" => xout <= ra ; 
    yout <= (not rb) ;
    zout <= cin;
    
    -- Increase  
    when "010" => xout <= ra ;
    yout <= "00" ;
    zout <= "01";
    
    -- Decrease
    when "011" => xout <= ra ;
    yout <= (not rb) ;
    zout <= cin;
    
    -- Logical and  
    when "100" => xout <= "00" ; 
    yout <= "00" ;
    zout <= rab;
    
    -- Logical or   
    when "101" => xout <= ra ;
    yout <= rb ;
    zout <= (not rab) ;
    
   -- Logical xor 
    when "110" => xout <= ra ;
    yout <= rb ;
    zout <= rab ;

when others => null; -- func remains unaltered
end case;
--xout <= tempx;
--yout <= tempy;
--zout <= tempz;
end process;
end architecture behaviour;


