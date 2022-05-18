-- Register File

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_file is
 port(
        clk : in std_logic;
        rst : in std_logic;
        we : in std_logic;
        addr : in std_logic_vector(3 downto 0);
        din : in std_logic_vector(4 downto 0);
        dout : out std_logic_vector(4 downto 0)

 
 );
end register_file;

architecture Structural of register_file is

component register_module is 
    generic(n :integer := 5);
    port(
        clk : in std_logic;
        rst : in std_logic;
        we : in std_logic;
        din : in std_logic_vector(n-1 downto 0);
        dout : out std_logic_vector(n-1 downto 0)
    );

end component;

component mux_16to1 is
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
        din12: in std_logic_vector(n-1 downto 0);
        din13 : in std_logic_vector(n-1 downto 0);
        din14 : in std_logic_vector(n-1 downto 0);
        din15 : in std_logic_vector(n-1 downto 0);
        dout :out std_logic_vector(n-1 downto 0)
        
    );
end component;


component decoder_4to16 is
    port (
        en   : in std_logic;
        din : in std_logic_vector(3 downto 0);
        dout : out std_logic_vector (15 downto 0)
    );
end component;

signal decoder_dout : std_logic_vector(15 downto 0);

type array_16of8 is array(0 to 15) of std_logic_vector(4 downto 0);
signal register_dout : array_16of8;

begin

    inst_decoder : decoder_4to16
    port map (
        en => we ,
        din => addr ,
        dout => decoder_dout
    );

    inst_mux : mux_16to1
    generic map (
        n => 5
    )
port map (
    sel => addr  ,
    din0 =>  register_dout(0) ,
    din1 =>  register_dout(1) ,
    din2 =>  register_dout(2) ,
    din3 =>  register_dout(3) ,
    din4 =>  register_dout(4) ,
    din5 =>  register_dout(5) ,
    din6 =>  register_dout(6) ,
    din7 =>  register_dout(7) ,
    din8 =>  register_dout(8) ,
    din9 =>  register_dout(9) ,
    din10 =>  register_dout(10) ,
    din11 =>  register_dout(11) ,
    din12 =>  register_dout(12) ,
    din13 =>  register_dout(13) ,
    din14 =>  register_dout(14) ,
    din15 =>  register_dout(15) ,
    dout => dout

);

register_module_generate : for i in 0 to 15 generate
    instantiate_register_module : register_module
    generic map (
      n => 5  
    )
    port map (
        clk =>  clk ,
        rst =>  rst ,
        we =>   decoder_dout(i) ,
        din =>  din ,
        dout =>  register_dout(i) 
    );
end generate;
end Structural;




