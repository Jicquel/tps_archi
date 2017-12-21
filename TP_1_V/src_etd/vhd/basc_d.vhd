library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity basc_D is
    port (  clk:    in  std_logic;
            d:      in  std_logic;
            q:      out std_logic;
	    qb:     out std_logic;
            reset:  in  std_logic);

end basc_D;

architecture behavioral of basc_D is
begin
    process (clk,reset) 
    begin
        if reset='1' then
            q <= '0';
	    qb <= '1';
        elsif clk'event and clk='1' then
            q <= d;
            qb <= not(d);
        end if;
    end process;
end behavioral;
