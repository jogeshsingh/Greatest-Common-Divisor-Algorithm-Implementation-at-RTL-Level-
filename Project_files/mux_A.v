`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2021 08:49:45 PM
// Design Name: 
// Module Name: mux_A
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

`define MUX_WIDTH 8 
module mux_A(
in_1 , in_2 , o_A, sel_A 
    );
  
 input sel_A ;
 input [`MUX_WIDTH-1:0] in_1 , in_2 ; 
 output[`MUX_WIDTH-1:0] o_A ;  
 
 assign o_A = sel_A ? in_2 :in_1 ;
 
endmodule
