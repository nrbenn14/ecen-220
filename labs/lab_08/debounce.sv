`timescale 1ns / 1ps
`default_nettype none

/***************************************************************************
*
* Module: Debounce
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 3.8.22
*
* Description: System Verilog implementation of our state machine.
*
*
****************************************************************************/


module debounce(
            input wire logic clk,
            input wire logic reset,
            input wire logic noisy, 
            output logic debounced
            );
            
    
    logic clrTimer;
    logic timerDone;
    logic[18:0] count;
            
    typedef enum logic[1:0] {s0, s1, s2, s3, ERR='X} StateType;
    StateType ns, cs;
    
    
    mod_counter_08 #(500000, 19) MC0(.clk(clk), .reset(clrTimer), .increment(1'b1), .rolling_over(timerDone), .count(count));
    
    always_comb
    begin
        ns = ERR;
        debounced = 0;
        clrTimer = 0;
        
    if (reset)
        ns = s0;
        
    else
        case (cs)
            s0: begin
                    clrTimer = 1'b1;
                    if (~noisy)
                        ns = s0;
                    else
                        ns = s1;
                end
            s1: if (noisy & ~timerDone)
                    ns = s1;
                else if (~noisy)
                    ns = s0;
                else if (noisy & timerDone)
                    ns = s2;
            s2: begin
                    debounced = 1'b1;
                    clrTimer = 1'b1;
                    if (noisy)
                        ns = s2;
                    else
                        ns = s3;
                end
            s3: begin
                    debounced = 1'b1;
                    if (~noisy & ~timerDone)
                        ns = s3;
                    else if (noisy)
                        ns = s2;
                    else if (~noisy & timerDone)
                        ns = s0;
                end
        endcase
    end
    
    
    always_ff @ (posedge clk)
        cs <= ns;
                
                        
              
        
            
            
            
endmodule
