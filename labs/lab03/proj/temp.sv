`timescale 1ns / 1ps
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
    logic A1, B1, C1;
    
    and(C1, A, C);
    not(A1, A);
    and(B1, A1, B);
    or(O1, B1, C1);
    
    //output function 2
    logic A2, B2, C2;
    
    not(C2, C);
    and(B2, C, B);
    or(A2, C2, A);
    and(O2, A2, B2);
    
    //output function 3
    logic A3, B3;
    
    not(B3, B);
    and(A3, A, B3);
    or(O3, A3, C);
    
    //output function 4
    logic A4, B4, C4, BC4;
    
    nand(A4, A, B);
    not(B4, B);
    not(C4, C);
    nand(BC4, B4, C4);
    nand(O4, A4, BC4);
    
    
    
    
            
    
endmodule


`default_nettype none
