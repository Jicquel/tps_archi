library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
        port ( clk:    in  std_logic;
               reset:  in  std_logic;
               start: in  std_logic;
               inf  :  in std_logic;
               egal :  in  std_logic;
               getA:   out  std_logic;
               getB:   out  std_logic;
               subBA:  out  std_logic;
               ldA:    out  std_logic;
               ldB:    out  std_logic;
               done  : out  std_logic
       );
end PC;

architecture mixte of PC is
-- Déclaration des composants BDC et BDS
-- Aller voir ce qu'ils font dans le fichier .vhd correspondant.
   component BDC
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic
				 );
   end component;
   component BDS
      port ( C   : in    std_logic; 
             D   : in    std_logic; 
             S   : in    std_logic; 
             Q   : out   std_logic
				 );
   end component;
  
   signal qend, qinit, qwait, qtest, qAB, qBA: std_logic;

begin
    b_wait:BDS
    port map(
                C => clk, 
                D => qend or (not start and qwait),
                S => reset,
                Q => qwait
            );
    b_init: BDC
    port map(
                C => clk,
                D => start and qwait,
                CLR => reset,
                Q => qinit
            );
    b_dnd: BDC
    port map(
                C => clk,
                D => egal and qtest,
                CLR => reset,
                Q => qend
            );
    b_test: BDC
    port map(
                C => clk,
                D => qinit or qAB or qBA,
                CLR => reset,
                Q => qtest
            );
    b_AB: BDC
    port map(
                C => clk,
                D => not egal and not inf and qtest,
                CLR => reset,
                Q => qAB
            );
    b_BA: BDC
    port map(
                C => clk,
                D => not egal and inf and qtest,
                CLR => reset,
                Q => qBA
            );
   
    getA <= qinit;
    ldA <= qinit or qAB;
    getB <= qinit;
    ldB <= qinit or qBA;
    subBA <= qBA;
    done <= qend;


end mixte;
