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

module ctech_lib_clk_and (
   input logic clk1,
   input logic clk2,
   output logic clkout );

   logic clkout_b;

   g1icnanc2ab1n04x5 ctech_lib_clk_and_dcszo1 (.clkout(clkout_b),.clk1(clk1),.clk2(clk2));
   g1icinv00ab1n04x5 ctech_lib_clk_and_dcszo (.clkout(clkout),.clk(clkout_b));

endmodule // ctech_lib_clk_and
