-- Ceci est une ligne de commentaires

---------------------------------------
-- div_freq.vhd
-- Description du diviseur de frequence du TP1 en VHDL

-- Ce fichier décrit le composant ``div_freq'' dans le langage VHDL.
-- La description d'un composant en VHDL se compose de deux parties :
--   - Une partie entité (``entity'') définissant le composant et ses
--     entrées/sorties
--   - Une partie architecture (``architecture'') décrivant le fonctionnement
--     du circuit
---------------------------------------

-- Les mot-clés ``library'' et ``use'' permettent d'indiquer le nom des
-- bibliothèques que ce composant va utiliser.
-- STD_LOGIC_1164 permet de définir le type std_logic utilisé pour décrire un
-- bit
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Avec le mot-clé ``entity'', on définit un composant et ses entrée/sorties.
-- Ici, on définit l'entité nommé div_freq, ayant 3 ports :
--    - Un port d'entrée ``clk'' sur un bit (type std_logic)
--    - Un port d'entrée ``reset'' sur un bit (type std_logic)
--    - Un port de sortie ``s'' sur un bit (type std_logic)
entity div_freq is
    port ( clk:     in  std_logic;
           s:  out std_logic;
           reset:  in  std_logic); -- Notez la position des points-virgules
end div_freq;

-- Avec le mot-clé ``architecture'', on décrit le fonctionnement du circuit.
-- Ce fonctionnement peut être décrit de manière comportementale (description
-- effective de la fonctionnalité) ou structurelle (Instanciation de composants
-- définis par ailleurs, càd soit dans une bibliothèque déclarée, soit dans le
-- projet en cours).
-- Ici, l'architecture du composant div_freq s'appelle ``mixte''.
architecture mixte of div_freq is

    -- Pour pouvoir instancier un composant (approche structurelle), il faut
    -- au préalable le déclarer.
    -- Ici, nous déclarons le composant ``basc_D'' (inclus dans le projet).
    -- Vous pouvez consulter sa définition dans le fichier
    -- ``vhd/bascule_d.vhd''.
    component basc_D is
        port (  clk:    in  std_logic;
                d:      in  std_logic;
                q:      out std_logic;
                qb:      out std_logic;
                reset:  in  std_logic);
    end component;

    -- Remarquez la similitude entre la définition d'une entité et la
    -- déclaration d'un composant.

    -- Avec le mot-clé ``signal'', on déclare les signaux internes du circuit.
    -- Pour simplifier, ces signaux correspondent aux fils de votre schéma.
    -- Ici, on déclare un signal de type ``std_logic''.
    signal fil: std_logic;
    signal x1, x2, x3, x4 : std_logic; -- pour plus tard....
 
begin
    -- D'un point de vue structurel, on peut instancier des composants avec
    -- le mot-clé ``port map''
    -- Par exemple, le code suivant permet d'instancier une bascule D, nommée
    -- ``FD0''.  
    -- Cette bascule est connectée aux signaux du circuit : l'horloge, le fil et la sortie
    FD0: basc_D
    port map (  clk     => clk,         -- Connexion du port ``clk'' du
                                        -- composant ``basc_D'' au signal
                                        -- ``clk'' (entrée du composant div_freq). 
                d       => fil,          -- Connexion du port ``d'' du
                                        -- composant ``div_freq'' au signal
                                        -- ``qb''
                q       => s,          -- Connexion du port ``q'' du
                                        -- composant ``basc_D'' au signal
                                        -- ``s'' sortie du composant ``div_freq''
		qb      => x1,         -- Connexion du port ``d'' du
                                        -- composant ``div_freq'' au signal
                                        -- ``qb''
                reset   => reset);      -- Connexion du port ``reset'' du
                                        -- composant ``basc_D'' au signal
                                        -- ``reset'' (entrée du composant div_freq). 

   -- Plus tard, vous pourrez mettre vos affectations concurrentes ici.
   -- On vous donne la première affectation qu'il faudra décommenter lors de l'ajout des XOR
   -- N'oubliez pas la déclaration des signaux (fils)
    fil <= x4 xor '1';
    x4 <= x3 xor '1';
    x3 <= x2 xor '1';
    x2 <= x1 xor '1';
   -- x2 <= x1 xor '1';
   -- où x1 et x2 sont des signaux déclarés, x1 est connecté au port q de la bascule
   -- n'oubliez pas d'affecter le port de sortie ``s''

end mixte;
