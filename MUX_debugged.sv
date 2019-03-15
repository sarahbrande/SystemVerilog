//////////////////////////////////////////////////////////////////////////////////
// Company:        Pleasant
// Engineer:       SarahB
// 
// Create Date:    03:17:43 03/09/2019 
// Design Name: 
// Module Name:  Multiplexor    
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
///////////////////////////
// 8 input multiplexer

// 8 input multiplexer

module multiplexer (
input logic [7:0] data [8],
input logic [2:0] sel,
output logic [7:0] y,
);

always @(sel) begin
  case (sel[2:0])
  3'b000: begin y[7:0] = data[0]; end
  3'b001: begin y[7:0] = data[1]; end
  3'b010: begin y[7:0] = data[2]; end
  3'b011: begin y[7:0] = data[3]; end
  3'b100: begin y[7:0] = data[4]; end
  3'b101: begin y[7:0] = data[5]; end
  3'b110: begin y[7:0] = data[6]; end
  3'b111: begin y[7:0] = data[7]; end
default: begin $display( "ERROR: Unimplemented select line.  Check code at %0t", $time); end
endcase
end
endmodule: multiplexer

