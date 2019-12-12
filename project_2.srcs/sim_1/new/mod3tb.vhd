LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all; 

ENTITY tb_mod3 IS
END tb_mod3;

ARCHITECTURE behavior OF tb_mod3 IS 
 
    -- Component Declaration for the comparator in VHDL
 
    COMPONENT m3counter
    PORT(
         inab : in  std_logic_vector(7 downto 0);
         count : out std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    
   --Inputs
    signal inab : std_logic_vector(7 downto 0); 
   --Outputs
    signal count : std_logic_vector (1 downto 0);
 BEGIN
 
    uut: m3counter PORT MAP (
        inab => inab,
        count => count
      );
   stim_proc: process
    begin
         inab <= X"CA";
      wait for 20 ns;
         inab <= X"AA";
      wait for 20 ns;
         inab <= X"3C";
      wait;
      end process;
 end;