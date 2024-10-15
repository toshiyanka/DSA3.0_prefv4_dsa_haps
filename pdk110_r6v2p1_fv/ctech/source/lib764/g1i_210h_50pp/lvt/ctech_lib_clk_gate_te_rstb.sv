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

module ctech_lib_clk_gate_te_rstb (
   input logic en,     // Enable input logic signal
   input logic te,     // Test mode latch open. Port map to: Tlatch_open
   input logic rstb,   // Test mode latch close. Port map to: Tlatch_closedB
   input logic clk,     // Clock input
   output logic clkout  // Clock-gated enable output
   
);

   
   logic   q_out;

        g1icilb01ab1n24x5 ctech_lib_clk_gate_te_rstb_dcszo1 (.clkout(q_out), .clk(clk), .en(en), .te(te));
	g1iclb0a2ab1n04x5 ctech_lib_clk_gate_te_rstb_dcszo (.clkout(clkout), .clk(q_out), .en(rstb));

endmodule
