library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GeneRGB is
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
end GeneRGB;



architecture Behavioral of GeneRGB is
-- $$$ etd_strip_begin
    component reg2b
        port (d: in unsigned(1 downto 0);
              clk: in std_logic;
              q: out unsigned(1 downto 0));
    end component;

    signal SORTIE_REG: unsigned(1 downto 0);
    signal tmp_adr:unsigned(17 downto 0);
    signal mot:unsigned(5 downto 0);
begin
    tmp_adr <= 160*Y+X(9 downto 2);
    ADDR <= tmp_adr(16 downto 0);
-- Solution avec 2 additionneurs au lieu d'un MAC    
--    ADDR <= (('0'&Y&"00") + Y + X(9 downto 7)) & X(6 downto 2);
    reg: reg2b port map(d => X(1 downto 0), clk => CLK, q => SORTIE_REG);

    -- Utilisation d'un case car Xilinx infère mal le mux sur un vecteur de bits !!!
    mot <=  DATA(23 downto 18) when SORTIE_REG="00" else
            DATA(17 downto 12) when SORTIE_REG="01" else
            DATA(11 downto 6) when SORTIE_REG="10" else
            DATA(5 downto 0);
    B <= (mot(1),mot(0), others => '0');
    G <= (mot(3),mot(2), others => '0');
    R <= (mot(5),mot(4), others => '0');

-- $$$ etd_strip_end
-- Conseils : 
-- 1) pour générer l'adresse vous pouvez utiliser les opérateurs * et +. On rappelle que X/4 ne nécessite pas d'opérations.
-- 2) L'utilisation d'un signal pour exprimer la sortie du multiplexeur simplifie l'écriture. Ce signal peut être affecter en utilisant l'affectation conditionnel (val0 when condition0 else val1 when condition1 else ... else valn)

end Behavioral;

