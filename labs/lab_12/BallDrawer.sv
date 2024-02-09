`timescale 1ns / 1ps
`default_nettype none

/***************************************************************************
*
* Module: Ball Drawer
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 3.8.22
*
* Description: Draws a ball using VGA ports.
*
*
****************************************************************************/


module BallDrawer(
            input wire logic                       clk,
            input wire logic                       reset,
            input wire logic                       start,
            output logic                           draw,
            output logic                           done,
            input wire logic        [8:0]          x_in,
            input wire logic        [7:0]          y_in,
            output logic            [8:0]          x_out,
            output logic            [7:0]          y_out    
    );
    
    
    
    typedef enum logic [2:0] {IDLE, DRAW, DONE, ERR = 'X} StateType;
    StateType ns, cs;
    
    logic begin_count;
    logic [2:0] bit_tracker;
    
    logic draw_done;
    
    
    always_comb
        begin
            draw = 0;
            done = 0;
            begin_count = 0;
            x_out = 0;
            y_out = 0;
            ns = ERR;
            
            if (reset)
                begin
                    ns = IDLE;
                end
            
            else
                case(cs)
                    
                    IDLE: 
                        begin
                            if (start)
                                begin
                                    ns = DRAW;
                                    begin_count = 1;
                                end
                            else
                                ns = IDLE;
                        end
                        
                    DRAW:
                        begin
                            if (draw_done)
                                begin
                                    ns = DONE;
                                    begin_count = 0;
                                end
                            else if (~draw_done)
                                begin
                                    if (bit_tracker == 1)
                                        begin
                                            draw = 1;
                                            x_out = x_in;
                                            y_out = y_in;
                                            begin_count = 1;
                                        end
                                    else if (bit_tracker == 2)
                                        begin
                                            draw = 1;
                                            x_out = x_in + 1;
                                            y_out = y_in;
                                            begin_count = 1;                                            
                                        end
                                    else if (bit_tracker == 3)
                                        begin
                                            draw = 1;
                                            x_out = x_in;
                                            y_out = y_in + 1;
                                            begin_count = 1;                                            
                                        end
                                    else if (bit_tracker == 4)
                                        begin
                                            draw = 1;
                                            x_out = x_in + 1;
                                            y_out = y_in + 1;
                                            done = 1;
                                            begin_count = 0;
                                        end
                                    ns = DRAW;
                                end
                        end
                        
                    DONE:
                        begin
                            if (~start)
                                ns = IDLE;
                            else
                                ns = DONE;
                        end
                        
                endcase
        end
        
        
        always_ff @(posedge clk)
            begin
                cs <= ns;
               
            end
            
            
        always_ff @(posedge clk)
        
            begin
                if  (begin_count)
                    bit_tracker <= bit_tracker + 1;
                else if (~begin_count)
                    bit_tracker <= 3'b000;
            end
        
        always_ff @(posedge clk)
            begin
                if (bit_tracker == 4)
                    draw_done = 1;
                else
                    draw_done = 0;
            end
            
        
                                
            
            
            
endmodule
