`timescale 1ns / 1ps
`default_nettype none

/***************************************************************************
*
* Module: Mod Counter
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 3.8.22
*
* Description: Creates a counter that counts up to 9 and then increments.
*
*
****************************************************************************/



module mod_counter  #(MOD_VALUE = 10, BIT_NUMBER = 4) ( 
            
            input wire logic clk,
            input wire logic reset,
            input wire logic increment,
            output logic rolling_over,
            output logic[BIT_NUMBER - 1:0] count
            );
            
            
    always_ff @ (posedge clk) begin
        if (reset | ((count == MOD_VALUE - 1) & (increment)))
            count <= {BIT_NUMBER * {1'b0}};
        else if ((count < MOD_VALUE - 1) & increment)
            count <= count + 1;
        end
        
    assign rolling_over = (increment & (count == MOD_VALUE - 1)); 
                   
    
    
    
    
    
endmodule
