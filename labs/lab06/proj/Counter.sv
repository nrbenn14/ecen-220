`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: Counter
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 2.17.22
*
* Description: Implementation of a counter using flip flops and a 4:1 MUX.
*
*
****************************************************************************/




    module Counter(
            input wire logic CLK,
            input wire logic CLR,
            input wire logic INC,
            output logic[3:0] Q,
            output logic[3:0] NXT
            );
            
    
    
    FDCE my_ff1 (.Q(Q[0]), .C(CLK), .CE(1'b1), .CLR(1'b0), .D(NXT[0]));
    FDCE my_ff2 (.Q(Q[1]), .C(CLK), .CE(1'b1), .CLR(1'b0), .D(NXT[1]));
    FDCE my_ff3 (.Q(Q[2]), .C(CLK), .CE(1'b1), .CLR(1'b0), .D(NXT[2]));
    FDCE my_ff4 (.Q(Q[3]), .C(CLK), .CE(1'b1), .CLR(1'b0), .D(NXT[3]));
    //assign NXT = CLR ? (INC ? Q:(4'b0000)) : ( INC ? (Q + (4'b0001)):Q);
    assign NXT =
    (CLR == 1'b1 && INC == 1'b0)?(4'b0000):
    (CLR == 1'b0 && INC == 1'b1)?(Q+1):
    Q;
                    
    
    
    
endmodule
