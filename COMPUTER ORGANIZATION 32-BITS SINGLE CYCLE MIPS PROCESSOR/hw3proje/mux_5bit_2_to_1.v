module mux_5bit_2_to_1(
input [4:0]rt,//0 da 
input [4:0]rd,//1 de çalışan değer
input sel,
output [4:0]result);

wire rtt[4:0],rdd[4:0];
wire notsel;
not not1(notsel,sel);

and and1(rdd[0], rd[0],sel);
and and2(rdd[1], rd[1],sel);
and and3(rdd[2], rd[2],sel);
and and4(rdd[3], rd[3],sel);
and and5(rdd[4], rd[4],sel);


and and7(rtt[0],rt[0],notsel);
and and8(rtt[1],rt[1],notsel);
and and9(rtt[2],rt[2],notsel);
and and10(rtt[3],rt[3],notsel);
and and11(rtt[4],rt[4],notsel);


or or1(result[0],rtt[0],rdd[0]);
or or2(result[1],rtt[1],rdd[1]);
or or3(result[2],rtt[2],rdd[2]);
or or4(result[3],rtt[3],rdd[3]);
or or5(result[4],rtt[4],rdd[4]);





endmodule