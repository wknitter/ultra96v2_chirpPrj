// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Dec 20 10:06:37 2019
// Host        : ubuv1604 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ultra96v2_oob_blk_mem_gen_0_0_stub.v
// Design      : ultra96v2_oob_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clka, rsta, ena, wea, addra, dina, douta, clkb, rstb, enb, 
  web, addrb, dinb, doutb, rsta_busy, rstb_busy)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,ena,wea[15:0],addra[31:0],dina[127:0],douta[127:0],clkb,rstb,enb,web[15:0],addrb[31:0],dinb[127:0],doutb[127:0],rsta_busy,rstb_busy" */;
  input clka;
  input rsta;
  input ena;
  input [15:0]wea;
  input [31:0]addra;
  input [127:0]dina;
  output [127:0]douta;
  input clkb;
  input rstb;
  input enb;
  input [15:0]web;
  input [31:0]addrb;
  input [127:0]dinb;
  output [127:0]doutb;
  output rsta_busy;
  output rstb_busy;
endmodule
