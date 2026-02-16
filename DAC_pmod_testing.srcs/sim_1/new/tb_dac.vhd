-- tb_dac_pmod.vhd
library ieee;
use ieee.std_logic_1164.all;

entity tb_dac_pmod is
end entity;

architecture sim of tb_dac_pmod is
  -- DUT ports
  signal clk   : std_logic := '0';
  signal reset : std_logic := '0';
  signal sclk  : std_logic;
  signal mclk  : std_logic;
  signal lrclk : std_logic;
  signal data  : std_logic;

  constant T_CLK : time := 10 ns; -- 100 MHz
begin

  -- 100 MHz clock generator
  clk <= not clk after T_CLK/2;

  -- DUT instantiation
  uut: entity work.DAC_Pmod
    port map (
      clk   => clk,
      reset => reset,
      sclk  => sclk,
      mclk  => mclk,
      lrclk => lrclk,
      data  => data
    );

  -- Reset stimulus + runtime control
  stim: process
  begin
    -- apply reset
    reset <= '1';
    wait for 100 ns;
    reset <= '0';

    -- run simulation long enough to observe mclk toggles
    wait for 150 us;

    -- end sim
    assert false report "Simulation finished." severity failure;
  end process;

  -- Optional: measure mclk half-period (time between toggles)
  monitor: process
    variable t_last : time := 0 ns;
  begin
    wait until mclk'event;  -- any toggle
    if t_last /= 0 ns then
      report "mclk toggle dt = " & time'image(now - t_last);
    end if;
    t_last := now;
  end process;

end architecture;
