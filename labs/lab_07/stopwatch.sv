`timescale 1ns / 1ps
`default_nettype none

/***************************************************************************
*
* Module: Stopwatch
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 3.8.22
*
* Description: Creates a stopwatch
*
*
****************************************************************************/



module stopwatch(
            input wire logic clk,
            input wire logic reset,
            input wire logic run,
            output logic[3:0] digit0,
            output logic[3:0] digit1,
            output logic[3:0] digit2,
            output logic[3:0] digit3
            );
            
    logic[4:0] inc;
    logic[19:0] counter;
    
    mod_counter #(1000000, 20) d0 (.clk(clk), .reset(reset), .increment(run), .rolling_over(inc[0]), .count(counter));
    
    mod_counter d1 (.clk(clk), .reset(reset), .increment(inc[0]), .rolling_over(inc[1]), .count(digit0));
    mod_counter d2 (.clk(clk), .reset(reset), .increment(inc[1]), .rolling_over(inc[2]), .count(digit1));
    mod_counter d3 (.clk(clk), .reset(reset), .increment(inc[2]), .rolling_over(inc[3]), .count(digit2));
    mod_counter #(6, 4) d4 (.clk(clk), .reset(reset), .increment(inc[3]), .rolling_over(inc[4]), .count(digit3));
    
    
    
endmodule
