module Arrays(
   input clk,
  input reset,
  input [7:0] addr,
  input [7:0] data_in,
  output [7:0] data_out
);

  reg [7:0] mem [0:255]; 
  
  always @(posedge clk) begin
    if (reset) begin
      mem <= 0;
    end else begin
      mem[address] <= data_in;
    end
  end
  
  assign data_out = mem[address];
  
endmodule