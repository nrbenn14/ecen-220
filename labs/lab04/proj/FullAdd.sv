`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: Full Add
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 2.1.22
*
* Description: Simulates an individual adder
*
*
****************************************************************************/



module FullAdd(
            input wire logic a,
            input wire logic b,
            input wire logic cin,
            output logic s,
            output logic cout
            );
    
    
    //XOR gate - s output
    xor(s, a, b, cin);
    
    
    
    //Second logic circuit, leading to cout
    
    //outputs for each AND gate
    logic a_and_b, b_and_cin, a_and_cin;
    
    and(a_and_b, a, b);
    and(b_and_cin, b, cin);
    and(a_and_cin, a, cin);
    or(cout, a_and_b, b_and_cin, a_and_cin);
    
    
endmodule
