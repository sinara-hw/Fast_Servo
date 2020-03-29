----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/28/2020 09:00:04 PM
-- Design Name: 
-- Module Name: fast_servo - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fast_servo is
port (
        clk_in : in std_logic;

        LTC2195_ENC_P : out std_logic;
        LTC2195_ENC_N : out std_logic;
        LTC2195_FR_P : in std_logic;
        LTC2195_FR_N : in std_logic;
        LTC2195_DCO_P : in std_logic;
        LTC2195_DCO_N : in std_logic;
        LTC2195_D0_P : in std_logic_vector(3 downto 0);
        LTC2195_D0_N : in std_logic_vector(3 downto 0);
        LTC2195_D1_P : in std_logic_vector(3 downto 0);
        LTC2195_D1_N : in std_logic_vector(3 downto 0);
     );
end fast_servo;

architecture Behavioral of fast_servo is

component LTC2195_wrapper
port (
	clk_in : in std_logic; 
    rst_in : in std_logic; 
	cmd_trig_in : in std_logic; 
	cmd_addr_in : in std_logic_vector(15 downto 0); 
	cmd_data_in : in std_logic_vector(15 downto 0); 
	
	spi_scs_out : in std_logic;
	spi_sck_out : in std_logic;
	spi_sdo_out : in std_logic;
	spi_sdi_in : out std_logic;
	
	ENC_out_p : out std_logic;
	ENC_out_n : out std_logic; 
	DCO_in_p : in std_logic;  
	DCO_in_n : in std_logic; 
	FR_in_p  : in std_logic; 
	FR_in_n  : in std_logic; 
	D0_in_p : in std_logic;
	D0_in_n : in std_logic;
	D1_in_p : in std_logic;
	D1_in_n : in std_logic;
	
	ADC0_out : out std_logic_vector(15 downto 0);
	ADC1_out : out std_logic_vector(15 downto 0);
	FR_out : out std_logic_vector(3 downto 0)
    );

end component;

begin

    LTC2195_wrapper_i : LTC2195_wrapper
   port map( 
	clk_in      => clk_in,
    rst_in      => ,
	cmd_trig_in => ,
	cmd_addr_in => ,
	cmd_data_in => ,

	spi_scs_out => ,
	spi_sck_out => ,
	spi_sdo_out => ,
	spi_sdi_in  => ,

	ENC_out_p   => LTC2195_ENC_P,
	ENC_out_n   => LTC2195_ENC_N,
	DCO_in_p    => LTC2195_DCO_P,
	DCO_in_n    => LTC2195_DCO_N,
	FR_in_p     => LTC2195_FR_P,
	FR_in_n     => LTC2195_FR_N,
	D0_in_p     => LTC2195_D0_P ,
	D0_in_n     => LTC2195_D0_N ,
	D1_in_p     => LTC2195_D1_P ,
	D1_in_n     => LTC2195_D1_N ,

	ADC0_out    => ,
	ADC1_out    => ,
	FR_out      => 
    );


    port map(

    );


end Behavioral;
