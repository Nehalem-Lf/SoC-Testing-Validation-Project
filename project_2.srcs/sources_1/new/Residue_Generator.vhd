library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity residue_gene is 
    port( A, B : in std_logic_vector(7 downto 0);
          RA, RB, RAB : out std_logic_vector(1 downto 0)
          );
          
end residue_gene;

architecture behavior of residue_gene is

signal tmpA, tmpB, tmpAB: std_logic_vector(7 downto 0);
signal tmpRA, tmpRB, tmpRAB: std_logic_vector(1 downto 0);

          
      begin
      tmpAB <= A and B;
      tmpA <= A;
      tmpB <= B;
      RAB <= std_logic_vector(to_unsigned(((to_integer (unsigned(tmpAB)))mod 3),tmpRAB'length));
      RA <= std_logic_vector(to_unsigned(((to_integer (unsigned(tmpA)))mod 3),tmpRA'length));
      RB <= std_logic_vector(to_unsigned(((to_integer (unsigned(tmpB)))mod 3),tmpRB'length));
      end;    