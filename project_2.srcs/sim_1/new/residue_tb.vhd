----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2019 11:54:18
-- Design Name: 
-- Module Name: residue_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.NUMERIC_STD.all;

entity residue_tb is
--  Port ( );
end residue_tb;

architecture Behavioral of residue_tb is
    component residue_gene
    port( A, B : in std_logic_vector(7 downto 0);
          RA, RB, RAB : out std_logic_vector(1 downto 0)
          );
    end component;
signal A,B :std_logic_vector(7 downto 0);
signal RA, RAB, RB: std_logic_vector(1 downto 0);

    begin
    
    uut: residue_gene Port map(
        A => A,
        B => B,
        RA => RA,
        RAB => RAB,
        RB => RB
    );
    
    stim_proc: process
        begin
            A <= X"35";
            B <= X"3A";
        wait for 20 ns;
            A <= X"17";
            B <= X"DA";
        wait for 20 ns;
            A <= X"BF";
            B <= X"DE";
        wait;
        end process;

end Behavioral;
