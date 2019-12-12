library IEEE;
use IEEE.std_logic_1164.all;

entity comparator_2 is
    port(
    A,B: in std_logic_vector(1 downto 0);
    Cmpin: in std_logic_vector(1 downto 0);
    Cmpout: out std_logic_vector(1 downto 0));
end comparator_2;

architecture cmp_2 of comparator_2 is
    component cmp_cell is
    port ( 
     a,b: in std_logic;
     Cmpin: in std_logic_vector (1 downto 0);
     Cmpout: out std_logic_vector(1 downto 0));
end component;

signal out0 :std_logic_vector(1 downto 0);
begin
cell1:cmp_cell port map (A(1),B(1),Cmpin,out0);
cell0:cmp_cell port map (A(0),B(0),out0,Cmpout);
end cmp_2;
 
