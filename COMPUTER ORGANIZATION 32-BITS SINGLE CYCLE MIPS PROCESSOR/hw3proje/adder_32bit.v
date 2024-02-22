module adder_32bit(input [31:0]a,input[31:0]b,input cin, output [31:0]result);

wire Cout0,P1,P2,G1,G2;
wire temp9;

adder_16bit a0(a[15:0], b[15:0], cin,P1,G1,result[15:0]);

and and1(temp9,P1,cin);
or or1(Cout0,temp9,G1);


adder_16bit a1(a[31:16], b[31:16], Cout0,P2,G2, result[31:16]);

endmodule
