// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Oct 20 20:17:07 2020
// Host        : LAPTOP-AOF2DR8H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/test_board2/vivado/test_board2.srcs/sources_1/bd/zsys/ip/zsys_SC0720_0_0/zsys_SC0720_0_0_stub.v
// Design      : zsys_SC0720_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SC0720,Vivado 2019.2" *)
module zsys_SC0720_0_0(ext_sda_i, ext_sda_o, ext_sda_t, ext_scl_i, 
  ext_scl_o, ext_scl_t, PHY_LED0, PHY_LED1, PHY_LED2, PL_pin_K16, PL_pin_K19, PL_pin_L16, 
  PL_pin_M15, PL_pin_N15, PL_pin_P16, PL_pin_P22, PL_pin_K20, PL_pin_N22, sda_i, sda_o, sda_t, scl_i, 
  scl_o, scl_t)
/* synthesis syn_black_box black_box_pad_pin="ext_sda_i,ext_sda_o,ext_sda_t,ext_scl_i,ext_scl_o,ext_scl_t,PHY_LED0,PHY_LED1,PHY_LED2,PL_pin_K16,PL_pin_K19,PL_pin_L16,PL_pin_M15,PL_pin_N15,PL_pin_P16,PL_pin_P22,PL_pin_K20,PL_pin_N22,sda_i,sda_o,sda_t,scl_i,scl_o,scl_t" */;
  input ext_sda_i;
  output ext_sda_o;
  output ext_sda_t;
  input ext_scl_i;
  output ext_scl_o;
  output ext_scl_t;
  output PHY_LED0;
  output PHY_LED1;
  output PHY_LED2;
  input PL_pin_K16;
  input PL_pin_K19;
  output PL_pin_L16;
  input PL_pin_M15;
  input PL_pin_N15;
  input PL_pin_P16;
  input PL_pin_P22;
  output PL_pin_K20;
  output PL_pin_N22;
  output sda_i;
  input sda_o;
  input sda_t;
  output scl_i;
  input scl_o;
  input scl_t;
endmodule
