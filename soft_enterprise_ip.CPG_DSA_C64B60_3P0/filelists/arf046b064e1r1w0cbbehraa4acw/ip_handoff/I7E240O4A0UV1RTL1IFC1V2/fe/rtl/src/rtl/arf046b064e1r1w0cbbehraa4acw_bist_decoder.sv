//
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

`ifndef ARF046B064E1R1W0CBBEHRAA4ACW_BIST_DECODER_SV
`define ARF046B064E1R1W0CBBEHRAA4ACW_BIST_DECODER_SV

module arf046b064e1r1w0cbbehraa4acw_bist_decoder # (
  parameter IN_WIDTH  = 1,
  parameter OUT_WIDTH = 1
)
(
  input  logic [IN_WIDTH-1:0]  in,
  output logic [OUT_WIDTH-1:0] out
);
  
  assign out = 'b1 << in;

endmodule // arf046b064e1r1w0cbbehraa4acw_bist_decoder

`endif // ARF046B064E1R1W0CBBEHRAA4ACW_BIST_DECODER_SV