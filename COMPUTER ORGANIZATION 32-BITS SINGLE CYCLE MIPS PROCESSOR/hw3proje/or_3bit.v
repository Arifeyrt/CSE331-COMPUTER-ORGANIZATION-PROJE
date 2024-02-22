module or_3bit(
output result,
input a,b,c);
or or1 (temp,a,b);
or or2 (result,temp,c);

endmodule 