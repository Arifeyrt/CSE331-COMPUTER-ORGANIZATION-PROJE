module comparator_32bit(
input [31:0] A_or_sub,
input [31:0] B,
output A_less_B
);

wire [31:0] subtemp;


sub_add_32bit sub_32bit_1(A_or_sub,B,1'b1,subtemp);
//assign subtemp = A_or_sub - B;
xor xor1(A_less_B,subtemp[31],1'b0);//mossignificabt bite bak
//xor xor2(temp,subtemp,32'b00000000000000000000000000000000);

endmodule
