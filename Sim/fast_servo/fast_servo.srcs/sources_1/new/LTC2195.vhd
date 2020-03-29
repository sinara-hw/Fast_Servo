----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/28/2020 09:18:57 PM
-- Design Name: 
-- Module Name: LTC2195 - Behavioral
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

entity LTC2195_wrapper is
port(
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
	D0_in_p : in std_logic_vector(3 downto 0);
	D0_in_n : in std_logic_vector(3 downto 0);
	D1_in_p : in std_logic_vector(3 downto 0);
	D1_in_n : in std_logic_vector(3 downto 0);
	
	ADC0_out : out std_logic_vector(15 downto 0);
	ADC1_out : out std_logic_vector(15 downto 0);
	FR_out : out std_logic_vector(3 downto 0)
    );

end LTC2195_wrapper;

 architecture Behavioral of LTC2195_wrapper is

component LTC2195 
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
	D0_in_p : in std_logic_vector(3 downto 0);
	D0_in_n : in std_logic_vector(3 downto 0);
	D1_in_p : in std_logic_vector(3 downto 0);
	D1_in_n : in std_logic_vector(3 downto 0);
	
	ADC0_out : out std_logic_vector(15 downto 0);
	ADC1_out : out std_logic_vector(15 downto 0);
	FR_out : out std_logic_vector(3 downto 0)
    );

end component;

begin
   LTC2195_i : LTC2195 
   port map( 
	clk_in      => clk_in,
    rst_in      => rst_in,
	cmd_trig_in => cmd_trig_in,
	cmd_addr_in => cmd_addr_in,
	cmd_data_in => cmd_data_in,

	spi_scs_out => spi_scs_out,
	spi_sck_out => spi_sck_out,
	spi_sdo_out => spi_sdo_out,
	spi_sdi_in  => spi_sdi_in,

	ENC_out_p   => ENC_out_p,
	ENC_out_n   => ENC_out_n,
	DCO_in_p    => DCO_in_p,
	DCO_in_n    => DCO_in_n,
	FR_in_p     => FR_in_p,
	FR_in_n     => FR_in_n,
	D0_in_p     => D0_in_p,
	D0_in_n     => D0_in_n,
	D1_in_p     => D1_in_p,
	D1_in_n     => D1_in_n,

	ADC0_out    => ADC0_out,
	ADC1_out    => ADC1_out,
	FR_out      => FR_out
    );


end Behavioral;
