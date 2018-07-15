library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity filter_tb is
end;

architecture bench of filter_tb is

  component filter
  port (
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      agg_result_M0 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_M0_ap_vld : OUT STD_LOGIC;
      agg_result_M1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_M1_ap_vld : OUT STD_LOGIC;
      agg_result_M2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_M2_ap_vld : OUT STD_LOGIC;
      agg_result_A_a1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_A_a1_ap_vld : OUT STD_LOGIC;
      agg_result_A_a2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_A_a2_ap_vld : OUT STD_LOGIC;
      agg_result_A_a3 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_A_a3_ap_vld : OUT STD_LOGIC;
      agg_result_A_b1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_A_b1_ap_vld : OUT STD_LOGIC;
      agg_result_A_b2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_A_b2_ap_vld : OUT STD_LOGIC;
      agg_result_A_b3 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_A_b3_ap_vld : OUT STD_LOGIC;
      agg_result_A_c1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_A_c1_ap_vld : OUT STD_LOGIC;
      agg_result_A_c2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_A_c2_ap_vld : OUT STD_LOGIC;
      agg_result_A_c3 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_A_c3_ap_vld : OUT STD_LOGIC;
      agg_result_P_a1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_P_a1_ap_vld : OUT STD_LOGIC;
      agg_result_P_a2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_P_a2_ap_vld : OUT STD_LOGIC;
      agg_result_P_a3 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_P_a3_ap_vld : OUT STD_LOGIC;
      agg_result_P_b1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_P_b1_ap_vld : OUT STD_LOGIC;
      agg_result_P_b2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_P_b2_ap_vld : OUT STD_LOGIC;
      agg_result_P_b3 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_P_b3_ap_vld : OUT STD_LOGIC;
      agg_result_P_c1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_P_c1_ap_vld : OUT STD_LOGIC;
      agg_result_P_c2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_P_c2_ap_vld : OUT STD_LOGIC;
      agg_result_P_c3 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_P_c3_ap_vld : OUT STD_LOGIC;
      agg_result_Q_a1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_Q_a1_ap_vld : OUT STD_LOGIC;
      agg_result_Q_a2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_Q_a2_ap_vld : OUT STD_LOGIC;
      agg_result_Q_a3 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_Q_a3_ap_vld : OUT STD_LOGIC;
      agg_result_Q_b1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_Q_b1_ap_vld : OUT STD_LOGIC;
      agg_result_Q_b2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_Q_b2_ap_vld : OUT STD_LOGIC;
      agg_result_Q_b3 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_Q_b3_ap_vld : OUT STD_LOGIC;
      agg_result_Q_c1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_Q_c1_ap_vld : OUT STD_LOGIC;
      agg_result_Q_c2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_Q_c2_ap_vld : OUT STD_LOGIC;
      agg_result_Q_c3 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_Q_c3_ap_vld : OUT STD_LOGIC;
      agg_result_MU : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_MU_ap_vld : OUT STD_LOGIC;
      agg_result_H0 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_H0_ap_vld : OUT STD_LOGIC;
      agg_result_H1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_H1_ap_vld : OUT STD_LOGIC;
      agg_result_H2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_H2_ap_vld : OUT STD_LOGIC;
      agg_result_S : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_S_ap_vld : OUT STD_LOGIC;
      agg_result_K0 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_K0_ap_vld : OUT STD_LOGIC;
      agg_result_K1 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_K1_ap_vld : OUT STD_LOGIC;
      agg_result_K2 : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_K2_ap_vld : OUT STD_LOGIC;
      agg_result_Y : OUT STD_LOGIC_VECTOR (31 downto 0);
      agg_result_Y_ap_vld : OUT STD_LOGIC;
      value_M0 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_M1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_M2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_A_a1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_A_a2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_A_a3 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_A_b1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_A_b2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_A_b3 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_A_c1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_A_c2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_A_c3 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_P_a1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_P_a2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_P_a3 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_P_b1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_P_b2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_P_b3 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_P_c1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_P_c2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_P_c3 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_Q_a1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_Q_a2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_Q_a3 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_Q_b1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_Q_b2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_Q_b3 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_Q_c1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_Q_c2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_Q_c3 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_MU : IN STD_LOGIC_VECTOR (31 downto 0);
      value_H0 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_H1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_H2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_S : IN STD_LOGIC_VECTOR (31 downto 0);
      value_K0 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_K1 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_K2 : IN STD_LOGIC_VECTOR (31 downto 0);
      value_Y : IN STD_LOGIC_VECTOR (31 downto 0) );
  end component;

  signal ap_clk: STD_LOGIC;
  signal ap_rst: STD_LOGIC;
  signal ap_start: STD_LOGIC;
  signal ap_done: STD_LOGIC;
  signal ap_idle: STD_LOGIC;
  signal ap_ready: STD_LOGIC;
  signal agg_result_M0: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_M0_ap_vld: STD_LOGIC;
  signal agg_result_M1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_M1_ap_vld: STD_LOGIC;
  signal agg_result_M2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_M2_ap_vld: STD_LOGIC;
  signal agg_result_A_a1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_A_a1_ap_vld: STD_LOGIC;
  signal agg_result_A_a2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_A_a2_ap_vld: STD_LOGIC;
  signal agg_result_A_a3: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_A_a3_ap_vld: STD_LOGIC;
  signal agg_result_A_b1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_A_b1_ap_vld: STD_LOGIC;
  signal agg_result_A_b2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_A_b2_ap_vld: STD_LOGIC;
  signal agg_result_A_b3: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_A_b3_ap_vld: STD_LOGIC;
  signal agg_result_A_c1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_A_c1_ap_vld: STD_LOGIC;
  signal agg_result_A_c2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_A_c2_ap_vld: STD_LOGIC;
  signal agg_result_A_c3: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_A_c3_ap_vld: STD_LOGIC;
  signal agg_result_P_a1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_P_a1_ap_vld: STD_LOGIC;
  signal agg_result_P_a2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_P_a2_ap_vld: STD_LOGIC;
  signal agg_result_P_a3: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_P_a3_ap_vld: STD_LOGIC;
  signal agg_result_P_b1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_P_b1_ap_vld: STD_LOGIC;
  signal agg_result_P_b2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_P_b2_ap_vld: STD_LOGIC;
  signal agg_result_P_b3: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_P_b3_ap_vld: STD_LOGIC;
  signal agg_result_P_c1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_P_c1_ap_vld: STD_LOGIC;
  signal agg_result_P_c2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_P_c2_ap_vld: STD_LOGIC;
  signal agg_result_P_c3: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_P_c3_ap_vld: STD_LOGIC;
  signal agg_result_Q_a1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_Q_a1_ap_vld: STD_LOGIC;
  signal agg_result_Q_a2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_Q_a2_ap_vld: STD_LOGIC;
  signal agg_result_Q_a3: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_Q_a3_ap_vld: STD_LOGIC;
  signal agg_result_Q_b1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_Q_b1_ap_vld: STD_LOGIC;
  signal agg_result_Q_b2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_Q_b2_ap_vld: STD_LOGIC;
  signal agg_result_Q_b3: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_Q_b3_ap_vld: STD_LOGIC;
  signal agg_result_Q_c1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_Q_c1_ap_vld: STD_LOGIC;
  signal agg_result_Q_c2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_Q_c2_ap_vld: STD_LOGIC;
  signal agg_result_Q_c3: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_Q_c3_ap_vld: STD_LOGIC;
  signal agg_result_MU: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_MU_ap_vld: STD_LOGIC;
  signal agg_result_H0: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_H0_ap_vld: STD_LOGIC;
  signal agg_result_H1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_H1_ap_vld: STD_LOGIC;
  signal agg_result_H2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_H2_ap_vld: STD_LOGIC;
  signal agg_result_S: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_S_ap_vld: STD_LOGIC;
  signal agg_result_K0: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_K0_ap_vld: STD_LOGIC;
  signal agg_result_K1: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_K1_ap_vld: STD_LOGIC;
  signal agg_result_K2: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_K2_ap_vld: STD_LOGIC;
  signal agg_result_Y: STD_LOGIC_VECTOR (31 downto 0);
  signal agg_result_Y_ap_vld: STD_LOGIC;
  signal value_M0: STD_LOGIC_VECTOR (31 downto 0);
  signal value_M1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_M2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_A_a1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_A_a2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_A_a3: STD_LOGIC_VECTOR (31 downto 0);
  signal value_A_b1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_A_b2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_A_b3: STD_LOGIC_VECTOR (31 downto 0);
  signal value_A_c1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_A_c2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_A_c3: STD_LOGIC_VECTOR (31 downto 0);
  signal value_P_a1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_P_a2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_P_a3: STD_LOGIC_VECTOR (31 downto 0);
  signal value_P_b1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_P_b2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_P_b3: STD_LOGIC_VECTOR (31 downto 0);
  signal value_P_c1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_P_c2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_P_c3: STD_LOGIC_VECTOR (31 downto 0);
  signal value_Q_a1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_Q_a2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_Q_a3: STD_LOGIC_VECTOR (31 downto 0);
  signal value_Q_b1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_Q_b2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_Q_b3: STD_LOGIC_VECTOR (31 downto 0);
  signal value_Q_c1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_Q_c2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_Q_c3: STD_LOGIC_VECTOR (31 downto 0);
  signal value_MU: STD_LOGIC_VECTOR (31 downto 0);
  signal value_H0: STD_LOGIC_VECTOR (31 downto 0);
  signal value_H1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_H2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_S: STD_LOGIC_VECTOR (31 downto 0);
  signal value_K0: STD_LOGIC_VECTOR (31 downto 0);
  signal value_K1: STD_LOGIC_VECTOR (31 downto 0);
  signal value_K2: STD_LOGIC_VECTOR (31 downto 0);
  signal value_Y: STD_LOGIC_VECTOR (31 downto 0) ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: filter port map ( ap_clk                 => ap_clk,
                         ap_rst                 => ap_rst,
                         ap_start               => ap_start,
                         ap_done                => ap_done,
                         ap_idle                => ap_idle,
                         ap_ready               => ap_ready,
                         agg_result_M0          => agg_result_M0,
                         agg_result_M0_ap_vld   => agg_result_M0_ap_vld,
                         agg_result_M1          => agg_result_M1,
                         agg_result_M1_ap_vld   => agg_result_M1_ap_vld,
                         agg_result_M2          => agg_result_M2,
                         agg_result_M2_ap_vld   => agg_result_M2_ap_vld,
                         agg_result_A_a1        => agg_result_A_a1,
                         agg_result_A_a1_ap_vld => agg_result_A_a1_ap_vld,
                         agg_result_A_a2        => agg_result_A_a2,
                         agg_result_A_a2_ap_vld => agg_result_A_a2_ap_vld,
                         agg_result_A_a3        => agg_result_A_a3,
                         agg_result_A_a3_ap_vld => agg_result_A_a3_ap_vld,
                         agg_result_A_b1        => agg_result_A_b1,
                         agg_result_A_b1_ap_vld => agg_result_A_b1_ap_vld,
                         agg_result_A_b2        => agg_result_A_b2,
                         agg_result_A_b2_ap_vld => agg_result_A_b2_ap_vld,
                         agg_result_A_b3        => agg_result_A_b3,
                         agg_result_A_b3_ap_vld => agg_result_A_b3_ap_vld,
                         agg_result_A_c1        => agg_result_A_c1,
                         agg_result_A_c1_ap_vld => agg_result_A_c1_ap_vld,
                         agg_result_A_c2        => agg_result_A_c2,
                         agg_result_A_c2_ap_vld => agg_result_A_c2_ap_vld,
                         agg_result_A_c3        => agg_result_A_c3,
                         agg_result_A_c3_ap_vld => agg_result_A_c3_ap_vld,
                         agg_result_P_a1        => agg_result_P_a1,
                         agg_result_P_a1_ap_vld => agg_result_P_a1_ap_vld,
                         agg_result_P_a2        => agg_result_P_a2,
                         agg_result_P_a2_ap_vld => agg_result_P_a2_ap_vld,
                         agg_result_P_a3        => agg_result_P_a3,
                         agg_result_P_a3_ap_vld => agg_result_P_a3_ap_vld,
                         agg_result_P_b1        => agg_result_P_b1,
                         agg_result_P_b1_ap_vld => agg_result_P_b1_ap_vld,
                         agg_result_P_b2        => agg_result_P_b2,
                         agg_result_P_b2_ap_vld => agg_result_P_b2_ap_vld,
                         agg_result_P_b3        => agg_result_P_b3,
                         agg_result_P_b3_ap_vld => agg_result_P_b3_ap_vld,
                         agg_result_P_c1        => agg_result_P_c1,
                         agg_result_P_c1_ap_vld => agg_result_P_c1_ap_vld,
                         agg_result_P_c2        => agg_result_P_c2,
                         agg_result_P_c2_ap_vld => agg_result_P_c2_ap_vld,
                         agg_result_P_c3        => agg_result_P_c3,
                         agg_result_P_c3_ap_vld => agg_result_P_c3_ap_vld,
                         agg_result_Q_a1        => agg_result_Q_a1,
                         agg_result_Q_a1_ap_vld => agg_result_Q_a1_ap_vld,
                         agg_result_Q_a2        => agg_result_Q_a2,
                         agg_result_Q_a2_ap_vld => agg_result_Q_a2_ap_vld,
                         agg_result_Q_a3        => agg_result_Q_a3,
                         agg_result_Q_a3_ap_vld => agg_result_Q_a3_ap_vld,
                         agg_result_Q_b1        => agg_result_Q_b1,
                         agg_result_Q_b1_ap_vld => agg_result_Q_b1_ap_vld,
                         agg_result_Q_b2        => agg_result_Q_b2,
                         agg_result_Q_b2_ap_vld => agg_result_Q_b2_ap_vld,
                         agg_result_Q_b3        => agg_result_Q_b3,
                         agg_result_Q_b3_ap_vld => agg_result_Q_b3_ap_vld,
                         agg_result_Q_c1        => agg_result_Q_c1,
                         agg_result_Q_c1_ap_vld => agg_result_Q_c1_ap_vld,
                         agg_result_Q_c2        => agg_result_Q_c2,
                         agg_result_Q_c2_ap_vld => agg_result_Q_c2_ap_vld,
                         agg_result_Q_c3        => agg_result_Q_c3,
                         agg_result_Q_c3_ap_vld => agg_result_Q_c3_ap_vld,
                         agg_result_MU          => agg_result_MU,
                         agg_result_MU_ap_vld   => agg_result_MU_ap_vld,
                         agg_result_H0          => agg_result_H0,
                         agg_result_H0_ap_vld   => agg_result_H0_ap_vld,
                         agg_result_H1          => agg_result_H1,
                         agg_result_H1_ap_vld   => agg_result_H1_ap_vld,
                         agg_result_H2          => agg_result_H2,
                         agg_result_H2_ap_vld   => agg_result_H2_ap_vld,
                         agg_result_S           => agg_result_S,
                         agg_result_S_ap_vld    => agg_result_S_ap_vld,
                         agg_result_K0          => agg_result_K0,
                         agg_result_K0_ap_vld   => agg_result_K0_ap_vld,
                         agg_result_K1          => agg_result_K1,
                         agg_result_K1_ap_vld   => agg_result_K1_ap_vld,
                         agg_result_K2          => agg_result_K2,
                         agg_result_K2_ap_vld   => agg_result_K2_ap_vld,
                         agg_result_Y           => agg_result_Y,
                         agg_result_Y_ap_vld    => agg_result_Y_ap_vld,
                         value_M0               => value_M0,
                         value_M1               => value_M1,
                         value_M2               => value_M2,
                         value_A_a1             => value_A_a1,
                         value_A_a2             => value_A_a2,
                         value_A_a3             => value_A_a3,
                         value_A_b1             => value_A_b1,
                         value_A_b2             => value_A_b2,
                         value_A_b3             => value_A_b3,
                         value_A_c1             => value_A_c1,
                         value_A_c2             => value_A_c2,
                         value_A_c3             => value_A_c3,
                         value_P_a1             => value_P_a1,
                         value_P_a2             => value_P_a2,
                         value_P_a3             => value_P_a3,
                         value_P_b1             => value_P_b1,
                         value_P_b2             => value_P_b2,
                         value_P_b3             => value_P_b3,
                         value_P_c1             => value_P_c1,
                         value_P_c2             => value_P_c2,
                         value_P_c3             => value_P_c3,
                         value_Q_a1             => value_Q_a1,
                         value_Q_a2             => value_Q_a2,
                         value_Q_a3             => value_Q_a3,
                         value_Q_b1             => value_Q_b1,
                         value_Q_b2             => value_Q_b2,
                         value_Q_b3             => value_Q_b3,
                         value_Q_c1             => value_Q_c1,
                         value_Q_c2             => value_Q_c2,
                         value_Q_c3             => value_Q_c3,
                         value_MU               => value_MU,
                         value_H0               => value_H0,
                         value_H1               => value_H1,
                         value_H2               => value_H2,
                         value_S                => value_S,
                         value_K0               => value_K0,
                         value_K1               => value_K1,
                         value_K2               => value_K2,
                         value_Y                => value_Y );

  stimulus: process
  begin
  
    -- Put initialisation code here
    ap_rst <= '1';
    value_M0 <= x"3f800000"; --1
    value_M1 <= x"40000000"; --2
    value_M2 <= x"40400000"; --3
          
    value_A_a1 <= x"402a3d71"; --2.66
    value_A_a2 <= x"00000000"; --0
    value_A_a3 <= x"41b00000"; --22
          
    value_A_b1 <= x"40000000"; --2
    value_A_b2 <= x"41f00000"; --30
    value_A_b3 <= x"c0000000"; ---2
          
    value_A_c1 <= x"00000000"; --0
    value_A_c2 <= x"3f800000"; --1
    value_A_c3 <= x"3f800000"; --1
    
    value_Q_a1 <= x"41b00000"; --22
    value_Q_a2 <= x"41300000"; --11
    value_Q_a3 <= x"41200000"; --10
                
    value_Q_b1 <= x"41700000"; --22
    value_Q_b2 <= x"40a00000"; --11
    value_Q_b3 <= x"40400000"; --3
                
    value_Q_c1 <= x"40000000"; --2
    value_Q_c2 <= x"40c00000"; --6
    value_Q_c3 <= x"40e00000"; --7
    
    value_P_a1 <= x"40400000"; --3
    value_P_a2 <= x"00000000"; --0
    value_P_a3 <= x"40000000"; --2
    
    value_P_b1 <= x"40000000"; --2
    value_P_b2 <= x"00000000"; --0
    value_P_b3 <= x"c0000000"; --2
    
    value_P_c1 <= x"00000000"; --0
    value_P_c2 <= x"3f800000"; --1
    value_P_c3 <= x"3f800000"; --1
    
    value_Y    <= x"3fc83127"; --1.564

    wait for 30ns;
    ap_rst <= '0';
    ap_start <= '1';
    -- Put test bench stimulus code here
    wait until rising_edge(ap_done);
    ap_start <= '0';
    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      ap_clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    ap_clk <= '0';
    wait;
  end process;

end;