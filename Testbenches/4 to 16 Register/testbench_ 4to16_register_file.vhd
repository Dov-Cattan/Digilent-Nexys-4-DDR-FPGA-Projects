library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity register_file_testbench is
end register_file_testbench;

architecture Behavioral of register_file_testbench is

    component register_file is
        port(
               clk : in std_logic;
               rst : in std_logic;
               we : in std_logic;
               addr : in std_logic_vector(3 downto 0);
               din : in std_logic_vector(4 downto 0);
               dout : out std_logic_vector(4 downto 0)
       
        
        );
    end component;

    signal clk : std_logic;
    signal rst : std_logic;
    signal we : std_logic;
    signal addr : std_logic_vector(3 downto 0);
    signal din : std_logic_vector(4 downto 0);
    signal dout : std_logic_vector(4  downto 0);

    constant PERIOD : time := 10 ns;
    

begin
    
    Unit_Under_Test: register_file
    port map (
        clk =>  clk ,
        rst =>  rst ,
        we =>   we  ,
        addr => addr,
        din =>  din ,
        dout => dout
    );

    clock_gen : process
    begin
        clk <= '0';
        wait for PERIOD/2;  
        clk <=  '1';
        wait for PERIOD/2; 
    end process;

    tb: process 
    begin
        --Disables the reset
        rst <= '1';

        -- Enables the decoder
        we <= '1';

        -- Writes to register 0
        addr <= "0000";
        din <= "00001";
        wait for PERIOD;

        -- Writes to register 1
        addr <= "0001";
        din <= "00010";
        wait for PERIOD;

        -- Writes to register 2
        addr <= "0010";
        din <= "00011";
        wait for PERIOD;

        -- Writes to register 3
        addr <= "0011";
        din <= "00100";
        wait for PERIOD;

        -- Writes to register 4
        addr <= "0100";
        din <= "00101";
        wait for PERIOD;

        -- Writes to register 5
        addr <= "0101";
        din <= "00110";
        wait for PERIOD;

        -- Writes to register 6
        addr <= "0110";
        din <= "00111";
        wait for PERIOD;

        -- Writes to register 7
        addr <= "0111";
        din <= "01000";
        wait for PERIOD;
        
        -- Writes to register 8
        addr <= "1000";
        din <= "01001";
        wait for PERIOD;
        
        -- Writes to register 9
        addr <= "1001";
        din <= "01010";
        wait for PERIOD;
        
        -- Writes to register 10
        addr <= "1010";
        din <= "01011";
        wait for PERIOD;
        
        -- Writes to register 11
        addr <= "1011";
        din <= "01100";
        wait for PERIOD;
        
        -- Writes to register 12
        addr <= "1100";
        din <= "01101";
        wait for PERIOD;
        
        -- Writes to register 13
        addr <= "1101";
        din <= "01110";
        wait for PERIOD;
        
        -- Writes to register 14
        addr <= "1110";
        din <= "01111";
        wait for PERIOD;
        
        -- Writes to register 15
        addr <= "1111";
        din <= "10000";
        wait for PERIOD;

        --Disable the decoder
        we <= '0';
        wait for PERIOD;

        -- Reading from the registers

        -- Read from registers 0
        addr <= "0000";
        wait for PERIOD;

        -- Read from registers 1
        addr <= "0001";
        wait for PERIOD;
        
        -- Read from registers 2
        addr <= "0010";
        wait for PERIOD;

        -- Read from registers 3
        addr <= "0011";
        wait for PERIOD;

        -- Read from registers 4
        addr <= "0100";
        wait for PERIOD;

        -- Read from registers 5
        addr <= "0101";
        wait for PERIOD;

        -- Read from registers 6
        addr <= "0110";
        wait for PERIOD;

        -- Read from registers 7
        addr <= "0111";
        wait for PERIOD;
        
         -- Read from registers 8
        addr <= "1000";
        wait for PERIOD;
        
         -- Read from registers 9
        addr <= "1001";
        wait for PERIOD;
        
        -- Read from registers 10
        addr <= "1010";
        wait for PERIOD;
        
        -- Read from registers 11
        addr <= "1011";
        wait for PERIOD;
        
        -- Read from registers 12
        addr <= "1100";
        wait for PERIOD;
        
         --- Read from registers 13
        addr <= "1101";
        wait for PERIOD;
        
        -- Read from registers 14
        addr <= "1110";
        wait for PERIOD;
        
        -- Read from registers 15
        addr <= "1111";
        wait for PERIOD;
 
        -- Reset Everything
        rst <= '0';
        wait for 1 ns;
        rst <= '1';

        -- Re-Reading the Registers

        -- Read from registers 0
        addr <= "0000";
        wait for PERIOD;

        -- Read from registers 1
        addr <= "0001";
        wait for PERIOD;
        
        -- Read from registers 2
        addr <= "0010";
        wait for PERIOD;

        -- Read from registers 3
        addr <= "0011";
        wait for PERIOD;

        -- Read from registers 4
        addr <= "0100";
        wait for PERIOD;

        -- Read from registers 5
        addr <= "0101";
        wait for PERIOD;

        -- Read from registers 6
        addr <= "0110";
        wait for PERIOD;

        -- Read from registers 7
        addr <= "0111";
        wait for PERIOD;
        
        -- Read from registers 8
        addr <= "1000";
        wait for PERIOD;
        
        -- Read from registers 9
        addr <= "1001";
        wait for PERIOD;
        
        -- Read from registers 10
        addr <= "1010";
        wait for PERIOD;
        
        -- Read from registers 11
        addr <= "1011";
        wait for PERIOD;
        
        -- Read from registers 12
        addr <= "1100";
        wait for PERIOD;
        
        -- Read from registers 13
        addr <= "1101";
        wait for PERIOD;
        
        -- Read from registers 14
        addr <= "1110";
        wait for PERIOD;
        
        -- Read from registers 15
        addr <= "1111";



        wait;
    end process;

end Behavioral;
