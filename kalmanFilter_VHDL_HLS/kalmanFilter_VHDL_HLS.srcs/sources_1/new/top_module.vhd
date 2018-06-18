
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_module is
    Port ( clock : in STD_LOGIC);
end top_module;

architecture Behavioral of top_module is

component test is
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
    measurement : IN STD_LOGIC_VECTOR (31 downto 0) );
end component;

signal start_signal            : std_logic  := '0';
signal start_signal_next       : std_logic  := '1';
signal done_signal             : std_logic  := '0';
signal idle_signal             : std_logic  := '0';
signal read_signal             : std_logic  := '0';
signal measurement_value_input : std_logic_vector(31 downto 0) :="00111111110010000011000100100111";
signal measurement_value1      : std_logic_vector(31 downto 0) :="00111111110010000011000100100111";

begin

	process(clock)
	begin
		if(rising_edge(clock)) then
			start_signal <= start_signal_next;
		end if;
	end process;
	
	process(done_signal, idle_signal)
	begin
		if(rising_edge(idle_signal) OR rising_edge(done_signal)) then
			start_signal_next <= '1';
		else
			start_signal_next <= '0';
		end if;
	end process;

	u0 : test port map 
	(
		ap_clk => clock, ap_start => start_signal, ap_rst => '0', ap_done => done_signal, ap_idle => idle_signal,
			agg_result_M0 => open, agg_result_M1 => open, agg_result_M2 => open, 
			agg_result_M0_ap_vld => open, agg_result_M1_ap_vld => open, agg_result_M2_ap_vld => open,
			
			agg_result_P_a1 => open, agg_result_P_a2 => open, agg_result_P_a3 => open,
			agg_result_P_a1_ap_vld => open, agg_result_P_a2_ap_vld => open, agg_result_P_a3_ap_vld => open,
			
			agg_result_P_b1 => open, agg_result_P_b2 => open, agg_result_P_b3 => open,
			agg_result_P_b1_ap_vld => open, agg_result_P_b2_ap_vld => open, agg_result_P_b3_ap_vld => open,
			
			agg_result_P_c1 => open, agg_result_P_c2 => open, agg_result_P_c3 => open,
			agg_result_P_c1_ap_vld => open, agg_result_P_c2_ap_vld => open, agg_result_P_c3_ap_vld => open,
			
			agg_result_A_a1 => open, agg_result_A_a2 => open, agg_result_A_a3 => open,
			agg_result_A_a1_ap_vld => open, agg_result_A_a2_ap_vld => open, agg_result_A_a3_ap_vld => open,
			
			agg_result_A_b1 => open, agg_result_A_b2 => open, agg_result_A_b3 => open,
			agg_result_A_b1_ap_vld => open, agg_result_A_b2_ap_vld => open, agg_result_A_b3_ap_vld => open,
			
			agg_result_A_c1 => open, agg_result_A_c2 => open, agg_result_A_c3 => open,
			agg_result_A_c1_ap_vld => open, agg_result_A_c2_ap_vld => open, agg_result_A_c3_ap_vld => open,
			
			agg_result_Q_a1 => open, agg_result_Q_a2 => open, agg_result_Q_a3 => open,
			agg_result_Q_a1_ap_vld => open, agg_result_Q_a2_ap_vld => open, agg_result_Q_a3_ap_vld => open,
			
			agg_result_Q_b1 => open, agg_result_Q_b2 => open, agg_result_Q_b3 => open,
			agg_result_Q_b1_ap_vld => open, agg_result_Q_b2_ap_vld => open, agg_result_Q_b3_ap_vld => open,
			
			agg_result_Q_c1 => open, agg_result_Q_c2 => open, agg_result_Q_c3 => open,
			agg_result_Q_c1_ap_vld => open, agg_result_Q_c2_ap_vld => open, agg_result_Q_c3_ap_vld => open,
			
			agg_result_MU => open, agg_result_MU_ap_vld => open,
			
			agg_result_H0 => open, agg_result_H1 => open, agg_result_H2 => open, 
			agg_result_H0_ap_vld => open, agg_result_H1_ap_vld => open, agg_result_H2_ap_vld => open,
			
			agg_result_S => open, agg_result_S_ap_vld => open,
			
			agg_result_K0 => open, agg_result_K1 => open, agg_result_K2 => open, 
			agg_result_K0_ap_vld => open, agg_result_K1_ap_vld => open, agg_result_K2_ap_vld => open,
			
			agg_result_Y => open, agg_result_Y_ap_vld => open,
			
		measurement => measurement_value_input
	);

end Behavioral;
