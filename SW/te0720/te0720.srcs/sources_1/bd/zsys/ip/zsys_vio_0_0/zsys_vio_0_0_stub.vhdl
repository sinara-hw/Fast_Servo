-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Oct 20 20:17:17 2020
-- Host        : LAPTOP-AOF2DR8H running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/test_board2/vivado/test_board2.srcs/sources_1/bd/zsys/ip/zsys_vio_0_0/zsys_vio_0_0_stub.vhdl
-- Design      : zsys_vio_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_vio_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end zsys_vio_0_0;

architecture stub of zsys_vio_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2019.2";
begin
end;
