library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--use ieee.NUMERIC_STD.all;

entity select_tb is
end select_tb;

architecture Behavioral of select_tb is

    Component func_sel
    Port( 
            cin, ra, rb, rab : in STD_LOGIC_VECTOR(1 downto 0);
            xout, yout, zout : out STD_LOGIC_VECTOR(1 downto 0);
            F : in STD_LOGIC_VECTOR(2 downto 0)
   --         cin : in STD_LOGIC_VECTOR(1 downto 0)
         );
    End component;
    
    signal ra, rb, rab, cin : std_logic_vector(1 downto 0);
    signal F : std_logic_vector(2 downto 0);
    signal xout, yout, zout : STD_LOGIC_VECTOR(1 downto 0);
    
    begin
    uut: func_sel port map (
    --input
        ra => ra,
        rb => rb,
        rab => rab,
        F => F,
        cin => cin,
    --output
        xout => xout,
        yout => yout,
        zout => zout
        );
        
     stim_proc: process
     begin
     ra <= "01";
     rb <= "11";
     rab <= "10";
     cin <= "01";
     F <= "000";
     wait for 100 ns;
      for i in 0 to 6 loop 
        F <= F + "1";
      wait for 100 ns;
       end loop;
     end process;
end;
