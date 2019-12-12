----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2019 11:03:42
-- Design Name: 
-- Module Name: ANDG - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity ANDG is

    Port (
    A, B    :in STD_LOGIC_VECTOR(7 downto 0);
    C   :out STD_LOGIC_VECTOR(7 downto 0)
    ) ;
end ANDG;
   
architecture Behavioral of ANDG is
   begin
   C <= A and B ;
   end Behavioral;
