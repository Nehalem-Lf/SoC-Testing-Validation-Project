LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.NUMERIC_STD.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity select_tb is
end select_tb;

architecture Behavioral of select_tb is
    Component SelCir
    Port( 
            RA, RB, RAB : in STD_LOGIC_VECTOR(1 downto 0);
            x, y, z : out STD_LOGIC_VECTOR(1 downto 0);
            F : in STD_LOGIC_VECTOR(2 downto 0);
            cin : in STD_LOGIC_VECTOR(1 downto 0)
         );
    End component;
    signal RA, RB, RAB : std_logic_vector(1 downto 0);
    signal F : std_logic_vector(2 downto 0);
    signal x, y, z : STD_LOGIC_VECTOR(1 downto 0);
    signal cin : std_logic_vector(1 downto 0);
    --signal i:integer;    
begin
    uut: SelCir 
    port map (
    --input
        RA => RA,
        RB => RB,
        RAB => RAB,
        F => F,
        cin => cin,
     --output
        x => x,
        y => y,
        z => z
        );
        
     stim_proc: process
     begin
     tmpA <= "01";
     tmpB <= "11";
     tmpC <= "10";
     cin <= "00";
     F <= "000";
    wait for 50 ns;
    
   -- for i in 0 to 6 loop
   -- F <= F + "1";
   -- wait for 50 ns;
   -- end loop;
    -- tmpA <= "10";
    -- tmpB <= "10";
   --  tmpC <= "01";
   -- wait;
     end process;
end Behavioral;
