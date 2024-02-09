`timescale 1ns / 1ps
`default_nettype none

/***************************************************************************
*
* Module: 
*
* Author: Nathan Bennion
* Class: ECEN 220, Section 1, Winter 2022
* Date: 
*
* Description: 
*
*
****************************************************************************/


module Codebreaker(

            input wire logic clk,
            input wire logic reset,
            input wire logic start,
            output logic [15:0] key_display,
            output logic stopwatch_run,
            output logic draw_plaintext,
            input wire logic done_drawing_plaintext,
            output logic [127:0] plaintext_to_draw     
            );  
            
            
//    assign key_display = 0;
//    assign stopwatch_run = 1;
//    assign draw_plaintext = start;
//    assign plaintext_to_draw = {"INEEDSLEEP"}; 
    
    logic enable;
    logic done;
    logic [23:0] key;
    logic [127:0] cyphertext;
    logic keyInc;
    logic plaintext_is_ascii;
    
    assign cyphertext = 128'h19b39b044dc39c4e98f9dfb44a0b7c11;   
    typedef enum logic [2:0] {IDLE, DECRYPT, CHECK, DISPLAY, TERM, ERR = 'X} StateType;
    StateType ns, cs;
    
    decrypt_rc4 Decrypt(clk, reset, enable, key, cyphertext, plaintext_to_draw, done);

    
    always_comb
        begin
            
            ns = ERR;
            enable = 0;
            stopwatch_run = 0;
            draw_plaintext = 0;
            keyInc = 0;
            
            if (reset)
                ns = IDLE;
            
            
            else
                case(cs)
                    IDLE:
                        begin
                            if (start)
                                ns = DECRYPT;
                            else
                                ns = IDLE;
                        end
                    
                    DECRYPT: 
                        begin
                            stopwatch_run = 1;
                            enable = 1;
                            if (done)
                                ns = CHECK;
                            else 
                                ns = DECRYPT;
                        end
                        
                    CHECK:
                        begin
                            stopwatch_run = 1;
//                            logic plaintext_is_ascii;
                            plaintext_is_ascii = ((plaintext_to_draw[127:120] >= "A" && plaintext_to_draw[127:120] <= "Z") || (plaintext_to_draw[127:120] >= "0" && plaintext_to_draw[127:120] <= "9") || (plaintext_to_draw[127:120] == " ")) &&
                                ((plaintext_to_draw[119:112] >= "A" && plaintext_to_draw[119:112] <= "Z") || (plaintext_to_draw[119:112] >= "0" && plaintext_to_draw[119:112] <= "9") || (plaintext_to_draw[119:112] == " ")) &&
                                ((plaintext_to_draw[111:104] >= "A" && plaintext_to_draw[111:104] <= "Z") || (plaintext_to_draw[111:104] >= "0" && plaintext_to_draw[111:104] <= "9") || (plaintext_to_draw[111:104] == " ")) &&
                                ((plaintext_to_draw[103:96] >= "A" && plaintext_to_draw[103:96] <= "Z") || (plaintext_to_draw[103:96] >= "0" && plaintext_to_draw[103:96] <= "9") || (plaintext_to_draw[103:96] == " ")) &&
                                ((plaintext_to_draw[95:88] >= "A" && plaintext_to_draw[95:88] <= "Z") || (plaintext_to_draw[95:88] >= "0" && plaintext_to_draw[95:88] <= "9") || (plaintext_to_draw[95:88] == " ")) &&
                                ((plaintext_to_draw[87:80] >= "A" && plaintext_to_draw[87:80] <= "Z") || (plaintext_to_draw[87:80] >= "0" && plaintext_to_draw[87:80] <= "9") || (plaintext_to_draw[87:80] == " ")) &&
                                ((plaintext_to_draw[79:72] >= "A" && plaintext_to_draw[79:72] <= "Z") || (plaintext_to_draw[79:72] >= "0" && plaintext_to_draw[79:72] <= "9") || (plaintext_to_draw[79:72] == " ")) &&
                                ((plaintext_to_draw[71:64] >= "A" && plaintext_to_draw[71:64] <= "Z") || (plaintext_to_draw[71:64] >= "0" && plaintext_to_draw[71:64] <= "9") || (plaintext_to_draw[71:64] == " ")) &&
                                ((plaintext_to_draw[63:56] >= "A" && plaintext_to_draw[63:56] <= "Z") || (plaintext_to_draw[63:56] >= "0" && plaintext_to_draw[63:56] <= "9") || (plaintext_to_draw[63:56] == " ")) &&
                                ((plaintext_to_draw[55:48] >= "A" && plaintext_to_draw[55:48] <= "Z") || (plaintext_to_draw[55:48] >= "0" && plaintext_to_draw[55:48] <= "9") || (plaintext_to_draw[55:48] == " ")) &&
                                ((plaintext_to_draw[47:40] >= "A" && plaintext_to_draw[47:40] <= "Z") || (plaintext_to_draw[47:40] >= "0" && plaintext_to_draw[47:40] <= "9") || (plaintext_to_draw[47:40] == " ")) &&
                                ((plaintext_to_draw[39:32] >= "A" && plaintext_to_draw[39:32] <= "Z") || (plaintext_to_draw[39:32] >= "0" && plaintext_to_draw[39:32] <= "9") || (plaintext_to_draw[39:32] == " ")) &&
                                ((plaintext_to_draw[31:24] >= "A" && plaintext_to_draw[31:24] <= "Z") || (plaintext_to_draw[31:24] >= "0" && plaintext_to_draw[31:24] <= "9") || (plaintext_to_draw[31:24] == " ")) &&
                                ((plaintext_to_draw[23:16] >= "A" && plaintext_to_draw[23:16] <= "Z") || (plaintext_to_draw[23:16] >= "0" && plaintext_to_draw[23:16] <= "9") || (plaintext_to_draw[23:16] == " ")) &&
                                ((plaintext_to_draw[15:8] >= "A" && plaintext_to_draw[15:8] <= "Z") || (plaintext_to_draw[15:8] >= "0" && plaintext_to_draw[15:8] <= "9") || (plaintext_to_draw[15:8] == " ")) &&
                                ((plaintext_to_draw[7:0] >= "A" && plaintext_to_draw[7:0] <= "Z") || (plaintext_to_draw[7:0] >= "0" && plaintext_to_draw[7:0] <= "9") || (plaintext_to_draw[7:0] == " "));
                                
                            if (plaintext_is_ascii)
                                ns = DISPLAY;
                            else
                                ns = DECRYPT;
                                keyInc = 1;
//                                key = key + 1;
                                
                        end
                            
                            
                            
                    DISPLAY:
                        begin
                            draw_plaintext = 1;
                            stopwatch_run = 0;
//                            key = key - 1;
                            if (done_drawing_plaintext)
                                ns = TERM;
                            else
                                ns = DISPLAY;
                        end
                    
                    TERM:
                        begin
                            stopwatch_run = 0;
                            ns = TERM;
                          end
                endcase
            key_display = key[23:8];
        end
        
        
        always_ff @(posedge clk)
            begin
                
                cs <= ns;
            end
            
        always_ff @(posedge clk)
            begin
                if (reset)
                    key <= 0;
                else if (keyInc)
                    key <= key + 1;
            end
            
               
               
               
   endmodule
