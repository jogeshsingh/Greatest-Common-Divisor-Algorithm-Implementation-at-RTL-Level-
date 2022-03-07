`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2021 09:27:38 PM
// Design Name: 
// Module Name: Mux_D
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



module Mux_D
#(parameter WID = 8)
(in1 , in2 , o_D  , sel_D  );
  
 input sel_D ;
 input [WID-1:0] in1 , in2 ; 
 output[WID-1:0] o_D ;  
 
 assign o_D = sel_D ? in2 :in1 ;
 
endmodule

