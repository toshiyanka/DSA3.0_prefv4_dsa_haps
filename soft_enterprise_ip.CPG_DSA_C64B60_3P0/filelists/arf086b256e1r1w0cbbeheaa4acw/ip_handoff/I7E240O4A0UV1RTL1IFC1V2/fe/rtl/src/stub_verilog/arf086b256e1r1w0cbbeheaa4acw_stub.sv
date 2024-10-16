
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


/// Parent Module    : arf086b256e1r1w0cbbeheaa4acw_dfx_wrapper
/// Child Module     : array_generic_rwx_std

`ifndef ARF086B256E1R1W0CBBEHEAA4ACW_SV
`define ARF086B256E1R1W0CBBEHEAA4ACW_SV

//------------------------------------------------------------------------------------------------------------------------
// module arf086b256e1r1w0cbbeheaa4acw
//------------------------------------------------------------------------------------------------------------------------
module arf086b256e1r1w0cbbeheaa4acw #(

//------------------------------------------------------------------------------------------------------------------------
// local parameters
//------------------------------------------------------------------------------------------------------------------------
  localparam MODULE                 = "arf086b256e1r1w0cbbeheaa4acw",
  localparam BITS                   = 88,
  localparam ENTRIES                = 256,
  localparam DWIDTH                 = 88,
  localparam AWIDTH                 = 8,
  localparam RD_PORTS               = 1,
  localparam WR_PORTS               = 1,
  localparam CM_PORTS               = 0,
  localparam BPHASE_RD              = 0,
  localparam BPHASE_WR              = 0,
  localparam BPHASE_CM              = 0,
  localparam SEGMENTS               = 0,
  localparam BITS_PER_SEGMENT       = 0,
  localparam SDL_INITVAL            = {1'b0},
  localparam ADDRESS_OFFSET         = 0,
  localparam NO_CAM_LATENCY         = 0,
  localparam NO_CAM_LSB             = 0
)
(

//------------------------------------------------------------------------------------------------------------------------
// interfaces
//------------------------------------------------------------------------------------------------------------------------

  //------------------------------
  // read interfaces
  //------------------------------
  input   wire                            ckrdp0,
  input   wire                            rdenp0,
  input   wire    [AWIDTH-1:0]            rdaddrp0,
  output  wire    [DWIDTH-1:0]            rddatap0,
  input   wire                            sdl_initp0,

  //------------------------------
  // write interfaces
  //------------------------------
  input   wire                            ckwrp0,
  input   wire                            wrenp0,
  input   wire    [AWIDTH-1:0]            wraddrp0,
  input   wire    [DWIDTH-1:0]            wrdatap0,



  //------------------------------
  // rcb interfaces
  //------------------------------
  input   wire                            rdaddrp0_fd,
  input   wire                            rdaddrp0_rd,
  input   wire                            wraddrp0_fd,
  input   wire                            wraddrp0_rd,
  input   wire                            wrdatap0_fd,
  input   wire                            wrdatap0_rd

);

endmodule // end module arf086b256e1r1w0cbbeheaa4acw
`endif // endif ifndef ARF086B256E1R1W0CBBEHEAA4ACW_SV