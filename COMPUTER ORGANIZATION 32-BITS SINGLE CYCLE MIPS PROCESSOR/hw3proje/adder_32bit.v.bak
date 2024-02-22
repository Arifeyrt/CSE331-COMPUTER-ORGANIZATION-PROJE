module adder_32bit(input [31:0]a,input[31:0]b,input cin, output [31:0]result);

wire Cout0,P1,P2,G1,G2;
wire temp9;

adder_16bit a0(a[15:0], b[15:0], cin,P1,G1,result[15:0]);

and and1(temp9,P1,cin);
or or1(Cout0,temp9,G1);


adder_16bit a1(a[31:16], b[31:16], Cout0,P2,G2, result[31:16]);
//wire Cout0,Cout1,Cout2,Cout3,Cout4,Cout5,Cout6,Cout7;

//adder_4bit a0(a[3:0], b[3:0], cin, Cout0, result[3:0]);
//adder_4bit a1(a[7:4], b[7:4], Cout0, Cout1, result[7:4]);
//adder_4bit a2(a[11:8], b[11:8], Cout1, Cout2, result[11:8]);
//adder_4bit a3(a[15:12], b[15:12], Cout2, Cout3, result[15:12]);
//adder_4bit a4(a[19:16], b[19:16], Cout3, Cout4, result[19:16]);
//adder_4bit a5(a[23:20], b[23:20], Cout4, Cout5, result[23:20]);
//adder_4bit a6(a[27:24], b[27:24], Cout5, Cout6, result[27:24]);
//adder_4bit a7(a[31:28], b[31:28], Cout6, Cout7, result[31:28]);


endmodule
