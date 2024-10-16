//------------------------------------------------------------------------------------------------------------------------------------------------
//
// INTEL CONFIDENTIAL
//
// Copyright 2020 Intel Corporation All Rights Reserved.
//
// The source code contained or described herein and all documents related to the source code
// ( "Material" ) are owned by Intel Corporation or its suppliers or licensors. Title to the Material
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
//------------------------------------------------------------------------------------------------------------------------------------------------
// hqm_AW_wrr_arb_windex - weighted RR arbiter with externally-supplied index and count
//
//------------------------------------------------------------------------------------------------------------------------------------------------
//000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111
//000000011111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333334444444
//345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456
//------------------------------------------------------------------------------------------------------------------------------------------------
module hqm_AW_wrr_arb_windex
  import hqm_AW_pkg::*;
#(
  parameter NUM_REQS = 8
, parameter WEIGHT_WIDTH = 3
//................................................................................................................................................
, parameter NUM_REQSB2 = ( AW_logb2 ( NUM_REQS -1 ) + 1 )
, parameter WIDTH_SCALE = ( 1<<NUM_REQSB2 )
, parameter WIDTH_SCALEB2 = (AW_logb2 ( WIDTH_SCALE -1 ) + 1)
) (
  input  logic [( WEIGHT_WIDTH) -1 : 0] weight
, input  logic [( NUM_REQS ) -1 : 0] reqs
, input  logic [( NUM_REQSB2 ) -1 : 0] index_f
, input  logic [( NUM_REQS * WEIGHT_WIDTH ) -1 : 0] count_f
, output logic [( 1 ) -1 : 0] winner_v
, output logic [( NUM_REQSB2 ) -1 : 0] winner
, output logic [( 1 ) -1 : 0] winner_in_seq
, output logic [( NUM_REQSB2 ) -1 : 0] index_nxt
, output logic [( NUM_REQS * WEIGHT_WIDTH ) -1 : 0] count_nxt
) ;

//---------------------------------------------------------------------------------------------------
//Check for invalid parameter configuration
genvar GEN0 ;
generate 
  if ( ~( NUM_REQS < 2049 ) ) begin : invalid_check
    for ( GEN0 = NUM_REQS ; GEN0 <= NUM_REQS ; GEN0 = GEN0+1 ) begin : invalid_NUM_REQS
      INVALID_PARAM_COMBINATION i_invalid ( .invalid ( ) ) ;
    end
  end 
endgenerate

//------------------------------------------------------------------------------------------------------------------------------------------------
//Instances & Registers

logic [( WIDTH_SCALE) -1 : 0] width_scale_reqs_Z ;
hqm_AW_width_scale #(
  .A_WIDTH( NUM_REQS )
, .Z_WIDTH( WIDTH_SCALE )
 ) i_width_scale_reqs (
 .a ( reqs )
,.z ( width_scale_reqs_Z )
);

logic [( WIDTH_SCALE ) -1 : 0] rotate_right_bit_00_dout ;
hqm_AW_rotate_bit #(
 .WIDTH(WIDTH_SCALE)
) i_rotate_right_bit (
 .din ( width_scale_reqs_Z )
,.rot ( index_f )
,.dout ( rotate_right_bit_00_dout )
);

logic [( WIDTH_SCALEB2 ) -1 : 0] binenc_reqs_enc ;
logic [( 1 ) -1 : 0 ] binenc_reqs_any_nc ;
hqm_AW_binenc #(
 .WIDTH(WIDTH_SCALE)
) i_binenc_reqs (
 .a ( rotate_right_bit_00_dout )
,.enc ( binenc_reqs_enc )
,.any ( binenc_reqs_any_nc )
);

//------------------------------------------------------------------------------------------------------------------------------------------------

always_comb begin
  index_nxt = index_f ;
  count_nxt = count_f ;

  winner_v = |(reqs) ;
  winner = index_f + binenc_reqs_enc ;
  winner_in_seq = 1'b0 ;

  if ( winner_v ) begin
    if ( count_f [ ( winner * WEIGHT_WIDTH ) +: WEIGHT_WIDTH ] == '0 ) begin
      index_nxt = winner + { {(NUM_REQSB2-1){1'b0}} , 1'd1 } ;
      count_nxt [ ( winner * WEIGHT_WIDTH ) +: WEIGHT_WIDTH ] = weight ;
    end
    else begin
      index_nxt = winner ;
      count_nxt [ ( winner * WEIGHT_WIDTH ) +: WEIGHT_WIDTH ] = count_f [ ( winner * WEIGHT_WIDTH ) +: WEIGHT_WIDTH ] - { {(WEIGHT_WIDTH-1){1'b0}} , 1'd1 } ;
    end
    winner_in_seq = ( winner == index_f ) ;
  end

end

endmodule // hqm_AW_wrr_arb_windex
