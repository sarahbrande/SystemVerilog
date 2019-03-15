//////////////////////////////////////////////////////////////////////////////////
// Company:        Pleasant
// Engineer:       SarahB
// 
// Create Date:    03:17:43 03/09/2019 
// Design Name: 
// Module Name:    
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 2nd project in class
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
// test bench code
// test bench code
module test_bench();
// internal signals
  logic clk, reset;
  logic [7:0] din[8];
  logic [7:0] y;
  logic [2:0] select;

//  instantiation of top level module
   multiplexer mux1(.data(din), .sel(select), .y(y) );


   // to see signals in the waveform
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars;
   end

  // clock signal generation
   initial begin
     clk=1;
     forever begin
       clk = #50 ~clk;
     end
   end

// TB Functional code
  initial begin // {
  din[0]='h00;
  din[1]='hA1;
  din[2]='hA2;
  din[3]='hA3;
  din[4]='hB4;
  din[5]='hB5;
  din[6]='hB6;
  din[7]='hB7;

for (int i=0;i<8;i++) begin
   @(posedge clk);
    select=i;
   end

   @(posedge clk);  
     // End simulation
   $finish;
   end   
    
    // To print output values
  always @(y) begin
    $display("At t=%0t : select='b%3b, y_out='h%0h", $time,select, y);
  
  end

endmodule: test_bench

