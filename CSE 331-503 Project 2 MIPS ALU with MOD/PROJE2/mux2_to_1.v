module mux2_to_1(input A,input B,input s0, output result);

wire  and1_temp;
wire  and2_temp;
wire  not1_temp;

and(and1_temp, B, s0);// b and so
not(and2_temp, s0);//s0 değili
and(not1_temp, and2_temp, A); //A and so not
or(result,and1_temp, not1_temp);
	
endmodule 