`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: Add 8
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 2.1.22
*
* Description: Ties 8 adders together to be able to add 8-bit numbers.
*
*
****************************************************************************/



module Add8(
            input wire logic[7:0] a,
            input wire logic[7:0] b,
            input wire logic cin,
            output logic[7:0] s,
            output logic cout
            );
         
     // the wire to carry from adder to adder. Only 7 bits are needed, as there will be a cin and cout as well. 
     logic[6:0] carry;
     
     FullAdd ADD0(.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(carry[0]));
     FullAdd ADD1(.a(a[1]), .b(b[1]), .cin(carry[0]), .s(s[1]), .cout(carry[1]));
     FullAdd ADD2(.a(a[2]), .b(b[2]), .cin(carry[1]), .s(s[2]), .cout(carry[2]));
     FullAdd ADD3(.a(a[3]), .b(b[3]), .cin(carry[2]), .s(s[3]), .cout(carry[3]));
     FullAdd ADD4(.a(a[4]), .b(b[4]), .cin(carry[3]), .s(s[4]), .cout(carry[4]));
     FullAdd ADD5(.a(a[5]), .b(b[5]), .cin(carry[4]), .s(s[5]), .cout(carry[5]));
     FullAdd ADD6(.a(a[6]), .b(b[6]), .cin(carry[5]), .s(s[6]), .cout(carry[6]));
     FullAdd ADD7(.a(a[7]), .b(b[7]), .cin(carry[6]), .s(s[7]), .cout(cout));   
     
     
     
     
            
endmodule
