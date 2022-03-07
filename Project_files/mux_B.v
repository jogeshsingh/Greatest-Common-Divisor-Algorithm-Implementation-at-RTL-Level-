`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2021 08:50:05 PM
// Design Name: 
// Module Name: mux_B
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


`define MUX_WIDTH1 8
module mux_B(
i_1 , i_2 , o_B  , sel_B 
    );
  
 input sel_B ;
 input [`MUX_WIDTH1-1:0] i_1 , i_2 ; 
 output[`MUX_WIDTH1-1:0] o_B ;  
 
 assign o_B = sel_B ? i_2 :i_1 ;
 
endmodule
