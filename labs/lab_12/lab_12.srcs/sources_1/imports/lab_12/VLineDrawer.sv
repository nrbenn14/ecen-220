`timescale 1ns / 1ps
`default_nettype none
/***************************************************************************
*
* Module: <VLineDrawer>
*
* Author: <Arjun Singh>
* Class: <Class, Section, Semester> - ECEN 220, Section 1, Winter 2020
* Date: <April 1, 2022>
*
* Description: <implements a FSm which draws line using vga display>
*
*
****************************************************************************/



module VLineDrawer(
 input wire logic clk, reset, start,
     output logic done,draw,
     input wire logic [8:0] x_in,
     input wire logic [7:0] y_in,
     output logic [8:0] x_out,
     output logic [7:0] y_out,
     input wire logic [7:0] height
    );
    
    logic outputEnable_xy;
    
    
    logic [7:0]pixCount;
    
    always_ff @(posedge clk)
         if(draw)
            begin 
               pixCount<=pixCount+1;
            end
         else
            begin
               pixCount<=0;
            end
     
    assign x_out= x_in;
    
    
   
    //assign y_out= (pixCount==1)?y_in:(pixCount==2)?y_in+1:(pixCount==3)?y_in+2:(pixCount==4)?y_in+3:(pixCount==5)?y_in+4:(pixCount==6)?y_in+5:(pixCount==7)?y_in+6:y_in+7;
        
    assign done = (draw && (pixCount==height+1));   
    
       
    //BallDrawer FSM
    typedef enum logic[1:0]{idle,drawing,stay, ERR='X} StateType;
    StateType ns, cs;
    
    always_comb
      begin 
        ns=ERR;
        outputEnable_xy=0; 
        draw=0;
        
     
    
    if(reset)
       ns=idle;
    
    else
       case(cs)
         idle: if(start)
                  begin
                     ns=drawing;
                  end
               else
                   begin
                      ns=idle;
                   end                
         drawing:begin
                    begin
                       draw=1;                      
                       if((pixCount<=height)&& draw)
                          outputEnable_xy=1;
                          ns=drawing;
                    end
                        if(done)
                            begin
                                ns= stay;
                            end
                         else
                            begin
                                ns = drawing;
                            end
                 end
           stay: if(~start)
                     begin
                        ns=idle;
                     end
                 else
                     begin
                         ns = stay;
                     end
      endcase
   end
   always_ff@(posedge clk)
     cs<=ns;
     
   always_ff@(posedge clk)
     if(outputEnable_xy)
        begin
           y_out<=y_in+(pixCount);
        end
     else
           y_out<=0; 
     
endmodule