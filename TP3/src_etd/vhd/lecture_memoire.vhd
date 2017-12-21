library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lecture_memoire is
    port (data : out unsigned(23 downto 0);
          clk : in std_logic;
          rst : in std_logic);
end lecture_memoire;

architecture mixte of lecture_memoire is

    signal s_addr: unsigned(16 downto 0);
    signal s_data: unsigned(23 downto 0);
    signal s_addr_16:unsigned(16 downto 0);

  component Compteur is
      port (cpt : out unsigned(16 downto 0);
            max : in unsigned(16 downto 0);
            clk : in std_logic;
            rst : in std_logic);
  end component;

  component RAM_Video is
    port (
      clk  : in    std_logic;
      addr : in    unsigned (16 downto 0);
      do   : out   unsigned(23 downto 0);
      we   : in    std_logic
      );
  end component;

  -- Ajouter ici les signaux internes nécessaires
  -- Utiliser les mêmes types de signaux en interne que vu en externe

begin
    Compteur_instance:Compteur
    port map ( clk => clk,
               cpt => s_addr,
               max =>  '1'& x"ffff",
               rst => rst
           );

    RAM_Video_instance:RAM_Video
    port map ( clk => clk,
               addr => s_addr_16,
               do => s_data,
               we => '0'
           );

data <= s_data;
s_addr_16 <= s_addr * 16;

end mixte;
