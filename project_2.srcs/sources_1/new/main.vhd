library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity main is
  Port (
  A, B :in std_logic_vector(7 downto 0);
  cin : in std_logic_vector(1 downto 0);
  F :in std_logic_vector(2 downto 0);
  error :out std_logic_vector(1 downto 0)
   );
end main;

architecture Behavioral of main is
----------------------ALU---------------
 component ALU is
  Port (
    A, B     : in  STD_LOGIC_VECTOR(7 downto 0);  -- 2 inputs 8-bit
    ALU_Sel  : in  STD_LOGIC_VECTOR(2 downto 0);  -- 1 input 4-bit for selecting function
    ALU_Out   : out  STD_LOGIC_VECTOR(7 downto 0); -- 1 output 8-bit 
    Carryout : out std_logic        -- Carryout flag
    );
  end component;
 ------------Residue generator-------------- 
  component residuenoand is
   port( 
    A : in std_logic_vector(7 downto 0);
    RA : out std_logic_vector(1 downto 0)
    );
  end component;
 --------------AND gate and Residue generator-------------- 
  component residue_gene is
   port( 
    A, B : in std_logic_vector(7 downto 0);
    RA, RB, RAB : out std_logic_vector(1 downto 0)
    );
  end component;
  ----------------Selection circuit----------------------
   component func_sel is
    port( 
     F: in std_logic_vector (2 downto 0);
     cin,ra,rb,rab: in std_logic_vector(1 downto 0); 
     xout, yout, zout : out std_logic_vector(1 downto 0)
     );
   end component;
  ------------------Mod3 adder--------------------
   component Mod3adder is
     Port( 
      x, y, z: in std_logic_vector(1 downto 0);
      rc: out std_logic_vector(1 downto 0)
      );
   end component;
 --------------------Comparator------------------------
   component comparator_2 is
      Port ( 
       x, y, z: in std_logic_vector(1 downto 0);
       rc: out std_logic_vector(1 downto 0)
       );
    end component; 
 signal AtoR :std_logic_vector(7 downto 0);
 signal RtoSa, RtoSb, RtoSab :std_logic_vector(1 downto 0);
 signal StoMx, StoMy, StoMz :std_logic_vector(1 downto 0);
 signal MtoC :std_logic_vector(1 downto 0);
 signal RtoC :std_logic_vector(1 downto 0);
 
begin


end Behavioral;
