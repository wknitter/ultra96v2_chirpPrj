`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Knitronics
// Engineer: Whitney Knitter
// 
// Create Date: 04/27/2020 08:46:39 PM
// Design Name: 
// Module Name: ultra96v2_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ultra96v2_wrapper(
    BT_HCI_CTS,
    BT_HCI_RTS,
    FAN_PWM_tri_o,
    HD_GPIO_tri_io
);
    input BT_HCI_CTS;
    output BT_HCI_RTS;
    output [0:0]FAN_PWM_tri_o;
    inout [15:0]HD_GPIO_tri_io;

    wire pl_clk0, pl_reset;
    wire BT_HCI_CTS;
    wire BT_HCI_RTS;
    wire [0:0]FAN_PWM_tri_o;
    wire [0:0]HD_GPIO_tri_i_0;
    wire [1:1]HD_GPIO_tri_i_1;
    wire [10:10]HD_GPIO_tri_i_10;
    wire [11:11]HD_GPIO_tri_i_11;
    wire [12:12]HD_GPIO_tri_i_12;
    wire [13:13]HD_GPIO_tri_i_13;
    wire [14:14]HD_GPIO_tri_i_14;
    wire [15:15]HD_GPIO_tri_i_15;
    wire [2:2]HD_GPIO_tri_i_2;
    wire [3:3]HD_GPIO_tri_i_3;
    wire [4:4]HD_GPIO_tri_i_4;
    wire [5:5]HD_GPIO_tri_i_5;
    wire [6:6]HD_GPIO_tri_i_6;
    wire [7:7]HD_GPIO_tri_i_7;
    wire [8:8]HD_GPIO_tri_i_8;
    wire [9:9]HD_GPIO_tri_i_9;
    wire [0:0]HD_GPIO_tri_io_0;
    wire [1:1]HD_GPIO_tri_io_1;
    wire [10:10]HD_GPIO_tri_io_10;
    wire [11:11]HD_GPIO_tri_io_11;
    wire [12:12]HD_GPIO_tri_io_12;
    wire [13:13]HD_GPIO_tri_io_13;
    wire [14:14]HD_GPIO_tri_io_14;
    wire [15:15]HD_GPIO_tri_io_15;
    wire [2:2]HD_GPIO_tri_io_2;
    wire [3:3]HD_GPIO_tri_io_3;
    wire [4:4]HD_GPIO_tri_io_4;
    wire [5:5]HD_GPIO_tri_io_5;
    wire [6:6]HD_GPIO_tri_io_6;
    wire [7:7]HD_GPIO_tri_io_7;
    wire [8:8]HD_GPIO_tri_io_8;
    wire [9:9]HD_GPIO_tri_io_9;
    wire [0:0]HD_GPIO_tri_o_0;
    wire [1:1]HD_GPIO_tri_o_1;
    wire [10:10]HD_GPIO_tri_o_10;
    wire [11:11]HD_GPIO_tri_o_11;
    wire [12:12]HD_GPIO_tri_o_12;
    wire [13:13]HD_GPIO_tri_o_13;
    wire [14:14]HD_GPIO_tri_o_14;
    wire [15:15]HD_GPIO_tri_o_15;
    wire [2:2]HD_GPIO_tri_o_2;
    wire [3:3]HD_GPIO_tri_o_3;
    wire [4:4]HD_GPIO_tri_o_4;
    wire [5:5]HD_GPIO_tri_o_5;
    wire [6:6]HD_GPIO_tri_o_6;
    wire [7:7]HD_GPIO_tri_o_7;
    wire [8:8]HD_GPIO_tri_o_8;
    wire [9:9]HD_GPIO_tri_o_9;
    wire [0:0]HD_GPIO_tri_t_0;
    wire [1:1]HD_GPIO_tri_t_1;
    wire [10:10]HD_GPIO_tri_t_10;
    wire [11:11]HD_GPIO_tri_t_11;
    wire [12:12]HD_GPIO_tri_t_12;
    wire [13:13]HD_GPIO_tri_t_13;
    wire [14:14]HD_GPIO_tri_t_14;
    wire [15:15]HD_GPIO_tri_t_15;
    wire [2:2]HD_GPIO_tri_t_2;
    wire [3:3]HD_GPIO_tri_t_3;
    wire [4:4]HD_GPIO_tri_t_4;
    wire [5:5]HD_GPIO_tri_t_5;
    wire [6:6]HD_GPIO_tri_t_6;
    wire [7:7]HD_GPIO_tri_t_7;
    wire [8:8]HD_GPIO_tri_t_8;
    wire [9:9]HD_GPIO_tri_t_9;

    IOBUF HD_GPIO_tri_iobuf_0(
        .I(HD_GPIO_tri_o_0),
        .IO(HD_GPIO_tri_io[0]),
        .O(HD_GPIO_tri_i_0),
        .T(HD_GPIO_tri_t_0)
    );
    IOBUF HD_GPIO_tri_iobuf_1(
        .I(HD_GPIO_tri_o_1),
        .IO(HD_GPIO_tri_io[1]),
        .O(HD_GPIO_tri_i_1),
        .T(HD_GPIO_tri_t_1)
    );
    IOBUF HD_GPIO_tri_iobuf_10(
        .I(HD_GPIO_tri_o_10),
        .IO(HD_GPIO_tri_io[10]),
        .O(HD_GPIO_tri_i_10),
        .T(HD_GPIO_tri_t_10)
    );
    IOBUF HD_GPIO_tri_iobuf_11(
        .I(HD_GPIO_tri_o_11),
        .IO(HD_GPIO_tri_io[11]),
        .O(HD_GPIO_tri_i_11),
        .T(HD_GPIO_tri_t_11)
    );
    IOBUF HD_GPIO_tri_iobuf_12(
        .I(HD_GPIO_tri_o_12),
        .IO(HD_GPIO_tri_io[12]),
        .O(HD_GPIO_tri_i_12),
        .T(HD_GPIO_tri_t_12)
    );
    IOBUF HD_GPIO_tri_iobuf_13(
        .I(HD_GPIO_tri_o_13),
        .IO(HD_GPIO_tri_io[13]),
        .O(HD_GPIO_tri_i_13),
        .T(HD_GPIO_tri_t_13)
    );
    IOBUF HD_GPIO_tri_iobuf_14(
        .I(HD_GPIO_tri_o_14),
        .IO(HD_GPIO_tri_io[14]),
        .O(HD_GPIO_tri_i_14),
        .T(HD_GPIO_tri_t_14)
    );
    IOBUF HD_GPIO_tri_iobuf_15(
        .I(HD_GPIO_tri_o_15),
        .IO(HD_GPIO_tri_io[15]),
        .O(HD_GPIO_tri_i_15),
        .T(HD_GPIO_tri_t_15)
    );
    IOBUF HD_GPIO_tri_iobuf_2(
        .I(HD_GPIO_tri_o_2),
        .IO(HD_GPIO_tri_io[2]),
        .O(HD_GPIO_tri_i_2),
        .T(HD_GPIO_tri_t_2)
    );
    IOBUF HD_GPIO_tri_iobuf_3(
        .I(HD_GPIO_tri_o_3),
        .IO(HD_GPIO_tri_io[3]),
        .O(HD_GPIO_tri_i_3),
        .T(HD_GPIO_tri_t_3)
    );
    IOBUF HD_GPIO_tri_iobuf_4(
        .I(HD_GPIO_tri_o_4),
        .IO(HD_GPIO_tri_io[4]),
        .O(HD_GPIO_tri_i_4),
        .T(HD_GPIO_tri_t_4)
    );
    IOBUF HD_GPIO_tri_iobuf_5(
        .I(HD_GPIO_tri_o_5),
        .IO(HD_GPIO_tri_io[5]),
        .O(HD_GPIO_tri_i_5),
        .T(HD_GPIO_tri_t_5)
    );
    IOBUF HD_GPIO_tri_iobuf_6(
        .I(HD_GPIO_tri_o_6),
        .IO(HD_GPIO_tri_io[6]),
        .O(HD_GPIO_tri_i_6),
        .T(HD_GPIO_tri_t_6)
    );
    IOBUF HD_GPIO_tri_iobuf_7(
        .I(HD_GPIO_tri_o_7),
        .IO(HD_GPIO_tri_io[7]),
        .O(HD_GPIO_tri_i_7),
        .T(HD_GPIO_tri_t_7)
    );
    IOBUF HD_GPIO_tri_iobuf_8(
        .I(HD_GPIO_tri_o_8),
        .IO(HD_GPIO_tri_io[8]),
        .O(HD_GPIO_tri_i_8),
        .T(HD_GPIO_tri_t_8)
    );
    IOBUF HD_GPIO_tri_iobuf_9(
        .I(HD_GPIO_tri_o_9),
        .IO(HD_GPIO_tri_io[9]),
        .O(HD_GPIO_tri_i_9),
        .T(HD_GPIO_tri_t_9)
    );
        
    ultra96v2_0 ultra96v2_0_i(
        .BT_HCI_CTS(BT_HCI_CTS),
        .BT_HCI_RTS(BT_HCI_RTS),
        .FAN_PWM_tri_o(FAN_PWM_tri_o),
        .HD_GPIO_tri_i({HD_GPIO_tri_i_15,HD_GPIO_tri_i_14,HD_GPIO_tri_i_13,HD_GPIO_tri_i_12,HD_GPIO_tri_i_11,HD_GPIO_tri_i_10,HD_GPIO_tri_i_9,HD_GPIO_tri_i_8,HD_GPIO_tri_i_7,HD_GPIO_tri_i_6,HD_GPIO_tri_i_5,HD_GPIO_tri_i_4,HD_GPIO_tri_i_3,HD_GPIO_tri_i_2,HD_GPIO_tri_i_1,HD_GPIO_tri_i_0}),
        .HD_GPIO_tri_o({HD_GPIO_tri_o_15,HD_GPIO_tri_o_14,HD_GPIO_tri_o_13,HD_GPIO_tri_o_12,HD_GPIO_tri_o_11,HD_GPIO_tri_o_10,HD_GPIO_tri_o_9,HD_GPIO_tri_o_8,HD_GPIO_tri_o_7,HD_GPIO_tri_o_6,HD_GPIO_tri_o_5,HD_GPIO_tri_o_4,HD_GPIO_tri_o_3,HD_GPIO_tri_o_2,HD_GPIO_tri_o_1,HD_GPIO_tri_o_0}),
        .HD_GPIO_tri_t({HD_GPIO_tri_t_15,HD_GPIO_tri_t_14,HD_GPIO_tri_t_13,HD_GPIO_tri_t_12,HD_GPIO_tri_t_11,HD_GPIO_tri_t_10,HD_GPIO_tri_t_9,HD_GPIO_tri_t_8,HD_GPIO_tri_t_7,HD_GPIO_tri_t_6,HD_GPIO_tri_t_5,HD_GPIO_tri_t_4,HD_GPIO_tri_t_3,HD_GPIO_tri_t_2,HD_GPIO_tri_t_1,HD_GPIO_tri_t_0}),
        .pl_clk0(pl_clk0),
        .pl_reset(pl_reset)
    );
    
    wire [63:0] s_axis_phase_tdata;
    wire s_axis_phase_tvalid, s_axis_phase_tready;
    
    wire [7:0] m_axis_data_tdata;
    wire [31:0] m_axis_phase_tdata;
    wire m_axis_data_tvalid, m_axis_data_tready, m_axis_phase_tvalid, m_axis_phase_tready;
    
    dds_compiler_0 dds_compiler_0(
        .aclk(pl_clk0),                             // input wire aclk
        .s_axis_phase_tvalid(s_axis_phase_tvalid),  // input wire s_axis_phase_tvalid
        .s_axis_phase_tready(s_axis_phase_tready),  // output wire s_axis_phase_tready
        .s_axis_phase_tdata(s_axis_phase_tdata),    // input wire [63 : 0] s_axis_phase_tdata
        .m_axis_data_tvalid(m_axis_data_tvalid),    // output wire m_axis_data_tvalid
        .m_axis_data_tready(m_axis_data_tready),    // input wire m_axis_data_tready
        .m_axis_data_tdata(m_axis_data_tdata),      // output wire [7 : 0] m_axis_data_tdata
        .m_axis_phase_tvalid(m_axis_phase_tvalid),  // output wire m_axis_phase_tvalid
        .m_axis_phase_tready(m_axis_phase_tready),  // input wire m_axis_phase_tready
        .m_axis_phase_tdata(m_axis_phase_tdata)     // output wire [31 : 0] m_axis_phase_tdata
    );  
    
    wire [4:0] state_reg;
    ila_0 dds_ila(
        .clk(pl_clk0),
        .probe0(m_axis_data_tdata),  //8
        .probe1(m_axis_phase_tdata), //32
        .probe2(s_axis_phase_tdata), //64
        .probe3(state_reg)           //5
    );

    axis_sm axis_sm_i(
        .clk(pl_clk0),
        .reset(pl_reset),
        .s_axis_phase_tvalid(s_axis_phase_tvalid),
        .s_axis_phase_tready(s_axis_phase_tready),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .m_axis_phase_tready(m_axis_phase_tready),
        .m_axis_data_tready(m_axis_data_tready),
        .state_reg(state_reg)
    );

endmodule
