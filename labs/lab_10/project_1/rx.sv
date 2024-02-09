`timescale 1ns / 1ps
`default_nettype none

/***************************************************************************
*
* Module: Rx
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 3.24.22
*
* Description: 
*
*
****************************************************************************/


module rx(            
            input wire logic clk,
            input wire logic Reset,
            input wire logic Sin,
            output logic Receive,
            input wire logic Received,
            output logic [7:0] Dout,
            output logic parityErr
            );
    
    //baud timer
    
    logic clrTimer, clrBit, baudHalfDone, baudFullDone, bitDone;
    logic [3:0] bitCounter;
    logic [12:0] halfBit, fullBit;
    logic bitReallyDone;
    
    logic incBit;
    
    typedef enum logic[2:0] {IDLE, START, BITS, ACK, ERR = 'X} StateType;
    StateType ns, cs;
    logic [8:0] register;
    
    
    //pulled from a counter module from earlier labs. Originally designed in the stopwatch lab
    mod_counter #(2604, 13) BaudHalfTimer (
        .clk(clk),
        .reset(clrTimer), 
        .increment(1'b1), 
        .rolling_over(baudHalfDone),
        .count(halfBit)
        );
        
    mod_counter #(5208, 13) BaudFullTimer (
        .clk(clk),
        .reset(clrTimer),
        .increment(1'b1),
        .rolling_over(baudFullDone),
        .count(fullBit)
        );
        
//    assign bitReallyDone = bitCounter == 9;
    
    
    // shift register, parity checker, and bit counter
    always_ff @(posedge clk)
        begin
            cs <= ns;
            if ((bitDone && incBit) || Reset || clrBit) 
                bitCounter <= 0;
            else if (incBit)
                begin
                    bitCounter <= bitCounter + 1;
                    register <= {Sin, register[8:1]};
                end
        end
        
    assign Dout = register[7:0];
    assign parityErr = ~^register;
    
    
    //fsm
    
    always_comb
        begin
            incBit = 0;
            Receive = 0;
            clrTimer = 0;
            clrBit = 0;
            ns = ERR;
            
            if (Reset)
                begin
                    ns = IDLE;
                    clrTimer = 1;
                end
            
            else
                case(cs)
                    
                    IDLE:
                        begin
                            clrTimer = 1;
                            clrBit = 1;
                            if(Sin)
                                ns = IDLE;
                            else if (~Sin)
                                ns = START;
                        end
                        
                    START:
                        begin
                            clrBit = 1;
                            if (~baudHalfDone)
                                ns = START;
                            else if (baudHalfDone)
                                begin
                                    clrTimer = 1;
                                    ns = BITS;
                                end
                        end
                    
                    BITS:
                        begin
                            if (~baudFullDone)
                                ns = BITS;
                            else if (baudFullDone & ~bitDone)
                                begin
                                    incBit = 1;
                                    ns = BITS;
                                end
                            else if (baudFullDone & bitDone)
                                ns = ACK;
                        end
                        
                    ACK:
                        begin
                            Receive = 1;
                            if (~Received)
                                ns = ACK;
                            else if (Received)
                                ns = IDLE;
                        end
                    
                endcase
        end
        
        assign bitDone = (bitCounter == 9);
                            
            
    
    
        
    
    
    
endmodule
