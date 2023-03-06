`include "tracer.v"
module Tracer_tb;
  reg clock, reset;
  reg [31:0] io_rvfiUInt_0, io_rvfiUInt_1, io_rvfiUInt_2, io_rvfiUInt_3;
  reg [31:0] io_rvfiSInt_0, io_rvfiSInt_1, io_rvfiSInt_2, io_rvfiSInt_3, io_rvfiSInt_4;
  reg io_rvfiBool_0;
  reg [4:0] io_rvfiRegAddr_0, io_rvfiRegAddr_1, io_rvfiRegAddr_2;
  reg [1:0] io_rvfiMode;
  
  Tracer dut(
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

  initial begin
    clock = 0;
    forever #5 clock = ~clock;
  end

  initial begin
    $dumpfile("tracer.vcd");
    $dumpvars(0, Tracer_tb);
    reset = 1;
    io_rvfiUInt_0 = 0;
    io_rvfiUInt_1 = 0;
    io_rvfiUInt_2 = 0;
    io_rvfiUInt_3 = 0;
    io_rvfiSInt_0 = 0;
    io_rvfiSInt_1 = 0;
    io_rvfiSInt_2 = 0;
    io_rvfiSInt_3 = 0;
    io_rvfiSInt_4 = 0;
    io_rvfiBool_0 = 0;
    io_rvfiRegAddr_0 = 0;
    io_rvfiRegAddr_1 = 0;
    io_rvfiRegAddr_2 = 0;
    io_rvfiMode = 0;
    #10 reset = 0;
    #100 $finish;
  end
  
endmodule