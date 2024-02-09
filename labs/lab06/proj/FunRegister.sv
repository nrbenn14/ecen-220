`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: Fun Register
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 2.17.22
*
* Description: 1-bit loadable register.
*
*
****************************************************************************/




module FunRegister(
            input wire logic CLK,
            input wire logic DIN,
            input wire logic LOAD,
            output logic Q,
            output logic NXT
            );
            
    
    
    FDCE my_ff (.Q(Q), .C(CLK), .CE(1'b1), .CLR(1'b0), .D(NXT));
    assign NXT = (LOAD)?DIN:Q; 
    
    
    
endmodule
