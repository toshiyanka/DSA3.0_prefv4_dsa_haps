
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
// 1r1w0c standard array DFX wrapper for SDG server designs.
// Synthesizable RTL for array DFX wrapper.
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


MemoryTemplate (arf132b256e1r1w0cbbehcaa4acw_dfx_wrapper) {

  CellName              : arf132b256e1r1w0cbbehcaa4acw_dfx_wrapper;
  MemoryType            : SRAM;
  LogicalPorts          : 1R1W;    //1R1W0C
  NumberofWords         : 256;
  NumberofBits          : 132;
  //BitGrouping           : 1;
  Algorithm             : IntelLVMarchCMinusFx;
  OperationSet          : SyncCustom;
  ConcurrentRead        : Off;
  ConcurrentWrite       : On;
  ShadowRead            : On;
  ShadowWrite           : Off;
  MinHold               : 0.00;
  DataOutStage          : None;
  InternalScanLogic     : On;
  ObservationLogic      : Off;
  TransparentMode       : None;
  
  //ArrayType            : Standard Array;
  //ReadPhase            : Phase A;
  //WritePhase           : Phase A;
  //AddressDecoding      : Encoded Address;
  //RedundantColumns     : 1;
  //RedundantRows        : 1;


  AddressCounter {
    Function (Address) {
      LogicalAddressMap {
        RowAddress[7:0] : Address[7:0];
      }
    }
    Function (RowAddress) {
      CountRange[255:0];  //Encoded Address
    }
  }

 
  Port ( FUNC_WR_CLK_IN_P0 ) {
    LogicalPort: Write_Ports_0;
    Direction:   Input;
    Function:    Clock;
    Polarity:    ActiveHigh;
    EmbeddedTestLogic {
      TestInput: BIST_WR_CLK_IN_P0;
    }
  }

  Port ( FUNC_WR_EN_IN_P0 ) {
    LogicalPort: Write_Ports_0;
    Direction:   Input;
    Function:    WriteEnable;
    DisableDuringScan: Off;
    Polarity:    ActiveHigh;
    EmbeddedTestLogic {
      TestInput: BIST_WR_EN_IN_P0;
    }
  }


  Port ( FUNC_WR_ADDR_IN_P0[7:0] ) {
    LogicalPort: Write_Ports_0;
    Direction:   Input;
    Function:    Address;
    EmbeddedTestLogic {
      TestInput: BIST_WR_ADDR_IN_P0[7:0];
    }
  }

  Port ( FUNC_WR_DATA_IN_P0[131:0] ) {
    LogicalPort: Write_Ports_0;
    Direction:   Input;
    Function:    Data;
    EmbeddedTestLogic {
      TestInput: BIST_WR_DATA_IN_P0[131:0];
    }
  }

  Port ( WRAPPER_WR_CLK_EN_P0 ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   1;
  }

  Port ( GLOBAL_RROW_EN_IN_WR_P0)  { 
    Direction: Input; 
    Function: None; 
    Polarity: ActiveHigh;
    SafeValue: 1'b0;
  }

   
 
  Port ( FUNC_RD_CLK_IN_P0 ) {
    LogicalPort: Read_Ports_0;
    Direction:   Input;
    Function:    Clock;
    Polarity:    ActiveHigh;
    EmbeddedTestLogic {
      TestInput: BIST_RD_CLK_IN_P0;
    }
  }

  Port ( FUNC_RD_EN_IN_P0 ) {
    LogicalPort: Read_Ports_0;
    Direction:   Input;
    Function:    ReadEnable;
    DisableDuringScan: Off;
    Polarity:    ActiveHigh;
    EmbeddedTestLogic {
      TestInput: BIST_RD_EN_IN_P0;
    }
  }


  Port ( FUNC_RD_ADDR_IN_P0[7:0] ) {
    LogicalPort: Read_Ports_0;
    Direction:   Input;
    Function:    Address;
    EmbeddedTestLogic {
      TestInput: BIST_RD_ADDR_IN_P0[7:0];
    }
  }

  Port ( DATA_OUT_P0[131:0] ) {
    LogicalPort: Read_Ports_0;
    Direction:   Output;
    Function:    Data;
  }

  Port ( OUTPUT_RESET_P0 ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   0;
  }

  
   Port ( WRAPPER_RD_CLK_EN_P0 ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   1;
  } 

  Port ( GLOBAL_RROW_EN_IN_RD_P0)  { 
    Direction: Input; 
    Function: None; 
    Polarity: ActiveHigh;
    SafeValue: 1'b0; 
  } 



  Port ( BIST_ENABLE ) {
    Direction:   Input;
    Function:    BistEn;
    Polarity:    ActiveHigh;
  }

  Port ( flcp_fd[2:0] ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   3'b000;
  }

  Port ( flcp_rd[2:0] ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   3'b000;
  }


  Port ( IP_RESET_B ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveLow;
    SafeValue:   1'b1;
  }
  
  Port ( COL_REPAIR_IN[12:0] ) {
    Direction:   Input;
    Function:    BisrParallelData;
    Polarity:    ActiveHigh;
    
  }

  Port ( ROW_REPAIR_IN[12:0] ) {
    Direction:   Input;
    Function:    BisrParallelData;
    Polarity:    ActiveHigh;
    
  }

  Port ( FSCAN_RAM_RDIS_B ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveLow;
    SafeValue:   1;
  }

  Port ( FSCAN_RAM_WDIS_B ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveLow;
    SafeValue:   1;
  }
  

  Port ( FSCAN_RAM_INIT_EN ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   0;
  }

  Port ( FSCAN_RAM_INIT_VAL ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   0;
  }

  Port ( FSCAN_RAM_BYPSEL ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   0;
  }

  Port ( FSCAN_CLKUNGATE ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   0;
  }

  Port ( ISOLATION_CONTROL_IN ) {
    Direction: Input;
    Function: None;
    Polarity: ActiveHigh;
    Safevalue: 1'b0;
  }

  Port ( ARRAY_FREEZE ) {
    Direction: Input;
    Function: None;
    Polarity: ActiveHigh;
    Safevalue: 1'b0;
  }

  Port ( SLEEP_FUSE_IN ) {
    Direction: Input;
    Function: None;
    Polarity: ActiveHigh;
    Safevalue: 1'b0;
  }

  Port ( TRIM_FUSE_IN[19:0] ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   20'b00000000000000000000;
  }

  Port ( PWR_MGMT_IN[3:0] ) {
    Direction:   Input;
    Function:    None;
    Polarity:    ActiveHigh;
    SafeValue:   4'b0000;
  }

  Port ( PWR_MGMT_OUT[3:0] ) {
    Direction:   Output;
    Function:    None;
    Polarity:    ActiveHigh;
  }

 
//----- Start of Redundancy Analysis Segment -------------

  RedundancyAnalysis { 
    
    ColumnSegment(All) {
      NumberOfSpareElements : 1;
      ShiftedIORange : DATA_OUT_P0[131:0] ;
      FuseSet {
        FuseMap[7:0] {
          ShiftedIO(DATA_OUT_P0[0]) : 8'b00000000;
          ShiftedIO(DATA_OUT_P0[1]) : 8'b00000001;
          ShiftedIO(DATA_OUT_P0[2]) : 8'b00000010;
          ShiftedIO(DATA_OUT_P0[3]) : 8'b00000011;
          ShiftedIO(DATA_OUT_P0[4]) : 8'b00000100;
          ShiftedIO(DATA_OUT_P0[5]) : 8'b00000101;
          ShiftedIO(DATA_OUT_P0[6]) : 8'b00000110;
          ShiftedIO(DATA_OUT_P0[7]) : 8'b00000111;
          ShiftedIO(DATA_OUT_P0[8]) : 8'b00001000;
          ShiftedIO(DATA_OUT_P0[9]) : 8'b00001001;
          ShiftedIO(DATA_OUT_P0[10]) : 8'b00001010;
          ShiftedIO(DATA_OUT_P0[11]) : 8'b00001011;
          ShiftedIO(DATA_OUT_P0[12]) : 8'b00001100;
          ShiftedIO(DATA_OUT_P0[13]) : 8'b00001101;
          ShiftedIO(DATA_OUT_P0[14]) : 8'b00001110;
          ShiftedIO(DATA_OUT_P0[15]) : 8'b00001111;
          ShiftedIO(DATA_OUT_P0[16]) : 8'b00010000;
          ShiftedIO(DATA_OUT_P0[17]) : 8'b00010001;
          ShiftedIO(DATA_OUT_P0[18]) : 8'b00010010;
          ShiftedIO(DATA_OUT_P0[19]) : 8'b00010011;
          ShiftedIO(DATA_OUT_P0[20]) : 8'b00010100;
          ShiftedIO(DATA_OUT_P0[21]) : 8'b00010101;
          ShiftedIO(DATA_OUT_P0[22]) : 8'b00010110;
          ShiftedIO(DATA_OUT_P0[23]) : 8'b00010111;
          ShiftedIO(DATA_OUT_P0[24]) : 8'b00011000;
          ShiftedIO(DATA_OUT_P0[25]) : 8'b00011001;
          ShiftedIO(DATA_OUT_P0[26]) : 8'b00011010;
          ShiftedIO(DATA_OUT_P0[27]) : 8'b00011011;
          ShiftedIO(DATA_OUT_P0[28]) : 8'b00011100;
          ShiftedIO(DATA_OUT_P0[29]) : 8'b00011101;
          ShiftedIO(DATA_OUT_P0[30]) : 8'b00011110;
          ShiftedIO(DATA_OUT_P0[31]) : 8'b00011111;
          ShiftedIO(DATA_OUT_P0[32]) : 8'b00100000;
          ShiftedIO(DATA_OUT_P0[33]) : 8'b00100001;
          ShiftedIO(DATA_OUT_P0[34]) : 8'b00100010;
          ShiftedIO(DATA_OUT_P0[35]) : 8'b00100011;
          ShiftedIO(DATA_OUT_P0[36]) : 8'b00100100;
          ShiftedIO(DATA_OUT_P0[37]) : 8'b00100101;
          ShiftedIO(DATA_OUT_P0[38]) : 8'b00100110;
          ShiftedIO(DATA_OUT_P0[39]) : 8'b00100111;
          ShiftedIO(DATA_OUT_P0[40]) : 8'b00101000;
          ShiftedIO(DATA_OUT_P0[41]) : 8'b00101001;
          ShiftedIO(DATA_OUT_P0[42]) : 8'b00101010;
          ShiftedIO(DATA_OUT_P0[43]) : 8'b00101011;
          ShiftedIO(DATA_OUT_P0[44]) : 8'b00101100;
          ShiftedIO(DATA_OUT_P0[45]) : 8'b00101101;
          ShiftedIO(DATA_OUT_P0[46]) : 8'b00101110;
          ShiftedIO(DATA_OUT_P0[47]) : 8'b00101111;
          ShiftedIO(DATA_OUT_P0[48]) : 8'b00110000;
          ShiftedIO(DATA_OUT_P0[49]) : 8'b00110001;
          ShiftedIO(DATA_OUT_P0[50]) : 8'b00110010;
          ShiftedIO(DATA_OUT_P0[51]) : 8'b00110011;
          ShiftedIO(DATA_OUT_P0[52]) : 8'b00110100;
          ShiftedIO(DATA_OUT_P0[53]) : 8'b00110101;
          ShiftedIO(DATA_OUT_P0[54]) : 8'b00110110;
          ShiftedIO(DATA_OUT_P0[55]) : 8'b00110111;
          ShiftedIO(DATA_OUT_P0[56]) : 8'b00111000;
          ShiftedIO(DATA_OUT_P0[57]) : 8'b00111001;
          ShiftedIO(DATA_OUT_P0[58]) : 8'b00111010;
          ShiftedIO(DATA_OUT_P0[59]) : 8'b00111011;
          ShiftedIO(DATA_OUT_P0[60]) : 8'b00111100;
          ShiftedIO(DATA_OUT_P0[61]) : 8'b00111101;
          ShiftedIO(DATA_OUT_P0[62]) : 8'b00111110;
          ShiftedIO(DATA_OUT_P0[63]) : 8'b00111111;
          ShiftedIO(DATA_OUT_P0[64]) : 8'b01000000;
          ShiftedIO(DATA_OUT_P0[65]) : 8'b01000001;
          ShiftedIO(DATA_OUT_P0[66]) : 8'b01000010;
          ShiftedIO(DATA_OUT_P0[67]) : 8'b01000011;
          ShiftedIO(DATA_OUT_P0[68]) : 8'b01000100;
          ShiftedIO(DATA_OUT_P0[69]) : 8'b01000101;
          ShiftedIO(DATA_OUT_P0[70]) : 8'b01000110;
          ShiftedIO(DATA_OUT_P0[71]) : 8'b01000111;
          ShiftedIO(DATA_OUT_P0[72]) : 8'b01001000;
          ShiftedIO(DATA_OUT_P0[73]) : 8'b01001001;
          ShiftedIO(DATA_OUT_P0[74]) : 8'b01001010;
          ShiftedIO(DATA_OUT_P0[75]) : 8'b01001011;
          ShiftedIO(DATA_OUT_P0[76]) : 8'b01001100;
          ShiftedIO(DATA_OUT_P0[77]) : 8'b01001101;
          ShiftedIO(DATA_OUT_P0[78]) : 8'b01001110;
          ShiftedIO(DATA_OUT_P0[79]) : 8'b01001111;
          ShiftedIO(DATA_OUT_P0[80]) : 8'b01010000;
          ShiftedIO(DATA_OUT_P0[81]) : 8'b01010001;
          ShiftedIO(DATA_OUT_P0[82]) : 8'b01010010;
          ShiftedIO(DATA_OUT_P0[83]) : 8'b01010011;
          ShiftedIO(DATA_OUT_P0[84]) : 8'b01010100;
          ShiftedIO(DATA_OUT_P0[85]) : 8'b01010101;
          ShiftedIO(DATA_OUT_P0[86]) : 8'b01010110;
          ShiftedIO(DATA_OUT_P0[87]) : 8'b01010111;
          ShiftedIO(DATA_OUT_P0[88]) : 8'b01011000;
          ShiftedIO(DATA_OUT_P0[89]) : 8'b01011001;
          ShiftedIO(DATA_OUT_P0[90]) : 8'b01011010;
          ShiftedIO(DATA_OUT_P0[91]) : 8'b01011011;
          ShiftedIO(DATA_OUT_P0[92]) : 8'b01011100;
          ShiftedIO(DATA_OUT_P0[93]) : 8'b01011101;
          ShiftedIO(DATA_OUT_P0[94]) : 8'b01011110;
          ShiftedIO(DATA_OUT_P0[95]) : 8'b01011111;
          ShiftedIO(DATA_OUT_P0[96]) : 8'b01100000;
          ShiftedIO(DATA_OUT_P0[97]) : 8'b01100001;
          ShiftedIO(DATA_OUT_P0[98]) : 8'b01100010;
          ShiftedIO(DATA_OUT_P0[99]) : 8'b01100011;
          ShiftedIO(DATA_OUT_P0[100]) : 8'b01100100;
          ShiftedIO(DATA_OUT_P0[101]) : 8'b01100101;
          ShiftedIO(DATA_OUT_P0[102]) : 8'b01100110;
          ShiftedIO(DATA_OUT_P0[103]) : 8'b01100111;
          ShiftedIO(DATA_OUT_P0[104]) : 8'b01101000;
          ShiftedIO(DATA_OUT_P0[105]) : 8'b01101001;
          ShiftedIO(DATA_OUT_P0[106]) : 8'b01101010;
          ShiftedIO(DATA_OUT_P0[107]) : 8'b01101011;
          ShiftedIO(DATA_OUT_P0[108]) : 8'b01101100;
          ShiftedIO(DATA_OUT_P0[109]) : 8'b01101101;
          ShiftedIO(DATA_OUT_P0[110]) : 8'b01101110;
          ShiftedIO(DATA_OUT_P0[111]) : 8'b01101111;
          ShiftedIO(DATA_OUT_P0[112]) : 8'b01110000;
          ShiftedIO(DATA_OUT_P0[113]) : 8'b01110001;
          ShiftedIO(DATA_OUT_P0[114]) : 8'b01110010;
          ShiftedIO(DATA_OUT_P0[115]) : 8'b01110011;
          ShiftedIO(DATA_OUT_P0[116]) : 8'b01110100;
          ShiftedIO(DATA_OUT_P0[117]) : 8'b01110101;
          ShiftedIO(DATA_OUT_P0[118]) : 8'b01110110;
          ShiftedIO(DATA_OUT_P0[119]) : 8'b01110111;
          ShiftedIO(DATA_OUT_P0[120]) : 8'b01111000;
          ShiftedIO(DATA_OUT_P0[121]) : 8'b01111001;
          ShiftedIO(DATA_OUT_P0[122]) : 8'b01111010;
          ShiftedIO(DATA_OUT_P0[123]) : 8'b01111011;
          ShiftedIO(DATA_OUT_P0[124]) : 8'b01111100;
          ShiftedIO(DATA_OUT_P0[125]) : 8'b01111101;
          ShiftedIO(DATA_OUT_P0[126]) : 8'b01111110;
          ShiftedIO(DATA_OUT_P0[127]) : 8'b01111111;
          ShiftedIO(DATA_OUT_P0[128]) : 8'b10000000;
          ShiftedIO(DATA_OUT_P0[129]) : 8'b10000001;
          ShiftedIO(DATA_OUT_P0[130]) : 8'b10000010;
          ShiftedIO(DATA_OUT_P0[131]) : 8'b10000011;
        }
      }
      PinMap {
        SpareElement {
          RepairEnable:COL_REPAIR_IN[0];
          FuseMap[0]: COL_REPAIR_IN[1];
          FuseMap[1]: COL_REPAIR_IN[2];
          FuseMap[2]: COL_REPAIR_IN[3];
          FuseMap[3]: COL_REPAIR_IN[4];
          FuseMap[4]: COL_REPAIR_IN[5];
          FuseMap[5]: COL_REPAIR_IN[6];
          FuseMap[6]: COL_REPAIR_IN[7];
          FuseMap[7]: COL_REPAIR_IN[8];
        }
      }
    }  
//--------------------ROW Repair-----------------//
    
    RowSegment(ALL) {
      NumberOfSpareElements : 1;
      FuseSet {
        Fuse[0] : AddressPort(FUNC_RD_ADDR_IN_P0[0]);
        Fuse[1] : AddressPort(FUNC_RD_ADDR_IN_P0[1]);
        Fuse[2] : AddressPort(FUNC_RD_ADDR_IN_P0[2]);
        Fuse[3] : AddressPort(FUNC_RD_ADDR_IN_P0[3]);
        Fuse[4] : AddressPort(FUNC_RD_ADDR_IN_P0[4]);
        Fuse[5] : AddressPort(FUNC_RD_ADDR_IN_P0[5]);
        Fuse[6] : AddressPort(FUNC_RD_ADDR_IN_P0[6]);
        Fuse[7] : AddressPort(FUNC_RD_ADDR_IN_P0[7]);
      }
      PinMap {
        SpareElement {
          RepairEnable:ROW_REPAIR_IN[0];
          Fuse[0]: ROW_REPAIR_IN[1];
          Fuse[1]: ROW_REPAIR_IN[2];
          Fuse[2]: ROW_REPAIR_IN[3];
          Fuse[3]: ROW_REPAIR_IN[4];
          Fuse[4]: ROW_REPAIR_IN[5];
          Fuse[5]: ROW_REPAIR_IN[6];
          Fuse[6]: ROW_REPAIR_IN[7];
          Fuse[7]: ROW_REPAIR_IN[8];
        }
      }
    }
  } 

} //end MemoryTemplate (arf132b256e1r1w0cbbehcaa4acw_dfx_wrapper)