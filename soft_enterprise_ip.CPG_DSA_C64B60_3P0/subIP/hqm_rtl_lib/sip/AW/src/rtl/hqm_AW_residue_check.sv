//-----------------------------------------------------------------------------------------------------
//
// INTEL CONFIDENTIAL
//
// Copyright 2020 Intel Corporation All Rights Reserved.
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
// AW_residue_check
//
// This module is responsible for checking residue.
//
// The following parameters are supported:
//
//	WIDTH		Width of the datapath on which to check residue.
//
//-----------------------------------------------------------------------------------------------------

module hqm_AW_residue_check
        import hqm_AW_pkg::*; #(

        parameter WIDTH	= 1
) (
          input logic   [1:0]           r
        , input logic   [WIDTH-1:0]     d
        , input	logic                   e

        , output logic                  err
);

//-----------------------------------------------------------------------------------------------------

logic [1:0]             gr ;

hqm_AW_residue_gen #( .WIDTH ( WIDTH ) ) i_res_gen (
          .a            ( d )
        , .r            ( gr )
) ;

assign err      = e & ( gr != r ) ;

endmodule // AW_residue_check

