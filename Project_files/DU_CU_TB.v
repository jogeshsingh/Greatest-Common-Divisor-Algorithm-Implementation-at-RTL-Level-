`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2021 03:08:44 PM
// Design Name: 
// Module Name: DU_CU_TB
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

`define data_width 8
`define sTATE_WIDTH 3
module DU_CU_TB( );
reg i_clk;
reg [`data_width-1:0] data_input ;
reg start ;
wire [`sTATE_WIDTH-1:0]  p_STATE;
wire done ;
wire[`data_width-1:0] out_A ,out_B , Sub_out; 
controller DUT(
i_clk , load_A, load_B , EQ, LT, GT,s_in1 , s_in2 , s_in3, start, p_STATE, done
    );
 Top_design Dut(
data_input , i_clk  , EQ, LT, GT,s_in1 , s_in2 , s_in3,load_A, load_B, out_A, out_B, Sub_out
    );

 initial  
  begin
  i_clk = 1'b0 ;
  start = 1'b0 ;
  data_input = 8'b0000_0000;
  end
  
  always #5 i_clk = ~i_clk ; 
  

initial 
  begin
  #1 start = 1'b1 ;
   #3 data_input = 8'b0101_0000 ;
   #12 data_input = 8'b1000_1000;  
    end  
endmodule
