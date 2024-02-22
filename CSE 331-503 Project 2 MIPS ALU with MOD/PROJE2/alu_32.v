module alu_32(
  input [31:0] A,
  input [31:0] B,
  input [2:0] Aluop,
  input clk,
  input reset,
  output [31:0] result
);
  wire [31:0]add, subb, or_res, nor_res, xor_res, and_res, slt_res,mod;
 
  adder_32bit r1(A, B, Aluop[1], add);
  LessThan32Bit r2(A, B, Aluop[0], slt_res); 
  sub_add_32bit r3(A, B, Aluop[1],subb);
  xor_32bit r4(A, B,xor_res);
  nor_32bit r5(A, B,nor_res);
  and_32bit r6(A, B,and_res);
  or_32bit r7(A, B,or_res);
  mod r8(A,B,clk,reset,mod); 
  mux_32 r9(and_res,or_res,xor_res,nor_res,slt_res,add,subb,mod,Aluop,result);
  
endmodule 