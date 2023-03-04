`include "and.v"
module andd_tb();

  // Declare inputs and outputs
  reg a;
  reg b;
  wire y;

  andd uut(a, b, y);

  // Initialize the inputs
  initial begin
    a = 0;
    b = 0;
  end

  // Test case 1
  initial begin
    #5 a = 0;
    #5 b = 1;
    #5 $display("a = %b, b = %b, y = %b", a, b, y);
  end

endmodule
