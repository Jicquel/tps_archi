library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity auto is
    port ( clk:     in  std_logic;
           reset:   in  std_logic;
           e:       in  std_logic;
           s:       out std_logic);
end auto;

architecture structural of auto is
    component bascule_D is
      port (  clk:    in  std_logic;
              d:      in  std_logic;
              q:      out std_logic;
              reset:  in  std_logic);
    end component;

    signal q0, q1, q2, e_barre, q0_barre, q1_barre: std_logic;
    signal f0, f1, f2, f3, f4, f5, f6: std_logic;

begin

    B_q0: bascule_D
    port map (  clk     => clk,         -- Connexion du port ``clk'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``clk'' (entrée du composant lfsr). 
                d       => f2,          -- Connexion du port ``d'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``d3''
                q       => q0,          -- Connexion du port ``q'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``q3''
                reset   => reset);      -- Connexion du port ``reset'' du
                                        -- composant ``bascule_D'' au signal
    B_q1: bascule_D
    port map (  clk     => clk,         -- Connexion du port ``clk'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``clk'' (entrée du composant lfsr). 
                d       => f1,          -- Connexion du port ``d'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``d3''
                q       => q1,          -- Connexion du port ``q'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``q3''
                reset   => reset);      -- Connexion du port ``reset'' du
                                        -- composant ``bascule_D'' au signal

    B_q2: bascule_D
    port map (  clk     => clk,         -- Connexion du port ``clk'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``clk'' (entrée du composant lfsr). 
                d       => f0,          -- Connexion du port ``d'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``d3''
                q       => q2,          -- Connexion du port ``q'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``q3''
                reset   => reset);      -- Connexion du port ``reset'' du
                                        -- composant ``bascule_D'' au signal

    s <= q2;

    f2 <= f3 and e;

    f1 <= f5 or f4;

    f0 <= q0 and q1 and e;
    f3 <= q0_barre or q1_barre;

    f4 <= q0_barre and q1;

    f5 <= e_barre and f6;

    f6 <= q0 or q2;

    e_barre <= not e;

    q1_barre <= not q1;

    q0_barre <= not q0;




end structural;
