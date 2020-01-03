library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity residuenoand is 
    port( A : in std_logic_vector(7 downto 0);
          RA : out std_logic_vector(1 downto 0)
          );
          
end residuenoand;

architecture behavior of residuenoand is

signal tmpA : std_logic_vector(7 downto 0);
signal tmpRA : std_logic_vector(1 downto 0);

          
      begin
      tmpA <= A;

      RA <= std_logic_vector(to_unsigned(((to_integer (unsigned(tmpA)))mod 3),tmpRA'length));
      end;    