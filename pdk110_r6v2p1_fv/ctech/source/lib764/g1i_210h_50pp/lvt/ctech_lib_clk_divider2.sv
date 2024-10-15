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

module ctech_lib_clk_divider2 (
   output logic clkout, 
   input logic clk );

   logic    clkout_buf;
   // clkout = ~clkout on posedge(clk)
   g1icbf000ab1n04x5 ctech_lib_clk_divider2_dcszo1 (.clk(clkout), .clkout(clkout_buf));   
   g1icfun10ab1d04x5 ctech_lib_clk_divider2_dcszo (.clk(clk), .clkout(clkout), .d(clkout_buf));

endmodule // ctech_lib_clk_divider2

