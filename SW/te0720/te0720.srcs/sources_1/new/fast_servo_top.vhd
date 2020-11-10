----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2020 01:24:56
-- Design Name: 
-- Module Name: fast_servo_top - Behavioral
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
Library UNISIM;
use UNISIM.vcomponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fast_servo_top is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    PL_pin_K16 : in STD_LOGIC;
    PL_pin_K19 : in STD_LOGIC;
    PL_pin_K20 : out STD_LOGIC;
    PL_pin_L16 : out STD_LOGIC;
    PL_pin_M15 : in STD_LOGIC;
    PL_pin_N15 : in STD_LOGIC;
    PL_pin_N22 : out STD_LOGIC;
    PL_pin_P16 : in STD_LOGIC;
    PL_pin_P22 : in STD_LOGIC;
    DAC_AUX_SDIN              : in STD_LOGIC;           
    DAC_AUX_SCLK              : out STD_LOGIC;           
    DAC_AUX_nSYNC             : out STD_LOGIC;          
    HRTIM_CHE1              : out STD_LOGIC;            
    HRTIM_CHA2              : out STD_LOGIC;            
    HRTIM_CHA1              : out STD_LOGIC;            
    HRTIM_CHE2              : out STD_LOGIC;            
    FP_LED_0                : out STD_LOGIC;            
    FP_LED_1                : out STD_LOGIC;            
    FP_LED_2                : out STD_LOGIC;            
    FP_LED_3                : out STD_LOGIC;            
    ETH_LED1                : out STD_LOGIC;            
    ETH_LED2                : out STD_LOGIC;            
    DI0                     : inout STD_LOGIC;           
    DI1                     : inout STD_LOGIC;           
    SPI1_MISO               : in STD_LOGIC;           
    SPI1_MOSI               : out STD_LOGIC;           
    SPI1_SCK                : out STD_LOGIC;           
    SPI1_NSS                : out STD_LOGIC;               
    CLK_100M                : out STD_LOGIC;               
    LPTIM2_OUT              : out STD_LOGIC;               
    QSPI_IO                 : out STD_LOGIC_VECTOR(3 downto 0);               
    QSPI_NCS                : out STD_LOGIC;               
    QSPI_CLK                : out STD_LOGIC;               
    ADC_AFE_CH1_GAIN_X10    : out STD_LOGIC;               
    ADC_AFE_CH2_GAIN_X10    : out STD_LOGIC;               
    ADC_AUX_DOUTA           : out STD_LOGIC;               
    ADC_AUX_DOUTB           : out STD_LOGIC;               
    I2C1_SDA                : inout STD_LOGIC;         
    I2C1_SCL                : inout STD_LOGIC;         
    LED1                    : out STD_LOGIC;          
    LED2                    : out STD_LOGIC;          
    LED3                    : out STD_LOGIC;           
    ADC_AUX_SGL             : out STD_LOGIC;          
    DAC_AUX_nLDAC           : out STD_LOGIC;           
    DAC_AUX_BIN             : out STD_LOGIC;          
    ADC_AUX_nCS             : out STD_LOGIC;          
    ADC_AUX_SCLK            : out STD_LOGIC;          
    ADC_AUX_RANGE           : out STD_LOGIC;          
    DAC_AUX_nCLR            : out STD_LOGIC;           
    ADC_AUX_A0	            : out STD_LOGIC;
    ADC_AUX_A1              : out STD_LOGIC;
    ADC_AUX_A2              : out STD_LOGIC;
	OUT1A_P                 : in STD_LOGIC;
	OUT1A_N                 : in STD_LOGIC;
	OUT1B_P                 : in STD_LOGIC;
	OUT1B_N                 : in STD_LOGIC;
	OUT1C_P                 : in STD_LOGIC;
	OUT1C_N                 : in STD_LOGIC;
	OUT1D_N                 : in STD_LOGIC;
	OUT1D_P                 : in STD_LOGIC;
	OUT2A_P                 : in STD_LOGIC;
	OUT2A_N                 : in STD_LOGIC;
	OUT2B_P	                : in STD_LOGIC;
	OUT2B_N                 : in STD_LOGIC;
	OUT2C_P                 : in STD_LOGIC;
	OUT2C_N                 : in STD_LOGIC;
	OUT2D_N                 : in STD_LOGIC;
	OUT2D_P                 : in STD_LOGIC;                
    DCO_N                   : in STD_LOGIC;        
    DCO_P                   : in STD_LOGIC;     
    FR_N                    : in STD_LOGIC;       
    FR_P                    : in STD_LOGIC;    	
    ADC_SDI                 : out STD_LOGIC;                  
    ADC_CS                  : out STD_LOGIC;                  
    ADC_SDO                 : in STD_LOGIC;                  
    ADC_SCK                 : out STD_LOGIC;    
    AT_EVENT                : out STD_LOGIC;        
    DAC_AFE_CH1_nPD         : out STD_LOGIC;       
    DAC_AFE_CH2_nPD         : out STD_LOGIC;       
	LVDS7_P                 : in STD_LOGIC; 
	LVDS7_N                 : in STD_LOGIC; 
	LVDS6_P                 : in STD_LOGIC; 
	LVDS6_N                 : in STD_LOGIC; 
	LVDS5_P                 : in STD_LOGIC; 
	LVDS5_N                 : in STD_LOGIC; 
	LVDS4_P                 : in STD_LOGIC; 
	LVDS4_N                 : in STD_LOGIC; 
	LVDS3_P                 : in STD_LOGIC; 
	LVDS3_N                 : in STD_LOGIC; 
	LVDS2_P                 : in STD_LOGIC; 
	LVDS2_N                 : in STD_LOGIC; 
	LVDS1_P                 : in STD_LOGIC; 
	LVDS1_N                 : in STD_LOGIC; 
	LVDS0_P                 : in STD_LOGIC; 
	LVDS0_N                 : in STD_LOGIC;    
    CLK2_P                  : in STD_LOGIC;           
    CLK2_N                  : in STD_LOGIC;                    
    SI5340_SCL              : inout STD_LOGIC;                 
    SI5340_SDA              : inout STD_LOGIC;                 
    Si5340_nLOL             : out STD_LOGIC;                  
    SI5340_LOS_XAXBb        : out STD_LOGIC;                  
    SI5340_nRST             : out STD_LOGIC;                  
    SI5340_nINTR            : out STD_LOGIC;                  
    DAC_SCLK                : out STD_LOGIC;                  
    DAC_RESET               : out STD_LOGIC;      
    DAC_nCS                 : out STD_LOGIC;        
    DAC_SDIO                : in STD_LOGIC;      
    DAC_DCLKIO              : out STD_LOGIC;      
    ADC_AFE_CH1_nSHDN       : out STD_LOGIC;      
    ADC_AFE_CH2_nSHDN       : out STD_LOGIC;      
    FPGA_CLK1_P             : in STD_LOGIC;      
    FPGA_CLK1_N             : in STD_LOGIC;      
    DAC_DATA                : in std_logic_vector(13 downto 0)    
  );
end fast_servo_top;

architecture Behavioral of fast_servo_top is

  
 signal LVDS7: STD_LOGIC;
 signal LVDS6: STD_LOGIC; 
 signal LVDS5: STD_LOGIC; 
 signal LVDS4: STD_LOGIC; 
 signal LVDS3: STD_LOGIC; 
 signal LVDS2: STD_LOGIC; 
 signal LVDS1: STD_LOGIC; 
 signal LVDS0: STD_LOGIC; 
 signal OUT1A: STD_LOGIC; 
 signal OUT1B: STD_LOGIC; 
 signal OUT1C: STD_LOGIC; 
 signal OUT1D: STD_LOGIC; 
 signal OUT2A: STD_LOGIC; 
 signal OUT2B: STD_LOGIC; 
 signal OUT2C: STD_LOGIC; 
 signal OUT2D: STD_LOGIC; 
 signal DCO  : STD_LOGIC; 
 signal CLK2 : STD_LOGIC; 
 signal FR   : STD_LOGIC; 
 signal FPGA_CLK1_CLK: STD_LOGIC; 

 signal AXI_GPIO_tri_io : STD_LOGIC_VECTOR ( 31 downto 0 );
 signal AXI_SPI_io0_io : STD_LOGIC;
 signal AXI_SPI_io1_io : STD_LOGIC;
 signal AXI_SPI_ss_io : STD_LOGIC_VECTOR ( 3 downto 0 );




  component zsys_wrapper is
  port (
    AXI_GPIO_tri_io : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_SPI_io0_io : inout STD_LOGIC;
    AXI_SPI_io1_io : inout STD_LOGIC;
    AXI_SPI_ss_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    PL_pin_K16 : in STD_LOGIC;
    PL_pin_K19 : in STD_LOGIC;
    PL_pin_K20 : out STD_LOGIC;
    PL_pin_L16 : out STD_LOGIC;
    PL_pin_M15 : in STD_LOGIC;
    PL_pin_N15 : in STD_LOGIC;
    PL_pin_N22 : out STD_LOGIC;
    PL_pin_P16 : in STD_LOGIC;
    PL_pin_P22 : in STD_LOGIC
  );
end component zsys_wrapper;

begin

zsys_wrapper_i: component zsys_wrapper
     port map (
      AXI_GPIO_tri_io => AXI_GPIO_tri_io,
      AXI_SPI_io0_io  => AXI_SPI_io0_io, 
      AXI_SPI_io1_io  => AXI_SPI_io1_io,
      AXI_SPI_ss_io   => AXI_SPI_ss_io,  

      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      PL_pin_K16 => PL_pin_K16,
      PL_pin_K19 => PL_pin_K19,
      PL_pin_K20 => PL_pin_K20,
      PL_pin_L16 => PL_pin_L16,
      PL_pin_M15 => PL_pin_M15,
      PL_pin_N15 => PL_pin_N15,
      PL_pin_N22 => PL_pin_N22,
      PL_pin_P16 => PL_pin_P16,
      PL_pin_P22 => PL_pin_P22
    );

-- GPIOs
HRTIM_CHE1           <= AXI_GPIO_tri_io(0);
HRTIM_CHA2           <= AXI_GPIO_tri_io(1);
HRTIM_CHA1           <= AXI_GPIO_tri_io(2);
HRTIM_CHE2           <= AXI_GPIO_tri_io(3);
FP_LED_0             <= AXI_GPIO_tri_io(4);
FP_LED_1             <= AXI_GPIO_tri_io(5);
FP_LED_2             <= AXI_GPIO_tri_io(6);
FP_LED_3             <= AXI_GPIO_tri_io(7);
ETH_LED1             <= AXI_GPIO_tri_io(8);
ETH_LED2             <= AXI_GPIO_tri_io(9);
LPTIM2_OUT           <= AXI_GPIO_tri_io(10);
ADC_AFE_CH1_GAIN_X10 <= AXI_GPIO_tri_io(11);
ADC_AFE_CH1_GAIN_X10 <= AXI_GPIO_tri_io(12);
LED1                 <= AXI_GPIO_tri_io(13);
LED2                 <= AXI_GPIO_tri_io(14);
LED3                 <= AXI_GPIO_tri_io(15);
ADC_AUX_SGL          <= AXI_GPIO_tri_io(16);
DAC_AUX_nLDAC        <= AXI_GPIO_tri_io(17);
DAC_AUX_nCLR         <= AXI_GPIO_tri_io(18);
ADC_AUX_A0	         <= AXI_GPIO_tri_io(19);
ADC_AUX_A1           <= AXI_GPIO_tri_io(20);
ADC_AUX_A2           <= AXI_GPIO_tri_io(21);
AT_EVENT             <= AXI_GPIO_tri_io(22);
DAC_AFE_CH1_nPD      <= AXI_GPIO_tri_io(23);
DAC_AFE_CH2_nPD      <= AXI_GPIO_tri_io(24);
Si5340_nLOL          <= AXI_GPIO_tri_io(25);
SI5340_LOS_XAXBb     <= AXI_GPIO_tri_io(26);
SI5340_nRST          <= AXI_GPIO_tri_io(27);
SI5340_nINTR         <= AXI_GPIO_tri_io(28);
DAC_RESET            <= AXI_GPIO_tri_io(29);
ADC_AFE_CH1_nSHDN    <= AXI_GPIO_tri_io(30);
ADC_AFE_CH2_nSHDN    <= AXI_GPIO_tri_io(31);

-- DAC_AUX_SDIN  
-- DAC_AUX_SCLK  
-- DAC_AUX_nSYNC 

-- SPI1 
-- SPI1_MISO 
-- SPI1_MOSI 
-- SPI1_SCK  
-- SPI1_NSS  

-- QSPI
-- QSPI_IO  
-- QSPI_NCS 
-- QSPI_CLK 

-- I2C1_SDA         
-- I2C1_SCL         

-- SI5340_SCL       
-- SI5340_SDA       


-- ADC_AUX_DOUTA    
-- ADC_AUX_DOUTB    
-- ADC_AUX_nCS      
-- ADC_AUX_SCLK     

-- DAC_SCLK         
-- DAC_RESET        
-- DAC_nCS          
-- DAC_SDIO         


IBUFDS_inst : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => LVDS7,  -- Buffer output
        I => LVDS7_N,  -- Diff_p buffer input (connect directly to top-level port)
        IB => LVDS7_P -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst2 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => LVDS6,  -- Buffer output
        I => LVDS6_N,  -- Diff_p buffer input (connect directly to top-level port)
        IB => LVDS6_P -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst3 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => LVDS5,  -- Buffer output
        I => LVDS5_N,  -- Diff_p buffer input (connect directly to top-level port)
        IB => LVDS5_P -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst4 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => LVDS4,  -- Buffer output
        I => LVDS4_N,  -- Diff_p buffer input (connect directly to top-level port)
        IB => LVDS4_P -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst5 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => LVDS3,  -- Buffer output
        I => LVDS3_N,  -- Diff_p buffer input (connect directly to top-level port)
        IB => LVDS3_P -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst6 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => LVDS2,  -- Buffer output
        I => LVDS2_N,  -- Diff_p buffer input (connect directly to top-level port)
        IB => LVDS2_P -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst7 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => LVDS1,  -- Buffer output
        I => LVDS1_P,  -- Diff_p buffer input (connect directly to top-level port)
        IB => LVDS1_N -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst8 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => LVDS0,  -- Buffer output
        I => LVDS0_P,  -- Diff_p buffer input (connect directly to top-level port)
        IB => LVDS0_N -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst9 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => OUT1A,  -- Buffer output
        I => OUT1A_N,  -- Diff_p buffer input (connect directly to top-level port)
        IB => OUT1A_P -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst10 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => OUT1B,  -- Buffer output
        I => OUT1B_N,  -- Diff_p buffer input (connect directly to top-level port)
        IB => OUT1B_P -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst11 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => OUT1C,  -- Buffer output
        I => OUT1C_N,  -- Diff_p buffer input (connect directly to top-level port)
        IB => OUT1C_P -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst12 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => OUT1D,  -- Buffer output
        I => OUT1D_P,  -- Diff_p buffer input (connect directly to top-level port)
        IB => OUT1D_N -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst13 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => OUT2A,  -- Buffer output
        I => OUT2A_P,  -- Diff_p buffer input (connect directly to top-level port)
        IB => OUT2A_N -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst14 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => OUT2B,  -- Buffer output
        I => OUT2B_P,  -- Diff_p buffer input (connect directly to top-level port)
        IB => OUT2B_N -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst15 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => OUT2C,  -- Buffer output
        I => OUT2C_P,  -- Diff_p buffer input (connect directly to top-level port)
        IB => OUT2C_N -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst16 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => OUT2D,  -- Buffer output
        I => OUT2D_P,  -- Diff_p buffer input (connect directly to top-level port)
        IB => OUT2D_N -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst17 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => FR,  -- Buffer output
        I => FR_P,  -- Diff_p buffer input (connect directly to top-level port)
        IB => FR_N -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst18 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => DCO,  -- Buffer output
        I => DCO_P,  -- Diff_p buffer input (connect directly to top-level port)
        IB =>DCO_N -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst19 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => CLK2,  -- Buffer output
        I => CLK2_N,  -- Diff_p buffer input (connect directly to top-level port)
        IB =>CLK2_P -- Diff_n buffer input (connect directly to top-level port)
        );

IBUFDS_inst20 : IBUFDS
generic map (
        DIFF_TERM => FALSE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "DEFAULT")
port map (
        O => FPGA_CLK1_CLK,  -- Buffer output
        I => FPGA_CLK1_P,  -- Diff_p buffer input (connect directly to top-level port)
        IB =>FPGA_CLK1_N -- Diff_n buffer input (connect directly to top-level port)
        );


end Behavioral;
