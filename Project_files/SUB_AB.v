`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2021 08:48:49 PM
// Design Name: 
// Module Name: SUB_AB
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


module SUB_AB
#(parameter WIDTH3 = 8)
(A , B , OUT );
    
    input [WIDTH3-1:0] A, B ;
    output [WIDTH3-1:0] OUT ;
    
    assign OUT = A-B ;
endmodule
