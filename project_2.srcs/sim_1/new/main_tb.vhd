library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity main_tb is
--  Port ( );
end main_tb;

architecture Behavioral of main_tb is

    component main
       Port (
       A, B :in std_logic_vector(7 downto 0);
       cin : in std_logic_vector(1 downto 0);
       F :in std_logic_vector(2 downto 0);
       error :out std_logic_vector(1 downto 0)
      );
    end component;
------------------Inputs--------------    
 signal A : std_logic_vector(7 downto 0) := (others => '0');
 signal B : std_logic_vector(7 downto 0) := (others => '0');
 signal F : std_logic_vector(2 downto 0) := (others => '0');
 signal cin :std_logic_vector(1 downto 0) := (others => '0');
 signal i:integer;
------------------Outputs--------------------
 signal error : std_logic_vector(1 downto 0);     
-----------------UUT-------------------
begin

    uut: main port map (
        A => A,
        B => B,
        cin => cin,
        F => F,
        error => error
       );
      
    stim_proc: process
    begin
        
        A <= "10101110";
        B <= "00010111";
        cin <= "00";
       -- F <= "011";
    wait for 100 ns;
    
    for i in 0 to 6 loop
     F <= F + "1";
     wait for 100 ns;
    end loop;
    wait;
    end process;
end;
