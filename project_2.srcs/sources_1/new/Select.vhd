library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SelCir is
    Port ( 
           RA, RB, RAB : in STD_LOGIC_VECTOR(1 downto 0);
           x, y, z : out STD_LOGIC_VECTOR(1 downto 0);
           F : in STD_LOGIC_VECTOR(2 downto 0);
           cin : in STD_LOGIC_VECTOR(1 downto 0)
           );
end SelCir;


architecture Behavioral of SelCir is
signal tmpx, tmpy, tmpz : std_logic_vector(1 downto 0);
--signal F : std_logic_vector (2 downto 0);
begin
process(F, RA, RB, RAB)
begin
    
   if F = "000" then
   tmpx <= RA ;
   tmpy <= RB ;
   tmpz <= cin;  
   else if F = "001" then
   tmpx <= RA ;
   tmpy <= (not RB) ;
   tmpz <= cin;
   else
   tmpx <= "000";
   tmpy <= "000";
   tmpz <= "000";
   end if;
end process;
  -- case (F) is
  -- when "000" => -- Addition
    --  tmpx <= RA ;
    --  tmpy <= RB ;
    --  tmpz <= cin;   
   --when "001" => -- Subtraction
     -- tmpx <= RA ;
     -- tmpy <= (not RB) ;
     -- tmpz <= cin;
   --when "010" => -- Increase
     -- tmpx <= RA ;
      --tmpy <= "00" ;
      --tmpz <= "01";
--when "011" => -- Decrease
     -- tmpx <= RA ;
      --tmpy <= (not RB) ;
      --tmpz <= cin;
   --when "100" => -- Logical and 
     -- tmpx <= "00" ;
      --tmpy <= "00" ;
     -- -tmpz <= RAB;
   --when "101" => -- Logical or
      --tmpx <= RA ;
      --tmpy <= RB ;
      --tmpz <= (not RAB) ;
 --  when "110" => -- Logical xor 
 --    -- tmpx <= RA ;
     -- tmpy <= RB ;
     -- tmpz <= RAB ;
   --when others => 
     -- tmpx <= "00";
     -- tmpy <= "00";
     -- tmpz <= "00";
  -- end case ;
  x <= tmpx;
  y <= tmpy;
  z <= tmpz;
end Behavioral;
