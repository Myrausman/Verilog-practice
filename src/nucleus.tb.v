`include "nucleus.v"
module Top_test();

  reg clock;
  reg reset;
  wire [31:0] io_pin;
  
  Top top_module (
    .clock(clock),
    .reset(reset),
    .io_pin(io_pin)
  );
  
  initial begin
    // Set initial values
    clock = 0;
    reset = 1;
    
    // Wait for a few clock cycles
    #10;
    
    // Deassert reset
    reset = 0;
    
    // Wait for a few more clock cycles
    #10;
    
    // Check if io_pin is valid
    if (io_pin !== 32'hxxxxxxxx) begin
      $display("Output value: %h", io_pin);
    end else begin
      $display("Output value not valid.");
    end
    
    // Stop simulation
    $finish;
  end
  
  always #5 clock = ~clock;
  
endmodule
