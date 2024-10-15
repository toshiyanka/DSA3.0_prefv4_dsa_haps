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

module ctech_lib_clk_gate_or (
   input logic clk,
   input logic en,
   output logic clkout );

   logic 	en_latch;
 
    g1ilsn000ab1n06x5 ctech_lib_clk_gate_or_dcszo1 (.o(en_latch), .d(en), .clk(clk));
    g1iclb0o2ab1n04x5 ctech_lib_clk_gate_or_dcszo  (.clkout(clkout),.clk(clk),.enb(en_latch));

endmodule // ctech_lib_clk_gate_or
