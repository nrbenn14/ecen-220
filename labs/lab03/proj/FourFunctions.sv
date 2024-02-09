`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: Four Functions
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 1.25.22
*
* Description: This file simulates four logic functions, implemented with the same inputs.
*
*
****************************************************************************/



module FourFunctions(
            output logic O1,
            output logic O2,
            output logic O3,
            output logic O4,
            input wire logic A,
            input wire logic B,
            input wire logic C
            );
    
    
    //output function 1
    logic not_A, not_A_and_B, A_and_C;
    
    and(A_and_C, A, C);
    not(not_A, A);
    and(not_A_and_B, not_A, B);
    or(O1, not_A_and_B, A_and_C);
    
    //output function 2
    logic A_and_not_C, B_and_C, not_C;
    
    not(not_C, C);
    and(B_and_C, C, B);
    or(A_and_not_C, not_C, A);
    and(O2, A_and_not_C, B_and_C);
    
    //output function 3
    logic A_and_not_B, not_B;
    
    not(not_B, B);
    and(A_and_not_B, A, not_B);
    or(O3, A_and_not_B, C);
    
    //output function 4
    logic A_and_B, not_B, not_C, not_B_and_not_C;
    
    nand(A_and_B, A, B);
    not(not_B, B);
    not(not_C, C);
    nand(not_B_and_not_C, not_B, not_C);
    nand(O4, A_and_B, not_B_and_not_C);
    
    
    
    
            
    
endmodule



