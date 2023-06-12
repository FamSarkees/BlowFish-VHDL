--
-- VHDL Architecture Blowfish_lib.f.RTL_f
--
-- Created:
--          by - famsa.UNKNOWN (DESKTOP-ILUNB5J)
--          at - 13:30:29 06/10/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY f IS
  port( f_data_i:in std_logic_vector(31 downto 0);
        f_data_o:out std_logic_vector(31 downto 0)
    );
END ENTITY f;

--
ARCHITECTURE RTL_f OF f IS

    component sbox1
         port(
           sbox1_data_i:in std_logic_vector(7 downto 0);
           sbox1_data_o:out std_logic_vector(31 downto 0)
        );
  end component;
  
  component sbox2
       port(
         sbox2_data_i:in std_logic_vector(7 downto 0);
         sbox2_data_o:out std_logic_vector(31 downto 0)
      );
  end component;

  component sbox3
     port(
       sbox3_data_i:in std_logic_vector(7 downto 0);
       sbox3_data_o:out std_logic_vector(31 downto 0)
    );
  end component;

  component sbox4
     port(
       sbox4_data_i:in std_logic_vector(7 downto 0);
       sbox4_data_o:out std_logic_vector(31 downto 0)
    );
  end component;
    
      signal s1_data_o,s2_data_o,s3_data_o,s4_data_o: std_logic_vector(31 downto 0);
BEGIN
  
    s1: sbox1 port map(
          sbox1_data_i => f_data_i(31 downto 24),
          sbox1_data_o => s1_data_o
       );
    s2: sbox2 port map(
       sbox2_data_i => f_data_i(23 downto 16),
       sbox2_data_o => s2_data_o
       );
   s3: sbox3 port map(
      sbox3_data_i => f_data_i(15 downto 8),
      sbox3_data_o => s3_data_o
      );
   s4: sbox4 port map(
      sbox4_data_i => f_data_i(7 downto 0),
      sbox4_data_o => s4_data_o
    ); 
     
       f_data_o <=std_logic_vector( (((s1_data_o) OR (s2_data_o)) XOR (s3_data_o)) OR (s4_data_o)  );               

END ARCHITECTURE RTL_f;

