module sub_add_32bit(
input [31:0]a,
input [31:0]b,
input aluop,
output [31:0]result
);
wire [31:0]xorb;

xor_32bit_to_1bit xor1(b[31:0],aluop,xorb[31:0]);
adder_32bit adder1(a[31:0],xorb[31:0],aluop,result[31:0]);

endmodule

