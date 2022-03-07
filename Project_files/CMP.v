`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2021 08:49:09 PM
// Design Name: 
// Module Name: CMP
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


module CMP
#(parameter WIDTH =8 ) 
(X, Y , eq_out , lt_out , gt_out );
 input [WIDTH-1:0] X , Y ;
 output  eq_out , lt_out , gt_out ;
 
 assign eq_out = (X==Y) ? 1'b1 : 1'b0 ;
  assign lt_out = (X<Y)? 1'b1  : 1'b0 ;
  assign gt_out = (X>Y)? 1'b1:  1'b0 ;
   
endmodule
