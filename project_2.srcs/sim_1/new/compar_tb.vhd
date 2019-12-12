LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all; 

ENTITY tb_comparator_VHDL IS
END tb_comparator_VHDL;
 
ARCHITECTURE behavior OF tb_comparator_VHDL IS 
 
    -- Component Declaration for the comparator in VHDL
 
    COMPONENT comparator_2
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         Cmpin :in std_logic_vector(1 downto 0);
         Cmpout : out std_logic_vector (1 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');
   signal Cmpin : std_logic_vector(1 downto 0);
  --Outputs
   signal Cmpout : std_logic_vector (1 downto 0);
BEGIN
 
 -- Instantiate the comparator in VHDL
   uut: comparator_2 PORT MAP (
          A => A,
          B => B,
          Cmpin => Cmpin,
          Cmpout => Cmpout
        );

   -- Stimulus process
   stim_proc: process
   begin 
  -- create test cases for A_less_B
  for i in 0 to 3 loop 
           A <= std_logic_vector(to_unsigned(i,2));  
           B <= std_logic_vector(to_unsigned(i+1,2));  
           Cmpin <= "00";
           wait for 20 ns; 
      end loop;
  -- create test cases for A_greater_B
   for i in 0 to 3 loop 
           A <= std_logic_vector(to_unsigned(i+1,2));  
           B <= std_logic_vector(to_unsigned(i,2));  
           wait for 20 ns; 
      end loop;
  -- create test cases for A_equal_B
  for i in 0 to 3 loop 
           A <= std_logic_vector(to_unsigned(i,2));  
           B <= std_logic_vector(to_unsigned(i,2));   
           wait for 20 ns; 
      end loop;
      wait;
   end process;

END;