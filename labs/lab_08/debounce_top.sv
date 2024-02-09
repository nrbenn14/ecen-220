`timescale 1ns / 1ps
`default_nettype none

/***************************************************************************
*
* Module: Debounce Top
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 3.12.22
*
* Description: Top-level implementation of our debounce module
*
*
****************************************************************************/


module debounce_top(
            input wire logic clk,
			input wire logic btnu,
			input wire logic btnc,
			output logic[3:0] anode,
			output logic[7:0] segment
			);
			
    logic pressed;
    logic ffpressed;
    logic undebounced;
    logic debounced;
    logic notDebounced;
    
    
    always_ff @(posedge clk)
        pressed <= btnc;
    always_ff @(posedge clk)
        ffpressed <= pressed;
        
        
    debounce DB0 (.clk(clk), .reset(btnu), .noisy(ffpressed), .debounced(debounced));
    
    logic OSDebounced;
    logic OSUndebounced;
    
    always_ff @(posedge clk)
        begin
            notDebounced <= debounced;
            undebounced <= ffpressed;
        end
    
    
    assign OSDebounced = (debounced && ~notDebounced);
    assign OSUndebounced = (ffpressed && ~undebounced);
    
    
    logic inc00;
    logic inc01;
    logic inc02;
    logic inc03;
    
    logic[3:0] digit0;
    logic[3:0] digit1;
    logic[3:0] digit2;
    logic[3:0] digit3;    

    
    mod_counter_08 MC01 (.clk(clk), .reset(btnu), .increment(OSDebounced), .rolling_over(inc00), .count(digit0));
    mod_counter_08 MC02 (.clk(clk), .reset(btnu), .increment(inc00), .rolling_over(inc02), .count(digit1));
    mod_counter_08 MC03 (.clk(clk), .reset(btnu), .increment(OSUndebounced), .rolling_over(inc01), .count(digit2));
    mod_counter_08 MC04 (.clk(clk), .reset(btnu), .increment(inc01), .rolling_over(inc03), .count(digit3));
    
    
    SevenSegmentControl SSC0 (.clk(clk), .reset(btnc), .dataIn({digit3, digit2, digit1, digit0}), .digitDisplay(4'b1111), .digitPoint(4'b0000), .anode(anode), .segment(segment));    
    
			
			
			
endmodule
