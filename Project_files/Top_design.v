`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jogesh Singh
// 
// Create Date: 11/20/2021 08:47:31 PM
// Design Name: TOP design
// Module Name: Top_design
// Project Name: Greatest common divisor RTL level design
// Target Devices:  ARTIX-7 basys3
// Tool Versions: 2020.2
// Description: This is the description of greatest common divisor design which is implemented using 
 //registers , comparators , subtractors and muxes/////
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define DATA_WID 8
module Top_design(
data_input , i_clk  , EQ, LT, GT,s_in1 , s_in2 , s_in3,load_A, load_B, out_A, out_B, Sub_out
    );
input [`DATA_WID-1:0] data_input ;
input i_clk ;
input load_A, load_B ;
input s_in1 , s_in2 , s_in3 ;
output EQ, LT , GT ;
wire [`DATA_WID-1:0] M_outA , M_outB ;
output  [`DATA_WID-1:0] out_A ; 
 output  [`DATA_WID-1:0]  out_B ;
output [`DATA_WID-1:0] Sub_out ;
wire [`DATA_WID-1:0] d_in ;

Reg_A R1 (d_in , load_A  , i_clk ,out_A);
Reg_B  R2(d_in , load_B  , i_clk ,out_B);
 CMP   C1(out_A, out_B , EQ , LT , GT );
 SUB_AB  S1(M_outA, M_outB , Sub_out );
 mux_A     M1(out_A , out_B , M_outA, s_in1 );
 mux_B   M2(out_A , out_B , M_outB  , s_in2);
 Mux_D   M3(Sub_out , data_input , d_in  , s_in3  );
 
 
endmodule
