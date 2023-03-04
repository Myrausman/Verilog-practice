`include "gates.v"
module gates_tb();

  // Declare inputs and outputs
  reg a;
  reg b;
  wire x;
  wire y;
  wire z;
  

  gates dut(a, b, x, y, z);


  initial begin
    $dumpfile("gates.vcd");
    $dumpvars(0, gates_tb);
    #5 a = 0;
    #5 b = 0;
 

    for (integer i=0; i<2; i=i+1) begin
        for (integer j=0;j<2;j=j+1) begin
            #10 a=j;
            #10 b=i;
            #10 $display("\n \n Case:%d",i+j);
            #10 $display("AND TEST \n a = %b, b = %b, x = %b", a, b, x);
            #10 $display("XOR TEST \n a = %b, b = %b, y = %b", a, b, y);
            #10 $display("OR TEST \n a = %b, b = %b, z = %b", a, b, z);
        end
    end
    #5 $finish;
  end

endmodule