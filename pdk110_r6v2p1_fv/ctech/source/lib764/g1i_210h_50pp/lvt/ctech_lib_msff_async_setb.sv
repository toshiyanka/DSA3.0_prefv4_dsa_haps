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

module ctech_lib_msff_async_setb(
   output logic o,
   input logic d,
   input logic clk,
   input logic setb );

   logic set;

   g1iinv000ab1n24x5 ctech_lib_msff_async_setb_dcszo1 (.a(setb), .o1(set));    
   g1ifvn00bab1d04x5 ctech_lib_msff_async_setb_dcszo (.clk(clk), .d(d), .o(o), .rb(1'b1), .s(set));

endmodule // ctech_lib_msff_async_setb
