library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY VGA IS
    PORT( CLK : IN std_logic;
          HS : OUT std_logic;
          VS : OUT std_logic;
          R : OUT unsigned(4 downto 0);
          G : OUT unsigned(5 downto 0);
          B : OUT unsigned(4 downto 0)
      );
END VGA;

ARCHITECTURE Behavioral OF VGA IS

    COMPONENT GeneSync
        Port ( CLK : in std_logic;
               HSYNC : out std_logic;
               VSYNC : out std_logic;
               IMG : out std_logic;
               X : out unsigned(9 downto 0);
               Y : out unsigned(8 downto 0)
           );
    END COMPONENT;

    component reg1b
        port (d: in std_logic;
              clk: in std_logic;
              q: out std_logic);
    end component;

    component GeneRGB
    	Port (
		X: in unsigned(9 downto 0);
		Y: in unsigned(8 downto 0);
		DATA: in unsigned(23 downto 0);
		CLK: in std_logic;
        R : OUT unsigned(4 downto 0);
        G : OUT unsigned(5 downto 0);
        B : OUT unsigned(4 downto 0);
		ADDR: out unsigned(16 downto 0)
	);
    end component;

    component RAM_VIDEO is
  	port (
	    clk  : in    std_logic;
	    addr : in    unsigned (16 downto 0);
	    do   : out   unsigned(23 downto 0);
            we   : in    std_logic
	    );
    end component;

    -- Signaux internes
    signal AD: unsigned(16 downto 0);
    signal DATA: unsigned(23 downto 0);
    signal nDATA: unsigned(23 downto 0);
    signal Xi : unsigned(9 downto 0);
    signal Yi : unsigned(8 downto 0);
    signal IMGi: std_logic;
    signal HSi, VSi: std_logic;
    signal Ri : unsigned(4 downto 0);
    signal Gi : unsigned(5 downto 0);
    signal Bi : unsigned(4 downto 0);
    -- Si besoin rajouter ci-dessous d'autres signaux internes
BEGIN
    cRAM_VIDEO: RAM_VIDEO port map(CLK => CLK, ADDR => AD, DO =>DATA, WE=> '0');
    cGeneRGB: GeneRGB 
    port map(CLK => CLK, X => Xi, Y => Yi, R => Ri, G => Gi, B => Bi, DATA => DATA, ADDR => AD);
    
    cGeneSync: GeneSync
    port map(CLK => CLK, HSYNC => HSi, VSYNC => VSi, IMG => IMGi, X => Xi, Y => Yi);

    R <= Ri when IMGi = '1' else "00000";
    G <= Gi when IMGi = '1' else "000000";
    B <= Bi when IMGi = '1' else "00000";
    HS <= HSi;
    VS <= VSi;
END Behavioral;
