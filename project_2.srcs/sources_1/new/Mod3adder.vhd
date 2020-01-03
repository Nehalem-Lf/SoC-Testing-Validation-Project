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

entity Mod3adder is
  Port ( x, y, z: in std_logic_vector(1 downto 0);
         rc: out std_logic_vector(1 downto 0)
        );
end Mod3adder;

architecture Behavior of Mod3adder is
signal tmpx, tmpy, tmpz :std_logic_vector(1 downto 0);
signal tmp1, tmp2 :std_logic_vector(1 downto 0);
signal tmp13, tmp23 :std_logic_vector(1 downto 0);
------------last bit for tmp1,2-----------
signal ltmp1,ltmp2 :std_logic_vector(2 downto 0);

    begin
        tmpx <= x;
        tmpy <= y;
        tmpz <= z;
        ltmp1 <= ('0' & tmpx) + ('0' & tmpy);
        tmp1 <= tmpx +tmpy;
        tmp13 <= tmp1 +ltmp1(2);
        ltmp2 <= ('0' & tmp13) + ('0' & tmpz);
        tmp2 <= tmp13 + tmpz;
        tmp23 <= tmp2 +ltmp2(2);
     
     
     process (tmp23) is
     begin
     case tmp23 is
     when "11" => rc <= "00";
     when others => rc <= tmp23;
     end case;
     end process;
        
        

end Behavior;
