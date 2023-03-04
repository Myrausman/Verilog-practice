`include "mux.v"
module mux_4_1_tb();

  // Declare inputs and outputs
    reg [3:0] a;
    reg [3:0] b;
    reg [3:0] c;
    reg [3:0] d;
    reg [1:0] sel;
    wire [3:0]data_out;
    integer i;

    mux_4_1 mux0 (.a(a),
                  .b(b),
                  .c(c),
                  .d(d),
                  .sel(sel),
                  .data_out(data_out));


    initial begin
    $dumpfile("test.vcd");
    $dumpvars(0, mux_4_1_tb);

    
    sel = 0;
    a<=$random;
    b<=$random;
    c<=$random;
    d<=$random;
    

    for (i=1;i<4;i=i+1) begin
        #5 sel <=i;
    
    end
    
    $display("All tests passed!");
    #5$finish;
end

endmodule