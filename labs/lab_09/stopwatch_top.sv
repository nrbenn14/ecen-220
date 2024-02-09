`timescale 1ns / 1ps
`default_nettype none

/***************************************************************************
*
* Module: Stopwatch Top
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 3.8.22
*
* Description: Top level instancing of stopwatch
*
*
****************************************************************************/


module stopwatch_top(
            input wire logic clk,
            input wire logic btnc,
            input wire logic sw,
            output logic[7:0] segment,
            output logic[3:0] anode
            );
            
    logic[3:0] digit0, digit1, digit2, digit3;
    
    
    stopwatch SW0 (.clk(clk), .reset(btnc), .run(sw), .digit0(digit0), .digit1(digit1), .digit2(digit2), .digit3(digit3));
    SevenSegmentControl SSC0 (.clk(clk), .reset(btnc), .dataIn({digit3, digit2, digit1, digit0}), .digitDisplay(4'b1111), .digitPoint(4'b0100), .anode(anode), .segment(segment));        
            
     
endmodule
