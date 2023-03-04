module Pr_Encoder( input [7:0] a,
              input[7:0] b,
              input[7:0] c,
              input[7:0] d,
              input[1:0] sel,
              output reg [7:0] data_out);
    always@ (a or b or c or d or sel)begin
        if (sel ==2'b00) 
            data_out <=a;
        else if (sel==2'b01)
            data_out<=b;
        else if (sel ==2'b10)
            data_out<=c;
        else if (sel ==2'b11)
            data_out<=d;
    end
endmodule
