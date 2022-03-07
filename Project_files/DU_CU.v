`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2021 10:15:45 PM
// Design Name: 
// Module Name: DU_CU
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

`define DATA_WID1 8
`define WIDTH_STATE 3
module DU_CU(
i_clk ,  start , data_input  , EQ, LT, GT,out_A , out_B , p_STATE, done, Sub_out
    );
 input [`DATA_WID1-1:0] data_input ;
input i_clk ;
input start ;
output done ;
output [`DATA_WID1-1:0] out_A , out_B, Sub_out ;
output EQ, LT , GT ; 
output  [`WIDTH_STATE-1 :0 ] p_STATE;


Top_design DATAPATH(
data_input , i_clk  , EQ, LT, GT,s_in1 , s_in2 , s_in3,load_A, load_B,out_A, out_B, Sub_out
    );
  
   controller Control(
i_clk , load_A, load_B , EQ, LT, GT,s_in1 , s_in2 , s_in3, start, p_STATE, done
    );

endmodule
