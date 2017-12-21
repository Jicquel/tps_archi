library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY tb_Compteur IS
END tb_Compteur;

ARCHITECTURE behavior OF tb_Compteur IS


component Compteur is
    port (cpt : out unsigned(16 downto 0);
          max : in unsigned(16 downto 0);
          clk : in std_logic;
          rst : in std_logic);
end component;
	--Entrees
	signal clk :  std_logic := '0';
  signal rst :  std_logic := '1';
  -- Valeur de max a changer pour la question 1.3
  -- ici "0" & x"0001" représente la concaténation (symbole &)
  -- d'un vecteur de bits "0" de 1 bit = '0'
  -- et d'un vecteur de bis de 16 bits représenté en hexadécimal
  -- soit "0" suivi de "0000 0000 0000 0001"
  -- donc "00000000000000001"
  signal max : unsigned(16 downto 0) := "0" & x"002f";
  signal cpt : unsigned(16 downto 0) ;
  -- Constantes
  constant clock_period : time := 8 ns;
BEGIN
	ucpt: Compteur PORT MAP(
		clk => clk,
		rst => rst,
    max => max,
    cpt => cpt
	);

	horloge : process
	begin
		CLK<= not CLK;
    wait for clock_period/2 ;
	end process horloge;

	process
	begin
    wait for 3*clock_period;
    rst <= '0';
    wait;
	end process;
end ;
