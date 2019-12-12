library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.NUMERIC_STD.all;


entity mod3_tb is
--  Port ( );
end mod3_tb;

architecture Behavioral of mod3_tb is

COMPONENT m3counter
    Port (
          in1    :in STD_LOGIC_VECTOR(1 downto 0);
          count   :out integer
          ) ;
    END COMPONENT;
    --INPUT
    signal in1 : std_logic_vector(1 downto 0);
    --OUTPUT
    signal count : integer
    
  Begin
    uut: m3counter PORT MAP (
           in1 => in1,
           count => count
         );
         
    stim_proc:process
    begin
       in1 <= "11";
    wait for 50 ns;
       in1 <= "01";
       wait;
    end process;
end;
