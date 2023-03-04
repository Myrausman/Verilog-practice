// MUX module
module mux_4_1(input [3:0] a,input [3:0] b,input [3:0] c,input [3:0] d, input [1:0] sel, output reg[3:0] data_out);
assign data_out = sel[1] ? (sel[0] ? d : c) : (sel[0] ? b : a)
// always @(*)
// begin
//     case(sel)
//         2'b00: data_out <= a;
//         2'b01: data_out <= b;
//         2'b10: data_out <= c;
//         2'b11: data_out <= d;
//     endcase
// end
endmodule