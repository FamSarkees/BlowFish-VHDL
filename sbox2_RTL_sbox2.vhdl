--
-- VHDL Architecture Blowfish_lib.sbox2.RTL_sbox2
--
-- Created:
--          by - famsa.UNKNOWN (DESKTOP-ILUNB5J)
--          at - 13:07:16 06/10/2023
--
-- using Mentor Graphics HDL Designer(TM) 2007.1 (Build 19)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--USE ieee.std_logic_arith.all;

ENTITY sbox2 IS
  port(sbox2_data_i:in std_logic_vector(7 downto 0);
       sbox2_data_o:out std_logic_vector(31 downto 0)
  
  );
END ENTITY sbox2;

--
ARCHITECTURE RTL_sbox2 OF sbox2 IS
        type sbox2_t is array (255 downto 0) of std_logic_vector(31 downto 0);
        signal sbox2:sbox2_t;
BEGIN
        sbox2(16#00#) <= x"4b7a70e9";
        sbox2(16#01#) <= x"b5b32944";
        sbox2(16#02#) <= x"db75092e";
        sbox2(16#03#) <= x"c4192623";
        sbox2(16#04#) <= x"ad6ea6b0";
        sbox2(16#05#) <= x"49a7df7d";
        sbox2(16#06#) <= x"9cee60b8";
        sbox2(16#07#) <= x"8fedb266";
        sbox2(16#08#) <= x"ecaa8c71";
        sbox2(16#09#) <= x"699a17ff";
        sbox2(16#0a#) <= x"5664526c";
        sbox2(16#0b#) <= x"c2b19ee1";
        sbox2(16#0c#) <= x"193602a5";
        sbox2(16#0d#) <= x"75094c29";
        sbox2(16#0e#) <= x"a0591340";
        sbox2(16#0f#) <= x"e4183a3e";
        sbox2(16#10#) <= x"3f54989a";
        sbox2(16#11#) <= x"5b429d65";
        sbox2(16#12#) <= x"6b8fe4d6";
        sbox2(16#13#) <= x"99f73fd6";
        sbox2(16#14#) <= x"a1d29c07";
        sbox2(16#15#) <= x"efe830f5";
        sbox2(16#16#) <= x"4d2d38e6";
        sbox2(16#17#) <= x"f0255dc1";
        sbox2(16#18#) <= x"4cdd2086";
        sbox2(16#19#) <= x"8470eb26";
        sbox2(16#1a#) <= x"6382e9c6";
        sbox2(16#1b#) <= x"021ecc5e";
        sbox2(16#1c#) <= x"09686b3f";
        sbox2(16#1d#) <= x"3ebaefc9";
        sbox2(16#1e#) <= x"3c971814";
        sbox2(16#1f#) <= x"6b6a70a1";
        sbox2(16#20#) <= x"687f3584";
        sbox2(16#21#) <= x"52a0e286";
        sbox2(16#22#) <= x"b79c5305";
        sbox2(16#23#) <= x"aa500737";
        sbox2(16#24#) <= x"3e07841c";
        sbox2(16#25#) <= x"7fdeae5c";
        sbox2(16#26#) <= x"8e7d44ec";
        sbox2(16#27#) <= x"5716f2b8";
        sbox2(16#28#) <= x"b03ada37";
        sbox2(16#29#) <= x"f0500c0d";
        sbox2(16#2a#) <= x"f01c1f04";
        sbox2(16#2b#) <= x"0200b3ff";
        sbox2(16#2c#) <= x"ae0cf51a";
        sbox2(16#2d#) <= x"3cb574b2";
        sbox2(16#2e#) <= x"25837a58";
        sbox2(16#2f#) <= x"dc0921bd";
        sbox2(16#30#) <= x"d19113f9";
        sbox2(16#31#) <= x"7ca92ff6";
        sbox2(16#32#) <= x"94324773";
        sbox2(16#33#) <= x"22f54701";
        sbox2(16#34#) <= x"3ae5e581";
        sbox2(16#35#) <= x"37c2dadc";
        sbox2(16#36#) <= x"c8b57634";
        sbox2(16#37#) <= x"9af3dda7";
        sbox2(16#38#) <= x"a9446146";
        sbox2(16#39#) <= x"0fd0030e";
        sbox2(16#3a#) <= x"ecc8c73e";
        sbox2(16#3b#) <= x"a4751e41";
        sbox2(16#3c#) <= x"e238cd99";
        sbox2(16#3d#) <= x"3bea0e2f";
        sbox2(16#3e#) <= x"3280bba1";
        sbox2(16#3f#) <= x"183eb331";
        sbox2(16#40#) <= x"4e548b38";
        sbox2(16#41#) <= x"4f6db908";
        sbox2(16#42#) <= x"6f420d03";
        sbox2(16#43#) <= x"f60a04bf";
        sbox2(16#44#) <= x"2cb81290";
        sbox2(16#45#) <= x"24977c79";
        sbox2(16#46#) <= x"5679b072";
        sbox2(16#47#) <= x"bcaf89af";
        sbox2(16#48#) <= x"de9a771f";
        sbox2(16#49#) <= x"d9930810";
        sbox2(16#4a#) <= x"b38bae12";
        sbox2(16#4b#) <= x"dccf3f2e";
        sbox2(16#4c#) <= x"5512721f";
        sbox2(16#4d#) <= x"2e6b7124";
        sbox2(16#4e#) <= x"501adde6";
        sbox2(16#4f#) <= x"9f84cd87";
        sbox2(16#50#) <= x"7a584718";
        sbox2(16#51#) <= x"7408da17";
        sbox2(16#52#) <= x"bc9f9abc";
        sbox2(16#53#) <= x"e94b7d8c";
        sbox2(16#54#) <= x"ec7aec3a";
        sbox2(16#55#) <= x"db851dfa";
        sbox2(16#56#) <= x"63094366";
        sbox2(16#57#) <= x"c464c3d2";
        sbox2(16#58#) <= x"ef1c1847";
        sbox2(16#59#) <= x"3215d908";
        sbox2(16#5a#) <= x"dd433b37";
        sbox2(16#5b#) <= x"24c2ba16";
        sbox2(16#5c#) <= x"12a14d43";
        sbox2(16#5d#) <= x"2a65c451";
        sbox2(16#5e#) <= x"50940002";
        sbox2(16#5f#) <= x"133ae4dd";
        sbox2(16#60#) <= x"71dff89e";
        sbox2(16#61#) <= x"10314e55";
        sbox2(16#62#) <= x"81ac77d6";
        sbox2(16#63#) <= x"5f11199b";
        sbox2(16#64#) <= x"043556f1";
        sbox2(16#65#) <= x"d7a3c76b";
        sbox2(16#66#) <= x"3c11183b";
        sbox2(16#67#) <= x"5924a509";
        sbox2(16#68#) <= x"f28fe6ed";
        sbox2(16#69#) <= x"97f1fbfa";
        sbox2(16#6a#) <= x"9ebabf2c";
        sbox2(16#6b#) <= x"1e153c6e";
        sbox2(16#6c#) <= x"86e34570";
        sbox2(16#6d#) <= x"eae96fb1";
        sbox2(16#6e#) <= x"860e5e0a";
        sbox2(16#6f#) <= x"5a3e2ab3";
        sbox2(16#70#) <= x"771fe71c";
        sbox2(16#71#) <= x"4e3d06fa";
        sbox2(16#72#) <= x"2965dcb9";
        sbox2(16#73#) <= x"99e71d0f";
        sbox2(16#74#) <= x"803e89d6";
        sbox2(16#75#) <= x"5266c825";
        sbox2(16#76#) <= x"2e4cc978";
        sbox2(16#77#) <= x"9c10b36a";
        sbox2(16#78#) <= x"c6150eba";
        sbox2(16#79#) <= x"94e2ea78";
        sbox2(16#7a#) <= x"a5fc3c53";
        sbox2(16#7b#) <= x"1e0a2df4";
        sbox2(16#7c#) <= x"f2f74ea7";
        sbox2(16#7d#) <= x"361d2b3d";
        sbox2(16#7e#) <= x"1939260f";
        sbox2(16#7f#) <= x"19c27960";
        sbox2(16#80#) <= x"5223a708";
        sbox2(16#81#) <= x"f71312b6";
        sbox2(16#82#) <= x"ebadfe6e";
        sbox2(16#83#) <= x"eac31f66";
        sbox2(16#84#) <= x"e3bc4595";
        sbox2(16#85#) <= x"a67bc883";
        sbox2(16#86#) <= x"b17f37d1";
        sbox2(16#87#) <= x"018cff28";
        sbox2(16#88#) <= x"c332ddef";
        sbox2(16#89#) <= x"be6c5aa5";
        sbox2(16#8a#) <= x"65582185";
        sbox2(16#8b#) <= x"68ab9802";
        sbox2(16#8c#) <= x"eecea50f";
        sbox2(16#8d#) <= x"db2f953b";
        sbox2(16#8e#) <= x"2aef7dad";
        sbox2(16#8f#) <= x"5b6e2f84";
        sbox2(16#90#) <= x"1521b628";
        sbox2(16#91#) <= x"29076170";
        sbox2(16#92#) <= x"ecdd4775";
        sbox2(16#93#) <= x"619f1510";
        sbox2(16#94#) <= x"13cca830";
        sbox2(16#95#) <= x"eb61bd96";
        sbox2(16#96#) <= x"0334fe1e";
        sbox2(16#97#) <= x"aa0363cf";
        sbox2(16#98#) <= x"b5735c90";
        sbox2(16#99#) <= x"4c70a239";
        sbox2(16#9a#) <= x"d59e9e0b";
        sbox2(16#9b#) <= x"cbaade14";
        sbox2(16#9c#) <= x"eecc86bc";
        sbox2(16#9d#) <= x"60622ca7";
        sbox2(16#9e#) <= x"9cab5cab";
        sbox2(16#9f#) <= x"b2f3846e";
        sbox2(16#a0#) <= x"648b1eaf";
        sbox2(16#a1#) <= x"19bdf0ca";
        sbox2(16#a2#) <= x"a02369b9";
        sbox2(16#a3#) <= x"655abb50";
        sbox2(16#a4#) <= x"40685a32";
        sbox2(16#a5#) <= x"3c2ab4b3";
        sbox2(16#a6#) <= x"319ee9d5";
        sbox2(16#a7#) <= x"c021b8f7";
        sbox2(16#a8#) <= x"9b540b19";
        sbox2(16#a9#) <= x"875fa099";
        sbox2(16#aa#) <= x"95f7997e";
        sbox2(16#ab#) <= x"623d7da8";
        sbox2(16#ac#) <= x"f837889a";
        sbox2(16#ad#) <= x"97e32d77";
        sbox2(16#ae#) <= x"11ed935f";
        sbox2(16#af#) <= x"16681281";
        sbox2(16#b0#) <= x"0e358829";
        sbox2(16#b1#) <= x"c7e61fd6";
        sbox2(16#b2#) <= x"96dedfa1";
        sbox2(16#b3#) <= x"7858ba99";
        sbox2(16#b4#) <= x"57f584a5";
        sbox2(16#b5#) <= x"1b227263";
        sbox2(16#b6#) <= x"9b83c3ff";
        sbox2(16#b7#) <= x"1ac24696";
        sbox2(16#b8#) <= x"cdb30aeb";
        sbox2(16#b9#) <= x"532e3054";
        sbox2(16#ba#) <= x"8fd948e4";
        sbox2(16#bb#) <= x"6dbc3128";
        sbox2(16#bc#) <= x"58ebf2ef";
        sbox2(16#bd#) <= x"34c6ffea";
        sbox2(16#be#) <= x"fe28ed61";
        sbox2(16#bf#) <= x"ee7c3c73";
        sbox2(16#c0#) <= x"5d4a14d9";
        sbox2(16#c1#) <= x"e864b7e3";
        sbox2(16#c2#) <= x"42105d14";
        sbox2(16#c3#) <= x"203e13e0";
        sbox2(16#c4#) <= x"45eee2b6";
        sbox2(16#c5#) <= x"a3aaabea";
        sbox2(16#c6#) <= x"db6c4f15";
        sbox2(16#c7#) <= x"facb4fd0";
        sbox2(16#c8#) <= x"c742f442";
        sbox2(16#c9#) <= x"ef6abbb5";
        sbox2(16#ca#) <= x"654f3b1d";
        sbox2(16#cb#) <= x"41cd2105";
        sbox2(16#cc#) <= x"d81e799e";
        sbox2(16#cd#) <= x"86854dc7";
        sbox2(16#ce#) <= x"e44b476a";
        sbox2(16#cf#) <= x"3d816250";
        sbox2(16#d0#) <= x"cf62a1f2";
        sbox2(16#d1#) <= x"5b8d2646";
        sbox2(16#d2#) <= x"fc8883a0";
        sbox2(16#d3#) <= x"c1c7b6a3";
        sbox2(16#d4#) <= x"7f1524c3";
        sbox2(16#d5#) <= x"69cb7492";
        sbox2(16#d6#) <= x"47848a0b";
        sbox2(16#d7#) <= x"5692b285";
        sbox2(16#d8#) <= x"095bbf00";
        sbox2(16#d9#) <= x"ad19489d";
        sbox2(16#da#) <= x"1462b174";
        sbox2(16#db#) <= x"23820e00";
        sbox2(16#dc#) <= x"58428d2a";
        sbox2(16#dd#) <= x"0c55f5ea";
        sbox2(16#de#) <= x"1dadf43e";
        sbox2(16#df#) <= x"233f7061";
        sbox2(16#e0#) <= x"3372f092";
        sbox2(16#e1#) <= x"8d937e41";
        sbox2(16#e2#) <= x"d65fecf1";
        sbox2(16#e3#) <= x"6c223bdb";
        sbox2(16#e4#) <= x"7cde3759";
        sbox2(16#e5#) <= x"cbee7460";
        sbox2(16#e6#) <= x"4085f2a7";
        sbox2(16#e7#) <= x"ce77326e";
        sbox2(16#e8#) <= x"a6078084";
        sbox2(16#e9#) <= x"19f8509e";
        sbox2(16#ea#) <= x"e8efd855";
        sbox2(16#eb#) <= x"61d99735";
        sbox2(16#ec#) <= x"a969a7aa";
        sbox2(16#ed#) <= x"c50c06c2";
        sbox2(16#ee#) <= x"5a04abfc";
        sbox2(16#ef#) <= x"800bcadc";
        sbox2(16#f0#) <= x"9e447a2e";
        sbox2(16#f1#) <= x"c3453484";
        sbox2(16#f2#) <= x"fdd56705";
        sbox2(16#f3#) <= x"0e1e9ec9";
        sbox2(16#f4#) <= x"db73dbd3";
        sbox2(16#f5#) <= x"105588cd";
        sbox2(16#f6#) <= x"675fda79";
        sbox2(16#f7#) <= x"e3674340";
        sbox2(16#f8#) <= x"c5c43465";
        sbox2(16#f9#) <= x"713e38d8";
        sbox2(16#fa#) <= x"3d28f89e";
        sbox2(16#fb#) <= x"f16dff20";
        sbox2(16#fc#) <= x"153e21e7";
        sbox2(16#fd#) <= x"8fb03d4a";
        sbox2(16#fe#) <= x"e6e39f2b";
        sbox2(16#ff#) <= x"db83adf7";
        
        sbox2_data_o <= sbox2(to_integer(unsigned(sbox2_data_i)));
        
END ARCHITECTURE RTL_sbox2;
