`include "tracer.v"
module Tracer_tb;

  // Inputs
  reg clock;
  reg reset;
  reg [31:0] io_rvfiUInt_0;
  reg [31:0] io_rvfiUInt_1;
  reg [31:0] io_rvfiUInt_2;
  reg [31:0] io_rvfiUInt_3;
  reg [31:0] io_rvfiSInt_0;
  reg [31:0] io_rvfiSInt_1;
  reg [31:0] io_rvfiSInt_2;
  reg [31:0] io_rvfiSInt_3;
  reg [31:0] io_rvfiSInt_4;
  reg io_rvfiBool_0;
  reg [4:0] io_rvfiRegAddr_0;
  reg [4:0] io_rvfiRegAddr_1;
  reg [4:0] io_rvfiRegAddr_2;
  reg [1:0] io_rvfiMode;

  // Instantiate the Unit Under Test (UUT)
  Tracer uut (
    .clock(clock),
    .reset(reset),
    .io_rvfiUInt_0(io_rvfiUInt_0),
    .io_rvfiUInt_1(io_rvfiUInt_1),
    .io_rvfiUInt_2(io_rvfiUInt_2),
    .io_rvfiUInt_3(io_rvfiUInt_3),
    .io_rvfiSInt_0(io_rvfiSInt_0),
    .io_rvfiSInt_1(io_rvfiSInt_1),
    .io_rvfiSInt_2(io_rvfiSInt_2),
    .io_rvfiSInt_3(io_rvfiSInt_3),
    .io_rvfiSInt_4(io_rvfiSInt_4),
    .io_rvfiBool_0(io_rvfiBool_0),
    .io_rvfiRegAddr_0(io_rvfiRegAddr_0),
    .io_rvfiRegAddr_1(io_rvfiRegAddr_1),
    .io_rvfiRegAddr_2(io_rvfiRegAddr_2),
    .io_rvfiMode(io_rvfiMode)
  );

  // Initialize inputs
  initial begin
    $dumpfile("tracer.vcd");
    $dumpvars(0, Tracer_tb);
    
    clock = 0;
    reset = 1;
    io_rvfiUInt_0 = $random;
    io_rvfiUInt_1 = $random;
    io_rvfiUInt_2 = $random;
    io_rvfiUInt_3 = $random;
    io_rvfiSInt_0 = $random;
    io_rvfiSInt_1 = $random;
    io_rvfiSInt_2 = $random;
    io_rvfiSInt_3 = $random;
    io_rvfiSInt_4 = $random;
    io_rvfiBool_0 = $random;
    io_rvfiRegAddr_0 = $random;
    io_rvfiRegAddr_1 = $random;
    io_rvfiRegAddr_2 = $random;
    io_rvfiMode = $random;
    // Wait for 100 ns for reset to complete
    #10;
    reset = 1;
    io_rvfiUInt_0 = 32'h1;
    io_rvfiUInt_1 = 32'h1;
    io_rvfiUInt_2 = 32'h1;
    io_rvfiUInt_3 = 32'h1;
    io_rvfiSInt_0 = 32'h1;
    io_rvfiSInt_1 = 32'h1;
    io_rvfiSInt_2 = 32'h1;
    io_rvfiSInt_3 = 32'h1;
    io_rvfiSInt_4 = 32'h1;
    io_rvfiBool_0 = 1;
    io_rvfiRegAddr_0 = 5'h1;
    io_rvfiRegAddr_1 = 5'h1;
    io_rvfiRegAddr_2 = 5'h1;
    io_rvfiMode = 2'h0;
    #100;
    reset=0;
  end
endmodule
