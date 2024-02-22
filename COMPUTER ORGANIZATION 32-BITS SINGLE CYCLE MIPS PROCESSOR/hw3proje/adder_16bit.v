module adder_16bit(
input [15:0]a,
input [15:0]b,
input cin,
output P15,
output G15,
output [16:0]result
);

wire P[3:0],G[3:0];
wire Cout0,Cout1,Cout2,temp9,temp3,temp5,temp1,temp2,temp4,temp10,temp11,temp12;

adder_4bit a0(a[3:0], b[3:0],cin,P[0],G[0],result[3:0]);

//c1
and and1(temp9,P[0],cin);
or or1(Cout0,temp9,G[0]);

adder_4bit a1(a[7:4], b[7:4], Cout0,P[1],G[1], result[7:4]);

//C2
//and and2(temp3,P[1],cin);
//or or2(Cout1,temp3,G[1]);
and_3bit and2(temp1,P[0],P[1],cin);
and and3(temp2,G[0],P[1]);
or_3bit or2(Cout1,G[1],temp1,temp2);

adder_4bit a2(a[11:8], b[11:8], Cout1,P[2],G[2],result[11:8]);

//C3
//and and3(temp10,P[2],cin);
//or or3(Cout2,temp10,G[2]);
and_4bit and5(temp3,P[1],P[0],P[2],cin);
and_3bit and6(temp4,P[2],P[1],G[0]);
and and4(temp5,G[1],P[2]);
or_4bit or3(Cout2,G[2],temp3,temp4,temp5);


adder_4bit a3(a[15:12], b[15:12], Cout2,P[3],G[3], result[15:12]);
and_4bit and8(P15,P[3],P[2],P[1],P[0]);//P

and_4bit and9(temp10,P[3],P[2],P[1],G[0]);
and_3bit and10(temp11,P[2],P[3],G[1]);
and and11(temp12,P[3],G[2]);
or_4bit or4(G15,temp12,temp11,temp10,G[3]);



endmodule 