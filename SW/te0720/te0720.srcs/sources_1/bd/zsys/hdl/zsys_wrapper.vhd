--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Nov 12 00:15:05 2020
--Host        : LAPTOP-AOF2DR8H running 64-bit major release  (build 9200)
--Command     : generate_target zsys_wrapper.bd
--Design      : zsys_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_wrapper is
  port (
    AXI_GPIO_tri_io : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_I2C0_scl_io : inout STD_LOGIC;
    AXI_I2C0_sda_io : inout STD_LOGIC;
    AXI_I2C1_scl_io : inout STD_LOGIC;
    AXI_I2C1_sda_io : inout STD_LOGIC;
    AXI_QSPI_io0_io : inout STD_LOGIC;
    AXI_QSPI_io1_io : inout STD_LOGIC;
    AXI_QSPI_io2_io : inout STD_LOGIC;
    AXI_QSPI_io3_io : inout STD_LOGIC;
    AXI_QSPI_sck_io : inout STD_LOGIC;
    AXI_QSPI_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
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
    SPI0_io0_io : inout STD_LOGIC;
    SPI0_io1_io : inout STD_LOGIC;
    SPI0_sck_io : inout STD_LOGIC;
    SPI0_ss1_o : out STD_LOGIC;
    SPI0_ss2_o : out STD_LOGIC;
    SPI0_ss_io : inout STD_LOGIC;
    SPI1_io0_io : inout STD_LOGIC;
    SPI1_io1_io : inout STD_LOGIC;
    SPI1_sck_io : inout STD_LOGIC;
    SPI1_ss1_o : out STD_LOGIC;
    SPI1_ss2_o : out STD_LOGIC;
    SPI1_ss_io : inout STD_LOGIC
  );
end zsys_wrapper;

architecture STRUCTURE of zsys_wrapper is
  component zsys is
  port (
    PL_pin_K16 : in STD_LOGIC;
    PL_pin_K19 : in STD_LOGIC;
    PL_pin_K20 : out STD_LOGIC;
    PL_pin_L16 : out STD_LOGIC;
    PL_pin_M15 : in STD_LOGIC;
    PL_pin_N15 : in STD_LOGIC;
    PL_pin_N22 : out STD_LOGIC;
    PL_pin_P16 : in STD_LOGIC;
    PL_pin_P22 : in STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_QSPI_io0_i : in STD_LOGIC;
    AXI_QSPI_io0_o : out STD_LOGIC;
    AXI_QSPI_io0_t : out STD_LOGIC;
    AXI_QSPI_io1_i : in STD_LOGIC;
    AXI_QSPI_io1_o : out STD_LOGIC;
    AXI_QSPI_io1_t : out STD_LOGIC;
    AXI_QSPI_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_QSPI_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_QSPI_ss_t : out STD_LOGIC;
    AXI_GPIO_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_GPIO_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_GPIO_tri_t : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SPI0_sck_i : in STD_LOGIC;
    SPI0_sck_o : out STD_LOGIC;
    SPI0_sck_t : out STD_LOGIC;
    SPI0_io0_i : in STD_LOGIC;
    SPI0_io0_o : out STD_LOGIC;
    SPI0_io0_t : out STD_LOGIC;
    SPI0_io1_i : in STD_LOGIC;
    SPI0_io1_o : out STD_LOGIC;
    SPI0_io1_t : out STD_LOGIC;
    SPI0_ss_i : in STD_LOGIC;
    SPI0_ss_o : out STD_LOGIC;
    SPI0_ss1_o : out STD_LOGIC;
    SPI0_ss2_o : out STD_LOGIC;
    SPI0_ss_t : out STD_LOGIC;
    SPI1_sck_i : in STD_LOGIC;
    SPI1_sck_o : out STD_LOGIC;
    SPI1_sck_t : out STD_LOGIC;
    SPI1_io0_i : in STD_LOGIC;
    SPI1_io0_o : out STD_LOGIC;
    SPI1_io0_t : out STD_LOGIC;
    SPI1_io1_i : in STD_LOGIC;
    SPI1_io1_o : out STD_LOGIC;
    SPI1_io1_t : out STD_LOGIC;
    SPI1_ss_i : in STD_LOGIC;
    SPI1_ss_o : out STD_LOGIC;
    SPI1_ss1_o : out STD_LOGIC;
    SPI1_ss2_o : out STD_LOGIC;
    SPI1_ss_t : out STD_LOGIC;
    AXI_QSPI_io2_i : in STD_LOGIC;
    AXI_QSPI_io2_o : out STD_LOGIC;
    AXI_QSPI_io2_t : out STD_LOGIC;
    AXI_QSPI_io3_i : in STD_LOGIC;
    AXI_QSPI_io3_o : out STD_LOGIC;
    AXI_QSPI_io3_t : out STD_LOGIC;
    AXI_QSPI_sck_i : in STD_LOGIC;
    AXI_QSPI_sck_o : out STD_LOGIC;
    AXI_QSPI_sck_t : out STD_LOGIC;
    AXI_I2C0_scl_i : in STD_LOGIC;
    AXI_I2C0_scl_o : out STD_LOGIC;
    AXI_I2C0_scl_t : out STD_LOGIC;
    AXI_I2C0_sda_i : in STD_LOGIC;
    AXI_I2C0_sda_o : out STD_LOGIC;
    AXI_I2C0_sda_t : out STD_LOGIC;
    AXI_I2C1_scl_i : in STD_LOGIC;
    AXI_I2C1_scl_o : out STD_LOGIC;
    AXI_I2C1_scl_t : out STD_LOGIC;
    AXI_I2C1_sda_i : in STD_LOGIC;
    AXI_I2C1_sda_o : out STD_LOGIC;
    AXI_I2C1_sda_t : out STD_LOGIC
  );
  end component zsys;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal AXI_GPIO_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_GPIO_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal AXI_GPIO_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal AXI_GPIO_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal AXI_GPIO_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal AXI_GPIO_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal AXI_GPIO_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal AXI_GPIO_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal AXI_GPIO_tri_i_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal AXI_GPIO_tri_i_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal AXI_GPIO_tri_i_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal AXI_GPIO_tri_i_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal AXI_GPIO_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal AXI_GPIO_tri_i_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal AXI_GPIO_tri_i_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal AXI_GPIO_tri_i_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal AXI_GPIO_tri_i_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal AXI_GPIO_tri_i_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal AXI_GPIO_tri_i_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal AXI_GPIO_tri_i_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal AXI_GPIO_tri_i_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal AXI_GPIO_tri_i_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal AXI_GPIO_tri_i_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal AXI_GPIO_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal AXI_GPIO_tri_i_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal AXI_GPIO_tri_i_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal AXI_GPIO_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal AXI_GPIO_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal AXI_GPIO_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal AXI_GPIO_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal AXI_GPIO_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal AXI_GPIO_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal AXI_GPIO_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_GPIO_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal AXI_GPIO_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal AXI_GPIO_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal AXI_GPIO_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal AXI_GPIO_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal AXI_GPIO_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal AXI_GPIO_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal AXI_GPIO_tri_io_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal AXI_GPIO_tri_io_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal AXI_GPIO_tri_io_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal AXI_GPIO_tri_io_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal AXI_GPIO_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal AXI_GPIO_tri_io_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal AXI_GPIO_tri_io_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal AXI_GPIO_tri_io_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal AXI_GPIO_tri_io_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal AXI_GPIO_tri_io_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal AXI_GPIO_tri_io_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal AXI_GPIO_tri_io_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal AXI_GPIO_tri_io_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal AXI_GPIO_tri_io_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal AXI_GPIO_tri_io_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal AXI_GPIO_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal AXI_GPIO_tri_io_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal AXI_GPIO_tri_io_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal AXI_GPIO_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal AXI_GPIO_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal AXI_GPIO_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal AXI_GPIO_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal AXI_GPIO_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal AXI_GPIO_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal AXI_GPIO_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_GPIO_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal AXI_GPIO_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal AXI_GPIO_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal AXI_GPIO_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal AXI_GPIO_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal AXI_GPIO_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal AXI_GPIO_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal AXI_GPIO_tri_o_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal AXI_GPIO_tri_o_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal AXI_GPIO_tri_o_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal AXI_GPIO_tri_o_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal AXI_GPIO_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal AXI_GPIO_tri_o_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal AXI_GPIO_tri_o_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal AXI_GPIO_tri_o_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal AXI_GPIO_tri_o_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal AXI_GPIO_tri_o_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal AXI_GPIO_tri_o_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal AXI_GPIO_tri_o_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal AXI_GPIO_tri_o_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal AXI_GPIO_tri_o_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal AXI_GPIO_tri_o_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal AXI_GPIO_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal AXI_GPIO_tri_o_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal AXI_GPIO_tri_o_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal AXI_GPIO_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal AXI_GPIO_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal AXI_GPIO_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal AXI_GPIO_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal AXI_GPIO_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal AXI_GPIO_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal AXI_GPIO_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_GPIO_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal AXI_GPIO_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal AXI_GPIO_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal AXI_GPIO_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal AXI_GPIO_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal AXI_GPIO_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal AXI_GPIO_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal AXI_GPIO_tri_t_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal AXI_GPIO_tri_t_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal AXI_GPIO_tri_t_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal AXI_GPIO_tri_t_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal AXI_GPIO_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal AXI_GPIO_tri_t_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal AXI_GPIO_tri_t_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal AXI_GPIO_tri_t_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal AXI_GPIO_tri_t_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal AXI_GPIO_tri_t_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal AXI_GPIO_tri_t_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal AXI_GPIO_tri_t_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal AXI_GPIO_tri_t_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal AXI_GPIO_tri_t_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal AXI_GPIO_tri_t_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal AXI_GPIO_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal AXI_GPIO_tri_t_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal AXI_GPIO_tri_t_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal AXI_GPIO_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal AXI_GPIO_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal AXI_GPIO_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal AXI_GPIO_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal AXI_GPIO_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal AXI_GPIO_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal AXI_I2C0_scl_i : STD_LOGIC;
  signal AXI_I2C0_scl_o : STD_LOGIC;
  signal AXI_I2C0_scl_t : STD_LOGIC;
  signal AXI_I2C0_sda_i : STD_LOGIC;
  signal AXI_I2C0_sda_o : STD_LOGIC;
  signal AXI_I2C0_sda_t : STD_LOGIC;
  signal AXI_I2C1_scl_i : STD_LOGIC;
  signal AXI_I2C1_scl_o : STD_LOGIC;
  signal AXI_I2C1_scl_t : STD_LOGIC;
  signal AXI_I2C1_sda_i : STD_LOGIC;
  signal AXI_I2C1_sda_o : STD_LOGIC;
  signal AXI_I2C1_sda_t : STD_LOGIC;
  signal AXI_QSPI_io0_i : STD_LOGIC;
  signal AXI_QSPI_io0_o : STD_LOGIC;
  signal AXI_QSPI_io0_t : STD_LOGIC;
  signal AXI_QSPI_io1_i : STD_LOGIC;
  signal AXI_QSPI_io1_o : STD_LOGIC;
  signal AXI_QSPI_io1_t : STD_LOGIC;
  signal AXI_QSPI_io2_i : STD_LOGIC;
  signal AXI_QSPI_io2_o : STD_LOGIC;
  signal AXI_QSPI_io2_t : STD_LOGIC;
  signal AXI_QSPI_io3_i : STD_LOGIC;
  signal AXI_QSPI_io3_o : STD_LOGIC;
  signal AXI_QSPI_io3_t : STD_LOGIC;
  signal AXI_QSPI_sck_i : STD_LOGIC;
  signal AXI_QSPI_sck_o : STD_LOGIC;
  signal AXI_QSPI_sck_t : STD_LOGIC;
  signal AXI_QSPI_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_QSPI_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_QSPI_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_QSPI_ss_t : STD_LOGIC;
  signal SPI0_io0_i : STD_LOGIC;
  signal SPI0_io0_o : STD_LOGIC;
  signal SPI0_io0_t : STD_LOGIC;
  signal SPI0_io1_i : STD_LOGIC;
  signal SPI0_io1_o : STD_LOGIC;
  signal SPI0_io1_t : STD_LOGIC;
  signal SPI0_sck_i : STD_LOGIC;
  signal SPI0_sck_o : STD_LOGIC;
  signal SPI0_sck_t : STD_LOGIC;
  signal SPI0_ss_i : STD_LOGIC;
  signal SPI0_ss_o : STD_LOGIC;
  signal SPI0_ss_t : STD_LOGIC;
  signal SPI1_io0_i : STD_LOGIC;
  signal SPI1_io0_o : STD_LOGIC;
  signal SPI1_io0_t : STD_LOGIC;
  signal SPI1_io1_i : STD_LOGIC;
  signal SPI1_io1_o : STD_LOGIC;
  signal SPI1_io1_t : STD_LOGIC;
  signal SPI1_sck_i : STD_LOGIC;
  signal SPI1_sck_o : STD_LOGIC;
  signal SPI1_sck_t : STD_LOGIC;
  signal SPI1_ss_i : STD_LOGIC;
  signal SPI1_ss_o : STD_LOGIC;
  signal SPI1_ss_t : STD_LOGIC;
begin
AXI_GPIO_tri_iobuf_0: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_0(0),
      IO => AXI_GPIO_tri_io(0),
      O => AXI_GPIO_tri_i_0(0),
      T => AXI_GPIO_tri_t_0(0)
    );
AXI_GPIO_tri_iobuf_1: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_1(1),
      IO => AXI_GPIO_tri_io(1),
      O => AXI_GPIO_tri_i_1(1),
      T => AXI_GPIO_tri_t_1(1)
    );
AXI_GPIO_tri_iobuf_10: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_10(10),
      IO => AXI_GPIO_tri_io(10),
      O => AXI_GPIO_tri_i_10(10),
      T => AXI_GPIO_tri_t_10(10)
    );
AXI_GPIO_tri_iobuf_11: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_11(11),
      IO => AXI_GPIO_tri_io(11),
      O => AXI_GPIO_tri_i_11(11),
      T => AXI_GPIO_tri_t_11(11)
    );
AXI_GPIO_tri_iobuf_12: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_12(12),
      IO => AXI_GPIO_tri_io(12),
      O => AXI_GPIO_tri_i_12(12),
      T => AXI_GPIO_tri_t_12(12)
    );
AXI_GPIO_tri_iobuf_13: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_13(13),
      IO => AXI_GPIO_tri_io(13),
      O => AXI_GPIO_tri_i_13(13),
      T => AXI_GPIO_tri_t_13(13)
    );
AXI_GPIO_tri_iobuf_14: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_14(14),
      IO => AXI_GPIO_tri_io(14),
      O => AXI_GPIO_tri_i_14(14),
      T => AXI_GPIO_tri_t_14(14)
    );
AXI_GPIO_tri_iobuf_15: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_15(15),
      IO => AXI_GPIO_tri_io(15),
      O => AXI_GPIO_tri_i_15(15),
      T => AXI_GPIO_tri_t_15(15)
    );
AXI_GPIO_tri_iobuf_16: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_16(16),
      IO => AXI_GPIO_tri_io(16),
      O => AXI_GPIO_tri_i_16(16),
      T => AXI_GPIO_tri_t_16(16)
    );
AXI_GPIO_tri_iobuf_17: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_17(17),
      IO => AXI_GPIO_tri_io(17),
      O => AXI_GPIO_tri_i_17(17),
      T => AXI_GPIO_tri_t_17(17)
    );
AXI_GPIO_tri_iobuf_18: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_18(18),
      IO => AXI_GPIO_tri_io(18),
      O => AXI_GPIO_tri_i_18(18),
      T => AXI_GPIO_tri_t_18(18)
    );
AXI_GPIO_tri_iobuf_19: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_19(19),
      IO => AXI_GPIO_tri_io(19),
      O => AXI_GPIO_tri_i_19(19),
      T => AXI_GPIO_tri_t_19(19)
    );
AXI_GPIO_tri_iobuf_2: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_2(2),
      IO => AXI_GPIO_tri_io(2),
      O => AXI_GPIO_tri_i_2(2),
      T => AXI_GPIO_tri_t_2(2)
    );
AXI_GPIO_tri_iobuf_20: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_20(20),
      IO => AXI_GPIO_tri_io(20),
      O => AXI_GPIO_tri_i_20(20),
      T => AXI_GPIO_tri_t_20(20)
    );
AXI_GPIO_tri_iobuf_21: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_21(21),
      IO => AXI_GPIO_tri_io(21),
      O => AXI_GPIO_tri_i_21(21),
      T => AXI_GPIO_tri_t_21(21)
    );
AXI_GPIO_tri_iobuf_22: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_22(22),
      IO => AXI_GPIO_tri_io(22),
      O => AXI_GPIO_tri_i_22(22),
      T => AXI_GPIO_tri_t_22(22)
    );
AXI_GPIO_tri_iobuf_23: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_23(23),
      IO => AXI_GPIO_tri_io(23),
      O => AXI_GPIO_tri_i_23(23),
      T => AXI_GPIO_tri_t_23(23)
    );
AXI_GPIO_tri_iobuf_24: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_24(24),
      IO => AXI_GPIO_tri_io(24),
      O => AXI_GPIO_tri_i_24(24),
      T => AXI_GPIO_tri_t_24(24)
    );
AXI_GPIO_tri_iobuf_25: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_25(25),
      IO => AXI_GPIO_tri_io(25),
      O => AXI_GPIO_tri_i_25(25),
      T => AXI_GPIO_tri_t_25(25)
    );
AXI_GPIO_tri_iobuf_26: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_26(26),
      IO => AXI_GPIO_tri_io(26),
      O => AXI_GPIO_tri_i_26(26),
      T => AXI_GPIO_tri_t_26(26)
    );
AXI_GPIO_tri_iobuf_27: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_27(27),
      IO => AXI_GPIO_tri_io(27),
      O => AXI_GPIO_tri_i_27(27),
      T => AXI_GPIO_tri_t_27(27)
    );
AXI_GPIO_tri_iobuf_28: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_28(28),
      IO => AXI_GPIO_tri_io(28),
      O => AXI_GPIO_tri_i_28(28),
      T => AXI_GPIO_tri_t_28(28)
    );
AXI_GPIO_tri_iobuf_29: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_29(29),
      IO => AXI_GPIO_tri_io(29),
      O => AXI_GPIO_tri_i_29(29),
      T => AXI_GPIO_tri_t_29(29)
    );
AXI_GPIO_tri_iobuf_3: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_3(3),
      IO => AXI_GPIO_tri_io(3),
      O => AXI_GPIO_tri_i_3(3),
      T => AXI_GPIO_tri_t_3(3)
    );
AXI_GPIO_tri_iobuf_30: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_30(30),
      IO => AXI_GPIO_tri_io(30),
      O => AXI_GPIO_tri_i_30(30),
      T => AXI_GPIO_tri_t_30(30)
    );
AXI_GPIO_tri_iobuf_31: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_31(31),
      IO => AXI_GPIO_tri_io(31),
      O => AXI_GPIO_tri_i_31(31),
      T => AXI_GPIO_tri_t_31(31)
    );
AXI_GPIO_tri_iobuf_4: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_4(4),
      IO => AXI_GPIO_tri_io(4),
      O => AXI_GPIO_tri_i_4(4),
      T => AXI_GPIO_tri_t_4(4)
    );
AXI_GPIO_tri_iobuf_5: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_5(5),
      IO => AXI_GPIO_tri_io(5),
      O => AXI_GPIO_tri_i_5(5),
      T => AXI_GPIO_tri_t_5(5)
    );
AXI_GPIO_tri_iobuf_6: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_6(6),
      IO => AXI_GPIO_tri_io(6),
      O => AXI_GPIO_tri_i_6(6),
      T => AXI_GPIO_tri_t_6(6)
    );
AXI_GPIO_tri_iobuf_7: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_7(7),
      IO => AXI_GPIO_tri_io(7),
      O => AXI_GPIO_tri_i_7(7),
      T => AXI_GPIO_tri_t_7(7)
    );
AXI_GPIO_tri_iobuf_8: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_8(8),
      IO => AXI_GPIO_tri_io(8),
      O => AXI_GPIO_tri_i_8(8),
      T => AXI_GPIO_tri_t_8(8)
    );
AXI_GPIO_tri_iobuf_9: component IOBUF
     port map (
      I => AXI_GPIO_tri_o_9(9),
      IO => AXI_GPIO_tri_io(9),
      O => AXI_GPIO_tri_i_9(9),
      T => AXI_GPIO_tri_t_9(9)
    );
AXI_I2C0_scl_iobuf: component IOBUF
     port map (
      I => AXI_I2C0_scl_o,
      IO => AXI_I2C0_scl_io,
      O => AXI_I2C0_scl_i,
      T => AXI_I2C0_scl_t
    );
AXI_I2C0_sda_iobuf: component IOBUF
     port map (
      I => AXI_I2C0_sda_o,
      IO => AXI_I2C0_sda_io,
      O => AXI_I2C0_sda_i,
      T => AXI_I2C0_sda_t
    );
AXI_I2C1_scl_iobuf: component IOBUF
     port map (
      I => AXI_I2C1_scl_o,
      IO => AXI_I2C1_scl_io,
      O => AXI_I2C1_scl_i,
      T => AXI_I2C1_scl_t
    );
AXI_I2C1_sda_iobuf: component IOBUF
     port map (
      I => AXI_I2C1_sda_o,
      IO => AXI_I2C1_sda_io,
      O => AXI_I2C1_sda_i,
      T => AXI_I2C1_sda_t
    );
AXI_QSPI_io0_iobuf: component IOBUF
     port map (
      I => AXI_QSPI_io0_o,
      IO => AXI_QSPI_io0_io,
      O => AXI_QSPI_io0_i,
      T => AXI_QSPI_io0_t
    );
AXI_QSPI_io1_iobuf: component IOBUF
     port map (
      I => AXI_QSPI_io1_o,
      IO => AXI_QSPI_io1_io,
      O => AXI_QSPI_io1_i,
      T => AXI_QSPI_io1_t
    );
AXI_QSPI_io2_iobuf: component IOBUF
     port map (
      I => AXI_QSPI_io2_o,
      IO => AXI_QSPI_io2_io,
      O => AXI_QSPI_io2_i,
      T => AXI_QSPI_io2_t
    );
AXI_QSPI_io3_iobuf: component IOBUF
     port map (
      I => AXI_QSPI_io3_o,
      IO => AXI_QSPI_io3_io,
      O => AXI_QSPI_io3_i,
      T => AXI_QSPI_io3_t
    );
AXI_QSPI_sck_iobuf: component IOBUF
     port map (
      I => AXI_QSPI_sck_o,
      IO => AXI_QSPI_sck_io,
      O => AXI_QSPI_sck_i,
      T => AXI_QSPI_sck_t
    );
AXI_QSPI_ss_iobuf_0: component IOBUF
     port map (
      I => AXI_QSPI_ss_o_0(0),
      IO => AXI_QSPI_ss_io(0),
      O => AXI_QSPI_ss_i_0(0),
      T => AXI_QSPI_ss_t
    );
SPI0_io0_iobuf: component IOBUF
     port map (
      I => SPI0_io0_o,
      IO => SPI0_io0_io,
      O => SPI0_io0_i,
      T => SPI0_io0_t
    );
SPI0_io1_iobuf: component IOBUF
     port map (
      I => SPI0_io1_o,
      IO => SPI0_io1_io,
      O => SPI0_io1_i,
      T => SPI0_io1_t
    );
SPI0_sck_iobuf: component IOBUF
     port map (
      I => SPI0_sck_o,
      IO => SPI0_sck_io,
      O => SPI0_sck_i,
      T => SPI0_sck_t
    );
SPI0_ss_iobuf: component IOBUF
     port map (
      I => SPI0_ss_o,
      IO => SPI0_ss_io,
      O => SPI0_ss_i,
      T => SPI0_ss_t
    );
SPI1_io0_iobuf: component IOBUF
     port map (
      I => SPI1_io0_o,
      IO => SPI1_io0_io,
      O => SPI1_io0_i,
      T => SPI1_io0_t
    );
SPI1_io1_iobuf: component IOBUF
     port map (
      I => SPI1_io1_o,
      IO => SPI1_io1_io,
      O => SPI1_io1_i,
      T => SPI1_io1_t
    );
SPI1_sck_iobuf: component IOBUF
     port map (
      I => SPI1_sck_o,
      IO => SPI1_sck_io,
      O => SPI1_sck_i,
      T => SPI1_sck_t
    );
SPI1_ss_iobuf: component IOBUF
     port map (
      I => SPI1_ss_o,
      IO => SPI1_ss_io,
      O => SPI1_ss_i,
      T => SPI1_ss_t
    );
zsys_i: component zsys
     port map (
      AXI_GPIO_tri_i(31) => AXI_GPIO_tri_i_31(31),
      AXI_GPIO_tri_i(30) => AXI_GPIO_tri_i_30(30),
      AXI_GPIO_tri_i(29) => AXI_GPIO_tri_i_29(29),
      AXI_GPIO_tri_i(28) => AXI_GPIO_tri_i_28(28),
      AXI_GPIO_tri_i(27) => AXI_GPIO_tri_i_27(27),
      AXI_GPIO_tri_i(26) => AXI_GPIO_tri_i_26(26),
      AXI_GPIO_tri_i(25) => AXI_GPIO_tri_i_25(25),
      AXI_GPIO_tri_i(24) => AXI_GPIO_tri_i_24(24),
      AXI_GPIO_tri_i(23) => AXI_GPIO_tri_i_23(23),
      AXI_GPIO_tri_i(22) => AXI_GPIO_tri_i_22(22),
      AXI_GPIO_tri_i(21) => AXI_GPIO_tri_i_21(21),
      AXI_GPIO_tri_i(20) => AXI_GPIO_tri_i_20(20),
      AXI_GPIO_tri_i(19) => AXI_GPIO_tri_i_19(19),
      AXI_GPIO_tri_i(18) => AXI_GPIO_tri_i_18(18),
      AXI_GPIO_tri_i(17) => AXI_GPIO_tri_i_17(17),
      AXI_GPIO_tri_i(16) => AXI_GPIO_tri_i_16(16),
      AXI_GPIO_tri_i(15) => AXI_GPIO_tri_i_15(15),
      AXI_GPIO_tri_i(14) => AXI_GPIO_tri_i_14(14),
      AXI_GPIO_tri_i(13) => AXI_GPIO_tri_i_13(13),
      AXI_GPIO_tri_i(12) => AXI_GPIO_tri_i_12(12),
      AXI_GPIO_tri_i(11) => AXI_GPIO_tri_i_11(11),
      AXI_GPIO_tri_i(10) => AXI_GPIO_tri_i_10(10),
      AXI_GPIO_tri_i(9) => AXI_GPIO_tri_i_9(9),
      AXI_GPIO_tri_i(8) => AXI_GPIO_tri_i_8(8),
      AXI_GPIO_tri_i(7) => AXI_GPIO_tri_i_7(7),
      AXI_GPIO_tri_i(6) => AXI_GPIO_tri_i_6(6),
      AXI_GPIO_tri_i(5) => AXI_GPIO_tri_i_5(5),
      AXI_GPIO_tri_i(4) => AXI_GPIO_tri_i_4(4),
      AXI_GPIO_tri_i(3) => AXI_GPIO_tri_i_3(3),
      AXI_GPIO_tri_i(2) => AXI_GPIO_tri_i_2(2),
      AXI_GPIO_tri_i(1) => AXI_GPIO_tri_i_1(1),
      AXI_GPIO_tri_i(0) => AXI_GPIO_tri_i_0(0),
      AXI_GPIO_tri_o(31) => AXI_GPIO_tri_o_31(31),
      AXI_GPIO_tri_o(30) => AXI_GPIO_tri_o_30(30),
      AXI_GPIO_tri_o(29) => AXI_GPIO_tri_o_29(29),
      AXI_GPIO_tri_o(28) => AXI_GPIO_tri_o_28(28),
      AXI_GPIO_tri_o(27) => AXI_GPIO_tri_o_27(27),
      AXI_GPIO_tri_o(26) => AXI_GPIO_tri_o_26(26),
      AXI_GPIO_tri_o(25) => AXI_GPIO_tri_o_25(25),
      AXI_GPIO_tri_o(24) => AXI_GPIO_tri_o_24(24),
      AXI_GPIO_tri_o(23) => AXI_GPIO_tri_o_23(23),
      AXI_GPIO_tri_o(22) => AXI_GPIO_tri_o_22(22),
      AXI_GPIO_tri_o(21) => AXI_GPIO_tri_o_21(21),
      AXI_GPIO_tri_o(20) => AXI_GPIO_tri_o_20(20),
      AXI_GPIO_tri_o(19) => AXI_GPIO_tri_o_19(19),
      AXI_GPIO_tri_o(18) => AXI_GPIO_tri_o_18(18),
      AXI_GPIO_tri_o(17) => AXI_GPIO_tri_o_17(17),
      AXI_GPIO_tri_o(16) => AXI_GPIO_tri_o_16(16),
      AXI_GPIO_tri_o(15) => AXI_GPIO_tri_o_15(15),
      AXI_GPIO_tri_o(14) => AXI_GPIO_tri_o_14(14),
      AXI_GPIO_tri_o(13) => AXI_GPIO_tri_o_13(13),
      AXI_GPIO_tri_o(12) => AXI_GPIO_tri_o_12(12),
      AXI_GPIO_tri_o(11) => AXI_GPIO_tri_o_11(11),
      AXI_GPIO_tri_o(10) => AXI_GPIO_tri_o_10(10),
      AXI_GPIO_tri_o(9) => AXI_GPIO_tri_o_9(9),
      AXI_GPIO_tri_o(8) => AXI_GPIO_tri_o_8(8),
      AXI_GPIO_tri_o(7) => AXI_GPIO_tri_o_7(7),
      AXI_GPIO_tri_o(6) => AXI_GPIO_tri_o_6(6),
      AXI_GPIO_tri_o(5) => AXI_GPIO_tri_o_5(5),
      AXI_GPIO_tri_o(4) => AXI_GPIO_tri_o_4(4),
      AXI_GPIO_tri_o(3) => AXI_GPIO_tri_o_3(3),
      AXI_GPIO_tri_o(2) => AXI_GPIO_tri_o_2(2),
      AXI_GPIO_tri_o(1) => AXI_GPIO_tri_o_1(1),
      AXI_GPIO_tri_o(0) => AXI_GPIO_tri_o_0(0),
      AXI_GPIO_tri_t(31) => AXI_GPIO_tri_t_31(31),
      AXI_GPIO_tri_t(30) => AXI_GPIO_tri_t_30(30),
      AXI_GPIO_tri_t(29) => AXI_GPIO_tri_t_29(29),
      AXI_GPIO_tri_t(28) => AXI_GPIO_tri_t_28(28),
      AXI_GPIO_tri_t(27) => AXI_GPIO_tri_t_27(27),
      AXI_GPIO_tri_t(26) => AXI_GPIO_tri_t_26(26),
      AXI_GPIO_tri_t(25) => AXI_GPIO_tri_t_25(25),
      AXI_GPIO_tri_t(24) => AXI_GPIO_tri_t_24(24),
      AXI_GPIO_tri_t(23) => AXI_GPIO_tri_t_23(23),
      AXI_GPIO_tri_t(22) => AXI_GPIO_tri_t_22(22),
      AXI_GPIO_tri_t(21) => AXI_GPIO_tri_t_21(21),
      AXI_GPIO_tri_t(20) => AXI_GPIO_tri_t_20(20),
      AXI_GPIO_tri_t(19) => AXI_GPIO_tri_t_19(19),
      AXI_GPIO_tri_t(18) => AXI_GPIO_tri_t_18(18),
      AXI_GPIO_tri_t(17) => AXI_GPIO_tri_t_17(17),
      AXI_GPIO_tri_t(16) => AXI_GPIO_tri_t_16(16),
      AXI_GPIO_tri_t(15) => AXI_GPIO_tri_t_15(15),
      AXI_GPIO_tri_t(14) => AXI_GPIO_tri_t_14(14),
      AXI_GPIO_tri_t(13) => AXI_GPIO_tri_t_13(13),
      AXI_GPIO_tri_t(12) => AXI_GPIO_tri_t_12(12),
      AXI_GPIO_tri_t(11) => AXI_GPIO_tri_t_11(11),
      AXI_GPIO_tri_t(10) => AXI_GPIO_tri_t_10(10),
      AXI_GPIO_tri_t(9) => AXI_GPIO_tri_t_9(9),
      AXI_GPIO_tri_t(8) => AXI_GPIO_tri_t_8(8),
      AXI_GPIO_tri_t(7) => AXI_GPIO_tri_t_7(7),
      AXI_GPIO_tri_t(6) => AXI_GPIO_tri_t_6(6),
      AXI_GPIO_tri_t(5) => AXI_GPIO_tri_t_5(5),
      AXI_GPIO_tri_t(4) => AXI_GPIO_tri_t_4(4),
      AXI_GPIO_tri_t(3) => AXI_GPIO_tri_t_3(3),
      AXI_GPIO_tri_t(2) => AXI_GPIO_tri_t_2(2),
      AXI_GPIO_tri_t(1) => AXI_GPIO_tri_t_1(1),
      AXI_GPIO_tri_t(0) => AXI_GPIO_tri_t_0(0),
      AXI_I2C0_scl_i => AXI_I2C0_scl_i,
      AXI_I2C0_scl_o => AXI_I2C0_scl_o,
      AXI_I2C0_scl_t => AXI_I2C0_scl_t,
      AXI_I2C0_sda_i => AXI_I2C0_sda_i,
      AXI_I2C0_sda_o => AXI_I2C0_sda_o,
      AXI_I2C0_sda_t => AXI_I2C0_sda_t,
      AXI_I2C1_scl_i => AXI_I2C1_scl_i,
      AXI_I2C1_scl_o => AXI_I2C1_scl_o,
      AXI_I2C1_scl_t => AXI_I2C1_scl_t,
      AXI_I2C1_sda_i => AXI_I2C1_sda_i,
      AXI_I2C1_sda_o => AXI_I2C1_sda_o,
      AXI_I2C1_sda_t => AXI_I2C1_sda_t,
      AXI_QSPI_io0_i => AXI_QSPI_io0_i,
      AXI_QSPI_io0_o => AXI_QSPI_io0_o,
      AXI_QSPI_io0_t => AXI_QSPI_io0_t,
      AXI_QSPI_io1_i => AXI_QSPI_io1_i,
      AXI_QSPI_io1_o => AXI_QSPI_io1_o,
      AXI_QSPI_io1_t => AXI_QSPI_io1_t,
      AXI_QSPI_io2_i => AXI_QSPI_io2_i,
      AXI_QSPI_io2_o => AXI_QSPI_io2_o,
      AXI_QSPI_io2_t => AXI_QSPI_io2_t,
      AXI_QSPI_io3_i => AXI_QSPI_io3_i,
      AXI_QSPI_io3_o => AXI_QSPI_io3_o,
      AXI_QSPI_io3_t => AXI_QSPI_io3_t,
      AXI_QSPI_sck_i => AXI_QSPI_sck_i,
      AXI_QSPI_sck_o => AXI_QSPI_sck_o,
      AXI_QSPI_sck_t => AXI_QSPI_sck_t,
      AXI_QSPI_ss_i(0) => AXI_QSPI_ss_i_0(0),
      AXI_QSPI_ss_o(0) => AXI_QSPI_ss_o_0(0),
      AXI_QSPI_ss_t => AXI_QSPI_ss_t,
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
      PL_pin_P22 => PL_pin_P22,
      SPI0_io0_i => SPI0_io0_i,
      SPI0_io0_o => SPI0_io0_o,
      SPI0_io0_t => SPI0_io0_t,
      SPI0_io1_i => SPI0_io1_i,
      SPI0_io1_o => SPI0_io1_o,
      SPI0_io1_t => SPI0_io1_t,
      SPI0_sck_i => SPI0_sck_i,
      SPI0_sck_o => SPI0_sck_o,
      SPI0_sck_t => SPI0_sck_t,
      SPI0_ss1_o => SPI0_ss1_o,
      SPI0_ss2_o => SPI0_ss2_o,
      SPI0_ss_i => SPI0_ss_i,
      SPI0_ss_o => SPI0_ss_o,
      SPI0_ss_t => SPI0_ss_t,
      SPI1_io0_i => SPI1_io0_i,
      SPI1_io0_o => SPI1_io0_o,
      SPI1_io0_t => SPI1_io0_t,
      SPI1_io1_i => SPI1_io1_i,
      SPI1_io1_o => SPI1_io1_o,
      SPI1_io1_t => SPI1_io1_t,
      SPI1_sck_i => SPI1_sck_i,
      SPI1_sck_o => SPI1_sck_o,
      SPI1_sck_t => SPI1_sck_t,
      SPI1_ss1_o => SPI1_ss1_o,
      SPI1_ss2_o => SPI1_ss2_o,
      SPI1_ss_i => SPI1_ss_i,
      SPI1_ss_o => SPI1_ss_o,
      SPI1_ss_t => SPI1_ss_t
    );
end STRUCTURE;
