library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity m3counter is 
    port(inab: in std_logic_vector(7 downto 0);          
		 count : out std_logic_vector(1 downto 0)); 
		-- internal_value3 : out integer
		 --);
end m3counter; 



architecture behavior_count of  m3counter is
--RAB part--
signal tmp1: std_logic_vector(7 downto 0);
----divied to 4x2bit
signal tmpab2,tmpab3,tmpab4,tmpab5 : std_logic_vector(1 downto 0);
------------3bit for catch carry out------------
signal tmpin1,tmpin2,ttmpin3 :std_logic_vector(2 downto 0);

signal ttmp2,ttmp3,ttmp4,ttmp21,ttmp31,ttmp41: std_logic_vector(1 downto 0);
signal value2,value3,value4: integer;


    begin 
  ----divied to 4x2bit  
    tmp1 <= inab(7 downto 0);
    tmpab2 <= tmp1(1 downto 0);
    tmpab3 <= tmp1(3 downto 2);
    tmpab4 <= tmp1(5 downto 4);
    tmpab5 <= tmp1(7 downto 6);
    --------first step 2bit +2bit & 2bit +2bit---------
        ttmp2 <= tmpab2 + tmpab3 ;
        ttmp3 <= tmpab4 + tmpab5 ;
        tmpin1 <= ('0' & tmpab2) + ('0' & tmpab3);
        tmpin2 <= ('0' & tmpab4) + ('0' & tmpab5);
        ---- second step 2bit output + 1bit carryout--------------
        ttmp21 <= tmpin1(2) + ttmp2;
        ttmp31 <= tmpin2(2) + ttmp3;
        -----------third step------------ 
        ttmp4 <= ttmp21 + ttmp31;
        ttmpin3 <= ('0' & ttmp21) + ('0' & ttmp31);
        ttmp41 <= ttmpin3(2) + ttmp4;
        
        --value2 <= (to_integer (unsigned(ttmp2)))mod 3;
        --value3 <= (to_integer (unsigned(ttmp3)))mod 3;
        --value4 <= (value2 + value3)mod 3;
        --count <= std_logic_vector(to_unsigned(value4,count'length));
      -- process(ttmp41)
       --begin
       --if(ttmp41="1") then
       --count<= "0";
       --else
       count<= ttmp41;
       --end


    
end behavior_count ;

