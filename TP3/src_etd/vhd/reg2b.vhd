library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg2b is
    port (d   : in unsigned(1 downto 0);
          clk : in std_logic;
          q   : out unsigned(1 downto 0));
end reg2b;

architecture Behavioral of reg2b is
begin
   process (clk)
   begin
      if rising_edge(clk) then
         q <= d;
      end if;
   end process;
end Behavioral;
