module and_4bit(
output result,
input a,b,c,d);
and and1(temp,a,b);
and and2(temp1,c,d);
and and3(result,temp,temp1);
endmodule 