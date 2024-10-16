
//  INTEL CONFIDENTIAL
//
//  Copyright 2023 Intel Corporation All Rights Reserved.
//
//  The source code contained or described herein and all documents related
//  to the source code ("Material") are owned by Intel Corporation or its
//  suppliers or licensors. Title to the Material remains with Intel
//  Corporation or its suppliers and licensors. The Material contains trade
//  secrets and proprietary and confidential information of Intel or its
//  suppliers and licensors. The Material is protected by worldwide copyright
//  and trade secret laws and treaty provisions. No part of the Material may
//  be used, copied, reproduced, modified, published, uploaded, posted,
//  transmitted, distributed, or disclosed in any way without Intel's prior
//  express written permission.
//
//  No license under any patent, copyright, trade secret or other intellectual
//  property right is granted to or conferred upon you by disclosure or
//  delivery of the Materials, either expressly, by implication, inducement,
//  estoppel or otherwise. Any license under such intellectual property rights
//  must be express and approved by Intel in writing.
//

//------------------------------------------------------------------------------------------------------------------------
// Intel Proprietary        Intel Confidential        Intel Proprietary        Intel Confidential        Intel Proprietary
//------------------------------------------------------------------------------------------------------------------------
// Generated by                  : cudoming
// Generated on                  : April 18, 2023
//------------------------------------------------------------------------------------------------------------------------
// General Information:
// ------------------------------
// 1r1w0c standard array for SDG server designs.
// Behavioral modeling of a parameterized register file core with no DFX features.
// RTL is written in SystemVerilog.
//------------------------------------------------------------------------------------------------------------------------
// Detail Information:
// ------------------------------
// Addresses        : RD/WR addresses are encoded.
//                    Input addresses will be valid at the array in 1 phases after being driven.
//                    Address latency of 1 is corresponding to a B-latch.
// Enables          : RD/WR enables are used to condition the clock and wordlines.
//                  : Input enables will be valid at the array in 1 phases after being driven.
//                    Enable latency of 1 is corresponding to a B-latch.
// Write Data       : Write data will be valid at the array 2 phases after being driven.
//                    Write data latency of 2 is corresponding to a rising-edge flop. 
// Read Data        : Read data will be valid at the output of a SDL 1 phase after being read.
//                    Read data latency of 1 is corresponding to a B-latch.
// Address Offset   : 
//------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------------------
// Other Information:
// ------------------------------
// SDG RFIP RTL Release Path:
// /p/hdk/rtl/ip_releases/shdk74/array_macro_module
//
//------------------------------------------------------------------------------------------------------------------------

////////////////////////////////////////////////////////////////
// FileName : arf038b128e1r1w0cbbehraa4acw.v
// RAM Library Model - Top
// this module definition allows the sdl_init to be external to the atpglib 
// so that it can have a separate init attribute
////////////////////////////////////////////////////////////////

module arf038b128e1r1w0cbbehraa4acw (
  ckrdp0, rdenp0, rdaddrp0, sdl_initp0, rddatap0, 
  ckwrp0, wrenp0, wraddrp0, wrdatap0,  
  rdaddrp0_fd, rdaddrp0_rd, 
  wraddrp0_fd, wraddrp0_rd, wrdatap0_fd, wrdatap0_rd);

  //Input and output pins declarations
  input ckrdp0;
  input rdenp0;
  input [6:0] rdaddrp0;
  output [39:0] rddatap0;
  input sdl_initp0;

  input ckwrp0;
  input wrenp0; 
  input [6:0] wraddrp0;
  input [39:0] wrdatap0;
 
  input rdaddrp0_fd;
  input rdaddrp0_rd;

  input wraddrp0_fd;
  input wraddrp0_rd;
  input wrdatap0_fd;
  input wrdatap0_rd;

  wire [39:0] pre_rddatap0 ;
  wire sdl_initp0_i_out;
  wire ckrd_rcb_outp0;


  //hier module
  arf038b128e1r1w0cbbehraa4acw_hier sub_array (
     .ckrdp0           ( ckrdp0 )
    ,.rdenp0           ( rdenp0 )
    ,.rdaddrp0         ( rdaddrp0 )
    ,.pre_rddatap0     ( pre_rddatap0 )
    ,.sdl_initp0       ( sdl_initp0 )
    ,.sdl_initp0_i_out ( sdl_initp0_i_out )
    ,.ckrd_rcb_outp0   ( ckrd_rcb_outp0 )
    ,.ckwrp0           ( ckwrp0 )
    ,.wrenp0           ( wrenp0 )
    ,.wraddrp0         ( wraddrp0 )
    ,.wrdatap0         ( wrdatap0 )
    ,.rdaddrp0_fd      ( rdaddrp0_fd )
    ,.rdaddrp0_rd      ( rdaddrp0_rd )
    ,.wraddrp0_fd      ( wraddrp0_fd )
    ,.wraddrp0_rd      ( wraddrp0_rd )
    ,.wrdatap0_fd      ( wrdatap0_fd )
    ,.wrdatap0_rd      ( wrdatap0_rd )
  );

  //rddatap0
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_39 (.d(pre_rddatap0[39]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[39]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_38 (.d(pre_rddatap0[38]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[38]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_37 (.d(pre_rddatap0[37]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[37]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_36 (.d(pre_rddatap0[36]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[36]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_35 (.d(pre_rddatap0[35]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[35]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_34 (.d(pre_rddatap0[34]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[34]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_33 (.d(pre_rddatap0[33]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[33]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_32 (.d(pre_rddatap0[32]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[32]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_31 (.d(pre_rddatap0[31]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[31]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_30 (.d(pre_rddatap0[30]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[30]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_29 (.d(pre_rddatap0[29]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[29]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_28 (.d(pre_rddatap0[28]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[28]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_27 (.d(pre_rddatap0[27]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[27]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_26 (.d(pre_rddatap0[26]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[26]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_25 (.d(pre_rddatap0[25]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[25]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_24 (.d(pre_rddatap0[24]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[24]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_23 (.d(pre_rddatap0[23]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[23]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_22 (.d(pre_rddatap0[22]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[22]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_21 (.d(pre_rddatap0[21]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[21]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_20 (.d(pre_rddatap0[20]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[20]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_19 (.d(pre_rddatap0[19]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[19]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_18 (.d(pre_rddatap0[18]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[18]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_17 (.d(pre_rddatap0[17]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[17]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_16 (.d(pre_rddatap0[16]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[16]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_15 (.d(pre_rddatap0[15]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[15]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_14 (.d(pre_rddatap0[14]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[14]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_13 (.d(pre_rddatap0[13]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[13]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_12 (.d(pre_rddatap0[12]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[12]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_11 (.d(pre_rddatap0[11]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[11]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_10 (.d(pre_rddatap0[10]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[10]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_9 (.d(pre_rddatap0[9]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[9]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_8 (.d(pre_rddatap0[8]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[8]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_7 (.d(pre_rddatap0[7]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[7]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_6 (.d(pre_rddatap0[6]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[6]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_5 (.d(pre_rddatap0[5]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[5]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_4 (.d(pre_rddatap0[4]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[4]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_3 (.d(pre_rddatap0[3]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[3]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_2 (.d(pre_rddatap0[2]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[2]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_1 (.d(pre_rddatap0[1]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[1]));
  arf038b128e1r1w0cbbehraa4acw_latch_func data_out_p0_0 (.d(pre_rddatap0[0]), .rb(sdl_initp0_i_out), .clk(ckrd_rcb_outp0), .o(rddatap0[0]));

endmodule

module arf038b128e1r1w0cbbehraa4acw_latch_func ( clk, d, rb, o );
input clk;
input d;
input rb;
output o;
wire o_tmp;

       arf038b128e1r1w0cbbehraa4acw_lat_mem latch_inst ( o_tmp, d, rb, clk );
       assign #1 o = o_tmp;

endmodule

// async-reset active-high latch.
primitive arf038b128e1r1w0cbbehraa4acw_lat_mem (o, d, rb, clk, notifier);
    output o;
    reg    o;
    input  d, rb, clk, notifier;

    table
    //  d   rb   clk   notifier :  ot  :   ot+1
        ?    1     0    ?        :  ?   :    - ;  // clock disabled
        ?    0     ?    ?        :  ?   :    0 ;  // async reset
        0    ?     1    ?        :  ?   :    0 ;  //clock enabled
        1    1     1    ?        :  ?   :    1 ;  //transparent data
        0    ?     x    ?        :  0   :    0 ;  // Reducing pessimism.
        1    1     x    ?        :  1   :    1 ;
        ?    x     0    ?        :  0   :    0 ;
        ?    ?     ?    *        :  ?   :    x ;  //notifier
   endtable
endprimitive
