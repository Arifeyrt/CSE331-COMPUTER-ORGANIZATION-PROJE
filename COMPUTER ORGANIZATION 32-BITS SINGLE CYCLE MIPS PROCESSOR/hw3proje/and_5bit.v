module and_5bit(
output result,
input a,b,c,d,e);
and and1(temp,a,b);
and and2(temp1,c,d);
and and3(temp2,temp,temp1);
and and4(result,e,temp2);
endmodule 