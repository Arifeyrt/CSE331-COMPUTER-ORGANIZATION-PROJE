module or_4bit(
output result,
input a,b,c,d);
or or1(temp,a,b);
or or2(temp1,c,d);
or or3(result,temp,temp1);
endmodule 