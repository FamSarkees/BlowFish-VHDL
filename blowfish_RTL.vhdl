--
-- VHDL Architecture Blowfish_lib.blowfish.RTL
--
-- Created:
--          by - famsa.UNKNOWN (DESKTOP-ILUNB5J)
--          at - 11:55:12 06/10/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
--
ENTITY blowfish IS
  port(  x_in: in std_logic_vector(63 downto 0);
         keyer: in  std_logic_vector(31 downto 0);
         x_out: out std_logic_vector(63 downto 0)
  );
  
END ENTITY blowfish;


ARCHITECTURE RTL OF blowfish IS


component f port(f_data_i:in std_logic_vector(31 downto 0);
                   f_data_o:out std_logic_vector(31 downto 0)
     );
  end component;
  
    signal x_left,x_right,right17,left18: std_logic_vector(31 downto 0);
    signal f_out: std_logic_vector(31 downto 0);
    
    type parrayx is array (17 downto 0) of std_logic_vector(31 downto 0);      
    signal parray:parrayx;
    
   constant key:std_logic_vector(1 to 32):=(others=>'0'); 
      
BEGIN
  
  f1:f port map(
         f_data_i => x_left,
         f_data_o => f_out
      );
      
      
    parray(0)  <= x"243f6a88" XOR key ; 
    parray(1)  <= x"85a308d3" XOR key ; 
    parray(2)  <= x"13198a2e" XOR key ; 
    parray(3)  <= x"03707344" XOR key ;
    parray(4)  <= x"a4093822" XOR key ; 
    parray(5)  <= x"299f31d0" XOR key ; 
    parray(6)  <= x"082efa98" XOR key ; 
    parray(7)  <= x"ec4e6c89" XOR key ; 
    parray(8)  <= x"452821e6" XOR key ; 
    parray(9)  <= x"38d01377" XOR key ; 
    parray(10) <= x"be5466cf" XOR key ; 
    parray(11) <= x"34e90c6c" XOR key ; 
    parray(12) <= x"c0ac29b7" XOR key ; 
    parray(13) <= x"c97c50dd" XOR key ; 
    parray(14) <= x"3f84d5b5" XOR key ; 
    parray(15) <= x"b5470917" XOR key ; 
    parray(16) <= x"9216d5d9" XOR key ; 
    parray(17) <= x"8979fb1b" XOR key ;
    
    x_left <= x_in(63 downto 32); 
    x_right <= x_in(31 downto 0);  
process(x_left,x_right,f_out,parray,left18,right17)
  variable left: std_logic_vector(31 downto 0);
  variable right: std_logic_vector(31 downto 0);
  variable tempLeft: std_logic_vector(31 downto 0);
  variable tempright: std_logic_vector(31 downto 0);
  begin
            for i in 0 to 15 loop 
             left := x_left XOR std_logic_vector(Parray(i));
             right := x_right XOR f_out;
              
             tempLeft := left;
             tempright:= right;
             
             left:=tempright  ;
             right:=templeft;
            End loop;
            left:=templeft;
            right:=tempright;                     
                 right17<=tempright xor parray(16);
                 left18 <=templeft  xor parray(17);
    end process;
                 x_out<=left18 & right17;
              
END ARCHITECTURE RTL;
