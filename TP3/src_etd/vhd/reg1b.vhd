library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg1b is
    port (d   : in std_logic;
          clk : in std_logic;
          q   : out std_logic);
end reg1b;

architecture Behavioral of reg1b is

begin

   process (clk)
   begin
      if rising_edge(clk) then
         q <= d;
      end if;
   end process;
   
end Behavioral;

