----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2019 15:04:05
-- Design Name: 
-- Module Name: ANDG_tb - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ANDG_tb is
--  Port ( );
end ANDG_tb;

architecture Behavioral of ANDG_tb is

COMPONENT ANDG
    Port (
          A    :in STD_LOGIC_VECTOR(7 downto 0);
          B    :in STD_LOGIC_VECTOR(7 downto 0);
          C   :out STD_LOGIC_VECTOR(7 downto 0)
          ) ;
    END COMPONENT;
    --INPUT
    signal A : std_logic_vector(7 downto 0);
    signal B : std_logic_vector(7 downto 0);
    --OUTPUT
    signal C : std_logic_vector(7 downto 0);
    
  Begin
    uut: ANDG PORT MAP (
           A => A,
           B => B,
           C => C
         );
         
    stim_proc:process
    begin
       A <= "01001111";
       B <= "11001010";
    wait for 50 ns;
       A <= "01100111";
       B <= "11101111";
       wait;
    end process;
end;
