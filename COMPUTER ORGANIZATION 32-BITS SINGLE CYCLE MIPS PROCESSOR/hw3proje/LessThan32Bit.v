module LessThan32Bit (
  input [31:0] a,
  input [31:0] b,
  input aluop,
  output [31:0]result
);
wire [31:0]sub;


sub_add_32bit sub1(a[31:0],b[31:0],aluop,sub[31:0]);
and_32bit_to_1bit and1(result[31:0],sub[31]);


endmodule 