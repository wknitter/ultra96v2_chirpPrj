--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Thu Dec 19 14:44:43 2019
--Host        : ubuv1604 running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target ultra96v2_oob_wrapper.bd
--Design      : ultra96v2_oob_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ultra96v2_oob_wrapper is
  port (
    bt_ctsn : in STD_LOGIC;
    bt_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_rtsn : out STD_LOGIC;
    fan_pwm_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_csi0_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_csi0_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hs_mezz_csi0_mclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_csi1_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_csi1_d : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hs_mezz_csi1_mclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_dsi_clk : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_dsi_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hs_mezz_hsic_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_hsic_str : out STD_LOGIC_VECTOR ( 0 to 0 );
    ls_mezz_int : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ls_mezz_pwm0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ls_mezz_pwm1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ls_mezz_rst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ls_mezz_uart0_rx : in STD_LOGIC;
    ls_mezz_uart0_tx : out STD_LOGIC;
    ls_mezz_uart1_rx : in STD_LOGIC;
    ls_mezz_uart1_tx : out STD_LOGIC;
    wifi_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end ultra96v2_oob_wrapper;

architecture STRUCTURE of ultra96v2_oob_wrapper is
  component ultra96v2_oob is
  port (
    ls_mezz_uart0_rx : in STD_LOGIC;
    ls_mezz_uart0_tx : out STD_LOGIC;
    ls_mezz_uart1_rx : in STD_LOGIC;
    ls_mezz_uart1_tx : out STD_LOGIC;
    ls_mezz_int : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ls_mezz_rst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fan_pwm_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    wifi_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ls_mezz_pwm0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ls_mezz_pwm1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_ctsn : in STD_LOGIC;
    bt_rtsn : out STD_LOGIC;
    hs_mezz_csi0_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_csi0_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hs_mezz_csi1_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_csi1_d : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hs_mezz_csi0_mclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_csi1_mclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_dsi_clk : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_dsi_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hs_mezz_hsic_str : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_hsic_d : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ultra96v2_oob;
begin
ultra96v2_oob_i: component ultra96v2_oob
     port map (
      bt_ctsn => bt_ctsn,
      bt_en_led_tri_o(0) => bt_en_led_tri_o(0),
      bt_rtsn => bt_rtsn,
      fan_pwm_tri_o(0) => fan_pwm_tri_o(0),
      hs_mezz_csi0_c(1 downto 0) => hs_mezz_csi0_c(1 downto 0),
      hs_mezz_csi0_d(7 downto 0) => hs_mezz_csi0_d(7 downto 0),
      hs_mezz_csi0_mclk(0) => hs_mezz_csi0_mclk(0),
      hs_mezz_csi1_c(1 downto 0) => hs_mezz_csi1_c(1 downto 0),
      hs_mezz_csi1_d(3 downto 0) => hs_mezz_csi1_d(3 downto 0),
      hs_mezz_csi1_mclk(0) => hs_mezz_csi1_mclk(0),
      hs_mezz_dsi_clk(1 downto 0) => hs_mezz_dsi_clk(1 downto 0),
      hs_mezz_dsi_d(7 downto 0) => hs_mezz_dsi_d(7 downto 0),
      hs_mezz_hsic_d(0) => hs_mezz_hsic_d(0),
      hs_mezz_hsic_str(0) => hs_mezz_hsic_str(0),
      ls_mezz_int(1 downto 0) => ls_mezz_int(1 downto 0),
      ls_mezz_pwm0(0) => ls_mezz_pwm0(0),
      ls_mezz_pwm1(0) => ls_mezz_pwm1(0),
      ls_mezz_rst(1 downto 0) => ls_mezz_rst(1 downto 0),
      ls_mezz_uart0_rx => ls_mezz_uart0_rx,
      ls_mezz_uart0_tx => ls_mezz_uart0_tx,
      ls_mezz_uart1_rx => ls_mezz_uart1_rx,
      ls_mezz_uart1_tx => ls_mezz_uart1_tx,
      wifi_en_led_tri_o(0) => wifi_en_led_tri_o(0)
    );
end STRUCTURE;
