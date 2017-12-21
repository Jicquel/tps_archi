library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity global is
    port ( clk:     in  std_logic;
           reset:   in  std_logic;
           lfsr_o:  out std_logic;
           s:       out std_logic
            );
end global;

architecture structural of global is
    component auto is
        port ( clk:     in  std_logic;
               reset:   in  std_logic;
               e:       in  std_logic;
               s:       out std_logic);
    end component;

    component lfsr is
        port ( clk:     in  std_logic;
               reset:   in  std_logic;
               s:       out std_logic);
    end component;

    signal lfsr_gen: std_logic;
begin
    lfsr_instance:lfsr 
    port map (  clk     => clk,         -- Connexion du port ``clk'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``clk'' (entrée du composant lfsr). 
                s       => lfsr_gen,          -- Connexion du port ``q'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``q3''
                reset   => reset);      -- Connexion du port ``reset'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``reset'' (entrée du composant lfsr). 
    reconnaisseur:auto
    port map (  clk     => clk,         -- Connexion du port ``clk'' du
                                        -- composant ``bascule_D'' au signal
                                        -- ``clk'' (entrée du composant lfsr). 
                e       => lfsr_gen,          -- Connexion du port ``q'' du

                reset       => reset,          -- Connexion du port ``q'' du
                                        -- ``q3''
                s   => s);      -- Connexion du port ``reset'' du
   
lfsr_o <= lfsr_gen;

end structural;

