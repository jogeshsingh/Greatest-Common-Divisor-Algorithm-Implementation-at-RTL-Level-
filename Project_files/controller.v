`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2021 09:48:14 PM
// Design Name: 
// Module Name: controller
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

`define WIDTH_1 3 
module controller(
i_clk , load_A, load_B , EQ, LT, GT,s_in1 , s_in2 , s_in3, start, p_STATE, done
    );
 input i_clk ;
 input start ; 
 input EQ ;
 input LT ;
 input GT ; 
 output load_A ;
 output load_B ;
 output s_in1 ;
 output s_in2;
 output s_in3 ; 
 output done ;
 output reg [`WIDTH_1-1:0] p_STATE;
 reg [`WIDTH_1-1:0] nEXT_STATE ;
 
 parameter [2:0] S0 = 3'b000  , 
                 S1 = 3'b001,
                 S2 = 3'b010 ,
                 S3 = 3'b011 ,
                 S4 = 3'b100 , 
                 S5 = 3'b101 ;
     reg [5:0] CV ; 
     assign load_A = CV[5] ;
     assign load_B = CV[4] ;
     assign s_in1 = CV[3] ;
     assign s_in2 = CV[2] ;
     assign s_in3 = CV[1];
     assign done = CV[0] ;          
                
   /////data_register block //////////
   
   
               
     ///////next_state logic ////////////
     
     always @ (posedge i_clk )
       begin
         case (p_STATE )
         S0 :  begin
                   if (start )
                       p_STATE <= S1 ;
                          else 
                           p_STATE <= S0 ; 
                            end  
         S1 :  begin
                   p_STATE <= S2 ;
                     end
          S2 : begin
                  if (EQ)
                      p_STATE <=  S5 ;
                   else if (LT)
                     p_STATE <= S3 ;
                     else if (GT)
                     p_STATE <= S4 ;
                      else
                        p_STATE <= S2 ;
                         end
           S3 :  begin
                    if (EQ)
                    p_STATE <=  S5 ;
                   else if (LT)
                    p_STATE <= S3 ;
                     else if (GT)
                 p_STATE <= S4 ;
                      else
                     p_STATE <= S2 ;
                         end
             S4 :  begin
                      if (EQ)
                  p_STATE <=  S5 ;
                   else if (LT)
               p_STATE <= S3 ;
                     else if (GT)
                  p_STATE <= S4 ;
                      else
                        p_STATE <= S2 ;
                         end
              S5 :  begin
                             p_STATE <= S5 ;
                              end
                             
                default : begin 
                           p_STATE <= S0 ;
                            end                        
                         endcase
                         end         
        ////generation of signals///////////
        
        always @ (p_STATE or EQ or LT or GT )
        begin                 
             case (p_STATE)
             S0 : begin CV= 6'b100010; end
             
             
             S1 : begin CV = 6'b010010; end
             
             S2 : begin
             if 
             (EQ==1'b1)
               begin
                  CV = 6'b000001;
                    end
                     else if (LT)
                      begin
                      CV = 6'b011000;
                       end
                     else if (GT)
                        begin
                       CV = 6'b100100;
                       end 
                        else 
                         begin
                          CV = 6'b010010;
                          end 
                          end
                                           
             S3 : begin
             if 
             (EQ==1'b1)
               begin
                  CV = 6'b000001;
                    end
                     else if (LT)
                      begin
                      CV = 6'b011000;
                       end
                     else if (GT)
                        begin
                       CV = 6'b100100;
                       end 
                        else 
                         begin
                          CV = 6'b010010;
                          end 
                          end
             S4 : begin
             if 
             (EQ==1'b1)
               begin
                  CV = 6'b000001;
                    end
                     else if (LT)
                      begin
                      CV = 6'b011000;
                       end
                     else if (GT)
                        begin
                       CV = 6'b100100;
                       end 
                        else 
                         begin
                          CV = 6'b010010;
                          end 
                          end
             S5 :    begin CV = 6'b000001; end
                                                               
             default : CV = 6'b000000;
              endcase
             end                                         
                                   
 
 
 
 
 
endmodule
