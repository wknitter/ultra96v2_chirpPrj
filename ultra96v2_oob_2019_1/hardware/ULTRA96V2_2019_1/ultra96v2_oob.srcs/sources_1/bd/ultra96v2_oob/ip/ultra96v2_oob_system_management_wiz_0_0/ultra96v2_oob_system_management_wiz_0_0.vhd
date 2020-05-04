-- file: ultra96v2_oob_system_management_wiz_0_0.vhd
-- (c) Copyright 2013 - 2013 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
Library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity ultra96v2_oob_system_management_wiz_0_0 is
   port
   (
    -- System interface
    s_axi_aclk      : in  std_logic;                                      
    s_axi_aresetn   : in  std_logic;                                      
    -- AXI Write address channel signals                                        
    s_axi_awaddr    : in  std_logic_vector(12 downto 0);                  
    s_axi_awvalid   : in  std_logic;                                      
    s_axi_awready   : out std_logic;                                      
    -- AXI Write data channel signals                                           
    s_axi_wdata     : in  std_logic_vector(31 downto 0);                  
    s_axi_wstrb     : in  std_logic_vector(3 downto 0);              
    s_axi_wvalid    : in  std_logic;                                      
    s_axi_wready    : out std_logic;                                      
    -- AXI Write response channel signals                                       
    s_axi_bresp     : out std_logic_vector(1 downto 0);                   
    s_axi_bvalid    : out std_logic;                                      
    s_axi_bready    : in  std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_araddr    : in  std_logic_vector(12 downto 0);                  
    s_axi_arvalid   : in  std_logic;                                      
    s_axi_arready   : out std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_rdata     : out std_logic_vector(31 downto 0);                  
    s_axi_rresp     : out std_logic_vector(1 downto 0);                   
    s_axi_rvalid    : out std_logic;                                      
    s_axi_rready    : in  std_logic;           

   -- Input to the system from the axi_xadc core
    ip2intc_irpt    : out std_logic;
    busy_out        : out  STD_LOGIC;                        -- ADC Busy signal
    channel_out     : out  STD_LOGIC_VECTOR (5 downto 0);    -- Channel Selection Outputs
    eoc_out         : out  STD_LOGIC;                        -- End of Conversion Signal
    eos_out         : out  STD_LOGIC;                        -- End of Sequence Signal
    alarm_out       : out STD_LOGIC
);
end ultra96v2_oob_system_management_wiz_0_0;

architecture xilinx of ultra96v2_oob_system_management_wiz_0_0 is

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of xilinx : architecture is "ultra96v2_oob_system_management_wiz_0_0,system_management_wiz_v1_3_10,{component_name=ultra96v2_oob_system_management_wiz_0_0,enable_axi=true,enable_axi4stream=false,dclk_frequency=100,enable_busy=true,enable_convst=false,enable_convstclk=false,enable_dclk=true,enable_drp=false,enable_eoc=true,enable_eos=true,enable_vbram_alarm=false,enable_vccpsaux_alarm=false,enable_Vccint_alarm=false,enable_Vccaux_alarm=false,enable_vccpsintfp_alarm=false,enable_vccpsintlp_alarm=false,ot_alarm=false,user_temp_alarm=false,I2C_Interface=false,Reset=false,PMBUS_Interface=false,EXTERNAL_MUXADDR_PORT=false,Enable_EXTERNAL_MUX=false,EXTERNAL_MUX_CHANNEL=VP_VN,Advanced_Simulations=false,Jtag=false,ADC_DATA_port=false,Enable_Slave0=false,Enable_Slave1=false,Enable_dual_sequence=false,timing_mode=continuous,channel_sel=contineous_sequence,sim_file_sel=Default,num_wave=1,waveform_type=CONSTANT,WAVEFORM_TYPE_TEMP=CONSTANT,WAVEFORM_TYPE_VCCINT=CONSTANT,WAVEFORM_TYPE_VCCAUX=CONSTANT,WAVEFORM_TYPE_VP=CONSTANT,WAVEFORM_TYPE_VAUXP0=CONSTANT,WAVEFORM_TYPE_VAUXP1=CONSTANT,WAVEFORM_TYPE_VAUXP2=CONSTANT,WAVEFORM_TYPE_VAUXP3=CONSTANT,WAVEFORM_TYPE_VAUXP4=CONSTANT,WAVEFORM_TYPE_VAUXP5=CONSTANT,WAVEFORM_TYPE_VAUXP6=CONSTANT,WAVEFORM_TYPE_VAUXP7=CONSTANT,WAVEFORM_TYPE_VAUXP8=CONSTANT,WAVEFORM_TYPE_VAUXP9=CONSTANT,WAVEFORM_TYPE_VAUXP10=CONSTANT,WAVEFORM_TYPE_VAUXP11=CONSTANT,WAVEFORM_TYPE_VAUXP12=CONSTANT,WAVEFORM_TYPE_VAUXP13=CONSTANT,WAVEFORM_TYPE_VAUXP14=CONSTANT,WAVEFORM_TYPE_VAUXP15=CONSTANT,WAVEFORM_TYPE_VUSER0=CONSTANT,WAVEFORM_TYPE_VUSER1=CONSTANT,WAVEFORM_TYPE_VUSER2=CONSTANT,WAVEFORM_TYPE_VUSER3=CONSTANT,STIMULUS_FREQ_TEMP=0.1,STIMULUS_FREQ_VCCINT=0.1,STIMULUS_FREQ_VCCAUX=0.1,STIMULUS_FREQ_VP=0.1,STIMULUS_FREQ_VAUXP0=0.1,STIMULUS_FREQ_VAUXP1=0.1,STIMULUS_FREQ_VAUXP2=0.1,STIMULUS_FREQ_VAUXP3=0.1,STIMULUS_FREQ_VAUXP4=0.1,STIMULUS_FREQ_VAUXP5=0.1,STIMULUS_FREQ_VAUXP6=0.1,STIMULUS_FREQ_VAUXP7=0.1,STIMULUS_FREQ_VAUXP8=0.1,STIMULUS_FREQ_VAUXP9=0.1,STIMULUS_FREQ_VAUXP10=0.1,STIMULUS_FREQ_VAUXP11=0.1,STIMULUS_FREQ_VAUXP12=0.1,STIMULUS_FREQ_VAUXP13=0.1,STIMULUS_FREQ_VAUXP14=0.1,STIMULUS_FREQ_VAUXP15=0.1,STIMULUS_FREQ_VUSER0=0.1,STIMULUS_FREQ_VUSER1=0.1,STIMULUS_FREQ_VUSER2=0.1,STIMULUS_FREQ_VUSER3=0.1,Enable_I2C_Slave=0,i2c_override=false,channel_averaging=None,SECONDARY_SEQUENCER_RATE=1,stimulus_freq=0.1,ANALOG_BANK=65,USER_SUPPLY0=VCCO,USER_SUPPLY1=VCCINT,USER_SUPPLY2=VCCAUX,USER_SUPPLY3=VCCO,SUPPLY0_BANK=44,SUPPLY1_BANK=44,SUPPLY2_BANK=44,SUPPLY3_BANK=65,AVERAGE_ENABLE_VUSER0=false,AVERAGE_ENABLE_VUSER1=false,AVERAGE_ENABLE_VUSER2=false,AVERAGE_ENABLE_VUSER3=false,DUAL_SEQ_VUSER0=false,DUAL_SEQ_VUSER1=false,DUAL_SEQ_VUSER2=false,DUAL_SEQ_VUSER3=false,CHANNEL_ENABLE_VUSER0=false,CHANNEL_ENABLE_VUSER1=false,CHANNEL_ENABLE_VUSER2=false,CHANNEL_ENABLE_VUSER3=false,USER_SUPPLY0_ALARM_UPPER=1.81,USER_SUPPLY1_ALARM_UPPER=0.91,USER_SUPPLY2_ALARM_UPPER=1.81,USER_SUPPLY3_ALARM_UPPER=1.81,USER_SUPPLY0_ALARM_LOWER=1.79,USER_SUPPLY1_ALARM_LOWER=0.89,USER_SUPPLY2_ALARM_LOWER=1.79,USER_SUPPLY3_ALARM_LOWER=1.79,USER_SUPPLY0_LEVEL=1.8,USER_SUPPLY1_LEVEL=0.9,USER_SUPPLY2_LEVEL=1.8,USER_SUPPLY3_LEVEL=1.8,USER_SUPPLY0_ALARM=false,USER_SUPPLY1_ALARM=false,USER_SUPPLY2_ALARM=false,USER_SUPPLY3_ALARM=false,ENABLE_TEMP_BUS=false,ACQUISITION_TIME=4,ACQUISITION_TIME_VP_VN=false,ACQUISITION_TIME_VP_VN=false,ACQUISITION_TIME_VAUX0=false,ACQUISITION_TIME_VAUX1=false,ACQUISITION_TIME_VAUX2=false,ACQUISITION_TIME_VAUX3=false,ACQUISITION_TIME_VAUX4=false,ACQUISITION_TIME_VAUX5=false,ACQUISITION_TIME_VAUX6=false,ACQUISITION_TIME_VAUX7=false,ACQUISITION_TIME_VAUX8=false,ACQUISITION_TIME_VAUX9=false,ACQUISITION_TIME_VAUX10=false,ACQUISITION_TIME_VAUX11=false,ACQUISITION_TIME_VAUX12=false,ACQUISITION_TIME_VAUX13=false,ACQUISITION_TIME_VAUX14=false,ACQUISITION_TIME_VAUX15=false,BIPOLAR_VP_VN=false,BIPOLAR_VP_VN=false,BIPOLAR_VAUX0=false,BIPOLAR_VAUX1=false,BIPOLAR_VAUX2=false,BIPOLAR_VAUX3=false,BIPOLAR_VAUX4=false,BIPOLAR_VAUX5=false,BIPOLAR_VAUX6=false,BIPOLAR_VAUX7=false,BIPOLAR_VAUX8=false,BIPOLAR_VAUX9=false,BIPOLAR_VAUX10=false,BIPOLAR_VAUX11=false,BIPOLAR_VAUX12=false,BIPOLAR_VAUX13=false,BIPOLAR_VAUX14=false,BIPOLAR_VAUX15=false,AVERAGE_ENABLE_VP_VN=false,AVERAGE_ENABLE_VP_VN=false,AVERAGE_ENABLE_VAUX0=false,AVERAGE_ENABLE_VAUX1=false,AVERAGE_ENABLE_VAUX2=false,AVERAGE_ENABLE_VAUX3=false,AVERAGE_ENABLE_VAUX4=false,AVERAGE_ENABLE_VAUX5=false,AVERAGE_ENABLE_VAUX6=false,AVERAGE_ENABLE_VAUX7=false,AVERAGE_ENABLE_VAUX8=false,AVERAGE_ENABLE_VAUX9=false,AVERAGE_ENABLE_VAUX10=false,AVERAGE_ENABLE_VAUX11=false,AVERAGE_ENABLE_VAUX12=false,AVERAGE_ENABLE_VAUX13=false,AVERAGE_ENABLE_VAUX14=false,AVERAGE_ENABLE_VAUX15=false,CHANNEL_ENABLE_VP_VN=false,CHANNEL_ENABLE_VP_VN=false,CHANNEL_ENABLE_VAUX0=false,CHANNEL_ENABLE_VAUX1=false,CHANNEL_ENABLE_VAUX2=false,CHANNEL_ENABLE_VAUX3=false,CHANNEL_ENABLE_VAUX4=false,CHANNEL_ENABLE_VAUX5=false,CHANNEL_ENABLE_VAUX6=false,CHANNEL_ENABLE_VAUX7=false,CHANNEL_ENABLE_VAUX8=false,CHANNEL_ENABLE_VAUX9=false,CHANNEL_ENABLE_VAUX10=false,CHANNEL_ENABLE_VAUX11=false,CHANNEL_ENABLE_VAUX12=false,CHANNEL_ENABLE_VAUX13=false,CHANNEL_ENABLE_VAUX14=false,CHANNEL_ENABLE_VAUX15=false,CHANNEL_ENABLE_CALIBRATION=true,DUAL_SEQ_CALIBRATION=false,CHANNEL_ENABLE_TEMPERATURE=true,CHANNEL_ENABLE_VCCINT=true,CHANNEL_ENABLE_VCCPSINTLP=false,CHANNEL_ENABLE_VCCPSINTFP=false,CHANNEL_ENABLE_VCCPSINTFP=false,CHANNEL_ENABLE_VCCPSAUX=false,CHANNEL_ENABLE_VCCAUX=true,CHANNEL_ENABLE_VCCAUX=true,CHANNEL_ENABLE_VP_VN=false,CHANNEL_ENABLE_VREFP=false,CHANNEL_ENABLE_VREFN=false,CHANNEL_ENABLE_VBRAM=true,CHANNEL_ENABLE_VCCPINT=false,CHANNEL_ENABLE_VCCPAUX=false,CHANNEL_ENABLE_VCCDDRO=false,AVERAGE_ENABLE_TEMPERATURE=false,AVERAGE_ENABLE_VCCINT=false,AVERAGE_ENABLE_VCCPSINTLP=false,AVERAGE_ENABLE_VCCPSINTFP=false,AVERAGE_ENABLE_VCCPSINTFP=false,AVERAGE_ENABLE_VCCPSAUX=false,AVERAGE_ENABLE_VCCAUX=false,AVERAGE_ENABLE_VCCAUX=false,AVERAGE_ENABLE_VP_VN=false,AVERAGE_ENABLE_VBRAM=false,AVERAGE_ENABLE_VCCPINT=false,AVERAGE_ENABLE_VCCPAUX=false,AVERAGE_ENABLE_VCCDDRO=false,DUAL_SEQ_TEMPERATURE=false,DUAL_SEQ_VCCINT=false,DUAL_SEQ_VCCPSINTLP=false,DUAL_SEQ_VCCPSINTFP=false,DUAL_SEQ_VCCPSINTFP=false,DUAL_SEQ_VCCPSAUX=false,DUAL_SEQ_VCCAUX=false,DUAL_SEQ_VCCAUX=false,DUAL_SEQ_VP_VN=false,DUAL_SEQ_VREFP=false,DUAL_SEQ_VREFN=false,DUAL_SEQ_VBRAM=false,DUAL_SEQ_VCCPINT=false,DUAL_SEQ_VCCPAUX=false,DUAL_SEQ_VCCDDRO=false,VCCINT_ALARM_LOWER=0.86,VCCPSINTLP_ALARM_LOWER=0.81,VCCPSINTFP_ALARM_LOWER=0.81,VCCPSAUX_ALARM_LOWER=1.71,VCCAUX_ALARM_LOWER=1.75,VBRAM_ALARM_LOWER=0.86,VCCPINT_ALARM_LOWER=0.95,VCCPAUX_ALARM_LOWER=1.71,VCCDDRO_ALARM_LOWER=1.2,VCCDDRO_ALARM_LOWER=1.2,VCCINT_ALARM_UPPER=0.92,VCCPSINTLP_ALARM_UPPER=0.86,VCCPSINTFP_ALARM_UPPER=0.86,VCCPSAUX_ALARM_UPPER=1.81,VCCAUX_ALARM_UPPER=1.89,VBRAM_ALARM_UPPER=0.92,VCCPINT_ALARM_UPPER=1.00,VCCPAUX_ALARM_UPPER=1.8,VCCDDRO_ALARM_UPPER=1.25,VCCDDRO_ALARM_UPPER=1.25,ENABLE_VCCPINT_ALARM=false,ENABLE_VCCPSINTLP_ALARM=false,ENABLE_VCCPSAUX_ALARM=false,ENABLE_VCCPSINTFP_ALARM=false,ENABLE_VCCPAUX_ALARM=false,ENABLE_VCCDDRO_ALARM=false,ENABLE_VCCDDRO_ALARM=false,AVERAGE_ENABLE_VUSER0_SLAVE0=false,AVERAGE_ENABLE_VUSER1_SLAVE0=false,AVERAGE_ENABLE_VUSER2_SLAVE0=false,AVERAGE_ENABLE_VUSER3_SLAVE0=false,AVERAGE_ENABLE_VUSER0_SLAVE1=false,AVERAGE_ENABLE_VUSER1_SLAVE1=false,AVERAGE_ENABLE_VUSER2_SLAVE1=false,AVERAGE_ENABLE_VUSER3_SLAVE1=false,SUPPLY0_SLAVE0_ALARM_UPPER=1.81,SUPPLY1_SLAVE0_ALARM_UPPER=0.91,SUPPLY2_SLAVE0_ALARM_UPPER=1.81,SUPPLY3_SLAVE0_ALARM_UPPER=1.81,SUPPLY0_SLAVE0_ALARM_LOWER=1.79,SUPPLY1_SLAVE0_ALARM_LOWER=0.89,SUPPLY2_SLAVE0_ALARM_LOWER=1.79,SUPPLY3_SLAVE0_ALARM_LOWER=1.79,SUPPLY0_SLAVE1_ALARM_UPPER=1.81,SUPPLY1_SLAVE1_ALARM_UPPER=0.91,SUPPLY2_SLAVE1_ALARM_UPPER=1.81,SUPPLY3_SLAVE1_ALARM_UPPER=1.81,SUPPLY0_SLAVE1_ALARM_LOWER=1.79,SUPPLY1_SLAVE1_ALARM_LOWER=0.89,SUPPLY2_SLAVE1_ALARM_LOWER=1.79,SUPPLY3_SLAVE1_ALARM_LOWER=1.79,USER_SUPPLY0_SLAVE0_LEVEL=1.8,USER_SUPPLY1_SLAVE0_LEVEL=0.9,USER_SUPPLY2_SLAVE0_LEVEL=1.8,USER_SUPPLY3_SLAVE0_LEVEL=1.8,USER_SUPPLY0_SLAVE1_LEVEL=1.8,USER_SUPPLY1_SLAVE1_LEVEL=0.9,USER_SUPPLY2_SLAVE1_LEVEL=1.8,USER_SUPPLY3_SLAVE1_LEVEL=1.8,ENABLE_SUPPLY0_SLAVE0_ALARM=false,ENABLE_SUPPLY1_SLAVE0_ALARM=false,ENABLE_SUPPLY2_SLAVE0_ALARM=false,ENABLE_SUPPLY3_SLAVE0_ALARM=false,ENABLE_SUPPLY0_SLAVE1_ALARM=false,ENABLE_SUPPLY1_SLAVE1_ALARM=false,ENABLE_SUPPLY2_SLAVE1_ALARM=false,ENABLE_SUPPLY3_SLAVE1_ALARM=false,SINGLE_CHANNEL_SLAVE0_SSIT=TEMPERATURE_SLAVE0,SINGLE_CHANNEL_SLAVE1_SSIT=TEMPERATURE_SLAVE1,SINGLE_CHANNEL_ENABLE_SLAVE0_SSIT=true,SINGLE_CHANNEL_ENABLE_SLAVE1_SSIT=true,ENABLE_TEMPERATURE_SLAVE0=true,ENABLE_TEMPERATURE_SLAVE1=true,DUAL_SEQ_TEMPERATURE_SLAVE0=false,DUAL_SEQ_TEMPERATURE_SLAVE1=false,AVERAGE_ENABLE_TEMPERATURE_SLAVE0=false,AVERAGE_ENABLE_TEMPERATURE_SLAVE1=false,CHANNEL_ENABLE_VUSER0_SLAVE0=false,CHANNEL_ENABLE_VUSER1_SLAVE0=false,CHANNEL_ENABLE_VUSER2_SLAVE0=false,CHANNEL_ENABLE_VUSER3_SLAVE0=false,CHANNEL_ENABLE_VUSER0_SLAVE1=false,CHANNEL_ENABLE_VUSER1_SLAVE1=false,CHANNEL_ENABLE_VUSER2_SLAVE1=false,CHANNEL_ENABLE_VUSER3_SLAVE1=false,DUAL_SEQ_VUSER0_SLAVE0=false,DUAL_SEQ_VUSER1_SLAVE0=false,DUAL_SEQ_VUSER2_SLAVE0=false,DUAL_SEQ_VUSER3_SLAVE0=false,DUAL_SEQ_VUSER0_SLAVE1=false,DUAL_SEQ_VUSER1_SLAVE1=false,DUAL_SEQ_VUSER2_SLAVE1=false,DUAL_SEQ_VUSER3_SLAVE1=false,USER_SUPPLY0_SLAVE0_BANK=44,USER_SUPPLY1_SLAVE0_BANK=44,USER_SUPPLY2_SLAVE0_BANK=44,USER_SUPPLY3_SLAVE0_BANK=65,USER_SUPPLY0_SLAVE1_BANK=44,USER_SUPPLY1_SLAVE1_BANK=44,USER_SUPPLY2_SLAVE1_BANK=44,USER_SUPPLY3_SLAVE1_BANK=65,USER_SUPPLY0_SLAVE0=VCCO,USER_SUPPLY1_SLAVE0=VCCINT,USER_SUPPLY2_SLAVE0=VCCAUX,USER_SUPPLY3_SLAVE0=VCCO,USER_SUPPLY0_SLAVE1=VCCO,USER_SUPPLY1_SLAVE1=VCCINT,USER_SUPPLY2_SLAVE1=VCCAUX,USER_SUPPLY3_SLAVE1=VCCO,REFERENCE=Internal,DUAL_SEQ_VAUX0=false,DUAL_SEQ_VAUX1=false,DUAL_SEQ_VAUX2=false,DUAL_SEQ_VAUX3=false,DUAL_SEQ_VAUX4=false,DUAL_SEQ_VAUX5=false,DUAL_SEQ_VAUX6=false,DUAL_SEQ_VAUX7=false,DUAL_SEQ_VAUX8=false,DUAL_SEQ_VAUX9=false,DUAL_SEQ_VAUX10=false,DUAL_SEQ_VAUX11=false,DUAL_SEQ_VAUX12=false,DUAL_SEQ_VAUX13=false,DUAL_SEQ_VAUX14=false,DUAL_SEQ_VAUX15=false,common_N_VAUXP0=false,common_N_VAUXP1=false,common_N_VAUXP2=false,common_N_VAUXP3=false,common_N_VAUXP4=false,common_N_VAUXP5=false,common_N_VAUXP6=false,common_N_VAUXP7=false,common_N_VAUXP8=false,common_N_VAUXP9=false,common_N_VAUXP10=false,common_N_VAUXP11=false,common_N_VAUXP12=false,common_N_VAUXP13=false,common_N_VAUXP14=false,common_N_VAUXP15=false,EOS_GEN_RATE=High_Rate,sequencer_mode=on,COMMON_N_SOURCE=Null,startup_channel_selection=contineous_sequence}";


  component ultra96v2_oob_system_management_wiz_0_0_axi_xadc 
   generic
   (
    -----------------------------------------
--    C_BASEADDR              : std_logic_vector  := X"FFFF_FFFF";
--    C_HIGHADDR              : std_logic_vector  := X"0000_0000";
    -----------------------------------------
    -- AXI slave single block generics
    C_INSTANCE              : string := "ultra96v2_oob_system_management_wiz_0_0_axi_xadc";
    C_FAMILY                : string                   := "KintexU";
    C_S_AXI_ADDR_WIDTH      : integer range 2 to 32   := 11;
    C_S_AXI_DATA_WIDTH      : integer range 32 to 128  := 32;
    -----------------------------------------
    -- SYSMON Generics
    C_INCLUDE_INTR          : integer range 0 to 1   := 1;
    C_SIM_MONITOR_FILE      : string                 := "design.txt"
   );
   port
   (
    -- System interface
    s_axi_aclk      : in  std_logic;                                      
    s_axi_aresetn   : in  std_logic;                                      
    -- AXI Write address channel signals                                        
    s_axi_awaddr    : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);                  
    s_axi_awvalid   : in  std_logic;                                      
    s_axi_awready   : out std_logic;                                      
    -- AXI Write data channel signals                                           
    s_axi_wdata     : in  std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);                  
    s_axi_wstrb     : in  std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);              
    s_axi_wvalid    : in  std_logic;                                      
    s_axi_wready    : out std_logic;                                      
    -- AXI Write response channel signals                                       
    s_axi_bresp     : out std_logic_vector(1 downto 0);                   
    s_axi_bvalid    : out std_logic;                                      
    s_axi_bready    : in  std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_araddr    : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);                  
    s_axi_arvalid   : in  std_logic;                                      
    s_axi_arready   : out std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_rdata     : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);                  
    s_axi_rresp     : out std_logic_vector(1 downto 0);                   
    s_axi_rvalid    : out std_logic;                                      
    s_axi_rready    : in  std_logic;                                      
                                                                                
   -- Input to the system from the axi_xadc core
    ip2intc_irpt    : out std_logic;
 
   -- SYSMON External interface signals

    -- Conversion start control signal for Event driven mode
    vp              : in  STD_LOGIC;
    vn              : in  STD_LOGIC;
    busy_out        : out  STD_LOGIC;                        -- ADC Busy signal
    channel_out     : out  STD_LOGIC_VECTOR (5 downto 0);    -- Channel Selection Outputs
    eoc_out         : out  STD_LOGIC;                        -- End of Conversion Signal
    eos_out         : out  STD_LOGIC;                        -- End of Sequence Signal
    alarm_out       : out STD_LOGIC_VECTOR(15 downto 0)
   );
  end component;

  signal alm_int : std_logic_vector (15 downto 0);

begin

       alarm_out <= alm_int(7);

   U0 : ultra96v2_oob_system_management_wiz_0_0_axi_xadc 
   generic map
   (
    C_INSTANCE              => "ultra96v2_oob_system_management_wiz_0_0_axi_xadc",
    C_FAMILY                => "kintexu",
    C_S_AXI_ADDR_WIDTH      => 13,
    C_S_AXI_DATA_WIDTH      => 32,
    C_INCLUDE_INTR          => 1,
    C_SIM_MONITOR_FILE      => "design.txt"
   )
   port map
   (
    s_axi_aclk      => s_axi_aclk,                    
    s_axi_aresetn   => s_axi_aresetn,                    
    s_axi_awaddr    => s_axi_awaddr,                    
    s_axi_awvalid   => s_axi_awvalid,                    
    s_axi_awready   => s_axi_awready,                    
    s_axi_wdata     => s_axi_wdata,                    
    s_axi_wstrb     => s_axi_wstrb,                    
    s_axi_wvalid    => s_axi_wvalid,                    
    s_axi_wready    => s_axi_wready,                    
    s_axi_bresp     => s_axi_bresp,                    
    s_axi_bvalid    => s_axi_bvalid,                    
    s_axi_bready    => s_axi_bready,                    
    s_axi_araddr    => s_axi_araddr,                    
    s_axi_arvalid   => s_axi_arvalid,                    
    s_axi_arready   => s_axi_arready,                    
    s_axi_rdata     => s_axi_rdata,                    
    s_axi_rresp     => s_axi_rresp,                    
    s_axi_rvalid    => s_axi_rvalid,                    
    s_axi_rready    => s_axi_rready,                    
    ip2intc_irpt    => ip2intc_irpt,  

    vp      => '0',
    vn      => '0',
    busy_out => busy_out,
    channel_out => channel_out,
    eoc_out => eoc_out,
    eos_out => eos_out,
    alarm_out  => alm_int
    );

end xilinx;

