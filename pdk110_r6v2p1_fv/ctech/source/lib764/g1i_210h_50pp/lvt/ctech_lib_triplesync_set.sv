// ##############################################################################
// ## Intel Top Secret                                                         ##
// ##############################################################################
// ## Copyright (C) Intel Corporation.                                         ##
// ##                                                                          ##
// ## This is the property of Intel Corporation and may only be utilized       ##
// ## pursuant to a written Restricted Use Nondisclosure Agreement and any     ##
// ## applicable licenses with Intel Corporation.  It may not be used,         ##
// ## reproduced, or disclosed to others except in accordance with the terms   ##
// ## and conditions of such agreement.                                        ##
// ##                                                                          ##
// ## All products, processes, computer systems, dates, and figures            ##
// ## specified are preliminary based on current expectations, and are         ##
// ## subject to change without notice.                                        ##
// ##############################################################################
// ## Text_Tag % __Placeholder neutral1

module ctech_lib_triplesync_set # (

parameter int      WIDTH=1,
parameter int     MIN_PERIOD=0,
parameter bit      SINGLE_BUS_META=0,
parameter bit      METASTABILITY_EN=1,  
parameter bit      PULSE_WIDTH_CHECK=0,
parameter bit      ENABLE_3TO1=1,
parameter bit      PLUS1_ONLY=0,
parameter bit      MINUS1_ONLY=0,
parameter bit      TX_MODE=0,
parameter bit       DATA_META_OFF=0,
parameter bit      DEASSERT_META_OFF=0,
parameter int       USER_DATADLY=999,
parameter int       USER_DEASSERTDLY=999
)  (
   input logic 		    clk,
   input logic [WIDTH-1:0]  d,
   input logic              set,
   output logic [WIDTH-1:0] o
);
  
   g1ifmz308ab1d04x5 ctech_lib_triplesync_set_dcszo [WIDTH-1:0] (.clk(clk), .d(d), .s(set), .si(1'b0), .ssb(1'b1), .o(o), .so());
   

endmodule // ctech_lib_triplesync
