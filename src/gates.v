module gates(input a, input b, output x,output y,output z);

  assign x = a & b;
  assign y=a^b;
  assign z=a|b;

endmodule