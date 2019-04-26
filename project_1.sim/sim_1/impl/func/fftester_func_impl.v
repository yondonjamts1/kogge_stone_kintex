// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
// Date        : Fri Mar 29 16:59:36 2019
// Host        : DESKTOP-5S4MHT1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/PC/F-4/project_1.sim/sim_1/impl/func/fftester_func_impl.v
// Design      : ffld1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "a899437" *) 
(* NotValidForBitStream *)
module ffld1
   (num_a,
    num_b,
    mode,
    clk,
    rst,
    rs);
  input [8:1]num_a;
  input [8:1]num_b;
  input mode;
  input clk;
  input rst;
  output [8:1]rs;

  wire \FSM_sequential_state_next_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_next_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_next_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_next_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_next_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_next_reg[2]_i_2_n_0 ;
  wire \adder/h ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [8:1]num_a;
  wire [8:1]num_a_IBUF;
  wire [8:1]num_b;
  wire [8:1]num_b_IBUF;
  wire [9:2]result;
  wire [8:1]rs;
  wire [8:1]rs_OBUF;
  wire \rs_reg[5]_i_2_n_0 ;
  wire \rs_reg[5]_i_3_n_0 ;
  wire \rs_reg[7]_i_2_n_0 ;
  wire \rs_reg[7]_i_3_n_0 ;
  wire \rs_reg[8]_i_2_n_0 ;
  wire \rs_reg[8]_i_3_n_0 ;
  wire \rs_reg[8]_i_4_n_0 ;
  wire rst;
  wire rst_IBUF;
  wire [9:1]s1_9;
  wire \s1_9_reg[1]_i_1_n_0 ;
  wire \s1_9_reg[2]_i_1_n_0 ;
  wire \s1_9_reg[3]_i_1_n_0 ;
  wire \s1_9_reg[4]_i_1_n_0 ;
  wire \s1_9_reg[5]_i_1_n_0 ;
  wire \s1_9_reg[6]_i_1_n_0 ;
  wire \s1_9_reg[7]_i_1_n_0 ;
  wire \s1_9_reg[8]_i_1_n_0 ;
  wire \s1_9_reg[9]_i_1_n_0 ;
  wire \s1_9_reg[9]_i_2_n_0 ;
  wire [9:1]s2_9;
  wire \s2_9_reg[1]_i_1_n_0 ;
  wire \s2_9_reg[2]_i_1_n_0 ;
  wire \s2_9_reg[3]_i_1_n_0 ;
  wire \s2_9_reg[4]_i_1_n_0 ;
  wire \s2_9_reg[5]_i_1_n_0 ;
  wire \s2_9_reg[6]_i_1_n_0 ;
  wire \s2_9_reg[7]_i_1_n_0 ;
  wire \s2_9_reg[8]_i_1_n_0 ;
  wire \s2_9_reg[9]_i_1_n_0 ;
  wire [2:0]state_next;
  (* RTL_KEEP = "yes" *) wire [2:0]state_reg;
  wire [9:1]temp_result;
  wire [9:1]temp_result2;
  wire \temp_result2[9]_i_1_n_0 ;
  wire \temp_result_reg[9]_i_2_n_0 ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_next_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_sequential_state_next_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_state_next_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(state_next[0]));
  LUT3 #(
    .INIT(8'h45)) 
    \FSM_sequential_state_next_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(\FSM_sequential_state_next_reg[1]_i_2_n_0 ),
        .I2(state_reg[2]),
        .O(\FSM_sequential_state_next_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_next_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_sequential_state_next_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_state_next_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(state_next[1]));
  LUT4 #(
    .INIT(16'h6766)) 
    \FSM_sequential_state_next_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(\FSM_sequential_state_next_reg[1]_i_2_n_0 ),
        .I3(state_reg[2]),
        .O(\FSM_sequential_state_next_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \FSM_sequential_state_next_reg[1]_i_2 
       (.I0(\FSM_sequential_state_next_reg[1]_i_3_n_0 ),
        .I1(temp_result2[8]),
        .I2(temp_result2[7]),
        .I3(temp_result2[6]),
        .I4(temp_result2[9]),
        .O(\FSM_sequential_state_next_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \FSM_sequential_state_next_reg[1]_i_3 
       (.I0(temp_result2[4]),
        .I1(temp_result2[3]),
        .I2(temp_result2[2]),
        .I3(temp_result2[1]),
        .I4(temp_result2[5]),
        .O(\FSM_sequential_state_next_reg[1]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_next_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_sequential_state_next_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_state_next_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(state_next[2]));
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_state_next_reg[2]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .O(\FSM_sequential_state_next_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state_next_reg[2]_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .O(\FSM_sequential_state_next_reg[2]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_next[0]),
        .Q(state_reg[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_next[1]),
        .Q(state_reg[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(state_next[2]),
        .Q(state_reg[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \num_a_IBUF[1]_inst 
       (.I(num_a[1]),
        .O(num_a_IBUF[1]));
  IBUF \num_a_IBUF[2]_inst 
       (.I(num_a[2]),
        .O(num_a_IBUF[2]));
  IBUF \num_a_IBUF[3]_inst 
       (.I(num_a[3]),
        .O(num_a_IBUF[3]));
  IBUF \num_a_IBUF[4]_inst 
       (.I(num_a[4]),
        .O(num_a_IBUF[4]));
  IBUF \num_a_IBUF[5]_inst 
       (.I(num_a[5]),
        .O(num_a_IBUF[5]));
  IBUF \num_a_IBUF[6]_inst 
       (.I(num_a[6]),
        .O(num_a_IBUF[6]));
  IBUF \num_a_IBUF[7]_inst 
       (.I(num_a[7]),
        .O(num_a_IBUF[7]));
  IBUF \num_a_IBUF[8]_inst 
       (.I(num_a[8]),
        .O(num_a_IBUF[8]));
  IBUF \num_b_IBUF[1]_inst 
       (.I(num_b[1]),
        .O(num_b_IBUF[1]));
  IBUF \num_b_IBUF[2]_inst 
       (.I(num_b[2]),
        .O(num_b_IBUF[2]));
  IBUF \num_b_IBUF[3]_inst 
       (.I(num_b[3]),
        .O(num_b_IBUF[3]));
  IBUF \num_b_IBUF[4]_inst 
       (.I(num_b[4]),
        .O(num_b_IBUF[4]));
  IBUF \num_b_IBUF[5]_inst 
       (.I(num_b[5]),
        .O(num_b_IBUF[5]));
  IBUF \num_b_IBUF[6]_inst 
       (.I(num_b[6]),
        .O(num_b_IBUF[6]));
  IBUF \num_b_IBUF[7]_inst 
       (.I(num_b[7]),
        .O(num_b_IBUF[7]));
  IBUF \num_b_IBUF[8]_inst 
       (.I(num_b[8]),
        .O(num_b_IBUF[8]));
  OBUF \rs_OBUF[1]_inst 
       (.I(rs_OBUF[1]),
        .O(rs[1]));
  OBUF \rs_OBUF[2]_inst 
       (.I(rs_OBUF[2]),
        .O(rs[2]));
  OBUF \rs_OBUF[3]_inst 
       (.I(rs_OBUF[3]),
        .O(rs[3]));
  OBUF \rs_OBUF[4]_inst 
       (.I(rs_OBUF[4]),
        .O(rs[4]));
  OBUF \rs_OBUF[5]_inst 
       (.I(rs_OBUF[5]),
        .O(rs[5]));
  OBUF \rs_OBUF[6]_inst 
       (.I(rs_OBUF[6]),
        .O(rs[6]));
  OBUF \rs_OBUF[7]_inst 
       (.I(rs_OBUF[7]),
        .O(rs[7]));
  OBUF \rs_OBUF[8]_inst 
       (.I(rs_OBUF[8]),
        .O(rs[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[1] 
       (.CLR(1'b0),
        .D(\adder/h ),
        .G(\rs_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rs_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rs_reg[1]_i_1 
       (.I0(s1_9[1]),
        .I1(s2_9[1]),
        .O(\adder/h ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[2] 
       (.CLR(1'b0),
        .D(result[2]),
        .G(\rs_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rs_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \rs_reg[2]_i_1 
       (.I0(s1_9[2]),
        .I1(s2_9[2]),
        .I2(s1_9[1]),
        .I3(s2_9[1]),
        .O(result[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[3] 
       (.CLR(1'b0),
        .D(result[3]),
        .G(\rs_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rs_OBUF[3]));
  LUT6 #(
    .INIT(64'h9996969696666666)) 
    \rs_reg[3]_i_1 
       (.I0(s1_9[3]),
        .I1(s2_9[3]),
        .I2(s1_9[2]),
        .I3(s1_9[1]),
        .I4(s2_9[1]),
        .I5(s2_9[2]),
        .O(result[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[4] 
       (.CLR(1'b0),
        .D(result[4]),
        .G(\rs_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rs_OBUF[4]));
  LUT4 #(
    .INIT(16'hED48)) 
    \rs_reg[4]_i_1 
       (.I0(s1_9[4]),
        .I1(\rs_reg[5]_i_2_n_0 ),
        .I2(s2_9[4]),
        .I3(\rs_reg[5]_i_3_n_0 ),
        .O(result[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[5] 
       (.CLR(1'b0),
        .D(result[5]),
        .G(\rs_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rs_OBUF[5]));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \rs_reg[5]_i_1 
       (.I0(s2_9[5]),
        .I1(\rs_reg[5]_i_2_n_0 ),
        .I2(s1_9[5]),
        .I3(s1_9[4]),
        .I4(\rs_reg[5]_i_3_n_0 ),
        .I5(s2_9[4]),
        .O(result[5]));
  LUT6 #(
    .INIT(64'h0111155557777FFF)) 
    \rs_reg[5]_i_2 
       (.I0(s1_9[3]),
        .I1(s2_9[2]),
        .I2(s1_9[1]),
        .I3(s2_9[1]),
        .I4(s1_9[2]),
        .I5(s2_9[3]),
        .O(\rs_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEAAAA8888000)) 
    \rs_reg[5]_i_3 
       (.I0(s1_9[3]),
        .I1(s2_9[2]),
        .I2(s2_9[1]),
        .I3(s1_9[1]),
        .I4(s1_9[2]),
        .I5(s2_9[3]),
        .O(\rs_reg[5]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[6] 
       (.CLR(1'b0),
        .D(result[6]),
        .G(\rs_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rs_OBUF[6]));
  LUT4 #(
    .INIT(16'hED48)) 
    \rs_reg[6]_i_1 
       (.I0(s1_9[6]),
        .I1(\rs_reg[7]_i_2_n_0 ),
        .I2(s2_9[6]),
        .I3(\rs_reg[7]_i_3_n_0 ),
        .O(result[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[7] 
       (.CLR(1'b0),
        .D(result[7]),
        .G(\rs_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rs_OBUF[7]));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \rs_reg[7]_i_1 
       (.I0(s1_9[7]),
        .I1(\rs_reg[7]_i_2_n_0 ),
        .I2(s2_9[7]),
        .I3(s1_9[6]),
        .I4(\rs_reg[7]_i_3_n_0 ),
        .I5(s2_9[6]),
        .O(result[7]));
  LUT5 #(
    .INIT(32'h105175F7)) 
    \rs_reg[7]_i_2 
       (.I0(s2_9[5]),
        .I1(s2_9[4]),
        .I2(\rs_reg[5]_i_2_n_0 ),
        .I3(s1_9[4]),
        .I4(s1_9[5]),
        .O(\rs_reg[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \rs_reg[7]_i_3 
       (.I0(s2_9[5]),
        .I1(s2_9[4]),
        .I2(\rs_reg[5]_i_3_n_0 ),
        .I3(s1_9[4]),
        .I4(s1_9[5]),
        .O(\rs_reg[7]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[8] 
       (.CLR(1'b0),
        .D(result[8]),
        .G(\rs_reg[8]_i_2_n_0 ),
        .GE(1'b1),
        .Q(rs_OBUF[8]));
  LUT4 #(
    .INIT(16'hED48)) 
    \rs_reg[8]_i_1 
       (.I0(s1_9[8]),
        .I1(\rs_reg[8]_i_3_n_0 ),
        .I2(s2_9[8]),
        .I3(\rs_reg[8]_i_4_n_0 ),
        .O(result[8]));
  LUT3 #(
    .INIT(8'h40)) 
    \rs_reg[8]_i_2 
       (.I0(state_reg[0]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .O(\rs_reg[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h105175F7)) 
    \rs_reg[8]_i_3 
       (.I0(s1_9[7]),
        .I1(s2_9[6]),
        .I2(\rs_reg[7]_i_2_n_0 ),
        .I3(s1_9[6]),
        .I4(s2_9[7]),
        .O(\rs_reg[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \rs_reg[8]_i_4 
       (.I0(s1_9[7]),
        .I1(s2_9[6]),
        .I2(\rs_reg[7]_i_3_n_0 ),
        .I3(s1_9[6]),
        .I4(s2_9[7]),
        .O(\rs_reg[8]_i_4_n_0 ));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_9_reg[1] 
       (.CLR(1'b0),
        .D(\s1_9_reg[1]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s1_9[1]));
  LUT6 #(
    .INIT(64'h3030000088BBFFFF)) 
    \s1_9_reg[1]_i_1 
       (.I0(temp_result2[1]),
        .I1(state_reg[1]),
        .I2(temp_result[1]),
        .I3(num_b_IBUF[1]),
        .I4(state_reg[0]),
        .I5(state_reg[2]),
        .O(\s1_9_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_9_reg[2] 
       (.CLR(1'b0),
        .D(\s1_9_reg[2]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s1_9[2]));
  LUT6 #(
    .INIT(64'h0A0A0000C0CFFFFF)) 
    \s1_9_reg[2]_i_1 
       (.I0(temp_result2[2]),
        .I1(temp_result[2]),
        .I2(state_reg[2]),
        .I3(num_b_IBUF[2]),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(\s1_9_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_9_reg[3] 
       (.CLR(1'b0),
        .D(\s1_9_reg[3]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s1_9[3]));
  LUT6 #(
    .INIT(64'h0A0A0000C0CFFFFF)) 
    \s1_9_reg[3]_i_1 
       (.I0(temp_result2[3]),
        .I1(temp_result[3]),
        .I2(state_reg[2]),
        .I3(num_b_IBUF[3]),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(\s1_9_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_9_reg[4] 
       (.CLR(1'b0),
        .D(\s1_9_reg[4]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s1_9[4]));
  LUT6 #(
    .INIT(64'h3030000088BBFFFF)) 
    \s1_9_reg[4]_i_1 
       (.I0(temp_result2[4]),
        .I1(state_reg[1]),
        .I2(temp_result[4]),
        .I3(num_b_IBUF[4]),
        .I4(state_reg[0]),
        .I5(state_reg[2]),
        .O(\s1_9_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_9_reg[5] 
       (.CLR(1'b0),
        .D(\s1_9_reg[5]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s1_9[5]));
  LUT6 #(
    .INIT(64'h0A0A0000C0CFFFFF)) 
    \s1_9_reg[5]_i_1 
       (.I0(temp_result2[5]),
        .I1(temp_result[5]),
        .I2(state_reg[2]),
        .I3(num_b_IBUF[5]),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(\s1_9_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_9_reg[6] 
       (.CLR(1'b0),
        .D(\s1_9_reg[6]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s1_9[6]));
  LUT6 #(
    .INIT(64'h3030000088BBFFFF)) 
    \s1_9_reg[6]_i_1 
       (.I0(temp_result2[6]),
        .I1(state_reg[1]),
        .I2(temp_result[6]),
        .I3(num_b_IBUF[6]),
        .I4(state_reg[0]),
        .I5(state_reg[2]),
        .O(\s1_9_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_9_reg[7] 
       (.CLR(1'b0),
        .D(\s1_9_reg[7]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s1_9[7]));
  LUT6 #(
    .INIT(64'h3030000088BBFFFF)) 
    \s1_9_reg[7]_i_1 
       (.I0(temp_result2[7]),
        .I1(state_reg[1]),
        .I2(temp_result[7]),
        .I3(num_b_IBUF[7]),
        .I4(state_reg[0]),
        .I5(state_reg[2]),
        .O(\s1_9_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_9_reg[8] 
       (.CLR(1'b0),
        .D(\s1_9_reg[8]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s1_9[8]));
  LUT6 #(
    .INIT(64'h3030000088BBFFFF)) 
    \s1_9_reg[8]_i_1 
       (.I0(temp_result2[8]),
        .I1(state_reg[1]),
        .I2(temp_result[8]),
        .I3(num_b_IBUF[8]),
        .I4(state_reg[0]),
        .I5(state_reg[2]),
        .O(\s1_9_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s1_9_reg[9] 
       (.CLR(1'b0),
        .D(\s1_9_reg[9]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s1_9[9]));
  LUT5 #(
    .INIT(32'h5588F5FF)) 
    \s1_9_reg[9]_i_1 
       (.I0(state_reg[0]),
        .I1(temp_result2[9]),
        .I2(temp_result[9]),
        .I3(state_reg[2]),
        .I4(state_reg[1]),
        .O(\s1_9_reg[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5F4A)) 
    \s1_9_reg[9]_i_2 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_next_reg[1]_i_2_n_0 ),
        .I2(state_reg[2]),
        .I3(state_reg[0]),
        .O(\s1_9_reg[9]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_9_reg[1] 
       (.CLR(1'b0),
        .D(\s2_9_reg[1]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s2_9[1]));
  LUT6 #(
    .INIT(64'h0ACF0ACFFFCF0FCF)) 
    \s2_9_reg[1]_i_1 
       (.I0(\adder/h ),
        .I1(temp_result2[1]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(num_a_IBUF[1]),
        .I5(state_reg[2]),
        .O(\s2_9_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_9_reg[2] 
       (.CLR(1'b0),
        .D(\s2_9_reg[2]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s2_9[2]));
  LUT6 #(
    .INIT(64'h3000300088FF8800)) 
    \s2_9_reg[2]_i_1 
       (.I0(num_a_IBUF[2]),
        .I1(state_reg[1]),
        .I2(result[2]),
        .I3(state_reg[0]),
        .I4(temp_result2[2]),
        .I5(state_reg[2]),
        .O(\s2_9_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_9_reg[3] 
       (.CLR(1'b0),
        .D(\s2_9_reg[3]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s2_9[3]));
  LUT6 #(
    .INIT(64'h3000300088FF8800)) 
    \s2_9_reg[3]_i_1 
       (.I0(num_a_IBUF[3]),
        .I1(state_reg[1]),
        .I2(result[3]),
        .I3(state_reg[0]),
        .I4(temp_result2[3]),
        .I5(state_reg[2]),
        .O(\s2_9_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_9_reg[4] 
       (.CLR(1'b0),
        .D(\s2_9_reg[4]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s2_9[4]));
  LUT6 #(
    .INIT(64'h3000300088FF8800)) 
    \s2_9_reg[4]_i_1 
       (.I0(num_a_IBUF[4]),
        .I1(state_reg[1]),
        .I2(result[4]),
        .I3(state_reg[0]),
        .I4(temp_result2[4]),
        .I5(state_reg[2]),
        .O(\s2_9_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_9_reg[5] 
       (.CLR(1'b0),
        .D(\s2_9_reg[5]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s2_9[5]));
  LUT6 #(
    .INIT(64'h3000300088FF8800)) 
    \s2_9_reg[5]_i_1 
       (.I0(num_a_IBUF[5]),
        .I1(state_reg[1]),
        .I2(result[5]),
        .I3(state_reg[0]),
        .I4(temp_result2[5]),
        .I5(state_reg[2]),
        .O(\s2_9_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_9_reg[6] 
       (.CLR(1'b0),
        .D(\s2_9_reg[6]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s2_9[6]));
  LUT6 #(
    .INIT(64'h3000300088FF8800)) 
    \s2_9_reg[6]_i_1 
       (.I0(num_a_IBUF[6]),
        .I1(state_reg[1]),
        .I2(result[6]),
        .I3(state_reg[0]),
        .I4(temp_result2[6]),
        .I5(state_reg[2]),
        .O(\s2_9_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_9_reg[7] 
       (.CLR(1'b0),
        .D(\s2_9_reg[7]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s2_9[7]));
  LUT6 #(
    .INIT(64'h3000300088FF8800)) 
    \s2_9_reg[7]_i_1 
       (.I0(num_a_IBUF[7]),
        .I1(state_reg[1]),
        .I2(result[7]),
        .I3(state_reg[0]),
        .I4(temp_result2[7]),
        .I5(state_reg[2]),
        .O(\s2_9_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_9_reg[8] 
       (.CLR(1'b0),
        .D(\s2_9_reg[8]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s2_9[8]));
  LUT6 #(
    .INIT(64'h3000300088FF8800)) 
    \s2_9_reg[8]_i_1 
       (.I0(num_a_IBUF[8]),
        .I1(state_reg[1]),
        .I2(result[8]),
        .I3(state_reg[0]),
        .I4(temp_result2[8]),
        .I5(state_reg[2]),
        .O(\s2_9_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s2_9_reg[9] 
       (.CLR(1'b0),
        .D(\s2_9_reg[9]_i_1_n_0 ),
        .G(\s1_9_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(s2_9[9]));
  LUT5 #(
    .INIT(32'h20200F00)) 
    \s2_9_reg[9]_i_1 
       (.I0(result[9]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(temp_result2[9]),
        .I4(state_reg[2]),
        .O(\s2_9_reg[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_result2[9]_i_1 
       (.I0(rst_IBUF),
        .O(\temp_result2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_result2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_result2[9]_i_1_n_0 ),
        .D(\adder/h ),
        .Q(temp_result2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_result2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_result2[9]_i_1_n_0 ),
        .D(result[2]),
        .Q(temp_result2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_result2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_result2[9]_i_1_n_0 ),
        .D(result[3]),
        .Q(temp_result2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_result2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_result2[9]_i_1_n_0 ),
        .D(result[4]),
        .Q(temp_result2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_result2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_result2[9]_i_1_n_0 ),
        .D(result[5]),
        .Q(temp_result2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_result2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_result2[9]_i_1_n_0 ),
        .D(result[6]),
        .Q(temp_result2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_result2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_result2[9]_i_1_n_0 ),
        .D(result[7]),
        .Q(temp_result2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_result2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_result2[9]_i_1_n_0 ),
        .D(result[8]),
        .Q(temp_result2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_result2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\temp_result2[9]_i_1_n_0 ),
        .D(result[9]),
        .Q(temp_result2[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_result_reg[1] 
       (.CLR(1'b0),
        .D(\adder/h ),
        .G(\temp_result_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_result[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_result_reg[2] 
       (.CLR(1'b0),
        .D(result[2]),
        .G(\temp_result_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_result[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_result_reg[3] 
       (.CLR(1'b0),
        .D(result[3]),
        .G(\temp_result_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_result[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_result_reg[4] 
       (.CLR(1'b0),
        .D(result[4]),
        .G(\temp_result_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_result[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_result_reg[5] 
       (.CLR(1'b0),
        .D(result[5]),
        .G(\temp_result_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_result[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_result_reg[6] 
       (.CLR(1'b0),
        .D(result[6]),
        .G(\temp_result_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_result[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_result_reg[7] 
       (.CLR(1'b0),
        .D(result[7]),
        .G(\temp_result_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_result[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_result_reg[8] 
       (.CLR(1'b0),
        .D(result[8]),
        .G(\temp_result_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_result[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \temp_result_reg[9] 
       (.CLR(1'b0),
        .D(result[9]),
        .G(\temp_result_reg[9]_i_2_n_0 ),
        .GE(1'b1),
        .Q(temp_result[9]));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \temp_result_reg[9]_i_1 
       (.I0(s1_9[9]),
        .I1(\rs_reg[8]_i_3_n_0 ),
        .I2(s2_9[9]),
        .I3(s1_9[8]),
        .I4(\rs_reg[8]_i_4_n_0 ),
        .I5(s2_9[8]),
        .O(result[9]));
  LUT4 #(
    .INIT(16'h0008)) 
    \temp_result_reg[9]_i_2 
       (.I0(\FSM_sequential_state_next_reg[1]_i_2_n_0 ),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .O(\temp_result_reg[9]_i_2_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
