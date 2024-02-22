module mod(
input [31:0] A, input[31:0] B,input CLK,input reset,output [31:0]result);

wire we,re,s,x;
mod_dp dp1(we,re,s,A, B,CLK,result,x);
mod_cu cu1(reset,CLK,x,we,s,re);


endmodule












