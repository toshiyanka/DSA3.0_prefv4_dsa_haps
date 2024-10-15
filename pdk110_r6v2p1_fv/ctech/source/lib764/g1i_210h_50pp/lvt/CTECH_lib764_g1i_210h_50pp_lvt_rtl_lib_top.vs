//suppress_errors CMD-036
//spyglass disable_block 60706 W210
module CTECH_lib764_g1i_210h_50pp_lvt_rtl_lib_top(input logic clk, input logic data_i, output logic data_o);
always_ff @(posedge clk)
data_o <= data_i;
    ctech_lib_clk_divider2 ctech_lib_clk_divider2();
    ctech_lib_and ctech_lib_and();
    ctech_lib_buf ctech_lib_buf();
    ctech_lib_clk_and ctech_lib_clk_and();
    ctech_lib_clk_and_en ctech_lib_clk_and_en();
    ctech_lib_clk_buf ctech_lib_clk_buf();
    ctech_lib_clk_divider2_rstb ctech_lib_clk_divider2_rstb();
    ctech_lib_clk_ffb ctech_lib_clk_ffb(.in(1'bX));
    ctech_lib_clk_ffb_rstb ctech_lib_clk_ffb_rstb(.in(1'bX));
    ctech_lib_clk_gate_and ctech_lib_clk_gate_and();
    ctech_lib_clk_gate_or ctech_lib_clk_gate_or();
    ctech_lib_clk_gate_te ctech_lib_clk_gate_te();
    ctech_lib_clk_gate_te_rstb ctech_lib_clk_gate_te_rstb();
    ctech_lib_clk_inv ctech_lib_clk_inv();
    ctech_lib_clk_mux_2to1 ctech_lib_clk_mux_2to1();
    ctech_lib_clk_nand ctech_lib_clk_nand();
    ctech_lib_clk_nand_en ctech_lib_clk_nand_en();
    ctech_lib_clk_nor ctech_lib_clk_nor();
    ctech_lib_clk_nor_en ctech_lib_clk_nor_en();
    ctech_lib_clk_or ctech_lib_clk_or();
    ctech_lib_clk_or_en ctech_lib_clk_or_en();
    ctech_lib_doublesync ctech_lib_doublesync();
    ctech_lib_doublesync_rst ctech_lib_doublesync_rst();
    ctech_lib_doublesync_rstb ctech_lib_doublesync_rstb();
    ctech_lib_doublesync_set ctech_lib_doublesync_set();
    ctech_lib_doublesync_setb ctech_lib_doublesync_setb();
    ctech_lib_inv ctech_lib_inv();
    ctech_lib_latch ctech_lib_latch();
    ctech_lib_latch_p ctech_lib_latch_p();
    ctech_lib_msff_async_rstb ctech_lib_msff_async_rstb();
    ctech_lib_msff_async_setb ctech_lib_msff_async_setb();
    ctech_lib_mux_2to1 ctech_lib_mux_2to1();
    ctech_lib_nand ctech_lib_nand();
    ctech_lib_nor ctech_lib_nor();
    ctech_lib_or ctech_lib_or();
    ctech_lib_triplesync ctech_lib_triplesync();
    ctech_lib_triplesync_rst ctech_lib_triplesync_rst();
    ctech_lib_triplesync_rstb ctech_lib_triplesync_rstb();
    ctech_lib_triplesync_set ctech_lib_triplesync_set();
    ctech_lib_triplesync_setb ctech_lib_triplesync_setb();
    ctech_lib_xor ctech_lib_xor();
endmodule
//spyglass enable_block 60706 W210
//unsuppress_message CMD-036
