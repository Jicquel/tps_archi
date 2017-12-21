library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Compteur is
    port (cpt : out unsigned(16 downto 0);
    -- Entree max ignorée pour la question 1.1
          max : in unsigned(16 downto 0);
          clk : in std_logic;
          rst : in std_logic);
end Compteur;

architecture mixte of Compteur is
-- A COMPLETER
    signal s_d: unsigned(16 downto 0);
    signal s_q: unsigned(16 downto 0);
    signal s_2: std_logic;
-- Ajouter ici les signaux internes nécessaires
-- Declare l'existance de la bascule D
component bascule_d_nbits is
    generic(
      n: positive :=8
    );
    port (d : in unsigned(n-1 downto 0);
          q : out unsigned(n-1 downto 0);
          clk : in std_logic;
          rst : in std_logic);
end component;

begin
    bascule_d_nbits_instance:bascule_d_nbits 
    generic map(n => 17)
    port map (  clk     => clk,        
                                       
                                        
                d       =>  s_d,       
                                       
                                        
                rst   => s_2,

                q => s_q
            
                );    
   
s_d <= s_q + 1;
cpt <= s_q;

s_2 <= '1' when s_q = max else rst;

end mixte;
