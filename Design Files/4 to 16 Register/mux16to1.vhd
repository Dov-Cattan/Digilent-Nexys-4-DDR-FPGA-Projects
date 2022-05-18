library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_16to1 is
    generic(n :integer := 5);
    port (
        sel :in std_logic_vector(3 downto 0);
        din0: in std_logic_vector(n-1 downto 0);
        din1 : in std_logic_vector(n-1 downto 0);
        din2 : in std_logic_vector(n-1 downto 0);
        din3 : in std_logic_vector(n-1 downto 0);
        din4 : in std_logic_vector(n-1 downto 0);
        din5 : in std_logic_vector(n-1 downto 0);
        din6 : in std_logic_vector(n-1 downto 0);
        din7 : in std_logic_vector(n-1 downto 0);
        din8 : in std_logic_vector(n-1 downto 0);
        din9 : in std_logic_vector(n-1 downto 0);
        din10 : in std_logic_vector(n-1 downto 0);
        din11 : in std_logic_vector(n-1 downto 0);
        din12 : in std_logic_vector(n-1 downto 0);
        din13: in std_logic_vector(n-1 downto 0);
        din14: in std_logic_vector(n-1 downto 0);
        din15: in std_logic_vector(n-1 downto 0);
        dout :out std_logic_vector(n-1 downto 0)
        
    );
end mux_16to1;

architecture dataflow of mux_16to1 is 

begin
    with sel select
    dout      <=
    din0 when "0000",
    din1 when "0001",
    din2 when "0010",
    din3 when "0011",
    din4 when "0100",
    din5 when "0101" ,
    din6 when "0110" ,
    din7 when "0111" ,
    din8 when "1000" ,
    din9 when "1001" ,
    din10 when "1010" ,
    din11 when "1011" ,
    din12 when "1100" ,
    din13 when "1101" ,
    din14 when "1110" ,
    din15 when others;
    

end dataflow; 