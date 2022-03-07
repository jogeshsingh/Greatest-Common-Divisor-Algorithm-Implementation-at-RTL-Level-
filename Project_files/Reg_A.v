`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2021 08:47:50 PM
// Design Name: 
// Module Name: Reg_A
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

`define DATA_WIDTH 8
module Reg_A(
data_in , ld_A  , i_clk ,A_out
    );
 input [`DATA_WIDTH-1:0] data_in ;
 input i_clk ;
 input ld_A ;
 output reg [`DATA_WIDTH-1:0] A_out ;
    
    
   always @ (posedge i_clk)
    begin
     if (ld_A)
         begin
      A_out <= data_in ; 
          end
       else
         begin
       A_out <= A_out ;
           end
           end  
        
    
endmodule
