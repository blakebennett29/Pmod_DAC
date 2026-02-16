----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2026 11:03:56 PM
-- Design Name: 
-- Module Name: DAC_Pmod - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DAC_Pmod is
  Port (    clk : in std_logic;
            reset : in std_logic;
            
            sclk: out std_logic;
            mclk: out std_logic;
            lrclk: out std_logic;
            data: out std_logic);
end DAC_Pmod;

architecture Behavioral of DAC_Pmod is

component blk_mem_gen_0 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END component;

signal mcnt : integer := 0;
signal scnt : integer :=0;
signal lrcnt : integer :=0;
signal mclk_s : std_logic := '0';
signal sclk_s : std_logic := '0';
signal lrclk_s : std_logic :='0';
signal reset_s : std_logic := '0';
--blk memory signials
signal ena_s : std_logic := '1';
signal wea_s : std_logic_vector(0 downto 0) := "0";
signal addra_s : std_logic_vector(4 downto 0) :="00000";
signal dina_s : std_logic_vector(31 downto 0) := x"00000000";
signal douta_s : std_logic_vector(31 downto 0) := (others => '0');
--shift register data
signal shift_Reg: std_logic_vector(31 downto 0) := (others => '0');
signal shift_cnt : integer := 0;
signal address : integer :=0;
signal sclk_fall_pulse : std_logic := '0';
signal lrclk_fall_pulse : std_logic := '0';

begin
    mclk <= mclk_s;
    sclk <= sclk_s;
    lrclk <= lrclk_s;
    --blk mem
BM : blk_mem_gen_0 port map (
    clka => clk,
    ena => ena_s,
    wea => wea_s,
    addra => addra_s,
    dina => dina_s,
    douta => douta_s
    );
    
    
    process(clk)
        begin
            if reset = '1' then
                mcnt <= 0;
                scnt <= 0;
                lrcnt <= 0;
                mclk_s  <= '0';
                sclk_s  <= '0';
                lrclk_s <= '0';
                reset_s <= '0';
            elsif rising_edge(clk) then 
            --------------------------------------------------------------------
            --master clk generation
                if mcnt >= 1 then   --creating that 25mhz clk (divide the clk by 4)
                    mcnt <= 0;
                    mclk_s <= not mclk_s; --toggle the clk
                else
                    mcnt <= mcnt + 1;
                end if;
                --------------------------------------------------------------------
                --sclk generation
                if scnt >= 7 then
                    scnt <= 0;
                     -- detect the *falling* edge (about to go low 1 -> 0)
                    if sclk_s = '1' then
                        sclk_fall_pulse <= '1';
                    end if;
                    sclk_s <= not sclk_s;
                else
                    scnt <= scnt + 1;
                end if;
                --------------------------------------------------------------------
                --lrclk generation
                if lrcnt >= 511 then
                    lrcnt <= 0;
                    if lrclk_s = '1' then   --lr edge detection "falling"
                        lrclk_fall_pulse <= '1';
                    end if;
                    lrclk_s <= not lrclk_s;
                else
                    lrcnt <= lrcnt + 1;
                end if;
                ---------------------------------------------------------------------
                --Shift register logic
                if reset = '1' then
                    shift_Reg <= (others => '0');
                    shift_cnt <= 0;
                    
                elsif shift_cnt >= 32 then -- update address change to 32 bit shift register
                    ena_s <= '1';
                    shift_cnt <= 0;
                    address <= address + 1;
                    addra_s <= std_logic_vector(to_unsigned(address, 5));
                    shift_Reg <= douta_s; --assine new sample to register
                    if address >= 32 then  -- loop the block memory for output
                        address <= 0;
                    end if;
                else
                    --shift data bit's out
                    if sclk_fall_pulse = '1' then -- change so it only changes on the clk change
                        sclk_fall_pulse <= '0';
                        data <= shift_Reg(31 - shift_cnt);
                        shift_cnt <= shift_cnt +1;
                    end if;
                end if;
                
            end if;
    end process;

end Behavioral;
