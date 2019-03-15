//////////////////////////////////////////////////////////////////////////////////
// Company:        Pleasant
// Engineer:       SarahB
// 
// Create Date:    03:17:43 03/09/2019 
// Design Name: 
// Module Name:    adder testbench 
// Target Devices: 
// Tool versions: 
// Description: 1st design in SystemVerilogBeginner: write your first design and TB.
//              EDA playground was used to simulate
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////// test bench for adder

module test_bench();
  logic [7:0] a,b,s;
  logic cin,cout;
  
  // Instantiating Design module
  addera adder1 (.sum(s), .c_in(cin), .c_out(cout), .*);
  
  // Dump signals to waveform
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin
    #1 
    a=1;
    b=2;
    cin=1;
    
    #1
    a=5;
    b=10;
    
    #1
    a=10;
    b=20;
    
    #1
    a=25;
    b=40;
    
    #1 
    a='hffff_ffff;
    b=1;
    
    #1
    $finish();
    
  end
endmodule: test_bench
    
    
