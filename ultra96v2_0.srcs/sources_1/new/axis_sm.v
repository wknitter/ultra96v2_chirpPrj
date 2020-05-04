`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2020 09:17:08 PM
// Design Name: 
// Module Name: axis_sm
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


module axis_sm(
    input clk,
    input reset,
    output reg s_axis_phase_tvalid,
    input s_axis_phase_tready,
    output reg [63:0] s_axis_phase_tdata,
    output reg m_axis_phase_tready,
    output reg m_axis_data_tready,
    output reg [4:0] state_reg
    );
    
//    reg [4:0] state_reg;
    reg [5:0] chirp_loop_cntr;
    reg [31:0] freq_phase_incr, period_wait_cnt;
    
    wire [31:0] freq_period, phase_inc_step;
    assign phase_inc_step = 32'h0028f5c2;
    assign freq_period = 32'd100;
    
    parameter init               = 5'd0;
    parameter Start              = 5'd1;
    parameter SetTvalidHigh      = 5'd2;
    parameter SetSlavePhaseValue = 5'd3;
    parameter CheckTready        = 5'd4;
    parameter WaitState          = 5'd5;
    parameter CheckLoopCntr      = 5'd6;   
    
    always @ (posedge clk or posedge reset)
        begin                    
            // Default Outputs  
            
            if (reset == 1'b1)
                begin
                    m_axis_phase_tready <= 1'b0;
                    m_axis_data_tready <= 1'b0;
                    state_reg <= init;
                end
            else
                begin
                    case(state_reg)
                        init : //0
                            begin
                                freq_phase_incr <= 32'd0;
                                s_axis_phase_tvalid <= 1'b0;
                                period_wait_cnt <= 32'd0;
                                chirp_loop_cntr <= 6'd0;
                                state_reg <= Start;
                            end
                            
                        Start : //1
                            begin
                                m_axis_phase_tready <= 1'b1;
                                m_axis_data_tready <= 1'b1;
                                freq_phase_incr <= freq_phase_incr + phase_inc_step;
                                state_reg <= SetTvalidHigh;
                            end
                            
                        SetTvalidHigh : //2
                            begin
                                s_axis_phase_tvalid <= 1'b1; //per PG141 - tvalid is set before tready goes high
                                state_reg <= SetSlavePhaseValue;
                            end
                            
                        SetSlavePhaseValue : //3
                            begin
                                begin
                                    s_axis_phase_tdata[63:32] <= 16'h0000;
                                    s_axis_phase_tdata[31:0] <= freq_phase_incr;
                                    state_reg <= CheckTready;
                                end
                            end
                            
                        CheckTready : //4
                            begin
                                if (s_axis_phase_tready == 1'b1)
                                    begin
                                        state_reg <= WaitState;
                                    end
                                else    
                                    begin
                                        state_reg <= CheckTready;
                                    end
                            end
                            
                        WaitState : //5
                            begin
                                if (period_wait_cnt >= freq_period)
                                    begin
                                        period_wait_cnt <= 32'd0; 
                                        chirp_loop_cntr <= chirp_loop_cntr + 1;
                                        state_reg <= CheckLoopCntr;
                                    end
                                else
                                    begin
                                        period_wait_cnt <= period_wait_cnt + 1;
                                        state_reg <= WaitState;
                                    end
                            end
                            
                        CheckLoopCntr : //6
                            begin
                                if(chirp_loop_cntr == 6'd25)
                                    begin
                                        chirp_loop_cntr <= 6'd0;
                                        freq_phase_incr <= 32'd0;
                                        state_reg <= Start;
                                    end
                                else
                                    begin
                                        chirp_loop_cntr <= chirp_loop_cntr + 1;
                                        state_reg <= Start;
                                    end
                            end
                            
                    endcase 
                end
        end
endmodule
