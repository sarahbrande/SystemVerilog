//////////////////////////////////////////////////////////////////////////////////
// Company:        Pleasant
// Engineer:       SarahB
// 
// Create Date:    03:17:43 03/09/2019 
// Design Name: 
// Module Name:    adder
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description:  Adder from SV class that uses EDAplayground
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
///////////////////////////////////////////////////////////////////////////////////
module addera (input logic [7:0] a, 
               input logic [7:0] b,
               input logic c_in, 
               output logic [7:0] sum, 
               output logic c_out);

  logic [8:0] result;
 
  assign result=a+b+c_in;
  
  assign sum=result[7:0];
  assign c_out=result[8];

endmodule: addera/
