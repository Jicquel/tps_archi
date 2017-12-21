library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PO is
        port ( clk:     in  std_logic;
               reset:   in  std_logic;
               getA:   in  std_logic;
               getB:   in  std_logic;
               subBA:   in  std_logic;
               ldA:   in  std_logic;
               ldB:   in  std_logic;
               A0:   in  unsigned (7 downto 0);
               B0:   in  unsigned (7 downto 0);
               LT :  out std_logic;
               EQ:   out  std_logic;
               Res:  out  unsigned (7 downto 0));
end PO;

architecture mixte of PO is
   component FD8CE
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    unsigned (7 downto 0); 
             Q   : out   unsigned (7 downto 0));
   end component;
 
   component COMPM8
      port ( A  : in    unsigned (7 downto 0); 
             B  : in    unsigned (7 downto 0); 
             GT : out   std_logic; 
             LT : out   std_logic);
   end component;
   
   component ADSU8
      port ( A   : in    unsigned (7 downto 0); 
             ADD : in    std_logic; 
             B   : in    unsigned (7 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   unsigned (7 downto 0));
   end component;


        signal gt, inf: std_logic;
        signal mux1,mux2,mux3,mux4, qA,qB, resALU : unsigned (7 downto 0);

begin
    
    registreA: FD8CE
    port map ( C => clk,
               CE => ldA,
               CLR => reset,
               D => mux1,
               Q => qA);
    
    registreB: FD8CE
    port map ( C => clk,
               CE => ldB,
               CLR => reset,
               D => mux2,
               Q => qB);

    comparateur: COMPM8
    port map ( A => qA,
               B => qB,
               GT => gt,
               LT => inf
           );

    add_sous:ADSU8
    port map ( A => mux3,
               ADD => '0',
               B => mux4,
               CI => '1',
               CO => open,
               OFL => open,
               S => resALU);

    mux1 <= resALU when getA='0' else A0;
    mux2 <= resALU when getB='0' else B0;
    mux3 <= qA when subBA='0' else qB;
    mux4 <= qB when subBA='0' else qA;
    EQ <= (not gt) and (not inf);
    LT <= inf;
    Res <= qB;




end mixte;
