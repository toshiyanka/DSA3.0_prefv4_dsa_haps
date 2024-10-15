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

module ctech_lib_clk_mux_2to1 (
   input logic clk1,
   input logic clk2,
   input logic s,
   output logic clkout );
   
   g1icmbn22ab1n02x5 ctech_lib_clk_mux_2to1_dcszo (.clkout(clkout), .s(s), .clk2(clk2), .clk1(clk1)); // note that clocks are intentionally switched due to mux polarity

endmodule // ctech_lib_clk_mux_2to1
