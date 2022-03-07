`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2021 08:48:12 PM
// Design Name: 
// Module Name: Reg_B
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`define DATA_WIDTH1 8
module Reg_B(
d_in1 , ld_B  , i_clk ,B_out
    );
 input [`DATA_WIDTH1-1:0] d_in1 ;
 input i_clk ;

 input ld_B ;
 output reg [`DATA_WIDTH1-1:0] B_out ;
    
    
   always @ (posedge i_clk)
    begin
      if (ld_B)
         begin
      B_out <= d_in1 ; 
          end
       else
         begin
       B_out <= B_out ;
           end
           end  
        
    
endmodule
