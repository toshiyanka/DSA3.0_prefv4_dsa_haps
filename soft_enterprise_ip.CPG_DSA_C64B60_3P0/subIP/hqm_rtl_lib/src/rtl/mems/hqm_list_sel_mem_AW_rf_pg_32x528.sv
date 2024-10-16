//-----------------------------------------------------------------------------------------------------
// INTEL CONFIDENTIAL
//
// Copyright 2022 Intel Corporation All Rights Reserved.
//
// The source code contained or described herein and all documents related to the source code
// ("Material") are owned by Intel Corporation or its suppliers or licensors. Title to the Material
// remains with Intel Corporation or its suppliers and licensors. The Material contains trade
// secrets and proprietary and confidential information of Intel or its suppliers and licensors.
// The Material is protected by worldwide copyright and trade secret laws and treaty provisions.
// No part of the Material may be used, copied, reproduced, modified, published, uploaded, posted,
// transmitted, distributed, or disclosed in any way without Intel's prior express written permission.
//
// No license under any patent, copyright, trade secret or other intellectual property right is
// granted to or conferred upon you by disclosure or delivery of the Materials, either expressly, by
// implication, inducement, estoppel or otherwise. Any license under such intellectual property rights
// must be express and approved by Intel in writing.
//
//-----------------------------------------------------------------------------------------------------

module hqm_list_sel_mem_AW_rf_pg_32x528 (

     input  logic              wclk
    ,input  logic              wclk_rst_n
    ,input  logic              we
    ,input  logic [5-1:0]      waddr
    ,input  logic [528-1:0]    wdata

    ,input  logic              rclk
    ,input  logic              rclk_rst_n
    ,input  logic              re
    ,input  logic [5-1:0]      raddr

    ,output logic [528-1:0]    rdata

    // PWR Interface

    ,input  logic              pgcb_isol_en
    ,input  logic              pwr_enable_b_in
    ,output logic              pwr_enable_b_out

    ,input  logic              ip_reset_b

    ,input  logic              fscan_byprst_b
    ,input  logic              fscan_clkungate
    ,input  logic              fscan_rstbypen
);

logic [4*132-1:0] rdata_tdo;

logic ip_reset_b_sync;

`ifndef INTEL_NO_PWR_PINS

  `ifdef INTC_ADD_VSS

        logic  dummy_vss;

        assign dummy_vss = 1'b0;

  `endif

`endif

hqm_mem_reset_sync_scan i_ip_reset_b_sync (

     .clk                     (rclk)
    ,.rst_n                   (ip_reset_b)

    ,.fscan_rstbypen          (fscan_rstbypen)
    ,.fscan_byprst_b          (fscan_byprst_b)

    ,.rst_n_sync              (ip_reset_b_sync)
);

//*******************************************************************
// Placeholder ARRAY OF RFs
//*******************************************************************

logic [4:0] pwr_mgmt_enable;

assign pwr_mgmt_enable[0] = pwr_enable_b_in;

logic      WE_SEL;
logic      RE_SEL;

assign WE_SEL = we;
assign RE_SEL = re;

hqm_ip764hd2prf32x132s0r2p1_dfx_wrapper i_rf_b0 (

     .FUNC_WR_CLK_IN          (wclk)
    ,.FUNC_WR_EN_IN           (WE_SEL)
    ,.FUNC_WR_ADDR_IN         (waddr[5-1:0])
    ,.FUNC_WR_DATA_IN         (wdata[(0*132+132-1):(0*132)])

    ,.FUNC_RD_CLK_IN          (rclk)
    ,.FUNC_RD_EN_IN           (RE_SEL)
    ,.FUNC_RD_ADDR_IN         (raddr[5-1:0])
    ,.DATA_OUT                (rdata_tdo[(0*132+132-1):(0*132)])

    ,.IP_RESET_B              (ip_reset_b_sync)
    ,.OUTPUT_RESET            ('0)

    ,.WRAPPER_RD_CLK_EN       ('1)
    ,.WRAPPER_WR_CLK_EN       ('1)

    ,.ISOLATION_CONTROL_IN    (pgcb_isol_en)
    ,.PWR_MGMT_IN             ({pwr_mgmt_enable[0], 3'd0, pwr_mgmt_enable[0]})
    ,.PWR_MGMT_OUT            (pwr_mgmt_enable[1])

    ,.COL_REPAIR_IN           ('0)
    ,.GLOBAL_RROW_EN_IN_RD    ('0)
    ,.GLOBAL_RROW_EN_IN_WR    ('0)
    ,.ROW_REPAIR_IN           ('0)
    ,.SLEEP_FUSE_IN           ('0)
    ,.TRIM_FUSE_IN            (11'h008)

    ,.ARRAY_FREEZE            ('0)

    ,.BIST_ENABLE             ('0)
    ,.BIST_WR_CLK_IN          ('0)
    ,.BIST_WR_EN_IN           ('0)
    ,.BIST_WR_ADDR_IN         ('0)
    ,.BIST_WR_DATA_IN         ('0)
    ,.BIST_RD_CLK_IN          ('0)
    ,.BIST_RD_EN_IN           ('0)
    ,.BIST_RD_ADDR_IN         ('0)

    ,.FSCAN_CLKUNGATE         (fscan_clkungate)
    ,.FSCAN_RAM_BYPSEL        ('0)
    ,.FSCAN_RAM_INIT_EN       ('0)
    ,.FSCAN_RAM_INIT_VAL      ('0)
    ,.FSCAN_RAM_RDIS_B        ('1)
    ,.FSCAN_RAM_WDIS_B        ('1)

  `ifndef INTEL_NO_PWR_PINS

    ,.vddp                    ('1)

    `ifdef INTC_ADD_VSS

    ,.vss                     (dummy_vss)

    `endif

  `endif

);

hqm_ip764hd2prf32x132s0r2p1_dfx_wrapper i_rf_b1 (

     .FUNC_WR_CLK_IN          (wclk)
    ,.FUNC_WR_EN_IN           (WE_SEL)
    ,.FUNC_WR_ADDR_IN         (waddr[5-1:0])
    ,.FUNC_WR_DATA_IN         (wdata[(1*132+132-1):(1*132)])

    ,.FUNC_RD_CLK_IN          (rclk)
    ,.FUNC_RD_EN_IN           (RE_SEL)
    ,.FUNC_RD_ADDR_IN         (raddr[5-1:0])
    ,.DATA_OUT                (rdata_tdo[(1*132+132-1):(1*132)])

    ,.IP_RESET_B              (ip_reset_b_sync)
    ,.OUTPUT_RESET            ('0)

    ,.WRAPPER_RD_CLK_EN       ('1)
    ,.WRAPPER_WR_CLK_EN       ('1)

    ,.ISOLATION_CONTROL_IN    (pgcb_isol_en)
    ,.PWR_MGMT_IN             ({pwr_mgmt_enable[1], 3'd0, pwr_mgmt_enable[1]})
    ,.PWR_MGMT_OUT            (pwr_mgmt_enable[2])

    ,.COL_REPAIR_IN           ('0)
    ,.GLOBAL_RROW_EN_IN_RD    ('0)
    ,.GLOBAL_RROW_EN_IN_WR    ('0)
    ,.ROW_REPAIR_IN           ('0)
    ,.SLEEP_FUSE_IN           ('0)
    ,.TRIM_FUSE_IN            (11'h008)

    ,.ARRAY_FREEZE            ('0)

    ,.BIST_ENABLE             ('0)
    ,.BIST_WR_CLK_IN          ('0)
    ,.BIST_WR_EN_IN           ('0)
    ,.BIST_WR_ADDR_IN         ('0)
    ,.BIST_WR_DATA_IN         ('0)
    ,.BIST_RD_CLK_IN          ('0)
    ,.BIST_RD_EN_IN           ('0)
    ,.BIST_RD_ADDR_IN         ('0)

    ,.FSCAN_CLKUNGATE         (fscan_clkungate)
    ,.FSCAN_RAM_BYPSEL        ('0)
    ,.FSCAN_RAM_INIT_EN       ('0)
    ,.FSCAN_RAM_INIT_VAL      ('0)
    ,.FSCAN_RAM_RDIS_B        ('1)
    ,.FSCAN_RAM_WDIS_B        ('1)

  `ifndef INTEL_NO_PWR_PINS

    ,.vddp                    ('1)

    `ifdef INTC_ADD_VSS

    ,.vss                     (dummy_vss)

    `endif

  `endif

);

hqm_ip764hd2prf32x132s0r2p1_dfx_wrapper i_rf_b2 (

     .FUNC_WR_CLK_IN          (wclk)
    ,.FUNC_WR_EN_IN           (WE_SEL)
    ,.FUNC_WR_ADDR_IN         (waddr[5-1:0])
    ,.FUNC_WR_DATA_IN         (wdata[(2*132+132-1):(2*132)])

    ,.FUNC_RD_CLK_IN          (rclk)
    ,.FUNC_RD_EN_IN           (RE_SEL)
    ,.FUNC_RD_ADDR_IN         (raddr[5-1:0])
    ,.DATA_OUT                (rdata_tdo[(2*132+132-1):(2*132)])

    ,.IP_RESET_B              (ip_reset_b_sync)
    ,.OUTPUT_RESET            ('0)

    ,.WRAPPER_RD_CLK_EN       ('1)
    ,.WRAPPER_WR_CLK_EN       ('1)

    ,.ISOLATION_CONTROL_IN    (pgcb_isol_en)
    ,.PWR_MGMT_IN             ({pwr_mgmt_enable[2], 3'd0, pwr_mgmt_enable[2]})
    ,.PWR_MGMT_OUT            (pwr_mgmt_enable[3])

    ,.COL_REPAIR_IN           ('0)
    ,.GLOBAL_RROW_EN_IN_RD    ('0)
    ,.GLOBAL_RROW_EN_IN_WR    ('0)
    ,.ROW_REPAIR_IN           ('0)
    ,.SLEEP_FUSE_IN           ('0)
    ,.TRIM_FUSE_IN            (11'h008)

    ,.ARRAY_FREEZE            ('0)

    ,.BIST_ENABLE             ('0)
    ,.BIST_WR_CLK_IN          ('0)
    ,.BIST_WR_EN_IN           ('0)
    ,.BIST_WR_ADDR_IN         ('0)
    ,.BIST_WR_DATA_IN         ('0)
    ,.BIST_RD_CLK_IN          ('0)
    ,.BIST_RD_EN_IN           ('0)
    ,.BIST_RD_ADDR_IN         ('0)

    ,.FSCAN_CLKUNGATE         (fscan_clkungate)
    ,.FSCAN_RAM_BYPSEL        ('0)
    ,.FSCAN_RAM_INIT_EN       ('0)
    ,.FSCAN_RAM_INIT_VAL      ('0)
    ,.FSCAN_RAM_RDIS_B        ('1)
    ,.FSCAN_RAM_WDIS_B        ('1)

  `ifndef INTEL_NO_PWR_PINS

    ,.vddp                    ('1)

    `ifdef INTC_ADD_VSS

    ,.vss                     (dummy_vss)

    `endif

  `endif

);

hqm_ip764hd2prf32x132s0r2p1_dfx_wrapper i_rf_b3 (

     .FUNC_WR_CLK_IN          (wclk)
    ,.FUNC_WR_EN_IN           (WE_SEL)
    ,.FUNC_WR_ADDR_IN         (waddr[5-1:0])
    ,.FUNC_WR_DATA_IN         (wdata[(3*132+132-1):(3*132)])

    ,.FUNC_RD_CLK_IN          (rclk)
    ,.FUNC_RD_EN_IN           (RE_SEL)
    ,.FUNC_RD_ADDR_IN         (raddr[5-1:0])
    ,.DATA_OUT                (rdata_tdo[(3*132+132-1):(3*132)])

    ,.IP_RESET_B              (ip_reset_b_sync)
    ,.OUTPUT_RESET            ('0)

    ,.WRAPPER_RD_CLK_EN       ('1)
    ,.WRAPPER_WR_CLK_EN       ('1)

    ,.ISOLATION_CONTROL_IN    (pgcb_isol_en)
    ,.PWR_MGMT_IN             ({pwr_mgmt_enable[3], 3'd0, pwr_mgmt_enable[3]})
    ,.PWR_MGMT_OUT            (pwr_mgmt_enable[4])

    ,.COL_REPAIR_IN           ('0)
    ,.GLOBAL_RROW_EN_IN_RD    ('0)
    ,.GLOBAL_RROW_EN_IN_WR    ('0)
    ,.ROW_REPAIR_IN           ('0)
    ,.SLEEP_FUSE_IN           ('0)
    ,.TRIM_FUSE_IN            (11'h008)

    ,.ARRAY_FREEZE            ('0)

    ,.BIST_ENABLE             ('0)
    ,.BIST_WR_CLK_IN          ('0)
    ,.BIST_WR_EN_IN           ('0)
    ,.BIST_WR_ADDR_IN         ('0)
    ,.BIST_WR_DATA_IN         ('0)
    ,.BIST_RD_CLK_IN          ('0)
    ,.BIST_RD_EN_IN           ('0)
    ,.BIST_RD_ADDR_IN         ('0)

    ,.FSCAN_CLKUNGATE         (fscan_clkungate)
    ,.FSCAN_RAM_BYPSEL        ('0)
    ,.FSCAN_RAM_INIT_EN       ('0)
    ,.FSCAN_RAM_INIT_VAL      ('0)
    ,.FSCAN_RAM_RDIS_B        ('1)
    ,.FSCAN_RAM_WDIS_B        ('1)

  `ifndef INTEL_NO_PWR_PINS

    ,.vddp                    ('1)

    `ifdef INTC_ADD_VSS

    ,.vss                     (dummy_vss)

    `endif

  `endif

);

assign pwr_enable_b_out = pwr_mgmt_enable[4];

assign rdata = rdata_tdo[528-1:0];

endmodule // hqm_list_sel_mem_AW_rf_pg_32x528

