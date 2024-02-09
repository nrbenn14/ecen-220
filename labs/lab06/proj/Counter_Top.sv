`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: Counter Top
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 3.1.22
*
* Description: Top level implementation of a counter.
*
*
****************************************************************************/



module Counter_Top(
            input wire logic btnc,
            input wire logic [1:0] sw,
            output logic [7:0] segment,
            output logic [3:0] anode,
            output logic [3:0] led
            );
    
    logic[3:0] Q;
    
    Counter (.CLK(btnc), .CLR(sw[0]), .INC(sw[1]), .Q(Q), .NXT(led));
    
    seven_segment SS0(.data(Q[3:0]), .segment(segment[6:0]));
    
    assign anode = 4'b1110;
    assign segment[7] = 1'b1;
    
            
    
endmodule
