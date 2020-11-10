// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Oct 20 20:17:17 2020
// Host        : LAPTOP-AOF2DR8H running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/test_board2/vivado/test_board2.srcs/sources_1/bd/zsys/ip/zsys_vio_0_0/zsys_vio_0_0_stub.v
// Design      : zsys_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.2" *)
module zsys_vio_0_0(clk, probe_in0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[2:0]" */;
  input clk;
  input [2:0]probe_in0;
endmodule
