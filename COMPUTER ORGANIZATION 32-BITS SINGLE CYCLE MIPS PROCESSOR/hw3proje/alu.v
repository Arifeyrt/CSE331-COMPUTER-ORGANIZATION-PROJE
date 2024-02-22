module alu (
 output  [31:0] alu_result,
 output  zero_bit,
 input [31:0] alu_src1,
 input [31:0] alu_src2,
 input [2:0] alu_ctr);
 
 
 wire [31:0]add, subb, or_res, and_res, slt_res;
 
  adder_32bit r1(alu_src1, alu_src2, alu_ctr[1], add);
  LessThan32Bit r2(alu_src1, alu_src2, alu_ctr[2], slt_res); 
  sub_add_32bit r3(alu_src1, alu_src2, alu_ctr[2],subb);
  and_32bit r6(alu_src1, alu_src2,and_res);
  or_32bit r7(alu_src1, alu_src2,or_res);
  mux_32 r9(and_res,or_res,32'b0,32'b0,slt_res,add,subb,32'b0,alu_ctr,alu_result);
  
  nor nor1(zero_bit,alu_result[0],alu_result[1],alu_result[2],alu_result[3],alu_result[4],alu_result[5],alu_result[6],alu_result[7],alu_result[8],alu_result[9],alu_result[10],alu_result[11],alu_result[12],alu_result[13],alu_result[14],alu_result[15],alu_result[16],alu_result[17],alu_result[18],alu_result[19],alu_result[20],alu_result[21],alu_result[22],alu_result[23],alu_result[24],alu_result[25],alu_result[26],alu_result[27],alu_result[28],alu_result[29],alu_result[30],alu_result[31]);

  endmodule