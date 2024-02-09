`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: Seven Segment
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 2.8.22
*
* Description: Controls a seven segment display on one digit.
*
*
****************************************************************************/



module seven_segment(
            input wire logic [3:0] data,
            output logic [6:0] segment
            );
            
    logic notmid[3:0];
    //inverting inputs
    not(notmid[3], data[3]);
    not(notmid[2], data[2]);
    not(notmid[1], data[1]);
    not(notmid[0], data[0]);
    
    
    //cathode A -- non-minimized SOP Structural SV
    
    logic Amid[3:0];
    
    and(Amid[0], notmid[3], notmid[2], notmid[1], data[0]);
    and(Amid[1], notmid[3], data[2], notmid[1], notmid[0]);
    and(Amid[2], data[3], notmid[2], data[1], data[0]);
    and(Amid[3], data[3], data[2], notmid[1], data[0]);
    or(segment[0], Amid[3], Amid[2], Amid[1], Amid[0]);
    
    
    //cathode B -- dataflow SV
    assign segment[1] =
        (data == 4'b0101)?1:
        (data == 4'b0110)?1:
        (data == 4'b1011)?1:
        (data == 4'b1100)?1:
        (data == 4'b1110)?1:
        (data == 4'b1111)?1:
        0;
    
    
    //cathode C -- minimized Structural SV
    
    logic Cmid[2:0];
    
    and(Cmid[0], notmid[3], notmid[2], data[1], notmid[0]);
    and(Cmid[1], data[3], data[2], data[1]);
    and(Cmid[2], data[3], data[2], notmid[1], notmid[0]);
    or(segment[2], Cmid[2], Cmid[1], Cmid[0]);
    
    
    //cathode D -- dataflow SV with binary literals
    
    assign segment[3] = (data == 4'b0001) || (data == 4'b0100) || (data == 4'b0111) || (data == 4'b1010) || (data == 4'b1111);
    
    
    //cathode E -- dataflow SV with hexadecimal literals
    
    assign segment[4] = (data == 4'h1) || (data == 4'h3) || (data == 4'h4) || (data == 4'h5) || (data == 4'h7) || (data == 4'h9);
    
    
    //cathode F -- dataflow SV with hexadecimal literals
    
    assign segment[5] = (data == 4'h1) || (data == 4'h2) || (data == 4'h3) || (data == 4'h7) || (data == 4'hd);
    
    
    //cathode G -- dataflow SV with hexadecimal literals
    
    assign segment[6] = (data == 4'h0) || (data == 4'h1) || (data == 4'h7) || (data == 4'hc);
    
    
endmodule