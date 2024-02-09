`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: Seven Segment Top
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 2.11.22
*
* Description: Top level instancing of seven segment control.
*
*
****************************************************************************/



module seven_segment_top(
            input wire logic [3:0] sw,
            input wire logic btnc,
            output logic [7:0] segment,
            output logic [3:0] anode
            );
    
    //logic [3:0] data;
    seven_segment SS0(.data(sw), .segment(segment[6:0]));
    not(segment[7], btnc);
    assign anode = 4'b1110;
    
    
endmodule
