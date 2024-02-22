module adder_4bit(
input [3:0]a,
input [3:0]b,
input cin,
output P,
output G,
output [3:0]result);

wire [3:0]p;
wire [3:0]g;
wire [3:0]c1;
wire [3:0]t;
wire temp2,Cout;

or or1(p[0],a[0],b[0]);//p0
and and2(g[0],a[0],b[0]);//go 

or or2(p[1],a[1],b[1]);//p1
and and3(g[1],a[1],b[1]);//g1

or or3(p[2],a[2],b[2]);//p2
and and4(g[2],a[2],b[2]);//g2 

or or4(p[3],a[3],b[3]);//p3
and and17(g[3],a[3],b[3]);//g3

//c1
and and5(temp9,p[0],cin);
or or9(c1[0],temp9,g[0]);

//c2
and_3bit and6(temp7,p[1],p[0],cin);//p1p0c0
and and7(temp8,p[1],g[0]);//p1g0
or_3bit or5(c1[1],g[1],temp7,temp8);//or

//c3

and_4bit and8(temp,p[2],p[1],p[0],cin);//p2p1p0c0
and_3bit and9(temp1,p[2],p[1],g[0]);//p2p1g0
and and10(temp2,p[2],g[1]);
or_4bit or6(c1[2],g[2],temp,temp1,temp2);

//c4
and_5bit and11(temp3,p[3],p[2],p[1],p[0],cin);//p3p2p1p0c0
and_4bit and12(temp4,p[3],p[2],p[1],g[0]);//p3p2p1g0
and_3bit and13(temp5,p[3],p[2],g[1]);//p3p2g1
and and14(temp6,p[3],g[2]);
or_5bit or7(Cout,g[3],temp3,temp4,temp5,temp6);

and_4bit and16(P,p[3],p[2],p[1],p[0]);//P 3:0
or_4bit or8(G,g[3],temp6,temp5,temp4);//G 3:0




//xor
xor xor1(t[0],a[0],b[0]);
xor xor2(result[0],t[0],cin);

xor xor3(t[1],a[1],b[1]);
xor xor4(result[1],t[1],c1[0]);

xor xor5(t[2],a[2],b[2]);
xor xor6(result[2],t[2],c1[1]);

xor xor7(t[3],a[3],b[3]);
xor xor8(result[3],t[3],c1[2]);


endmodule


