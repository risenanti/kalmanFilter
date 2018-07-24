-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity scaled_fixed2ieee is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_V : IN STD_LOGIC_VECTOR (42 downto 0);
    prescale : IN STD_LOGIC_VECTOR (5 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of scaled_fixed2ieee is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_2A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101010";
    constant ap_const_lv43_0 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000000000000";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv6_2A : STD_LOGIC_VECTOR (5 downto 0) := "101010";
    constant ap_const_lv5_1B : STD_LOGIC_VECTOR (4 downto 0) := "11011";
    constant ap_const_lv43_7FFFFFFFFFF : STD_LOGIC_VECTOR (42 downto 0) := "1111111111111111111111111111111111111111111";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv8_81 : STD_LOGIC_VECTOR (7 downto 0) := "10000001";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_29 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101001";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_Result_s_fu_209_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_reg_688 : STD_LOGIC_VECTOR (0 downto 0);
    signal in_shift_V_2_fu_223_p3 : STD_LOGIC_VECTOR (42 downto 0);
    signal in_shift_V_2_reg_693 : STD_LOGIC_VECTOR (42 downto 0);
    signal i_1_fu_237_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal out_bits_1_V_1_fu_409_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond1_fu_231_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_bits_1_V_2_fu_417_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_6_fu_436_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_6_reg_737 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_2_fu_454_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_3_fu_510_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal shift_2_fu_537_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_fu_504_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal in_shift_V_fu_582_p3 : STD_LOGIC_VECTOR (42 downto 0);
    signal out_bits_1_V_s_reg_112 : STD_LOGIC_VECTOR (31 downto 0);
    signal out_bits_0_V_s_reg_124 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_136 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_phi_mux_i1_phi_fu_151_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal i1_reg_147 : STD_LOGIC_VECTOR (1 downto 0);
    signal exitcond_fu_448_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal in_shift_reg_158 : STD_LOGIC_VECTOR (42 downto 0);
    signal tmp_1_fu_591_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal shift_reg_167 : STD_LOGIC_VECTOR (31 downto 0);
    signal i2_reg_178 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_phi_mux_p_Val2_s_phi_fu_192_p4 : STD_LOGIC_VECTOR (42 downto 0);
    signal ap_phi_mux_shift_1_phi_fu_202_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_2_fu_88 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_0_fu_481_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_2_1_fu_92 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_2_2_fu_96 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_2_fu_217_p2 : STD_LOGIC_VECTOR (42 downto 0);
    signal tmp_12_fu_243_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_247_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_5_cast_fu_255_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal Hi_assign_fu_259_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal Lo_assign_fu_269_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal Lo_assign_cast_fu_275_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal Hi_assign_cast_fu_265_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_14_fu_285_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_13_fu_279_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_16_fu_298_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_18_fu_310_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_15_fu_289_p4 : STD_LOGIC_VECTOR (42 downto 0);
    signal tmp_17_fu_304_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_19_fu_316_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_21_fu_331_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_22_fu_339_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_20_fu_324_p3 : STD_LOGIC_VECTOR (42 downto 0);
    signal tmp_23_fu_345_p1 : STD_LOGIC_VECTOR (42 downto 0);
    signal tmp_24_fu_349_p1 : STD_LOGIC_VECTOR (42 downto 0);
    signal tmp_25_fu_353_p2 : STD_LOGIC_VECTOR (42 downto 0);
    signal tmp_26_fu_359_p2 : STD_LOGIC_VECTOR (42 downto 0);
    signal cond_fu_371_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_4_fu_365_p2 : STD_LOGIC_VECTOR (42 downto 0);
    signal tmp_28_fu_385_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Val2_3_fu_377_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_389_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal p_Result_5_fu_397_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_11_fu_425_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_fu_428_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Val2_4_fu_460_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_7_fu_471_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal sh_assign_fu_525_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal isNeg_fu_544_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_552_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sh_assign_1_fu_558_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_566_p1 : STD_LOGIC_VECTOR (42 downto 0);
    signal tmp_s_fu_576_p2 : STD_LOGIC_VECTOR (42 downto 0);
    signal tmp_9_fu_570_p2 : STD_LOGIC_VECTOR (42 downto 0);
    signal prescale_cast_fu_597_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_600_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_cast_fu_606_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal newexp_fu_610_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_30_fu_616_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_624_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_fu_629_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal phitmp1_fu_639_p4 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_31_fu_635_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal out_exp_V_fu_657_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_5_fu_649_p3 : STD_LOGIC_VECTOR (22 downto 0);
    signal p_Result_8_fu_665_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_write_assign_fu_674_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);

    component filter_mux_32_32_dEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    filter_mux_32_32_dEe_U48 : component filter_mux_32_32_dEe
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => out_bits_0_V_s_reg_124,
        din1 => out_bits_1_V_s_reg_112,
        din2 => p_Result_6_reg_737,
        din3 => i1_reg_147,
        dout => p_Val2_4_fu_460_p5);

    filter_mux_32_32_dEe_U49 : component filter_mux_32_32_dEe
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 2,
        dout_WIDTH => 32)
    port map (
        din0 => c_2_1_fu_92,
        din1 => c_2_2_fu_96,
        din2 => c_2_fu_88,
        din3 => i2_reg_178,
        dout => sh_assign_fu_525_p5);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv32_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and ((tmp_8_fu_504_p2 = ap_const_lv1_1) or (tmp_1_fu_591_p2 = ap_const_lv1_0)))) then 
                    ap_return_preg <= result_write_assign_fu_674_p1;
                end if; 
            end if;
        end if;
    end process;


    i1_reg_147_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_448_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i1_reg_147 <= i_2_fu_454_p2;
            elsif (((exitcond1_fu_231_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i1_reg_147 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    i2_reg_178_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_448_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i2_reg_178 <= ap_const_lv2_0;
            elsif (((tmp_1_fu_591_p2 = ap_const_lv1_1) and (tmp_8_fu_504_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i2_reg_178 <= i_3_fu_510_p2;
            end if; 
        end if;
    end process;

    i_reg_136_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_231_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_reg_136 <= i_1_fu_237_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_136 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    in_shift_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_448_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                in_shift_reg_158 <= in_shift_V_2_reg_693;
            elsif (((tmp_1_fu_591_p2 = ap_const_lv1_1) and (tmp_8_fu_504_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                in_shift_reg_158 <= in_shift_V_fu_582_p3;
            end if; 
        end if;
    end process;

    shift_reg_167_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_448_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                shift_reg_167 <= ap_const_lv32_0;
            elsif (((tmp_1_fu_591_p2 = ap_const_lv1_1) and (tmp_8_fu_504_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                shift_reg_167 <= shift_2_fu_537_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_phi_mux_i1_phi_fu_151_p4 = ap_const_lv2_0) and (exitcond_fu_448_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                c_2_1_fu_92 <= c_0_fu_481_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_phi_mux_i1_phi_fu_151_p4 = ap_const_lv2_1) and (exitcond_fu_448_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                c_2_2_fu_96 <= c_0_fu_481_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((ap_phi_mux_i1_phi_fu_151_p4 = ap_const_lv2_1)) and not((ap_phi_mux_i1_phi_fu_151_p4 = ap_const_lv2_0)) and (exitcond_fu_448_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                c_2_fu_88 <= c_0_fu_481_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                in_shift_V_2_reg_693 <= in_shift_V_2_fu_223_p3;
                p_Result_s_reg_688 <= in_V(42 downto 42);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_231_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                out_bits_0_V_s_reg_124 <= out_bits_1_V_2_fu_417_p3;
                out_bits_1_V_s_reg_112 <= out_bits_1_V_1_fu_409_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_231_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                p_Result_6_reg_737 <= p_Result_6_fu_436_p5;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_231_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, tmp_8_fu_504_p2, exitcond_fu_448_p2, tmp_1_fu_591_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond1_fu_231_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((exitcond_fu_448_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and ((tmp_8_fu_504_p2 = ap_const_lv1_1) or (tmp_1_fu_591_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    Hi_assign_cast_fu_265_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(Hi_assign_fu_259_p2),32));
    Hi_assign_fu_259_p2 <= std_logic_vector(signed(ap_const_lv6_2A) - signed(tmp_5_cast_fu_255_p1));
    Lo_assign_cast_fu_275_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(Lo_assign_fu_269_p2),32));
    Lo_assign_fu_269_p2 <= std_logic_vector(signed(ap_const_lv5_1B) - signed(tmp_5_fu_247_p3));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state4, tmp_8_fu_504_p2, tmp_1_fu_591_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state4) and ((tmp_8_fu_504_p2 = ap_const_lv1_1) or (tmp_1_fu_591_p2 = ap_const_lv1_0))) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_mux_i1_phi_fu_151_p4 <= i1_reg_147;

    ap_phi_mux_p_Val2_s_phi_fu_192_p4_assign_proc : process(ap_CS_fsm_state4, tmp_8_fu_504_p2, in_shift_V_fu_582_p3, in_shift_reg_158, tmp_1_fu_591_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
            if (((tmp_1_fu_591_p2 = ap_const_lv1_0) and (tmp_8_fu_504_p2 = ap_const_lv1_0))) then 
                ap_phi_mux_p_Val2_s_phi_fu_192_p4 <= in_shift_V_fu_582_p3;
            elsif ((tmp_8_fu_504_p2 = ap_const_lv1_1)) then 
                ap_phi_mux_p_Val2_s_phi_fu_192_p4 <= in_shift_reg_158;
            else 
                ap_phi_mux_p_Val2_s_phi_fu_192_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            ap_phi_mux_p_Val2_s_phi_fu_192_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ap_phi_mux_shift_1_phi_fu_202_p4_assign_proc : process(ap_CS_fsm_state4, shift_2_fu_537_p2, tmp_8_fu_504_p2, tmp_1_fu_591_p2, shift_reg_167)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
            if (((tmp_1_fu_591_p2 = ap_const_lv1_0) and (tmp_8_fu_504_p2 = ap_const_lv1_0))) then 
                ap_phi_mux_shift_1_phi_fu_202_p4 <= shift_2_fu_537_p2;
            elsif ((tmp_8_fu_504_p2 = ap_const_lv1_1)) then 
                ap_phi_mux_shift_1_phi_fu_202_p4 <= shift_reg_167;
            else 
                ap_phi_mux_shift_1_phi_fu_202_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            ap_phi_mux_shift_1_phi_fu_202_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4, tmp_8_fu_504_p2, tmp_1_fu_591_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and ((tmp_8_fu_504_p2 = ap_const_lv1_1) or (tmp_1_fu_591_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_state4, tmp_8_fu_504_p2, tmp_1_fu_591_p2, result_write_assign_fu_674_p1, ap_return_preg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and ((tmp_8_fu_504_p2 = ap_const_lv1_1) or (tmp_1_fu_591_p2 = ap_const_lv1_0)))) then 
            ap_return <= result_write_assign_fu_674_p1;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    
    c_0_fu_481_p3_proc : process(p_Result_7_fu_471_p4)
    begin
        c_0_fu_481_p3 <= std_logic_vector(to_unsigned(32, 32));
        for i in 0 to 32 - 1 loop
            if p_Result_7_fu_471_p4(i) = '1' then
                c_0_fu_481_p3 <= std_logic_vector(to_unsigned(i,32));
                exit;
            end if;
        end loop;
    end process;

    cond_fu_371_p2 <= "1" when (i_reg_136 = ap_const_lv2_0) else "0";
    exitcond1_fu_231_p2 <= "1" when (i_reg_136 = ap_const_lv2_2) else "0";
    exitcond_fu_448_p2 <= "1" when (i1_reg_147 = ap_const_lv2_3) else "0";
    i_1_fu_237_p2 <= std_logic_vector(unsigned(i_reg_136) + unsigned(ap_const_lv2_1));
    i_2_fu_454_p2 <= std_logic_vector(unsigned(i1_reg_147) + unsigned(ap_const_lv2_1));
    i_3_fu_510_p2 <= std_logic_vector(unsigned(i2_reg_178) + unsigned(ap_const_lv2_1));
    in_shift_V_2_fu_223_p3 <= 
        p_Val2_2_fu_217_p2 when (p_Result_s_fu_209_p3(0) = '1') else 
        in_V;
    in_shift_V_fu_582_p3 <= 
        tmp_s_fu_576_p2 when (isNeg_fu_544_p3(0) = '1') else 
        tmp_9_fu_570_p2;
    isNeg_fu_544_p3 <= sh_assign_fu_525_p5(31 downto 31);
    newexp_fu_610_p2 <= std_logic_vector(unsigned(tmp_4_cast_fu_606_p1) - unsigned(ap_phi_mux_shift_1_phi_fu_202_p4));
    or_cond_fu_629_p2 <= (tmp_7_fu_624_p2 or tmp_30_fu_616_p3);
    out_bits_1_V_1_fu_409_p3 <= 
        out_bits_1_V_s_reg_112 when (cond_fu_371_p2(0) = '1') else 
        p_Result_5_fu_397_p5;
    out_bits_1_V_2_fu_417_p3 <= 
        p_Result_5_fu_397_p5 when (cond_fu_371_p2(0) = '1') else 
        out_bits_0_V_s_reg_124;
    out_exp_V_fu_657_p3 <= 
        ap_const_lv8_0 when (or_cond_fu_629_p2(0) = '1') else 
        tmp_31_fu_635_p1;
    p_Result_4_fu_365_p2 <= (tmp_26_fu_359_p2 and tmp_25_fu_353_p2);
    p_Result_5_fu_397_p5 <= (tmp_3_fu_389_p3 & p_Val2_3_fu_377_p3(14 downto 0));
    p_Result_6_fu_436_p5 <= (tmp_fu_428_p3 & ap_const_lv32_0(19 downto 0));
    
    p_Result_7_fu_471_p4_proc : process(p_Val2_4_fu_460_p5)
    variable vlo_cpy : STD_LOGIC_VECTOR(32+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(32+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable p_Result_7_fu_471_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(32 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(32 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(5 - 1 downto 0) := ap_const_lv32_1F(5 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(5 - 1 downto 0) := ap_const_lv32_0(5 - 1 downto 0);
        v0_cpy := p_Val2_4_fu_460_p5;
        if (vlo_cpy(5 - 1 downto 0) > vhi_cpy(5 - 1 downto 0)) then
            vhi_cpy(5-1 downto 0) := std_logic_vector(32-1-unsigned(ap_const_lv32_0(5-1 downto 0)));
            vlo_cpy(5-1 downto 0) := std_logic_vector(32-1-unsigned(ap_const_lv32_1F(5-1 downto 0)));
            for p_Result_7_fu_471_p4_i in 0 to 32-1 loop
                v0_cpy(p_Result_7_fu_471_p4_i) := p_Val2_4_fu_460_p5(32-1-p_Result_7_fu_471_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(5-1 downto 0)))));

        section := (others=>'0');
        section(5-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(5-1 downto 0)) - unsigned(vlo_cpy(5-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(32-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        p_Result_7_fu_471_p4 <= resvalue(32-1 downto 0);
    end process;

    p_Result_8_fu_665_p4 <= ((p_Result_s_reg_688 & out_exp_V_fu_657_p3) & p_Val2_5_fu_649_p3);
    p_Result_s_fu_209_p3 <= in_V(42 downto 42);
    p_Val2_2_fu_217_p2 <= std_logic_vector(unsigned(ap_const_lv43_0) - unsigned(in_V));
    p_Val2_3_fu_377_p3 <= 
        out_bits_0_V_s_reg_124 when (cond_fu_371_p2(0) = '1') else 
        out_bits_1_V_s_reg_112;
    p_Val2_5_fu_649_p3 <= 
        ap_const_lv23_0 when (or_cond_fu_629_p2(0) = '1') else 
        phitmp1_fu_639_p4;
    phitmp1_fu_639_p4 <= ap_phi_mux_p_Val2_s_phi_fu_192_p4(41 downto 19);
    prescale_cast_fu_597_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(prescale),8));
    result_write_assign_fu_674_p1 <= p_Result_8_fu_665_p4;
    sh_assign_1_fu_558_p3 <= 
        tmp_2_fu_552_p2 when (isNeg_fu_544_p3(0) = '1') else 
        sh_assign_fu_525_p5;
    shift_2_fu_537_p2 <= std_logic_vector(unsigned(sh_assign_fu_525_p5) + unsigned(shift_reg_167));
    tmp_11_fu_425_p1 <= in_shift_V_2_reg_693(11 - 1 downto 0);
    tmp_12_fu_243_p1 <= i_reg_136(1 - 1 downto 0);
    tmp_13_fu_279_p2 <= "1" when (unsigned(Lo_assign_cast_fu_275_p1) > unsigned(Hi_assign_cast_fu_265_p1)) else "0";
    tmp_14_fu_285_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(Lo_assign_fu_269_p2),6));
    
    tmp_15_fu_289_p4_proc : process(in_shift_V_2_reg_693)
    variable vlo_cpy : STD_LOGIC_VECTOR(43+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(43+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(43 - 1 downto 0);
    variable tmp_15_fu_289_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(43 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(43 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(43 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(6 - 1 downto 0) := ap_const_lv32_2A(6 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(6 - 1 downto 0) := ap_const_lv32_0(6 - 1 downto 0);
        v0_cpy := in_shift_V_2_reg_693;
        if (vlo_cpy(6 - 1 downto 0) > vhi_cpy(6 - 1 downto 0)) then
            vhi_cpy(6-1 downto 0) := std_logic_vector(43-1-unsigned(ap_const_lv32_0(6-1 downto 0)));
            vlo_cpy(6-1 downto 0) := std_logic_vector(43-1-unsigned(ap_const_lv32_2A(6-1 downto 0)));
            for tmp_15_fu_289_p4_i in 0 to 43-1 loop
                v0_cpy(tmp_15_fu_289_p4_i) := in_shift_V_2_reg_693(43-1-tmp_15_fu_289_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(6-1 downto 0)))));

        section := (others=>'0');
        section(6-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(6-1 downto 0)) - unsigned(vlo_cpy(6-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(43-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_15_fu_289_p4 <= resvalue(43-1 downto 0);
    end process;

    tmp_16_fu_298_p2 <= std_logic_vector(unsigned(tmp_14_fu_285_p1) - unsigned(Hi_assign_fu_259_p2));
    tmp_17_fu_304_p2 <= std_logic_vector(signed(ap_const_lv6_2A) - signed(tmp_14_fu_285_p1));
    tmp_18_fu_310_p2 <= std_logic_vector(unsigned(Hi_assign_fu_259_p2) - unsigned(tmp_14_fu_285_p1));
    tmp_19_fu_316_p3 <= 
        tmp_16_fu_298_p2 when (tmp_13_fu_279_p2(0) = '1') else 
        tmp_18_fu_310_p2;
    tmp_1_fu_591_p2 <= "1" when (sh_assign_fu_525_p5 = ap_const_lv32_10) else "0";
    tmp_20_fu_324_p3 <= 
        tmp_15_fu_289_p4 when (tmp_13_fu_279_p2(0) = '1') else 
        in_shift_V_2_reg_693;
    tmp_21_fu_331_p3 <= 
        tmp_17_fu_304_p2 when (tmp_13_fu_279_p2(0) = '1') else 
        tmp_14_fu_285_p1;
    tmp_22_fu_339_p2 <= std_logic_vector(signed(ap_const_lv6_2A) - signed(tmp_19_fu_316_p3));
    tmp_23_fu_345_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_21_fu_331_p3),43));
    tmp_24_fu_349_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_22_fu_339_p2),43));
    tmp_25_fu_353_p2 <= std_logic_vector(shift_right(unsigned(tmp_20_fu_324_p3),to_integer(unsigned('0' & tmp_23_fu_345_p1(31-1 downto 0)))));
    tmp_26_fu_359_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv43_7FFFFFFFFFF),to_integer(unsigned('0' & tmp_24_fu_349_p1(31-1 downto 0)))));
    tmp_28_fu_385_p1 <= p_Result_4_fu_365_p2(16 - 1 downto 0);
    tmp_2_fu_552_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(sh_assign_fu_525_p5));
    tmp_30_fu_616_p3 <= newexp_fu_610_p2(31 downto 31);
    tmp_31_fu_635_p1 <= newexp_fu_610_p2(8 - 1 downto 0);
    tmp_3_fu_389_p3 <= (tmp_28_fu_385_p1 & ap_const_lv1_1);
    tmp_4_cast_fu_606_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_600_p2),32));
    tmp_4_fu_600_p2 <= std_logic_vector(signed(ap_const_lv8_81) - signed(prescale_cast_fu_597_p1));
    tmp_5_cast_fu_255_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_247_p3),6));
    tmp_5_fu_247_p3 <= (tmp_12_fu_243_p1 & ap_const_lv4_0);
    tmp_6_fu_566_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sh_assign_1_fu_558_p3),43));
    tmp_7_fu_624_p2 <= "1" when (in_V = ap_const_lv43_0) else "0";
    tmp_8_fu_504_p2 <= "1" when (i2_reg_178 = ap_const_lv2_3) else "0";
    tmp_9_fu_570_p2 <= std_logic_vector(shift_left(unsigned(in_shift_reg_158),to_integer(unsigned('0' & tmp_6_fu_566_p1(31-1 downto 0)))));
    tmp_fu_428_p3 <= (tmp_11_fu_425_p1 & ap_const_lv1_1);
    tmp_s_fu_576_p2 <= std_logic_vector(shift_right(unsigned(in_shift_reg_158),to_integer(unsigned('0' & tmp_6_fu_566_p1(31-1 downto 0)))));
end behav;
