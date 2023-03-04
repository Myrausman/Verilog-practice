`include "Pr_Encoder.v"
module Pr_Encoder_tb;
    reg[7:0] a;
    reg[7:0] b;
    reg[7:0] c;
    reg[7:0] d;
    wire[7:0] data_out;
    reg[1:0] sel;
    integer i;
    Pr_Encoder  pr_en0(   .a(a),
                    .b(b),
                    .c(c),
                    .d(d),
                    .sel(sel),
                    .data_out(data_out));
    initial begin
        $dumpfile("pr_en.vcd");
        $dumpvars(0, Pr_Encoder_tb);
        sel<=0;
        a<=$random;
        b<=$random;
        c<=$random;
        d<=$random;

        for (i=0; i<4; i=i+1) begin
            #5 sel<=i;
        end
        #5 $finish;
    end



endmodule