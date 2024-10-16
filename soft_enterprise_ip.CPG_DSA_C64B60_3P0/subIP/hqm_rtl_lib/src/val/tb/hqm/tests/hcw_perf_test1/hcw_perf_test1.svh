//-----------------------------------------------------------------------------------------------------
//
// INTEL CONFIDENTIAL
//
// Copyright 2015 Intel Corporation All Rights Reserved.
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
//-- Test
//-----------------------------------------------------------------------------------------------------
`ifndef HCW_PERF_TEST1__SV
`define HCW_PERF_TEST1__SV

import hqm_tb_cfg_sequences_pkg::*;

//-------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------
class hcw_perf_test1 extends hqm_base_test;

  `ovm_component_utils(hcw_perf_test1)

  function new(string name = "hcw_perf_test1", ovm_component parent = null);
    super.new(name,parent);
  endfunction

  function void connect();
    super.connect();
    i_hqm_tb_env.set_test_phase_type("i_hqm_tb_env","CONFIG_PHASE","hqm_tb_hcw_cfg_seq");
    i_hqm_tb_env.set_test_phase_type("i_hqm_tb_env","USER_DATA_PHASE","hcw_perf_test1_hcw_seq");
    i_hqm_tb_env.set_test_phase_type("i_hqm_tb_env","FLUSH_PHASE","hqm_tb_hcw_eot_file_mode_seq");
  endfunction


  //------------------
  //-- doConfig() 
  //------------------
  function void do_config();
 
  endfunction

  function void set_config();  

  endfunction

  function void set_override();
  endfunction


endclass
`endif
