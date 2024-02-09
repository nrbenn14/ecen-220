`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: Fun Register 4
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 2.17.22
*
* Description: 4-bit loadable register.
*
*
****************************************************************************/




module FunRegister4(
            input wire logic CLK,
            input wire logic[3:0] DIN,
            input wire logic LOAD,
            output logic[3:0] Q,
            output logic[3:0] NXT
            );
            
    
    
    FDCE my_ff1 (.Q(Q[3]), .C(CLK), .CE(1'b1), .CLR(1'b0), .D(NXT[0]));
    FDCE my_ff2 (.Q(Q[2]), .C(CLK), .CE(1'b1), .CLR(1'b0), .D(NXT[1]));
    FDCE my_ff3 (.Q(Q[1]), .C(CLK), .CE(1'b1), .CLR(1'b0), .D(NXT[2]));
    FDCE my_ff4 (.Q(Q[0]), .C(CLK), .CE(1'b1), .CLR(1'b0), .D(NXT[3]));
    assign NXT = (LOAD)?DIN:Q; 
    
    
    
endmodule
