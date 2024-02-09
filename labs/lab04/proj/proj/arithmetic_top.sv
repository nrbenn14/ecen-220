`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: Arithmetic Top
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 2.15.22
*
* Description: Top level instancing of 8-Bit adder
*
*
****************************************************************************/

module arithmetic_top(
            input wire logic[15:0] sw,
            output logic[8:0] led
            );
    
    // to tie to the open cout
    logic open;
            
    Add8 A8_0(.a(sw[7:0]), .b(sw[15:8]), .cin(1'b0), .s(led[7:0]), .cout(open));
    
    //overflow logic
    logic a_not, b_not, s_not;
    
    not(a_not, sw[7]);
    not(b_not, sw[15]);
    not(s_not, led[7]);
    
    logic led_out_1, led_out_2;
    
    and(led_out_1, a_not, b_not, led[7]);
    and(led_out_2, sw[7], sw[15], s_not);
    or(led[8], led_out_1, led_out_2);  
    
    
endmodule
