module or_5bit(
output result,
input a,b,c,d,e);
or or1(temp,a,b);
or or2(temp1,c,d);
or or3(temp2,temp,temp1);
or or4(result,temp2,e);
endmodule 