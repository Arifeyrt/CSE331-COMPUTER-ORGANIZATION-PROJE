module and_3bit(
output result,
input a,b,c
);

and and1 (temp,a,b);
and and2 (result,temp,c);
endmodule 