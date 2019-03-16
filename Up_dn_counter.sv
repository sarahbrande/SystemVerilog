`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Pleasant
// Engineer:       SarahB
// 
// Create Date:    
// Design Name: Up_down counter	
// Module Name:    
// Project Name:  
// Target Devices: 
// Tool versions: 
// Description: 4th practice problem in class 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
/////////////////////////////////////////////////////////////////////////////////
module up_dn_counter (
 input logic clk,
 input logic reset,
 input logic up_dwbar,
 output logic [7:0] count,
);

always @(posedge clk) begin
        if (!reset) begin
          count=0;
        end else if (up_dwbar==1) begin
          count= count+1;
        end else if (up_dwbar==0) begin
          count= count-1;
        end
end
endmodule: up_dn_counter
