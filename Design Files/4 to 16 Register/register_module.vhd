library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_module is
    generic(
        n : integer := 4
    );
    port(
        clk : in std_logic;
        rst : in std_logic;
        we : in std_logic;
        din : in std_logic_vector(n-1 downto 0);
        dout : out std_logic_vector(n-1 downto 0)
    );
end register_module;
architecture Behavioral of register_module is

begin

    process(clk)
    begin
      if rst = '0' then 
        dout <=(others=>'0');
      elsif rising_edge(clk)then
        if we = '1' then
        dout<=din;
        end if;
        end if;
        end process;
end Behavioral;

